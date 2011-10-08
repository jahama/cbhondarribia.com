<?php
// $HeadURL: https://joomgallery.org/svn/joomgallery/JG-1.5/JG/trunk/administrator/components/com_joomgallery/helpers/refresher.php $
// $Id: refresher.php 2179 2010-05-18 16:25:53Z chraneco $
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
 * Helper class which handles refreshes afore script timeouts
 *
 * @package JoomGallery
 * @since   1.5.5
 */
class JoomRefresher extends JObject
{
  /**
   * @TODO: Variable comments
   */
  var $max_execution_time;
  var $starttime;
  var $maxtime;
  var $_mainframe;
  var $_controller;
  var $_task;
  var $_msg;

  /**
   * Constructor
   *
   * @access  protected
   * @return  void
   * @since   1.5.5
   */
  function __construct($params = array())
  {
    $this->_mainframe = & JFactory::getApplication('administrator');

    if(isset($params['controller']))
    {
      $this->_controller  = $params['controller'];
    }
    else
    {
      $this->_controller  = JRequest::getCmd('controller');
    }

    if(isset($params['task']))
    {
      $this->_task        = $params['task'];
    }
    else
    {
      $this->_task        = JRequest::getCmd('task');
    }

    if(isset($params['msg']))
    {
      $this->_msg         = $params['msg'];
    }
    else
    {
      $this->_msg         = 1;
    }

    $this->init();
  }

  /**
   * Initializes the refresher by storing current time
   *
   * @access  public
   * @return  void
   * @since   1.5.5
   */
  function init()
  {
    // Check the maximum execution time of the script
    // Set secure setting of the real execution time
    $max_execution_time = @ini_get('max_execution_time');

    // Try to set the max execution time to 60s if lower than
    // If not successful the return value will be the old time, so use this
    if($max_execution_time < 60)
    {
      @ini_set('max_execution_time', '60');
      $max_execution_time = @ini_get('max_execution_time');
    }
    $this->max_execution_time = $max_execution_time;
    $this->maxtime            = (int) $this->max_execution_time * 0.8;
    $this->starttime          = time();

    $this->counter            = $this->_mainframe->getUserState('joom.refresh.counter');
    if(is_null($this->counter))
    {
      $this->counter = 0;
    }
  }

  /**
   * Checks the remaining time
   *
   * @access  public
   * @return  boolean True: Time remains, false: No more time left
   * @since   1.5.5
   */
  function check()
  {
    $timeleft = -(time() - $this->starttime - $this->maxtime);
    if($timeleft > 0)
    {
      return true;
    }

    return false;
  }

  /**
   * Make a redirect
   *
   * @access  public
   * @param   string  $action Redirect to continue or end
   * @return  void
   * @since   1.5.5
   */
  function refresh($task = null, $msg = null, $type = null, $controller = null)
  {
    if($this->_msg && is_null($task))
    {
      $this->_mainframe->enqueueMessage(JText::_('JGA_COMMON_REDIRECT'));
    }
    if(!$task)
    {
      $task = $this->_task;
    }
    if(!$controller)
    {
      $controller = $this->_controller;
    }

    if($this->counter > 15)
    {
      $this->_interruptRefreshing($task, $controller);
    }
    else
    {
      $this->_mainframe->setUserState('joom.refresh.counter', $this->counter + 1);
    }

    $url = 'index.php?option='._JOOM_OPTION.'&controller='.$controller.'&task='.$task;

    $this->_mainframe->redirect($url, $msg, $type);
  }

  /**
   * Interrupts refreshing by offering a button to continue manually
   *
   * @access  public
   * @param   string  $task       The task to continue with
   * @param   string  $controller The controller to redirect to
   * @return  void
   * @since   1.5.5
   */
  function _interruptRefreshing($task, $controller)
  { ?>
<html>
  <head>
    <link rel="stylesheet" href="templates/system/css/system.css" type="text/css" />
    <link href="templates/khepri/css/template.css" rel="stylesheet" type="text/css" />
  </head>
  <body>
    <div class="TODO" style="width:600px; margin:auto; border: 1px dashed silver; padding: 5px;">
<?php $doc = &JFactory::getDocument();
      $renderer = $doc->loadRenderer('message');
      echo $renderer->render();
      $onclick = 'document.location.href=\'index.php?option='._JOOM_OPTION.';&controller='.$controller.'&task='.$task.'\';'; ?>
      <div class="TODO" style="font-weight:bold; margin-bottom:10px;"><?php echo JText::sprintf('JGA_MAIMAN_MSG_REFRESHER_INTERRUPT_EXPLANATION', $this->counter); ?></div>
      <input type="submit" value="<?php echo JText::_('Continue'); ?>" onclick="<?php echo $onclick; ?>" />
    </div>
  </body>
</html><?php
    $this->_mainframe->setUserState('joom.refresh.counter', 0);
    jexit();
  }
}