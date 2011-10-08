<?php
// $HeadURL: https://joomgallery.org/svn/joomgallery/JG-1.5/JG/trunk/administrator/components/com_joomgallery/tables/joomgallerycomments.php $
// $Id: joomgallerycomments.php 1930 2010-03-06 12:25:59Z mab $
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
 * JoomGallery comments table class
 *
 * @package JoomGallery
 * @since   1.5.5
 */
class TableJoomgalleryComments extends JTable
{
  /** @var int Primary key */
  var $cmtid      = null;
  /** @var int */
  var $cmtpic     = null;
  /** @var string */
  var $cmtip      = null;
  /** @var string */
  var $userid     = null;
  /** @var string */
  var $cmtname    = null;
  /** @var string */
  var $cmttext    = null;
  /** @var string */
  var $cmtdate    = null;
  /** @var int */
  var $published  = null;
  /** @var int */
  var $approved   = null;
  
  function TableJoomgalleryComments(&$db)
  {
    parent::__construct(_JOOM_TABLE_COMMENTS, 'cmtid', $db);
  }
}