<?php
defined( '_JEXEC' ) or die( 'Restricted access' );

$ucode1    = $params->get('ucode1');
$ucode2    = $params->get('ucode2');
$ucode3    = $params->get('ucode3');
$subdtrack = $params->get('subdtrack');
$subdroot  = $params->get('subdroot');
$search    = $params->get('search');
$search1   = $params->get('search1');
$search2   = $params->get('search2');
$session   = $params->get('session');
$trbrowse  = $params->get('trbrowse');
$trcookie  = $params->get('trcookie');
$trflash   = $params->get('trflash');
$trtitle   = $params->get('trtitle');
$sampler   = $params->get('sampler');
$keyword1  = $params->get('keyword1');
$keyword2  = $params->get('keyword2');
$referrer1 = $params->get('referrer1');
$referrer2 = $params->get('referrer2');
$truser    = $params->get('truser');

$user   =& JFactory::getUser();
$output = '';

if($ucode1) {
	$output = "<script type=\"text/javascript\">\n";
	$output .= "var gaJsHost = ((\"https:\" == document.location.protocol) ? \"https://ssl.\" : \"http://www.\");\n";
	$output .= "document.write(unescape(\"%3Cscript src='\" + gaJsHost + \"google-analytics.com/ga.js' type='text/javascript'%3E%3C/script%3E\"));\n";
	$output .= "</script>\n";
	$output .= "<script type=\"text/javascript\">\n";
	$output .= "var pageTracker = _gat._getTracker(\"" . $ucode1 . "\");\n";
	if($subdtrack==1) {
		$output .= "pageTracker._setDomainName(\"" . $subdroot . "\");\n";
	}
	if($search1 && $search2) {
		$output .= "pageTracker._addOrganic(\"" . $search1 . "\", \"" . $search2 . "\");\n";
	}
	if($session) {
		$output .= "pageTracker._setSessionTimeout(\"" . $session . "\");\n";
	}
	if($trbrowse==0) {
		$output .= "pageTracker._setClientInfo(false);\n";
	}
	if($trcookie==0) {
		$output .= "pageTracker._setAllowHash(false);\n";
	}
	if($trflash==0) {
		$output .= "pageTracker._setDetectFlash(false);\n";
	}
	if($trtitle==0) {
		$output .= "pageTracker._setDetectTitle(false);\n";
	}
	if($sampler) {
		$output .= "pageTracker._setSampleRate(" . $sampler . ");\n";
	}
	if($keyword1 && $keyword2) {
		$output .= "pageTracker._addIgnoredOrganic(\"" . $keyword1 . "\",\"" . $keyword2 . "\");\n";
	}
	elseif($keyword1) {
		$output .= "pageTracker._addIgnoredOrganic(\"" . $keyword1 . "\");\n";
	}
	if($referrer1 && $referrer2) {
		$output .= "pageTracker._addIgnoredRef(\"" . $referrer1 . "\",\"" . $referrer2 . "\");\n";
	}
	elseif($referrer1) {
		$output .= "pageTracker._addIgnoredRef(\"" . $referrer1 . "\");\n";
	}
	$output .= "pageTracker._initData();\n";
	$output .= "pageTracker._trackPageview();\n";
	if($truser==1) {
		if($user->guest) {
			$output .= "pageTracker._setVar(\"Guest\");\n";
		} else {
			$output .= "pageTracker._setVar(\"" . $user->username . "\");\n";
		}
	}
	if($ucode2) {
		$output .= "var secondTracker = _gat._getTracker(\"" . $ucode2 . "\");\n";
		if($search1 && $search2) {
			$output .= "secondTracker._addOrganic(\"" . $search1 . "\", \"" . $search2 . "\");\n";
		}
		if($session) {
			$output .= "secondTracker._setSessionTimeout(\"" . $session . "\");\n";
		}
		if($subdtrack==1) {
			$output .= "secondTracker._setDomainName(\"" . $subdroot . "\");\n";
		}
		if($trbrowse==0) {
			$output .= "secondTracker._setClientInfo(false);\n";
		}
		if($trcookie==0) {
			$output .= "secondTracker._setAllowHash(false);\n";
		}
		if($trflash==0) {
			$output .= "secondTracker._setDetectFlash(false);\n";
		}
		if($trtitle==0) {
			$output .= "secondTracker._setDetectTitle(false);\n";
		}
		if($sampler) {
			$output .= "secondTracker._setSampleRate(" . $sampler . ");\n";
		}
		if($keyword1 && $keyword2) {
			$output .= "secondTracker._addIgnoredOrganic(\"" . $keyword1 . "\",\"" . $keyword2 . "\");\n";
		}
		elseif($keyword1) {
			$output .= "secondTracker._addIgnoredOrganic(\"" . $keyword1 . "\");\n";
		}
		if($referrer1 && $referrer2) {
			$output .= "secondTracker._addIgnoredRef(\"" . $referrer1 . "\",\"" . $referrer2 . "\");\n";
		}
		elseif($referrer1) {
			$output .= "secondTracker._addIgnoredRef(\"" . $referrer1 . "\");\n";
		}
		$output .= "secondTracker._initData();\n";
		$output .= "secondTracker._trackPageview();\n";
		if($truser==1) {
			if($user->guest) {
				$output .= "secondTracker._setVar(\"Guest\");\n";
			} else {
				$output .= "secondTracker._setVar(\"" . $user->username . "\");\n";
			}
		}
	} if($ucode3) {
		$output .= "var thirdTracker = _gat._getTracker(\"" . $ucode3 . "\");\n";
		if($search1 && $search2) {
			$output .= "thirdTracker._addOrganic(\"" . $search1 . "\", \"" . $search2 . "\");\n";
		}
		if($session) {
			$output .= "thirdTracker._setSessionTimeout(\"" . $session . "\");\n";
		}
		if($subdtrack==1) {
			$output .= "thirdTracker._setDomainName(\"" . $subdroot . "\");\n";
		}
		if($trbrowse==0) {
			$output .= "thirdTracker._setClientInfo(false);\n";
		}
		if($trcookie==0) {
			$output .= "thirdTracker._setAllowHash(false);\n";
		}
		if($trflash==0) {
			$output .= "thirdTracker._setDetectFlash(false);\n";
		}
		if($trtitle==0) {
			$output .= "thirdTracker._setDetectTitle(false);\n";
		}
		if($sampler) {
			$output .= "thirdTracker._setSampleRate(" . $sampler . ");\n";
		}
		if($keyword1 && $keyword2) {
		$output .= "thirdTracker._addIgnoredOrganic(\"" . $keyword1 . "\",\"" . $keyword2 . "\");\n";
		}
		elseif($keyword1) {
			$output .= "thirdTracker._addIgnoredOrganic(\"" . $keyword1 . "\");\n";
		}
		if($referrer1 && $referrer2) {
			$output .= "thirdTracker._addIgnoredRef(\"" . $referrer1 . "\",\"" . $referrer2 . "\");\n";
		}
		elseif($referrer1) {
			$output .= "thirdTracker._addIgnoredRef(\"" . $referrer1 . "\");\n";
		}
		$output .= "thirdTracker._initData();\n";
		$output .= "thirdTracker._trackPageview();\n";
		if($truser==1) {
			if($user->guest) {
				$output .= "thirdTracker._setVar(\"Guest\");\n";
			} else {
				$output .= "thirdTracker._setVar(\"" . $user->username . "\");\n";
			}
		}
	}
	$output .= "</script>\n";
	echo $output;
}
?>