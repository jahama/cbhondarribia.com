<?php
// $HeadURL: https://joomgallery.org/svn/joomgallery/JG-1.5/JG/trunk/administrator/components/com_joomgallery/elements/category.php $
// $Id: category.php 1930 2010-03-06 12:25:59Z mab $
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
 * Renders a category list element
 *
 * @package     JoomGallery
 * @subpackage  Parameter
 * @since       1.5.5
 */
class JElementCategory extends JElement
{
  /**
   * Element name
   *
   * @access  protected
   * @var     string
   */
  var $_name = 'Category';

  function fetchElement($name, $value, &$node, $control_name)
  {
    JHTML::addIncludePath(JPATH_BASE.DS.'components'.DS.'com_joomgallery'.DS.'helpers'.DS.'html');

    $html = JHTML::_('joomselect.categorylist', $value, $control_name.'['.$name.']');

    return $html;
  }
}