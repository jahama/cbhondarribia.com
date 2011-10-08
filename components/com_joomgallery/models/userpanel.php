<?php
// $HeadURL: https://joomgallery.org/svn/joomgallery/JG-1.5/JG/trunk/components/com_joomgallery/models/userpanel.php $
// $Id: userpanel.php 1930 2010-03-06 12:25:59Z mab $
/****************************************************************************************\
**   JoomGallery  1.5.5                                                                 **
**   By: JoomGallery::ProjectTeam                                                       **
**   Copyright (C) 2008 - 2010  JoomGallery::ProjectTeam                                **
**   Based on: JoomGallery 1.0.0 by JoomGallery::ProjectTeam                            **
**   Released under GNU GPL Public License                                              **
**   License: http://www.gnu.org/copyleft/gpl.html or have a look                       **
**   at administrator/components/com_joomgallery/LICENSE.TXT                            **
\****************************************************************************************/

defined('_JEXEC') or die('Direct Access to this location is not allowed.');

/**
 * User Panel model
 *
 * @package JoomGallery
 * @since   1.5.5
 */
class JoomGalleryModelUserpanel extends JoomGalleryModel
{
  /**
   * Images data array
   *
   * @var array
   */
  var $_images;

  /**
   * Images number
   *
   * @var integer
   */
  var $_total = null;

  /**
   * Images data array
   *
   * @var array
   */
  var $_categories;

  /**
   * Set to true if the current user is an administrator
   *
   * @var boolean
   */
  var $_adminlogged = false;

  /**
   * Constructor
   *
   * @access  protected
   * @return  void
   * @since   1.5.5
   */
  function __construct()
  {
    parent::__construct();

    if($this->_user->get('gid') > 23)
    {
      $this->_adminlogged = true;
    }
  }
      
  /**
   * Returns the query
   *   
   * @return string The query to be used to retrieve the rows from the database
   */
  function _buildQuery()
  {
    $query = "SELECT
                *
              FROM
                "._JOOM_TABLE_IMAGES."
              ".$this->_buildWhere()."
              ".$this->_buildOrderby();

    return $query;
  }

  /**
   * Returns the 'where' part of the query
   *
   * @return string The 'where' part of the query
   */
  function _buildWhere()
  {
    #$filter     = JRequest::getInt('filter');
    #$catid      = JRequest::getInt('catid');
    #$searchtext = JRequest::getString('search');

    //Filter by Type
    $filter = JRequest::getInt('filter', null);

    $where  = array();

    switch($filter)
    {
      case 1: //approved
        $where[] = 'approved = 1';
        break;
      case 2: //not approved
        $where[] = 'approved = 0';
        break;
    }

    $where[]  = 'published = 1';

    //Dem Admin/SuperAdmin werden alle veroeffentlichten Bilder abgezeigt, 
    //wenn die Option im Backend aktiviert ist
    if(!$this->_adminlogged || !$this->_config->get('jg_showallpicstoadmin'))
    {
      $where[] = 'owner = '.$this->_user->get('id');
    }

    /*if($catid)
    {
      $where[]   = 'catid = '.$catid;
    }

    //Filter by type
    switch($filter)
    {
      case 1:
        $where[]   = 'a.approved = 0';
        break;
      case 2:
        $where[]   = 'a.approved = 1';
        break;
      case 3:
        $where[]   = 'a.useruploaded = 1';
        break;
      case 4:
        $where[]   = 'a.useruploaded = 0';
        break;
      default:
        break;
    }*/

    /*if($searchtext)
    {
      $filter   = $this->_db->Quote('%'.$this->_db->getEscaped($searchtext, true).'%', false);
      $where[]  = "(LOWER(a.imgtitle) LIKE $filter OR LOWER(a.imgtext) LIKE $filter)";
    }*/

    $where = count($where) ? 'WHERE ' . implode(' AND ', $where) : '';

    return $where;
  }

  /**
   * Returns the 'order by' part of the query
   *   
   * @return string The 'order by' part of the query
   */
  function _buildOrderBy()
  {
    $sordercat = JRequest::getInt('ordering');

    switch($sordercat)
    {
      case 1:
        $sortorder = 'imgdate DESC';
        break;
      case 2:
        $sortorder = 'imgtext ASC';
        break;
      case 3:
        $sortorder = 'imgtext DESC';
        break;
      case 4:
        $sortorder = 'hits ASC';
        break;
      case 5:
        $sortorder = 'hits DESC';
        break;      
      case 6:
        $sortorder = 'catid ASC,imgtext ASC';
        break;
      case 7:
        $sortorder = 'catid ASC,imgtext DESC';
        break;
      default:
        $sortorder = 'imgdate ASC';
        break;
    }

    return 'ORDER BY '.$sortorder;
  }

  /**
   * Retrieves the comments data
   * @return array Array of objects containing the data from the database
   */
  function getImages()
  {
    if($this->_loadImages())
    {
      return $this->_images;
    }

    return array();
  }

  /**
   * Retrieves the comments data
   * @return array Array of objects containing the data from the database
   */
  function _loadImages()
  {
    // Lets load the data if it doesn't already exist
    if(empty($this->_images))
    {
      jimport('joomla.filesystem.file');

      $query = $this->_buildQuery();

      // Get the pagination request variables, maybe _buildQuery has changed something
      $limit      = JRequest::getInt('limit', 0);
      $limitstart = JRequest::getInt('limitstart', 0);

      if(!$rows = $this->_getList($query, $limitstart, $limit))
      {
        return false;
      }

      foreach($rows as $row)
      {
        // TODO: move the following into a function -> JHTML::_('joomgallery.thumbnail', $image, $cid, $height, $width);
        //       foreach in the model would be unnecessary then
        $row->imgsource = null;
        $thumb = $this->_ambit->getImg('thumb_path', $row);
        if(JFile::exists($thumb))
        {
          $imginfo        = getimagesize($thumb);
          $row->imgsource = $this->_ambit->getImg('thumb_url', $row);
          $row->imgwidth  = $imginfo[0];
          $row->imgheight = $imginfo[1];
        }
      }

      $this->_images = $rows;
    }

    return true;
  }

  /**
   * Method to get the total number of images
   *
   * @access public
   * @return integer The total number of images
   */
  function getTotal()
  {
    // Lets load the categories if they doesn't already exist
    if (empty($this->_total))
    {
      $query = $this->_buildQuery();
      $this->_total = $this->_getListCount($query);
    }

    return $this->_total;
  }

  /**
   *
   *
   * @access public
   * @return array
   * @since 1.5.5.0   
   */
  function getCategories()
  {
    // Lets load the data if it doesn't already exist
    if(empty($this->_categories))
    {
      $query = "  SELECT
                    cid
                  FROM
                    "._JOOM_TABLE_CATEGORIES;
      if(!$this->_config->get('jg_userowncatsupload'))
      {
        $query .= "
                  WHERE
                        owner != 0";
      }
      else
      {
        $query .= "
                  WHERE
                        owner = ".$this->_user->get('id');
      }

      $jg_category      = $this->_config->get('jg_category');
      $jg_usercategory  = $this->_config->get('jg_usercategory');
      if(!empty($jg_category))
      {
        $query .= "
                    OR  cid IN (".$this->_config->get('jg_category').")";
      }

      if($this->_config->get('jg_usercat') && !empty($jg_usercategory))
      {
        $query .= "
                    OR  (cid IN (".$this->_config->get('jg_usercategory').") AND access <= ".$this->_user->get('aid').")"; 
      }

      $this->_db->setQuery($query);

      $this->_categories  = $this->_db->loadResultArray();
    }

    return $this->_categories;
  }

  /**
   * will return true if the current user is an administrator
   *
   * @access public
   * @return boolean true if the current user is an administrator
   */
  function getAdminLogged()
  {
    return $this->_adminlogged;
  }
}
