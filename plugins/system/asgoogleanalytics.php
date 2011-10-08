<?php
/**
* AS Google analytics
* @package Joomla!
* @Copyright (C) 2009-2010 AlejoSotelo.com
* @Alejo Sotelo © Extensions - Argentina. All rights reserved.
* @ Joomla! is Free Software
* @ Released under GNU/GPL License : http://www.gnu.org/copyleft/gpl.html
* @version $Revision: 1.0.0 $
**/

// no direct access
defined( '_JEXEC' ) or die( 'Restricted access' );

jimport( 'joomla.plugin.plugin');

class plgSystemAsgoogleanalytics extends JPlugin
{
	function plgSystemAsgoogleanalytics(&$subject, $config)
	{
		parent::__construct($subject, $config);
		$this->_plugin = JPluginHelper::getPlugin( 'system', 'asgoogleanalytics' );
		$this->_params = new JParameter( $this->_plugin->params );
	}
	
	function onAfterRender()
	{
		
		global $mainframe;
		
		$id_ga							= $this->params->get('id_ga', '');
		$nombre_dominio					= $this->params->get('nombre_dominio', '');
		$cookie_utmz					= $this->params->get('cookie_utmz','');
		$codigo_personalizado			= $this->params->get('codigo_personalizado','');
		$codigo_personalizado_despues	= $this->params->get('codigo_personalizado_despues');
		
		if($id_ga == '' || $mainframe->isAdmin() || strpos($_SERVER["PHP_SELF"], "index.php") === false)
		{
			return;
		}

		$body = JResponse::getBody();

		$codigo = '
			<script type="text/javascript">
			var gaJsHost = (("https:" == document.location.protocol) ? "https://ssl." : "http://www.");
			document.write(unescape("%3Cscript src=\'" + gaJsHost + "google-analytics.com/ga.js\' type=\'text/javascript\'%3E%3C/script%3E"));
			</script>
			<script type="text/javascript">
			try {';
		
		$codigo .=	'
			var pageTracker = _gat._getTracker("'.$id_ga.'");';
		
		if(	trim($nombre_dominio) != '' ){
			$codigo .=	'
				pageTracker._setDomainName("'.$nombre_dominio.'");';
		}
		
		if(	trim($cookie_utmz) != '' ){
			$codigo .=	'
				pageTracker._setCookieTimeout("'.$cookie_utmz.'");';
		}
		
		if(	trim($codigo_personalizado) != '' ){
			$codigo .=	'
				' . $codigo_personalizado;
		}
		
		$codigo .=	'
				pageTracker._trackPageview();';
	
		if( trim($codigo_personalizado_despues) != ''	){
			$codigo .=	'
				' . $codigo_personalizado_despues;
		}
		
		$codigo .=	'
			} catch(err) {}</script>';

		$body = str_replace ("</body>", $codigo . "</body>", $body);
		
		JResponse::setBody( $body );
		
		return true;
	}
}
?>