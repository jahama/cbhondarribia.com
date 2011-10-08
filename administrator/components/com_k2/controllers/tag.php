<?php
/**
 * @version		$Id: tag.php 478 2010-06-16 16:11:42Z joomlaworks $
 * @package		K2
 * @author		JoomlaWorks http://www.joomlaworks.gr
 * @copyright	Copyright (c) 2006 - 2010 JoomlaWorks, a business unit of Nuevvo Webware Ltd. All rights reserved.
 * @license		GNU/GPL license: http://www.gnu.org/copyleft/gpl.html
 */

// no direct access
defined('_JEXEC') or die('Restricted access');

jimport('joomla.application.component.controller');

class K2ControllerTag extends JController
{

	function display() {
		JRequest::setVar('view', 'tag');
		parent::display();
	}

	function save() {
		JRequest::checkToken() or jexit('Invalid Token');
		$model = & $this->getModel('tag');
		$model->save();
	}


	function apply() {
		$this->save();
	}

	function cancel() {
		$mainframe = &JFactory::getApplication();
		$mainframe->redirect('index.php?option=com_k2&view=tags');
	}

}
