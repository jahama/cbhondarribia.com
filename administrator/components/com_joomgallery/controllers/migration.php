<?php
// $HeadURL: https://joomgallery.org/svn/joomgallery/JG-1.5/JG/trunk/administrator/components/com_joomgallery/controllers/migration.php $
// $Id: migration.php 1930 2010-03-06 12:25:59Z mab $
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
 * JoomGallery Migration Controller
 *
 * @package JoomGallery
 * @since   1.5.5
 */
class JoomGalleryControllerMigration extends JoomGalleryController
{
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

    // Require the migration helper class
    require_once(JPATH_COMPONENT.DS.'helpers'.DS.'migration.php');

    // Set view
    JRequest::setVar('view', 'migration');

    // Register tasks
    $this->registerTask('check',    'migrate');
    $this->registerTask('start',    'migrate');
    $this->registerTask('continue', 'migrate');
  }

  /**
   * Migrates another gallery to JoomGallery
   *
   * @access  public
   * @return  void
   * @since   1.5.5
   */
  function migrate()
  {
    jimport('joomla.filesystem.file');

    $migration = JRequest::getCmd('migration', '');
    $task      = JRequest::getCmd('task');

    if(!JFile::exists(JPATH_COMPONENT.DS.'helpers'.DS.'migration'.DS.'migrate'.$migration.'.php'))
    {
      $this->setRedirect('index.php?option='._JOOM_OPTION.'&controller=migration');
      return false;
    }

    require_once(JPATH_COMPONENT.DS.'helpers'.DS.'migration'.DS.'migrate'.$migration.'.php');
    $classname    = 'JoomMigrate_'.$migration;
    $migrateclass = new $classname($task);

    if($task == 'check')
    {
      parent::display();
    }
  }
}