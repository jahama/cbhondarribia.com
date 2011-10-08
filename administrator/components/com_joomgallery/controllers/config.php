<?php
// $HeadURL: https://joomgallery.org/svn/joomgallery/JG-1.5/JG/trunk/administrator/components/com_joomgallery/controllers/config.php $
// $Id: config.php 1930 2010-03-06 12:25:59Z mab $
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
 * JoomGallery Configuration Controller
 *
 * @package JoomGallery
 * @since   1.5.5
 */
class JoomGalleryControllerConfig extends JoomGalleryController
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

    // Register tasks
    $this->registerTask('apply', 'save');

    // Set view
    JRequest::setVar('view', 'config');
  }

  /**
   * Saves the configuration
   *
   * @access  public
   * @return  void
   * @since   1.5.5
   */
  function save()
  {
    // Insert second parameter 'true' if new config row shall be saved
    if($this->_config->save(JRequest::get('post')))
    {
      $controller = '';
      if(JRequest::getCmd('task') == 'apply')
      {
        $controller = 'config';
      }
      $this->setRedirect($this->_ambit->getRedirectUrl($controller), JText::_('JGA_CONFIG_MSG_SETTINGS_SAVED'));
    }
    else
    {
      $this->setRedirect($this->_ambit->getRedirectUrl(), JText::_('JGA_CONFIG_MSG_SETTINGS_ERROR'), 'error');
    }
  }
}