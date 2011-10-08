<?php
// $HeadURL: https://joomgallery.org/svn/joomgallery/JG-1.5/JG/trunk/components/com_joomgallery/helpers/html/joomgallery.php $
// $Id: joomgallery.php 2260 2010-08-11 17:21:07Z aha $
/******************************************************************************\
**   JoomGallery  1.5                                                         **
**   By: JoomGallery::ProjectTeam                                             **
**   Copyright (C) 2008 - 2009  M. Andreas Boettcher                          **
**   Based on: JoomGallery 1.0.0 by JoomGallery::ProjectTeam                  **
**   Released under GNU GPL Public License                                    **
**   License: http://www.gnu.org/copyleft/gpl.html or have a look             **
**   at administrator/components/com_joomgallery/LICENSE.TXT                  **
\******************************************************************************/

defined('_JEXEC') or die('Direct Access to this location is not allowed.');

/**
 * Utility class for creating HTML output
 *
 * @static
 * @package JoomGallery
 * @since   1.5.5
 */
class JHTMLJoomGallery
{
  /**
   * Displays the approved state as a clickable button
   *
   * @access  public
   * @param   object  $row      Image object, holds image information
   * @param   int     $i        Number of the image in the current list
   * @param   string  $actionA  Description of action if image is approved
   * @param   string  $actionR  Description of action if image is rejected
   * @param   string  $altA     Alternative text for the icon if image is approved
   * @param   string  $altR     Alternative text for the icon if image is rejected
   * @param   string  $imgY     Icon if image is approved
   * @param   string  $imgX     Icon if image is rejected
   * @param   string  $prefix   Optional prefix of the task
   * @return  string  The HTML output
   * @since   1.5.5
   */
  function approved(&$row, $i, $actionA = 'Reject image', $actionR = 'Approve image', $altA = 'Approved', $altR = 'Rejected', $imgY = 'tick.png', $imgX = 'publish_x.png', $prefix = '')
  {
    $img 	= $row->approved ? $imgY : $imgX;
    $task 	= $row->approved ? 'reject' : 'approve';
    $alt 	= $row->approved ? JText::_($altA) : JText::_($altR);
    $action = $row->approved ? JText::_($actionA) : JText::_($actionR);

    $href = '
    <a href="javascript:void(0);" onclick="return listItemTask(\'cb'. $i .'\',\''. $prefix.$task .'\')" title="'. $action .'">
    <img src="images/'. $img .'" border="0" alt="'. $alt .'" /></a>'
    ;

    return $href;
  }

  /**
   * Displays the type of an image or category
   */
  /*function type(&$row, $user_uploaded = 'JGA_USER_UPLOAD', $admin_uploaded = 'JGA_ADMIN_UPLOAD')
  {
    if(
        (isset($row->useruploaded)
          AND $row->useruploaded
        )
        OR
        (!isset($row->useruploaded)
          AND $row->owner != null
        )
      )
    {
    $img    = 'users.png';
    $title  = JText::_($user_uploaded);
    }
    else
    {
    $img    = 'credits.png';
    $title  = JText::_($admin_uploaded);
    }

    $html = '<img src="../includes/js/ThemeOffice/'.$img.'" alt="'.$title.'" title="'.$title.'" />';

    return $html;
  }*/

  /**
   * returns a select list of available accesslevels
   */
  /*function access($value = null, $name = 'access')
  {
    $db = & JFactory::getDBO();
    $db->setQuery('SELECT id, name FROM #__groups');

    $arr = array();
    $groups = $db->loadObjectList();
    foreach($groups as $group)
    {
      $arr[] = JHTML::_('select.option', $group->id, JText::_($group->name));
    }

    return JHTML::_('select.genericlist', $arr, $name, null, 'value', 'text', $value, $name);
  }*/

  /**
   * returns a select list of available usergroups
   */
  /*function usergroup($value = null, $name = 'access')
  {
    $acl    =& JFactory::getACL();
    $gtree  = $acl->get_group_children_tree(null, 'USERS', false);

    return JHTML::_('select.genericlist', $gtree, $name, null, 'value', 'text', $value, $name);
  }*/

  /**
   * Displays the name or user name of a category, image or comment owner
   * and may link it to the profiles of other extensions (if available).
   *
   * @access  public
   * @param   int     $userId   The ID of the user who will be displayed
   * @param   boolean $extended True if a possible plugin shall display more information, defaults to true.
   * @return  string  The user's name
   * @since   1.5.5
   */
  function displayName($userId, $context = null)
  {
    $userId = intval($userId);

    if(!$userId)
    {
      return JText::_('JGS_COMMON_NO_DATA');
    }

    $config     = & JoomConfig::getInstance();
    $dispatcher = & JDispatcher::getInstance();

    $realname   = $config->get('jg_realname') ? true : false;

    $plugins    = $dispatcher->trigger('onJoomDisplayUser', array(&$userId, $realname, $context));

    foreach($plugins as $plugin)
    {
      if($plugin)
      {
        return $plugin;
      }
    }

    $user = & JFactory::getUser($userId);

    if($realname)
    {
      $username = $user->get('name');
    }
    else
    {
      $username = $user->get('username');
    }

    return $username;
  }

  /**
   * Fires onPrepareContent for a text if configured in the gallery
   *
   * @access  public
   * @param   string  $text The text to be transformed.
   * @return  string  The text after transformation.
   * @since   1.5.5
   */
  function text($text)
  {
    $config = & JoomConfig::getInstance();

    if($config->get('jg_contentpluginsenabled'))
    {
      $text = JHTML::_('content.prepare', $text);
    }

    return $text;
  }

  /**
   * Returns the HTML tag of a specified icon
   *
   * @access  public
   * @param   string  $icon       Filename of the icon
   * @param   string  $alt        Alternative text of the icon
   * @param   string  $extra      Additional HTML code in the tag
   * @param   string  $path       Path to the icon, if null the default path is used
   * @param   boolean $translate  Determines whether the text will be translated, defaults to true.
   * @return  string  The HTML output
   * @since   1.5.5
   */
  function icon($icon, $alt = 'Icon', $extra = null, $path = null, $translate = true)
  {
    if(is_null($path))
    {
      $ambit = JoomAmbit::getInstance();
      $path = $ambit->get('icon_url');
    }

    if($extra)
    {
      $extra = ' '.$extra;
    }

    if($translate)
    {
      $alt = JText::_($alt);
    }

    return '<img src="'.$path.$icon.'" alt="'.$alt.'" class="pngfile jg_icon"'.$extra.' />';
  }

  /**
   * Displays the toplist bar
   *
   * @access  public
   * @return  void
   * @since   1.5.5
   */
  function toplistbar()
  {
    $config = JoomConfig::getInstance();
    $separator = "    -\n";

    echo JText::sprintf('JGS_TOPLIST_TOP', $config->get('jg_toplist')); ?>:
<?php
    if($config->get('jg_showrate'))
    {
?>
    <a href="<?php echo JRoute::_('index.php?view=toplist&type=toprated'); ?>">
      <?php echo JText::_('JGS_COMMON_TOPLIST_TOP_RATED'); ?></a>
<?php
      if($config->get('jg_showlatest') || $config->get('jg_showcom') || $config->get('jg_showmostviewed'))
      {
        echo $separator;
      }
    }
    if($config->get('jg_showlatest'))
    {
?>
    <a href="<?php echo JRoute::_('index.php?view=toplist&type=lastadded'); ?>">
      <?php echo JText::_('JGS_COMMON_TOPLIST_LAST_ADDED'); ?></a>
<?php
      if($config->get('jg_showcom') || $config->get('jg_showmostviewed'))
      {
        echo $separator;
      }
    }
    if($config->get('jg_showcom'))
    {
?>
    <a href="<?php echo JRoute::_('index.php?view=toplist&type=lastcommented'); ?>">
      <?php echo JText::_('JGS_COMMON_TOPLIST_LAST_COMMENTED'); ?></a>
<?php
      if($config->get('jg_showmostviewed'))
      {
        echo $separator;
      }
    }
    if($config->get('jg_showmostviewed'))
    {
?>
    <a href="<?php echo JRoute::_('index.php?view=toplist'); ?>">
      <?php echo JText::_('JGS_COMMON_TOPLIST_MOST_VIEWED'); ?></a>
<?php
    }
  }

  /**
   * Creates the name tags
   *
   * @access  public
   * @param   array   An array of name tag objects
   * @return  string  The HTML output
   * @since   1.5.5
   */
  function nametags(&$rows)
  {
    if(!count($rows))
    {
      return '';
    }

    $config = & JoomConfig::getInstance();
    $width  = $config->get('jg_nameshields_width');

    $html   = '';
    $i      = 1;
    foreach($rows as $row)
    {
      $name     = JHTMLJoomGallery::displayName($row->nuserid, 'nametag');
      $length   = strlen(trim(strip_tags($name))) * $width;

      $html    .= '<div id="id'.$i.'" style="position:absolute; top:'.$row->nxvalue.'px; left:'.$row->nyvalue.'px; width:'.$length.'px; z-index:'.$row->nzindex.'" class="nameshield';
      if($config->get('jg_nameshields_others'))
      {
        $user = & JFactory::getUser();
        if($row->by == $user->get('id') || $row->nuserid == $user->get('id') || $user->get('gid') > 23)
        {
          $overlib  = '<a class="nametagRemoveIcon" style="position:relative; top:-25px; left:'.($length - 25).'px; z-index:'.$row->nzindex.'" href="javascript:if(confirm(\''.JText::_('JGS_DETAIL_NAMETAGS_ALERT_SURE_DELETE_OTHERS', true).'\')){ location.href=\''.JRoute::_('index.php?task=removenametag&id='.$row->npicid.'&nid='.$row->nid, false).'\';}">'
                        .JHTML::_('joomgallery.icon', 'tag_delete.png', 'JGS_DETAIL_NAMETAGS_DELETE_OTHERS_TIPCAPTION').'</a>';
          $overlib  = str_replace("\r\n", '', htmlspecialchars($overlib, ENT_QUOTES, 'UTF-8'));
          $html  .= ' nametagWithTip" title="'.$overlib;
        }
      }
      $html    .= '">';
      $html    .= $name;
      $html    .= '</div>';

      $i++;
    }

    return $html;
  }

  /**
   * Creates the pagination in detail/category/sub-catagory view
   *
   * @TODO: Replace german variable names
   *
   * @access  public
   * @param   string  $url          Base URL according to view, completion in this function
   * @param   int     $pageCount    Total count of all pages
   * @param   int     $currentPage  Current page
   * @param   string  $anchortag    Anchor to append
   * @return  string  All completed URLs to pages
   * @since   1.5.5
   */
  function pagination($url, &$pageCount, &$currentPage, $anchortag = '')
  {
    $retVal   = '';
    $ellipsis = '&hellip;';
    $aktpage  = 2;

    $anchortag = JHTMLJoomGallery::anchor($anchortag);

    // Variable for current page found and assembled
    $currItemfound = false;

    // Work on left edge
    if($currentPage == 1)
    {
      $currItemfound = true;
      $retVal .= '<span class="jg_pagenav">[1]</span>&nbsp;';
      $retVal .= '&nbsp;<a href="'.JRoute::_(sprintf($url, 2)).$anchortag.'" title="'.JText::_('JGS_COMMON_PAGE').' 2" class="jg_pagenav">2</a>'."\n";
    }
    else
    {
      // Current page not 1
      $retVal .= '&nbsp;<a href="'.JRoute::_(sprintf($url, 1)).$anchortag.'" title="'.JText::_('JGS_COMMON_PAGE').' 1" class="jg_pagenav">1</a>'."\n";
      if($currentPage == 2)
      {
        $currItemfound = true;
        $retVal .= '&nbsp;<span class="jg_pagenav">[2]</span>';
      } else {
        $retVal .= '&nbsp;<a href="'.JRoute::_(sprintf($url, 2)).$anchortag.'" title="'.JText::_('JGS_COMMON_PAGE').' 2" class="jg_pagenav">2</a>'."\n";
      }
    }
    // Range left from current page to 1 not assembled yet
    if(!$currItemfound)
    {
      // Construct pages left to current page
      // according to difference to left implement jumps
      // If difference to current page too low, output them exactly
      if($currentPage - $aktpage < 6)
      {
        $aktpage++;
        for ($i = $aktpage; $i < $currentPage; $i++)
        {
          $retVal .= '&nbsp;<a href="'.JRoute::_(sprintf($url, $i)).$anchortag.'" title="'.JText::_('JGS_COMMON_PAGE').' '.$i.'" class="jg_pagenav">'.$i.'</a>'."\n";
          $aktpage++;
        }
      }
      else
      {
        // Otherwise output of remaining links evt. in steps
        // and in addition output of 2 left neighbours
        // completion of range at position 3 to (current page -3)
        $endbereich = $currentPage - 3;
        $jump = ceil(($endbereich - 5) / 4);
        if($jump == 0)
        {
          $jump = 1;
        }
        $aktpage = $aktpage + $jump;
        for($i = 1;$i < 4;$i++)
        {
          if($jump == 1)
          {
            $retVal .= '&nbsp;<a href="'.JRoute::_(sprintf($url, $aktpage)).$anchortag.'" title="'.JText::_('JGS_COMMON_PAGE').' '.$aktpage.'" class="jg_pagenav">'.$aktpage.'</a>'."\n";
          }
          else
          {
            $retVal .= $ellipsis.'&nbsp;<a href="'.JRoute::_(sprintf($url, $aktpage)).$anchortag.'" title="'.JText::_('JGS_COMMON_PAGE').' '.$aktpage.'" class="jg_pagenav">'.$aktpage.'</a>'."\n";
          }
          $aktpage = $aktpage + $jump;
        }
        if($aktpage != ($currentPage-2))
        {
          $retVal .= $ellipsis;
        }
        // Output of 2 pages left beside current page
        $retVal .= '&nbsp;<a href="'.JRoute::_(sprintf($url, $currentPage-2)).$anchortag.'" title="'.JText::_('JGS_COMMON_PAGE').' '.($currentPage-2).'" class="jg_pagenav">'.($currentPage-2).'</a>'."\n";
        $retVal .= '&nbsp;<a href="'.JRoute::_(sprintf($url, $currentPage-1)).$anchortag.'" title="'.JText::_('JGS_COMMON_PAGE').' '.($currentPage-1).'" class="jg_pagenav">'.($currentPage-1).'</a>'."\n";
      }
      // Current page
      $retVal .= '&nbsp;<span class="jg_pagenav">['.$currentPage.']</span>&nbsp;';
      $currItemfound = true;
      $aktpage = $currentPage;
    }
    // Current page found, right beside construct 2 pages
    // max to end
    if($pageCount-$aktpage< 3)
    {
      $anzahl = $pageCount - $aktpage;
    }
    else
    {
      $anzahl = 2;
    }
    $aktpage++;
    for($i = 1;$i <= $anzahl;$i++)
    {
      $retVal .= '&nbsp;<a href="'.JRoute::_(sprintf($url, $aktpage)).$anchortag.'" title="'.JText::_('JGS_COMMON_PAGE').' '.$aktpage.'" class="jg_pagenav">'.$aktpage.'</a>'."\n";
      $aktpage++;
    }
    if($aktpage == $pageCount)
    {
      $retVal .= '&nbsp;<a href="'.JRoute::_(sprintf($url,$aktpage)).$anchortag.'" title="'.JText::_('JGS_COMMON_PAGE').' '.$aktpage.'" class="jg_pagenav">'.$aktpage.'</a>'."\n";
      return $retVal;
    }
    // All ready
    if($aktpage > $pageCount)
    {
      return $retVal;
    }
    // If only 3 pages to end remain
    if($aktpage < $pageCount && ($pageCount - $aktpage) < 7)
    {
      for($i = $aktpage;$i <= $pageCount;$i++)
      {
        $retVal .= '&nbsp;<a href="'.JRoute::_(sprintf($url, $aktpage)).$anchortag.'" title="'.JText::_('JGS_COMMON_PAGE').' '.$aktpage.'" class="jg_pagenav">'.$aktpage.'</a>'."\n";
        $aktpage++;
      }
    }
    else
    {
      // Output of remaining pages in steps
      // and in addition output of last page and the neighbour left
      // Complete the range (current page+3) to (last page - 3)
      $startbereich = $aktpage;
      $endbereich   = $pageCount-3;
      $jump         = ceil(($endbereich - $startbereich) / 4);
      $aktpage      = $aktpage + $jump;
      for($i = 1; $i < 4; $i++)
      {
        if($jump == 1)
        {
          $retVal .= '&nbsp;<a href="'.JRoute::_(sprintf($url, $aktpage)).$anchortag.'" title="'.JText::_('JGS_COMMON_PAGE').' '.$aktpage.'" class="jg_pagenav">'.$aktpage.'</a>'."\n";
        }
        else
        {
          $retVal .= $ellipsis.'&nbsp;<a href="'.JRoute::_(sprintf($url, $aktpage)).$anchortag.'" title="'.JText::_('JGS_COMMON_PAGE').' '.$aktpage.'" class="jg_pagenav">'.$aktpage.'</a>'."\n";
        }
        $aktpage  = $aktpage + $jump;
      }
      $retVal .= $ellipsis;
      // Output of penultimate
      $retVal .= '&nbsp;<a href="'.JRoute::_(sprintf($url, $pageCount - 1)).$anchortag.'" title="'.JText::_('JGS_COMMON_PAGE').' '.($pageCount-1).'" class="jg_pagenav">'.($pageCount-1).'</a>'."\n";
      // Output of last
      $retVal .= '&nbsp;<a href="'.JRoute::_(sprintf($url, $pageCount)).$anchortag.'" title="'.JText::_('JGS_COMMON_PAGE').' '.($pageCount).'" class="jg_pagenav">'.($pageCount).'</a>'."\n";
    }

    return $retVal;
  }

  /**
   * Creates the path to a category which can be displayed
   *
   * @TODO: Add a parameter '$linked'? The items can be linked to the
   *        category view then and pathway could be created more easily.
   *
   * @access  public
   * @param   int     $catid      The category ID
   * @param   string  $separator  The separator
   * @return  The HTML output
   * @since   1.5.5
   */
  function categoryPath($catid, $separator = ' &raquo; ')
  {
    static $path;

    if(!isset($path))
    {
      $path = array();
    }

    $catid = intval($catid);
    if(empty($path[$catid]))
    {
      $database = & JFactory::getDBO();
      $user = & JFactory::getUser();

      $cat = $catid;
      if(!$catid)
      {
        return;
      }
      $parent_id = true;
      while($parent_id)
      {
        // Read name and parent_id
        $query = "SELECT name, parent
            FROM "._JOOM_TABLE_CATEGORIES."
            WHERE cid=$cat AND access<='".$user->get('aid')."'";
        $database->setQuery( $query );
        $result = $database->loadObject();
        $parent_id = $result->parent;
        $name = $result->name;
        // Add path to array
        if(empty($path[$catid]))
        {
          $path[$catid] = $name;
        }
        else
        {
          $path[$catid] = $name . ' &raquo; ' . $path[$catid];
        }
        // Next loop
        $cat = $parent_id;
      }
    }

    return $path[$catid] . ' ';
  }

  /**
   * Creates a JavaScript tree with all sub-categories of a category
   *
   * @access  public
   * @param   int     $rootcatid  The category ID
   * @param   string  $align      Alignment of the tree
   * @return  void
   * @since   1.5.0
   */
  function categoryTree($rootcatid, $align)
  {
    $config   = & JoomConfig::getInstance();
    $db       = & JFactory::getDBO();
    $user     = & JFactory::getUser();

    static $categories = Array();

    if(empty($categories))
    {
      // Get all categories
      $db->setQuery(" SELECT
                        cid,
                        name,
                        parent,
                        access
                      FROM
                        "._JOOM_TABLE_CATEGORIES."
                      WHERE
                        published = 1
                      ORDER BY
                        parent ASC,
                        name ASC
                  ");
      $cats = $db->loadObjectList();
      if(!empty($cats))
      {
        JoomHelper::sortCategoryList($cats, $categories);
      }
    }

    // Check access rights settings
    $filter_cats    = false;
    $show_rmsm      = false;
    $show_rmsm_cats = false;
    if(!$config->get('jg_rmsm') && !$config->get('jg_showrmsmcats'))
    {
      $filter_cats = true;
    }
    else
    {
      if($config->get('jg_rmsm'))
      {
        $show_rmsm = true;
      }
      if($config->get('jg_showrmsmcats'))
      {
        $show_rmsm_cats = true;
      }
    }

    // Array to hold the relevant sub-category objects
    $subcategories = array();
    // Array to hold the valid parent categories
    $validParentCats   = array();
    $validParentCats[] = $rootcatid;
    // Get all relevant the subcategories
    foreach($categories as $category)
    {
      if(   ($category->parent == $rootcatid  || in_array($category->parent, $validParentCats))
         && ($filter_cats == false || $user->get('aid') >= $category->access)
        )
      {
        $subcategories[]   = $category;
        $validParentCats[] = $category->cid;
      }
    }

    // Show the treeview
    $count = count($subcategories);
    if(!$count)
    {
      return;
    }

    if($config->get('jg_showcatthumb') == 0 || $config->get('jg_showcatthumb') == 1)
    {
      switch($config->get('jg_ctalign'))
      {
        case 2:
          $align = 'jg_element_txt_r';
          break;
        case 3:
          $align = 'jg_element_txt_c';
          break;
        default:
          break;
      }
    }

    if($align == 'jg_element_txt' || $align == 'jg_element_txt_l')
    {
?>
          <div class="jg_treeview_l">
<?php
    }
    elseif($align == 'jg_element_txt_r')
    {
?>
          <div class="jg_treeview_r">
<?php
    }
    else
    {
?>
          <div class="jg_treeview_c">
<?php
    }
            // Debug
            // echo "ctalign=".$ctalign;
?>
            <table>
              <tr>
                <td>
                  <script type="text/javascript" language="javascript">
                  <!--
                  // Create new dTree object
                  var jg_TreeView<?php echo $rootcatid;?> = new jg_dTree( <?php echo "'"."jg_TreeView".$rootcatid."'"; ?>,
                                                                          <?php echo "'".JURI::root()."components/com_joomgallery/assets/js/dTree/img/"."'";?> );
                  // dTree configuration
                  jg_TreeView<?php echo $rootcatid;?>.config.useCookies = true;
                  jg_TreeView<?php echo $rootcatid;?>.config.inOrder = true;
                  jg_TreeView<?php echo $rootcatid;?>.config.useSelection = false;
                  // Add root node
                  jg_TreeView<?php echo $rootcatid;?>.add( 0, -1, ' ', <?php echo "'".JRoute::_( 'index.php?view=gallery'.$rootcatid)."'"; ?>, false);
                  // Add node to hold all subcategories
                  jg_TreeView<?php echo $rootcatid;?>.add( <?php echo $rootcatid; ?>, 0, <?php echo "'".JText::_('JGS_COMMON_SUBCATEGORIES')."(".$count.")"."'";?>,
                                                           <?php echo "'".JRoute::_('index.php?view=category&catid='.$rootcatid)."'"; ?>, false);
<?php
    foreach($subcategories AS $category)
    {
      // Create sub-category name and sub-category link
      $rm_or_sm = "";
      if($filter_cats == false || $user->get('aid') >= $category->access)
      {
        if($user->get('aid') >= $category->access)
        {
          $cat_name = addslashes(trim( $category->name ));
          $cat_link = JRoute::_('index.php?view=category&catid='.$category->cid);
        }
        else
        {
          $cat_name = ($show_rmsm_cats == true ? addslashes(trim($category->name)) : JText::_('JGS_COMMON_NO_ACCESS'));
          $cat_link = '';
        }
      }
      if($show_rmsm == true)
      {
        if(intval($category->access) == 1)
        {
          $rm_or_sm = '&nbsp'.'<span class="jg_rm">'.JText::_('JGS_COMMON_REGISTERED_MEMBERS').'</span>';
        }
        elseif(intval($category->access) == 2)
        {
          $rm_or_sm = '&nbsp'.'<span class="jg_sm">'.JText::_('JGS_COMMON_SPECIAL_MEMBERS').'</span>';
        }
        $cat_name .= $rm_or_sm;
      }
      if($config->jg_showcatasnew)
      {
        $isnew = JoomHelper::checkNewCatg($category->cid);
      }
      else
      {
        $isnew = '';
      }
      $cat_name .= '&nbsp'.$isnew;

      // Add node
      if($category->parent == $rootcatid)
      {
?>
                  jg_TreeView<?php echo $rootcatid;?>.add(<?php echo $category->cid;?>,
                                                          <?php echo $rootcatid;?>,
                                                          <?php echo "'".$cat_name."'";?>,
                                                          <?php echo "'".$cat_link."'"; ?>,
                                                          <?php echo $user->get('aid') >= $category->access ? 'false' :'true'; ?>
                                                          );
<?php
      }
      else
      {
?>
                  jg_TreeView<?php echo $rootcatid;?>.add(<?php echo $category->cid;?>,
                                                          <?php echo $category->parent;?>,
                                                          <?php echo "'".$cat_name."'";?>,
                                                          <?php echo "'".$cat_link."'"; ?>,
                                                          <?php echo $user->get('aid') >= $category->access ? 'false' :'true'; ?>
                                                          );
<?php
      }
    }
?>
                  document.write(jg_TreeView<?php echo $rootcatid;?>);
                  -->
                  </script>
                </td>
              </tr>
            </table>
          </div>
<?php
  }

  /**
   * Returns the string of an anchor for a URL if using anchors is enabled
   *
   * @access  public
   * @param   string  $name Name of the anchor
   * @return  string  The string of the anchor
   * @since   1.5.5
   */
  function anchor($name = 'joomimg')
  {
    $config   = & JoomConfig::getInstance();

    $anchor = '';
    if($name && $config->get('jg_anchors'))
    {
      $anchor = '#'.$name;
    }

    return $anchor;
  }

  /**
   * Returns the HTML output of a tooltip if showing tooltips is enabled
   *
   * @access  public
   * @param   string  $text       The text of the tooltip
   * @param   string  $title      The title of the tooltip
   * @param   boolean $addclass   True, if the class attribute shall be added and false if it's already there
   * @param   boolean $translate  True, if the text and the title shall be translated
   * @param   string  $class      The name of the class used by Mootools to detect the tooltips
   * @return  string  The HTML output created
   * @since   1.5.5
   */
  function tip($text = 'Tooltip', $title = null, $addclass = false, $translate = true, $class = 'hasHint')
  {
    $config   = & JoomConfig::getInstance();

    $html = '';
    if($config->get('jg_tooltips'))
    {
      static $loaded = false;

      if(!$loaded)
      {
        $params = array();
        if($config->get('jg_tooltips') == 2)
        {
          $params['className'] = 'jg-tool';
        }

        JHTML::_('behavior.tooltip', '.'.$class, $params);
        $loaded = true;
      }

      if($translate)
      {
        $text = JText::_($text);
      }

      if($title)
      {
        if($translate)
        {
          $title = JText::_($title);
        }

        $text = $title.'::'.$text;
      }

      if($addclass)
      {
        $html = ' class="'.$class.'" title="'.$text.'"';
      }
      else
      {
        $html = ' '.$class.'" title="'.$text;
      }
    }

    return $html;
  }

  /**
   * Creates invisible links to images in order that
   * the popup boxes recognize them
   *
   * @access  public
   * @param   array   $rows   An array of image objects to use
   * @param   int     $start  Index of the first image to use
   * @param   int     $end    Index of the last image to use, if null we will use every image from $start to end
   * @return  string  The HTML output
   * @since   1.5.5
   */
  function popup(&$rows, $start = 0, $end = null)
  {
    $config   = & JoomConfig::getInstance();
    $ambit    = & JoomAmbit::getInstance();
    $user     = & JFactory::getUser();
    $view     = JRequest::getCmd('view');

    $html = '';

    if( ( ($view == 'category' && $config->get('jg_detailpic_open') > 4
           && (    $config->get('jg_showdetailpage') == 1
               || ($config->get('jg_showdetailpage') == 0 && $user->get('aid') > 0)
              )
          )
         || (     $view == 'detail'
              &&  (   ($config->get('jg_bigpic') == 1 && $user->get('aid') > 0)
                    || $config->get('jg_bigpic') == 2
                  )
              && $config->get('jg_bigpic_open') > 4
            )
        )
      )
    {
      if(is_null($end))
      {
        $rows = array_slice($rows, (int)$start);
      }
      else
      {
        $rows = array_slice($rows, (int)$start, (int)$end);
      }

      $html = '  <div class="jg_displaynone">';

      foreach($rows as $row)
      {
        if(  ($view == 'detail' && is_file($ambit->getImg('orig_path', $row)))
           || $view == 'category'
          )
        {
          if($view == 'detail')
          {
            $type = $config->get('jg_bigpic_open');
          }
          else
          {
            $type = $config->get('jg_detailpic_open');
          }
          $link = JHTMLJoomGallery::openImage($type, $row);
          $html .= '
      <a href="'.$link.'">'.$row->id.'</a>';
        }
      }
      $html .= '
    </div>';
    }

    return $html;
  }

  /**
   * Returns the link to a given image, which opens the image in slimbox, for example
   *
   * @access  public
   * @param   int         $open   Use of lightbox, javascript window or DHTML container?
   * @param   int/object  $image  The id of the image or an object which holds the image data
   * @param   string      $type   The image type ('thumb', 'img', 'orig'), use 'false' for default value
   * @return  string      The link to the image
   * @since   1.0.0
   */
  function openImage($open, $image, $type = false, $group = null)
  {
    static $loaded = array();

    $config = & JoomConfig::getInstance();
    $ambit  = & JoomAmbit::getInstance();
    $user   = & JFactory::getUser();

    // No detail view for guests if adjusted like that
    if(!$config->get('jg_showdetailpage') && !$user->get('aid'))
    {
      return 'javascript:alert(\''.JText::_('JGS_COMMON_ALERT_NO_DETAILVIEW_FOR_GUESTS', true).'\')';
    }

    if(!is_object($image))
    {
      $image  = $ambit->getImgObject($image);
    }

    if(!$type)
    {
      if(     $config->get('jg_detailpic_open') > 4
          &&  $config->get('jg_lightboxbigpic')
        )
      {
        $type = 'orig';
      }
      else
      {
        if(JRequest::getCmd('view') == 'detail')
        {
          $type = 'orig';
        }
        else
        {
          $type = 'img';
        }
      }
    }

    if(!$group)
    {
      $group = 'joomgallery';
    }

    $img_url  = $ambit->getImg($type.'_url',   $image);
    $img_path = $ambit->getImg($type.'_path',  $image);

    switch($open)
    {
      case 1: // New window
        $link = $img_url."\" target=\"_blank";
        break;
      case 2: // JavaScript window
        $imginfo = getimagesize($img_path);
        $link    = "javascript:joom_openjswindow('".$img_url."','".JoomHelper::fixForJS($image->imgtitle)."', '".$imginfo[0]."','".$imginfo[1]."')";

        if(!isset($loaded[2]))
        {
          $doc    = & JFactory::getDocument();
          $doc->addScript($ambit->getScript('jswindow.js'));
          $script = '    var resizeJsImage = '.$config->get('jg_resize_js_image').';
    var jg_disableclick = '.$config->get('jg_disable_rightclick_original').';';
          $doc->addScriptDeclaration($script);
          $loaded[2] = true;
        }
        break;
      case 3: // DHTML container
        $imginfo = getimagesize($img_path);
        $link    = "javascript:joom_opendhtml('".$img_url."','".JoomHelper::fixForJS($image->imgtitle)."','";
        if($config->get('jg_show_description_in_dhtml'))
        {
          $link .= JoomHelper::fixForJS($image->imgtext)."','";
        }
        $link .= $imginfo[0]."','".$imginfo[1]."')";

        if(!isset($loaded[3]))
        {
          $doc    = & JFactory::getDocument();
          $doc->addScript($ambit->getScript('dhtml.js'));
          $script = '    var resizeJsImage = '.$config->get('jg_resize_js_image').';
    var jg_padding = '.$config->jg_openjs_padding.';
    var jg_dhtml_border = "'.$config->jg_dhtml_border.'";
    var jg_openjs_background = "'.$config->jg_openjs_background.'";
    var jg_show_title_in_dhtml = '.$config->jg_show_title_in_dhtml.';
    var jg_show_description_in_dhtml = '.$config->jg_show_description_in_dhtml.';
    var jg_disableclick = '.$config->jg_disable_rightclick_original.';';
          $doc->addScriptDeclaration($script);
          $loaded[3] = true;
        }
        break;
      case 4: // Modalbox
        #$imginfo = getimagesize($img_path);
        $link = $img_url.'" class="modal" rel="'./*{handler: 'iframe', size: {x: ".$imginfo[0].", y: ".$imginfo[1]."}}*/'" title="'.$image->imgtitle;

        if(!isset($loaded[4]))
        {
          JHTML::_('behavior.mootools'); // Loads mootools only, if it hasn't already been loaded
          JHTML::_('behavior.modal');
          $loaded[4] = true;
        }
        break;
      case 5: // Thickbox3
        $link = $img_url.'" class="thickbox" rel="'.$group.'" title="'.$image->imgtitle;

        if(!isset($loaded[5]))
        {
          $doc = & JFactory::getDocument();
          $doc->addScript($ambit->getScript('thickbox3/js/jquery-latest.pack.js'));
          $doc->addScript($ambit->getScript('thickbox3/js/thickbox.js'));
          $doc->addStyleSheet(JURI::root().'components/com_joomgallery/assets/js/thickbox3/css/thickbox.css');
          $script = '    var resizeJsImage = '.$config->get('jg_resize_js_image').';
    var joomgallery_image = "'.JText::_('JGS_COMMON_IMAGE', true).'";
    var joomgallery_of = "'.JText::_('JGS_POPUP_OF', true).'";
    var joomgallery_close = "'.JText::_('JGS_POPUP_CLOSE', true).'";
    var joomgallery_prev = "'.JText::_('JGS_POPUP_PREVIOUS', true).'";
    var joomgallery_next = "'.JText::_('JGS_POPUP_NEXT', true).'";
    var joomgallery_press_esc = "'.JText::_('JGS_POPUP_ESC', true).'";
    var tb_pathToImage = "'.JURI::root().'components/com_joomgallery/assets/js/thickbox3/images/loadingAnimation.gif";';
          $doc->addScriptDeclaration($script);
          $loaded[5] = true;
        }
        break;
      case 6: // Slimbox
        $link = $img_url.'" rel="lightbox['.$group.']" title="'.$image->imgtitle;

        if(!isset($loaded[6]))
        {
          $doc = & JFactory::getDocument();
          JHTML::_('behavior.mootools'); // Loads mootools only, if it hasn't already been loaded
          $doc->addScript($ambit->getScript('slimbox/js/slimbox.js'));
          $doc->addStyleSheet(JURI::root().'components/com_joomgallery/assets/js/slimbox/css/slimbox.css');
          $script = '    var resizeJsImage = '.$config->get('jg_resize_js_image').';
    var resizeSpeed = '.$config->get('jg_lightbox_speed').';
    var joomgallery_image = "'.JText::_('JGS_COMMON_IMAGE', true).'";
    var joomgallery_of = "'.JText::_('JGS_POPUP_OF', true).'";';
          $doc->addScriptDeclaration($script);
          $loaded[6] = true;
        }
        break;
      case 12: // Plugins
        if(!isset($loaded[12]))
        {
          $loaded[12] = & JDispatcher::getInstance();
        }
        $link = '';
        $loaded[12]->trigger('onJoomOpenImage', array(&$link, $image, $img_url, $group, $type));
        break;
      default:  // Detail view
        $link = JRoute::_('index.php?view=detail&id='.$image->id);
        break;
    }

    return $link;
  }
}