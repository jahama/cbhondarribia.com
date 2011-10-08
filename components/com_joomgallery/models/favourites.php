<?php
// $HeadURL: https://joomgallery.org/svn/joomgallery/JG-1.5/JG/trunk/components/com_joomgallery/models/favourites.php $
// $Id: favourites.php 2167 2010-05-11 16:07:52Z chraneco $
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
 * Favourites Model
 *
 * Handles the favourites of a user and the zip download
 *
 * @package JoomGallery
 * @since   1.5.5
 */
class JoomGalleryModelFavourites extends JoomGalleryModel
{
  /**
   * The ID of the image to work with
   *
   * @access  protected
   * @var     int
   */
  var $_id;

  /**
   * A comma separated list of favoured images
   *
   * @access  protected
   * @var     string
   */
  var $piclist;

  /**
   * Determines whether the database is used or the session to store the images
   *
   * @access  protected
   * @var     boolean
   */
  var $using_database;
  
  /**
   * Determines whether the current user already has an entry
   * in the database table for the favourites and the zip download
   *
   * @access  protected
   * @var     boolean
   */
  var $user_exists;

  /**
   * Holds the current layout
   *
   * @access  protected
   * @var     string
   */
  var $layout;

  /**
   * Holds the prefix of the language constants for the favourites
   *
   * @access  protected
   * @var     string
   */
  var $_output;

  /**
   * Constructor
   *
   * @access  protected
   * @return  void
   * @since   1.0.0
   */
  function __construct()
  {
    parent::__construct();

    // Check access rights
    if(  (  (   ($this->_config->get('jg_showdetailfavourite') == 0 && $this->_user->get('aid') < 1)
             || ($this->_config->get('jg_showdetailfavourite') == 1 && $this->_user->get('aid') < 2)
            )
          ^ ($this->_config->get('jg_usefavouritesforpubliczip') == 1 && $this->_user->get('id') < 1)
         )
       || $this->_config->get('jg_favourites') == 0
      )
    {
      $this->_mainframe->redirect(JRoute::_('index.php?view=gallery', false), JText::_('JGS_COMMON_PERMISSION_DENIED'), 'notice');
    }

    // Set the image id
    $view = JRequest::getCmd('view');
    $task = JRequest::getCmd('task');
    if(   $view != 'favourites'
      &&  $view != 'downloadzip'
      &&  $task != 'removeall'
      &&  $task != 'switchlayout'
      &&  $task != 'createzip'
      )
    {
      $id = JRequest::getInt('id');
      $this->setId($id);
    }

    // Check whether we will work with the database or the session
    if($this->_user->get('id') && $this->_config->get('jg_usefavouritesforzip') != 1)
    {
      $this->using_database = true;
      $this->_output        = 'JGS_FAVOURITES_MSG_';

      $this->_db->setQuery("SELECT 
                              piclist,
                              layout
                            FROM 
                              "._JOOM_TABLE_USERS." 
                            WHERE 
                              uuserid = ".$this->_user->get('id')."
                          ");
      // TODO: Check correct?
      if($row = $this->_db->loadObject())
      {
        $this->user_exists  = true;
        $this->piclist      = $row->piclist;
        $this->layout       = $row->layout;
      }
      else
      {
        $this->user_exists  = false;
        $this->piclist      = null;
        $this->layout       = 0;
      }
    }
    else
    {
      $this->using_database = false;
      $this->_output        = 'JGS_FAVOURITES_ZIP_MSG_';

      $this->piclist = $this->_mainframe->getUserState('joom.favourites.pictures');
      $this->layout  = $this->_mainframe->getUserState('joom.favourites.layout');
    }
  }

  /**
   * Method to set the image id
   *
   * @access  public
   * @param   int     Image ID number
   * @return  void
   * @since   1.5.5
   */
  function setId($id)
  {
    // Set new image ID if valid
    if(!$id)
    {
      JError::raiseError(500, JText::_('JGS_COMMON_NO_IMAGE_SPECIFIED'));
    }
    $this->_id  = $id;
  }

  /**
   * Method to get the identifier
   *
   * @access  public
   * @return  int     The image ID
   * @since   1.5.5
   */
  function getId()
  {
    return $this->_id;
  }

  /**
   * Method to get the current layout
   *
   * @access  public
   * @return  string  Layout
   * @since   1.5.5
   */
  function getLayout()
  {
    return $this->layout;
  }

  /**
   * Method to add an image to the favourites or the zip download
   *
   * @access  public
   * @return  boolean True on success, false otherwise
   * @since   1.0.0
   */
  function addImage()
  {
    $this->_db->setQuery("SELECT 
                            id
                          FROM 
                            "._JOOM_TABLE_IMAGES." AS a
                          LEFT JOIN 
                            "._JOOM_TABLE_CATEGORIES." AS c ON a.catid = c.cid
                          WHERE 
                                a.id        = ".$this->_id." 
                            AND a.approved  = 1 
                            AND a.published = 1
                            AND c.access   <= ".$this->_user->get('aid')." 
                            AND c.published = 1
                        ");
    if(!$this->_db->loadResult())
    {
      die('Stop Hacking attempt!');
    }

    $catid = JRequest::getInt('catid');

    if(is_null($this->piclist))
    {
      if($this->using_database)
      {
        if($this->user_exists)
        {
          $this->_db->setQuery("UPDATE 
                                  "._JOOM_TABLE_USERS."
                                SET 
                                  piclist = ".$this->_id."
                                WHERE
                                  uuserid = '".$this->_user->get('id')."'
                              ");
        }
        else
        {
          $this->_db->setQuery("INSERT INTO 
                                  "._JOOM_TABLE_USERS."
                                  (uuserid, piclist)
                                VALUES
                                  (".$this->_user->get('id').", ".$this->_id.")
                              ");
        }

        $return = $this->_db->query();
      }
      else
      {
        $this->_mainframe->setUserState('joom.favourites.pictures', $this->_id);
      }
    }
    else
    {
      $piclist_array = explode(',', $this->piclist);

      if(in_array($this->_id, $piclist_array))
      {
        // Image is already in there
        $this->_mainframe->enqueueMessage($this->output('ALREADY_IN'));
        return true;
      }
      if(count($piclist_array) == $this->_config->get('jg_maxfavourites'))
      {
        // Maximum number of images already reached
        $this->_mainframe->enqueueMessage($this->output('ALREADY_MAX'));
        return true;
      }

      if($this->using_database)
      {
        $this->_db->setQuery("UPDATE 
                                "._JOOM_TABLE_USERS."
                              SET 
                                piclist = '".$this->piclist.', '.$this->_id."'
                              WHERE 
                                uuserid = ".$this->_user->get('id')."
                            ");
        $return = $this->_db->query();
      }
      else
      {
        $this->_mainframe->setUserState('joom.favourites.pictures', $this->piclist.','.$this->_id);
      }
    }

    if(isset($return) && !$return)
    {
      $this->setError($this->_db->getErrorMsg());
      return false;
    }

    $this->_mainframe->enqueueMessage($this->output('SUCCESSFULLY_ADDED'));

    $this->_mainframe->triggerEvent('onJoomAfterAddFavourite', array($this->_id));

    return true;
  }

  /**
   * Method to remove an image from the favourites or the zip download
   *
   * @access  public
   * @return  boolean True on success, false otherwise
   * @since   1.0.0
   */
  function removeImage()
  {
    $piclist = explode(',', $this->piclist);
    if(!in_array($this->_id, $piclist))
    {
      $this->_mainframe->enqueueMessage($this->output('NOT_IN'));
      return true;
    }

    $new_piclist = array();
    foreach($piclist as $picid)
    {
      if($picid != $this->_id)
      {
        array_push($new_piclist, $picid);
      }
    }
    if(!count($new_piclist))
    {
      $new_piclist = NULL;
      $set_piclist = "SET piclist = NULL ";
    }
    else
    {
      $new_piclist = implode(',', $new_piclist);
      $set_piclist = "SET piclist = '".$new_piclist."' ";
    }

    if($this->using_database)
    {
      $this->_db->setQuery("UPDATE 
                              "._JOOM_TABLE_USERS."
                              $set_piclist
                            WHERE 
                              uuserid = ".$this->_user->get('id')."
                          ");
      if(!$this->_db->query())
      {
        $this->setError($this->_db->getErrorMsg());
        return false;
      }
    }
    else
    {
      $this->_mainframe->setUserState('joom.favourites.pictures', $new_piclist);
    }

    $this->_mainframe->enqueueMessage($this->output('SUCCESSFULLY_REMOVED'));

    $this->_mainframe->triggerEvent('onJoomAfterRemoveFavourite', array($this->_id));

    return true;
  }

  /**
   * Method to remove all images from the favourites or the zip download
   *
   * @access  public
   * @return  boolean True on success, false otherwise
   * @since   1.0.0
   */
  function removeAll()
  {
    if($this->using_database)
    {
      $this->_db->setQuery("UPDATE 
                              "._JOOM_TABLE_USERS."
                            SET 
                              piclist = NULL
                            WHERE 
                              uuserid = ".$this->_user->get('id')."
                          ");
      if(!$this->_db->query())
      {
        $this->setError($this->_db->getErrorMsg());
        return false;
      }
    }
    else
    {
      $this->_mainframe->setUserState('joom.favourites.pictures', NULL);
    }
    
    $this->_mainframe->enqueueMessage($this->output('ALL_REMOVED'));

    $this->_mainframe->triggerEvent('onJoomAfterClearFavourites');

    return true;
  }

  /**
   * Method to switch the current layout
   *
   * @access  public
   * @return  boolean True
   * @since   1.0.0
   */
  function switchLayout()
  {
    $layout = JRequest::getCmd('layout');
    if(
        ($layout && $layout != 'default')
      ||
         $this->layout
      )
    {
      if($this->using_database)
      {
        $this->_db->setQuery("UPDATE 
                                "._JOOM_TABLE_USERS."
                              SET 
                                layout  = '0'
                              WHERE 
                                uuserid = ".$this->_user->get('id')."
                            ");
        $this->_db->query();
      }
      else
      {
        $this->_mainframe->setUserState('joom.favourites.layout', 0);
      }
    }
    else
    {
      if($this->using_database)
      {
        $this->_db->setQuery("UPDATE 
                                "._JOOM_TABLE_USERS."
                              SET 
                                layout = '1'
                              WHERE 
                                uuserid = ".$this->_user->get('id')."
                            ");
        $this->_db->query();
      }
      else
      {
        $this->_mainframe->setUserState('joom.favourites.layout', 1);
      }
    }

    return true;
  }

  /**
   * Method to create the zip archive with all selected images
   *
   * @access  public
   * @return  boolean True on success, false otherwise
   * @since   1.0.0
   */
  function createZip()
  {
    // Check whether zip download is allowed
    if(    !$this->_config->get('jg_zipdownload')
        && ($this->_user->get('id') || !$this->_config->get('jg_usefavouritesforpubliczip'))
      )
    {
      $this->_mainframe->redirect(JRoute::_('index.php?view=favourites', false), JText::_('JGS_FAVOURITES_MSG_NOT_ALLOWED'), 'notice');
    }

    // Require the zip PclZip Library
    if(file_exists(JPATH_ADMINISTRATOR.DS.'includes'.DS.'pcl'.DS.'pclzip.lib.php'))
    {
      require_once(JPATH_ADMINISTRATOR.DS.'includes'.DS.'pcl'.DS.'pclzip.lib.php');
    }
    else
    {
      $this->_mainframe->redirect(JRoute::_('index.php?view=favourites' ,false), JText::_('JGS_FAVOURITES_MSG_ZIPLIBRARY_NOT_FOUND'), 'notice');
    }

    // Name of the zip archive
    $zipname = 'components/com_joomgallery/joomgallery_'.date('d_m_Y').'__';
    if($userid = $this->_user->get('id'))
    {
      $zipname .= $userid.'_';
    }
    $zipname .= mt_rand(10000, 99999).'.zip';

    // Create the zip archive
    $zipfile = new PclZip($zipname);
    if(is_null($this->piclist))
    {
      $this->_mainframe->redirect(JRoute::_('index.php?view=favourites', false), $this->output('NO_PICTURES'), 'notice');
    }

    $files  = array();
    $this->_db->setQuery("SELECT
                            id,
                            catid,
                            imgfilename
                          FROM
                            "._JOOM_TABLE_IMAGES."
                          WHERE
                            id IN (".$this->_db->getEscaped($this->piclist).")
                        ");
    $rows = $this->_db->loadObjectList();

    foreach($rows as $row)
    {
      $orig = $this->_ambit->getImg('orig_path', $row);
      if(file_exists($orig))
      {
        array_push($files, $orig);
      }
      else
      {
        $img = $this->_ambit->getImg('img_path', $row);
        if(file_exists($img))
        {
          array_push($files, $img);
        }
      }
    }

    $createzip = $zipfile->create($files, PCLZIP_OPT_REMOVE_ALL_PATH);
    if(!$createzip)
    {
      // workaround for servers with wwwwrun problem
      JoomFile::chmod(JPATH_COMPONENT, 0777);
      $createzip = $zipfile->create($files, PCLZIP_OPT_REMOVE_ALL_PATH);
      JoomFile::chmod(JPATH_COMPONENT, 0755);
    }
    if($this->_user->get('id'))
    {
      if($this->user_exists)
      {
        $this->_db->setQuery("SELECT 
                                zipname 
                              FROM 
                                "._JOOM_TABLE_USERS."
                              WHERE 
                                uuserid = '".$this->_user->get('id')."'
                            ");
        if($old_zip = $this->_db->loadResult())
        {
          if(file_exists($old_zip))
          {
            jimport('joomla.filesystem.file');
            JFile::delete($old_zip);
          }
        }
        $this->_db->setQuery("UPDATE 
                                "._JOOM_TABLE_USERS."
                              SET 
                                time = NOW(),
                                zipname = '".$zipname."'
                              WHERE 
                                uuserid = ".$this->_user->get('id')."
                            ");
      }
      else
      {
        $this->_db->setQuery("INSERT INTO 
                                "._JOOM_TABLE_USERS."
                                  (uuserid, time, zipname)
                              VALUES
                                (".$this->_user->get('id').", NOW(), '".$zipname."')
                            ");
      }
    }
    else
    {
      $this->_db->setQuery("INSERT INTO 
                              "._JOOM_TABLE_USERS."
                                (time, zipname)
                            VALUES
                              (NOW(),'".$zipname."')
                          ");
    }
    $this->_db->query();

    if(!$createzip)
    {
      $this->setError($zipfile->errorInfo(true));
      return false;
    }

    $this->_mainframe->setUserState('joom.favourites.zipname', $zipname);

    return true;
  }

  /**
   * Method to get all the favourites of the current user
   *
   * @access  public
   * @return  array   An array of images data
   * @since   1.5.5
   */
  function getFavourites()
  {
    if($this->_loadFavourites())
    {
      return $this->_favourites;
    }

    return array();
  }

  /**
   * Method to get the number of comments of a specific image
   *
   * @TODO: Performance?
   * @TODO: Recognize external commenting systems!
   *
   * @access  public
   * @return  int     The number of comments
   * @since   1.5.5
   */
  function getCommentsNumber($id)
  {
    // Check how many comments do exist
    $this->_db->setQuery("SELECT
                            COUNT(*)
                          FROM
                            "._JOOM_TABLE_COMMENTS."
                          WHERE
                                cmtpic    = ".$id."
                            AND approved  = 1
                            AND published = 1
                         ");
    return $this->_db->loadResult();
  }

  /**
   * Method to load images data
   *
   * @access  private
   * @return  boolean True on success, false otherwise
   * @since   1.5.5
   */
  function _loadFavourites()
  {
    // Load the images if they don't already exist
    if(empty($this->_favourites))
    {
      $this->_db->setQuery("SELECT 
                              *,
                              a.owner AS imgowner
                            FROM 
                              "._JOOM_TABLE_IMAGES." AS a, 
                              "._JOOM_TABLE_CATEGORIES." AS c
                            ".$this->_buildWhereClause()."
                            ".$this->_buildOrderClause()."
                          ");

      if(!$rows = $this->_db->loadObjectList())
      {
        return false;
      }

      $this->_favourites = $rows;

      return true;
    }
  }

  /**
   * Method to load images data
   *
   * @access  private
   * @return  boolean True on success, false otherwise
   * @since   1.5.5
   */
  function _buildWhereClause()
  {
    $where = "WHERE a.catid = c.cid";

    if(is_null($this->piclist))
    {
      $where .= " LIMIT 0";
    }
    else
    {
      $where .= " AND a.id IN (".$this->_db->getEscaped($this->piclist).")";
    }

    return $where;
  }

  /**
   *
   */
  function _buildOrderClause()
  {
    $orderby = '';

    return $orderby;
  }

  function output($msg)
  {
    return JText::_($this->_output.$msg);
  }
}
