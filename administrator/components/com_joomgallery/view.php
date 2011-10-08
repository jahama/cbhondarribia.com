<?php
// $HeadURL: https://joomgallery.org/svn/joomgallery/JG-1.5/JG/trunk/administrator/components/com_joomgallery/view.php $
// $Id: view.php 1940 2010-03-09 19:01:44Z chraneco $
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

jimport( 'joomla.application.component.view');

/**
 * Parent HTML View Class for JoomGallery
 *
 * @package JoomGallery
 * @since   1.5.5
 */
class JoomGalleryView extends JView
{
  /**
   * JApplication object
   *
   * @access  protected
   * @var     object
   */
  var $_mainframe;

  /**
   * JoomConfig object
   *
   * @access  protected
   * @var     object
   */
  var $_config;

  /**
   * JoomAmbit object
   *
   * @access  protected
   * @var     object
   */
  var $_ambit;

  /**
   * JUser object, holds the current user data
   *
   * @access  protected
   * @var     object
   */
  var $_user;

  /**
   * JDocument object
   *
   * @access  protected
   * @var     object
   */
  var $_doc;

  /**
   * Constructor
   *
   * @access  protected
   * @return  void
   * @since   1.5.5
   */
  function __construct($config = array())
  {
    parent::__construct($config);

    $this->_ambit     = & JoomAmbit::getInstance();
    $this->_config    = & JoomConfig::getInstance();

    $this->_mainframe = & JFactory::getApplication('administrator');
    $this->_user      = & JFactory::getUser();
    $this->_doc       = & JFactory::getDocument();

    $this->_doc->addStyleSheet($this->_ambit->getStyleSheet('joomgallery.css'));
    $this->_doc->addScript($this->_ambit->getScript('joomgallery.js'));

    JHTML::addIncludePath(JPATH_COMPONENT.DS.'helpers'.DS.'html');

    // Check for available updates
    if(!$checked = $this->_mainframe->getUserState('joom.update.checked'))
    {
      $controller = JRequest::getCmd('controller');
      if($this->_config->get('jg_checkupdate') && $controller && $controller != 'control')
      {
        $dated_extensions = JoomExtensions::checkUpdate();
        if(count($dated_extensions))
        {
          JError::raiseNotice('302', JText::_('JGA_ADMENU_SYSTEM_NOT_UPTODATE'));
          $this->_mainframe->setUserState('joom.update.checked', -1);
        }
        else
        {
          $this->_mainframe->setUserState('joom.update.checked', 1);
        }
      }
    }
    else
    {
      if($checked == -1)
      {
        $controller = JRequest::getCmd('controller');
        if($controller && $controller != 'control')
        {
          JError::raiseNotice('302', JText::_('JGA_ADMENU_SYSTEM_NOT_UPTODATE'));
        }
      }
    }
  }
}