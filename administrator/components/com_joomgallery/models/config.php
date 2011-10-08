<?php
// $HeadURL: https://joomgallery.org/svn/joomgallery/JG-1.5/JG/trunk/administrator/components/com_joomgallery/models/config.php $
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
 * Configuration model
 *
 * @package JoomGallery
 * @since   1.5.5
 */
class JoomGalleryModelConfig extends JoomGalleryModel
{
  /**
   * Attempts to determine if gd is configured, and if so,
   * what version is installed
   *
   * @access  public
   * @return  string  The result of request
   * @since   1.0.0
   */
  function getGDVersion()
  {
    if(!extension_loaded('gd'))
    {
      return;
    }

    $phpver = substr(phpversion(), 0, 3);
    // gd_info came in at 4.3
    if($phpver < 4.3)
    {
      return -1;
    }

    if(function_exists('gd_info'))
    {
      $ver_info = gd_info();
      preg_match('/\d/', $ver_info['GD Version'], $match);
      $gd_ver = $match[0];
      return $match[0];
    }
    else
    {
      return;
    }
  }

  /**
   * Attempts to determine if ImageMagick is configured, and if so,
   * what version is installed
   *
   * @access  public
   * @return  string  The result of request
   * @since   1.0.0
   */
  function getIMVersion()
  {
    $config = & JoomConfig::getInstance();
    $status = null;
    $output = array();

    $disabled_functions = explode(',', ini_get('disabled_functions'));
    foreach($disabled_functions as $disabled_function)
    {
      if(trim($disabled_function) == 'exec')
      {
        return 0;
      }
    }

    if(!empty($config->jg_impath))
    {
      $execstring = $config->get('jg_impath').'convert -version';
    }
    else
    {
      $execstring = 'convert -version';
    }

    @exec($execstring, $output, $status);

    if(count($output) == 0)
    {
      return 0;
    }
    else
    {
      return $output[0];
    }
  }
}