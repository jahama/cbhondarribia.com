<?php
defined('_JEXEC') or die('Restricted access');

function date_bl($date,$time){
	$db			=& JFactory::getDBO(); 
	$format = "d-m-Y H:i";
	$query = "SELECT cfg_value FROM #__bl_config WHERE cfg_name='date_format'";
	$db->setquery($query);
	$format = $db->loadResult();
	return date($format,@mktime(substr($time,0,2),substr($time,3,2),0,substr($date,5,2),substr($date,8,2),substr($date,0,4)));
}
?>