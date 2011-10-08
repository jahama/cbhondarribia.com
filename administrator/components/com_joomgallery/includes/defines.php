<?php
// $HeadURL: https://joomgallery.org/svn/joomgallery/JG-1.5/JG/trunk/administrator/components/com_joomgallery/includes/defines.php $
// $Id: defines.php 1930 2010-03-06 12:25:59Z mab $
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

define('_JOOM_OPTION', 'com_joomgallery'); // JRequest::getCmd('option')?

// @deprecated  _JOOM_LIVE_SITE shouldn't be necessary anymore
define('_JOOM_LIVE_SITE', JURI::root()); // use of JURI::root() directly?

// @deprecated  _JOOM_ITEMID shouldn't be necessary anymore
define('_JOOM_ITEMID', JRequest::getInt('Itemid')?'&Itemid='.JRequest::getInt('Itemid'):''); // TODO

// str_replace('com_', '', JRequest::getCmd('option'))?
define('_JOOM_TABLE_IMAGES',      '#__joomgallery');
define('_JOOM_TABLE_CATEGORIES',  '#__joomgallery_catg');
define('_JOOM_TABLE_COMMENTS',    '#__joomgallery_comments');
define('_JOOM_TABLE_CONFIG',      '#__joomgallery_config');
define('_JOOM_TABLE_COUNTSTOP',   '#__joomgallery_countstop');
define('_JOOM_TABLE_MAINTENANCE', '#__joomgallery_maintenance');
define('_JOOM_TABLE_NAMESHIELDS', '#__joomgallery_nameshields');
define('_JOOM_TABLE_ORPHANS',     '#__joomgallery_orphans');
define('_JOOM_TABLE_USERS',       '#__joomgallery_users');
define('_JOOM_TABLE_VOTES',       '#__joomgallery_votes');