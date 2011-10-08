<?php
defined( '_JEXEC' ) or die( 'Restricted index access' );

global $Itemid, $modules_list, $mainmodulesBlocks, $template_real_width, $leftcolumn_width, $rightcolumn_width, $leftbanner_width, $rightbanner_width;

if ($mtype!="module") :
	// menu code
	$document	= &JFactory::getDocument();
	$renderer	= $document->loadRenderer( 'module' );
	$options	 = array( 'style' => "raw" );
	$module	 = JModuleHelper::getModule( 'mod_mainmenu' );
	$topnav = false; $subnav = false; $sidenav = false;
	if ($mtype=="splitmenu") :
		$module->params	= "menutype=$menu_name\nstartLevel=0\nendLevel=1\nclass_sfx=top";
		$topnav = $renderer->render( $module, $options );
		
		$module	 = JModuleHelper::getModule( 'mod_mainmenu' );
		$module->params	= "menutype=$menu_name\nstartLevel=1\nendLevel=2\nclass_sfx=sub";
		$subnav = $renderer->render( $module, $options );
		
		$module	 = JModuleHelper::getModule( 'mod_mainmenu' );
		$module->params	= "menutype=$menu_name\nstartLevel=2\nendLevel=9\nclass_sfx";
		$options = array( 'style' => "submenu");
		$sidenav = $renderer->render( $module, $options );
	elseif ($mtype=="moomenu" or $mtype=="suckerfish") :
		$module->params	= "menutype=$menu_name\nshowAllChildren=1\nclass_sfx=top";
		$topnav = $renderer->render( $module, $options );
	endif;

endif;

// make sure subnav is empty
if (strlen($subnav) < 10) $subnav = false;
//Are we in edit mode
$editmode = false;
if (JRequest::getCmd('task') == 'edit' ) :
	$editmode = true;
endif;

$mainmodulesBlocks = array(
	'case1' => array('user1', 'user2', 'user3'),
	'case2' => array('user4', 'user5', 'user6')
);

$mainmod_count = ($this->countModules('user1')>0) + ($this->countModules('user2')>0) + ($this->countModules('user3')>0);
$mainmod_width = $mainmod_count > 0 ? ' w' . floor(99 / $mainmod_count) : '';
$mainmod2_count = ($this->countModules('user4')>0) + ($this->countModules('user5')>0) + ($this->countModules('user6')>0);
$mainmod2_width = $mainmod2_count > 0 ? ' w' . floor(99 / $mainmod2_count) : '';
$mainmod3_count = ($this->countModules('advert1')>0) + ($this->countModules('advert2')>0) + ($this->countModules('advert3')>0);
$mainmod3_width = $mainmod3_count > 0 ? ' w' . floor(99 / $mainmod3_count) : '';
$mainmod4_count = ($this->countModules('advert4')>0) + ($this->countModules('advert5')>0) + ($this->countModules('advert6')>0);
$mainmod4_width = $mainmod4_count > 0 ? ' w' . floor(99 / $mainmod4_count) : '';
$bottommod_count = ($this->countModules('user7')>0) + ($this->countModules('user8')>0) + ($this->countModules('user9')>0) + ($this->countModules('user10')>0);
$bottommod_width = $bottommod_count > 0 ? ' w' . floor(99 / $bottommod_count) : '';
$leftcolumn_width = ($this->countModules('left')>0 or ($sidenav and $splitmenu_col=="leftcol")) ? $leftcolumn_width : "0";
$rightcolumn_width = ($this->countModules('right')>0 or ($sidenav and $splitmenu_col=="rightcol")) ? $rightcolumn_width : "0";
$leftbanner_width = ($this->countModules('banner2')>0) ? $leftbanner_width : "0";
$rightbanner_width = ($this->countModules('banner3')>0) ? $rightbanner_width : "0";
$leftinset_width = ($this->countModules('inset')>0) ? $leftinset_width : "0";
$rightinset_width = ($this->countModules('inset2')>0) ? $rightinset_width : "0";
$template_real_width = $template_width;
$template_width = 'margin: 0 auto; width: ' . $template_width . 'px;';
$template_path = $this->baseurl . "/templates/" . $this->template;

// module slider configuration
$modules_list 				= array(array("title"=>$ms_title1, "module"=>$ms_module1),
									array("title"=>$ms_title2, "module"=>$ms_module2),
									array("title"=>$ms_title3, "module"=>$ms_module3),
									array("title"=>$ms_title4, "module"=>$ms_module4),
									array("title"=>$ms_title5, "module"=>$ms_module5),
									array("title"=>$ms_title6, "module"=>$ms_module6),
									array("title"=>$ms_title7, "module"=>$ms_module7),
									array("title"=>$ms_title8, "module"=>$ms_module8),
									array("title"=>$ms_title9, "module"=>$ms_module9),
									array("title"=>$ms_title10, "module"=>$ms_module10));

function rok_isIe($version = false) {   

	$agent=$_SERVER['HTTP_USER_AGENT'];  

	$found = strpos($agent,'MSIE ');  
	if ($found) { 
	        if ($version) {
	            $ieversion = substr(substr($agent,$found+5),0,1);   
	            if ($ieversion == $version) return true;
	            else return false;
	        } else {
	            return true;
	        }
	        
        } else {
                return false;
        }
	if (stristr($agent, 'msie'.$ieversion)) return true;
	return false;        
}

function modulesClasses($case, $loaded_only = false) {
  global $mainmodulesBlocks;
  $document	= &JFactory::getDocument();

  $modules = $mainmodulesBlocks[$case];
  $loaded = 0;
  $loadedModule = array();
  $classes = array();

  foreach($modules as $block) if ($document->countModules($block)>0) { $loaded++; array_push($loadedModule, $block); }

  $width = getModuleWidth($case, $loaded);

  switch ($loaded) {
    case 1:
      $classes[$loadedModule[0]][0] = 'last';
      $classes[$loadedModule[0]][1] = $width[0];
      break;
    case 2: 
      for ($i = 0; $i < count($loadedModule); $i++){
        if (!$i) {
		$classes[$loadedModule[$i]][0] = 'first';
		$classes[$loadedModule[$i]][1] = $width[0];
	}
        else {
		$classes[$loadedModule[$i]][0] = 'last';
		$classes[$loadedModule[$i]][1] = $width[1];
	}
      }
      break;
    case 3:
      for ($i = 0; $i < count($loadedModule); $i++){
        if (!$i) {
		$classes[$loadedModule[$i]][0] = 'first';
		$classes[$loadedModule[$i]][1] = $width[0];
	}
        elseif ($i == 1) {
		$classes[$loadedModule[$i]][0] = 'middle';
		$classes[$loadedModule[$i]][1] = $width[1];
	}
        else {
		$classes[$loadedModule[$i]][0] = 'last';
		$classes[$loadedModule[$i]][1] = $width[2];
	}
      }
      break;
  }
  
  return $classes;
  
}

function getModuleWidth($type, $loaded) {
	global $template_real_width, $leftcolumn_width, $rightcolumn_width, $leftbanner_width, $rightbanner_width;
	$width = ($template_real_width - 2) - (($leftcolumn_width == "0") ? 0 : $leftcolumn_width + 1) - (($rightcolumn_width == "0") ? 0 : $rightcolumn_width + 1) - $leftbanner_width - $rightbanner_width;
	
	$ieFix = ($leftbanner_width == "0") ? 0 : 2;
	$ieFix += ($rightbanner_width == "0") ? 0 : 2;
	
	$result = array();
	
	$width_original = $width;

	switch ($loaded) {
		case 1:
			$result[0] = $width_original;
			if (rok_isIe(6)) $result[0] -= $ieFix;
			break;
		case 2:
			$width = floor($width / 2);
			$result[0] = $width - 1;
			$result[1] = $width_original - ($result[0] + 1);
			if (rok_isIe(6)) {
				$result[0] -= 1;
				$result[1] -= $ieFix;
			}
			break;
		case 3:
			$width = floor($width / 3);
			$result[0] = $result[1] = $width - 1;
			$result[2] = $width_original - ($result[0] + $result[1] + 2);
			if (rok_isIe(6)) {
				$result[0] -= 1;
				$result[1] -= 1;
				$result[2] -= $ieFix;
			}
			break;
	}
	
	return $result;
}

?>