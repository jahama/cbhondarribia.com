<?php
// $HeadURL: https://joomgallery.org/svn/joomgallery/JG-1.5/JG/trunk/administrator/components/com_joomgallery/helpers/helper.php $
// $Id: helper.php 2103 2010-04-25 10:47:08Z chraneco $
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
 * JoomGallery Global Helper for the Backend
 *
 * @static
 * @package JoomGallery
 * @since 1.5.5
 */
class JoomHelper
{
  /**
   * Returns all parent categories of a specific category
   *
   * @param   int     $category The ID of the specific child category
   * @param   boolean $child    True, if category itself shall also be returned, defaults to false
   * @return  array   An array of parent category objects
   * @since   1.5.5
   */
  function getAllParentCategories($category, $child = false)
  {
    static $categories = false;

    if($categories === false)
    {
      $db   = & JFactory::getDBO();
      $user = & JFactory::getUser();

      $db->setQuery("SELECT
                      cid,
                      name,
                      parent
                    FROM
                      "._JOOM_TABLE_CATEGORIES."
                    WHERE
                          published = 1
                      AND access <= ".$user->get('aid')."
                  ");
      $categories = $db->loadObjectList('cid');
    }

    $parents = array();

    $category = $categories[$category];

    if($child)
    {
      array_unshift($parents, $category);
    }

    while($category)
    {
      if(isset($categories[$category->parent]))
      {
        $category = $categories[$category->parent];
        array_unshift($parents, $category);
      }
      else
      {
        $category = false;
      }
    }

    return $parents;
  }

  /**
   * Wrap text
   *
   * @param   string  $text Text to wrap
   * @param   int     $nr   Number of chars to wrap
   * @return  string  Wrapped text
   * @since   1.0.0
   */
  function processText($text, $nr = 40)
  {
    $mytext   = explode(' ', trim($text));
    $newtext  = array();
    foreach($mytext as $k => $txt)
    {
      if(strlen($txt) > $nr)
      {
        $txt  = wordwrap($txt, $nr, '- ', 1);
      }
      $newtext[]  = $txt;
    }

    return implode(' ', $newtext);
  }

  /**
   * Reads the category path from array.
   * If not set read db and add to array.
   *
   * @param   int     $catid  The ID of the category
   * @return  string  The category path
   * @since   1.0.0
   */
  function getCatPath($catid)
  {
    static $catpath = array();

    if(!isset($catpath[$catid]))
    {
      $database = & JFactory::getDBO();
      $database->setQuery(" SELECT
                              catpath
                            FROM
                              "._JOOM_TABLE_CATEGORIES."
                            WHERE
                              cid= ".$catid
                          );

      if(!$path = $database->loadResult())
      {
        $catpath[$catid] = '';
      }
      else
      {
        $catpath[$catid] = $path.'/';
      }
    }

    return $catpath[$catid];
  }
}