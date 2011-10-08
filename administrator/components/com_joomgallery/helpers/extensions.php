<?php
// $HeadURL: https://joomgallery.org/svn/joomgallery/JG-1.5/JG/trunk/administrator/components/com_joomgallery/helpers/extensions.php $
// $Id: extensions.php 2306 2010-08-22 14:13:45Z chraneco $
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
 * JoomGallery Extensions Class
 *
 * @static
 * @package JoomGallery
 * @since   1.5.5
 */
class JoomExtensions
{
  /**
   * Returns all downloadable extensions developed by JoomGallery::ProjectTeam
   * with some additional information like the current version number or a
   * short description of the extension
   *
   * @return  array Two-dimensional array with extension information
   * @since   1.5.0
   */
  function getAvailableExtensions()
  {
    static $extensions;

    if(isset($extensions))
    {
      return $extensions;
    }

    // Check whether the german or the english RSS file should be loaded
    $subdomain = '';
    $language = & JFactory::getLanguage();
    if(strpos($language->getTag(), 'de-') === false)
    {
      $subdomain = 'en.';
    }

    $site   = 'http://www.'.$subdomain.'joomgallery.net';
    $site2  = 'http://'.$subdomain.'joomgallery.net';
    $rssurl = $site.'/components/com_newversion/rss/extensions.rss';

    // Get RSS parsed object
    $options = array();
    $options['rssUrl'] 		  = $rssurl;
    $options['cache_time']	= 24*60*60;

    $rssDoc = & JFactory::getXMLparser('rss', $options);

    $extensions = array();
    if($rssDoc != false)
    {
      $items = $rssDoc->get_items();
      foreach($items as $item)
      {
        $name     = $item->get_title();
        $category = $item->get_category();
        $type     = $category->get_term();
        switch($type)
        {
          case 'general':
            $description  = $item->get_description();
            $link         = $item->get_link();
            if(!is_null($description) && $description != '')
            {
              $extensions[$name]['description']   = $description;
            }
            if(!is_null($link) && $link != $site && $link != $site2)
            {
              $extensions[$name]['downloadlink']  = $link;
            }
            break;
          case 'version':
            $version  = $item->get_description();
            $link     = $item->get_link();
            if(!is_null($version) && $version != '')
            {
              $extensions[$name]['version']       = $version;
            }
            if(!is_null($link) && $link != $site && $link != $site2)
            {
              $extensions[$name]['releaselink']   = $link;
            }
            break;
          case 'autoupdate':
            $xml  = $item->get_description();
            $link = $item->get_link();
            if(!is_null($xml) && $xml != '')
            {
              $extensions[$name]['xml']           = $xml;
            }
            if(!is_null($link) && $link != $site && $link != $site2)
            {
              $extensions[$name]['updatelink']    = $link;
            }
            break;
          default:
            break;
        }
      }

      // Sort the extensions in alphabetical order
      ksort($extensions);
    }

    return $extensions;
  }

  /**
   * Returns all installed JoomGallery extensions and JoomGallery itself
   * with additional information provided by getAvailableExtensions
   *
   * @param   array $extensions Extensions provided by getAvailableExtensions
   * @return  array Two-dimensional array with extension information
   * @since   1.5.0
   */
  function getInstalledExtensions($extensions = null)
  {
    static $installed_extensions;

    if(isset($installed_extensions))
    {
      return $installed_extensions;
    }

    if(is_null($extensions))
    {
      $extensions = JoomExtensions::getAvailableExtensions();
    }

    $installed_extensions = array();
    foreach($extensions as $name => $extension)
    {
      if(!isset($extension['xml']))
      {
        continue;
      }
      $xml_file = JPath::clean(JPATH_ROOT . DS . $extension['xml']);
      if(file_exists($xml_file))
      {
        $installed_extensions[$name] = $extension;

        $xml = & JFactory::getXMLParser('simple');
        $xml->loadFile($xml_file);
        // TODO: error handling, maybe there's no 'version' tag?
        $version_tag = $xml->document->getElementByPath('version');
        $installed_version = $version_tag->data();
        $installed_extensions[$name]['installed_version'] = $installed_version;
      }
    }

    return $installed_extensions;
  }

  /**
   * Compares all installed extension versions with the current ones
   * and returns all dated JoomGallery extensions and JoomGallery itself
   * with additional information provided by getAvailableExtensions
   *
   * @param   array $extensions Installed extensions provided by getInstalledExtensions
   * @return  array Two-dimensional array with extension information
   * @since   1.5.0
   */
  function checkUpdate($extensions = null)
  {
    static $dated_extensions;

    if(isset($dated_extensions))
    {
      return $dated_extensions;
    }

    if(is_null($extensions))
    {
      $extensions = JoomExtensions::getInstalledExtensions();
    }

    $dated_extensions = array();
    foreach($extensions as $name => $extension)
    {
      // TODO: Error handling, check whether keys exist
      if($extension['version']  != $extension['installed_version'])
      {
        $dated_extensions[$name] = $extension;
      }
    }

    return $dated_extensions;
  }

  /**
   * Returns the currently installed version of JoomGallery
   *
   * @return  string  Version
   * @since   1.5.0
   */
  function getGalleryVersion()
  {
    static $version;

    if(!isset($version))
    {
      $config = & JoomConfig::getInstance();

      // Do not read RSS file if update check is disabled
      if($config->get('jg_checkupdate'))
      {
        $mainframe = & JFactory::getApplication('administrator');
        if(!$version = $mainframe->getUserState('joom.version.string'))
        {
          $extensions = JoomExtensions::getInstalledExtensions();

          if(isset($extensions['JoomGallery']['installed_version']))
          {
            $version = $extensions['JoomGallery']['installed_version'];
          }
          else
          {
            $version = 'not found';
          }
  
          $mainframe->setUserState('joom.version.string', $version);
        }
      }
      else
      {
        $xml_file = JPATH_ADMINISTRATOR . DS . 'components' .DS. 'com_joomgallery' .DS .'joomgallery.xml';
        if(file_exists($xml_file))
        {
          $xml = & JFactory::getXMLParser('simple');
          $xml->loadFile($xml_file);
          // TODO: error handling, maybe there's no 'version' tag?
          $version_tag = $xml->document->getElementByPath('version');
          $version = $version_tag->data();
        }
      }
    }

    return $version;
  }

  /**
   * Fetches an update zip file from JoomGallery server and extracts it
   *
   * @param   string  $url  The URL to the zip to fetch and extract
   * @return  void
   * @since   1.5.0
   */
  function autoUpdate($url)
  {
    if(!$url || !extension_loaded('curl'))
    {
      $mainframe = & JFactory::getApplication('administrator');
      $mainframe->redirect('index.php?option='._JOOM_OPTION, JText::_('JGA_ADMENU_MSG_ERROR_FETCHING_ZIP'), 'error');
    }

    $ambit = & JoomAmbit::getInstance();

    // Create curl resource
    $ch = curl_init(strtolower($url));

    // Some settings for curl
    curl_setopt($ch, CURLOPT_HEADER, 0);
    curl_setopt($ch, CURLOPT_POST, 1);
    curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);

    // Create the zip file
    jimport('joomla.filesystem.file');
    $config = & JoomConfig::getInstance();
    $output = curl_exec($ch);
    JFile::write($ambit->get('temp_path').'update.zip', $output);

    // Close curl resource to free up system resources
    curl_close($ch);

    // Extract the zip file
    require_once(JPATH_ADMINISTRATOR.DS.'includes'.DS.'pcl'.DS.'pclzip.lib.php');
    $zipfile  = new PclZip($ambit->get('temp_path').'update.zip');
    $folder   = $ambit->get('temp_path').'update'.mt_rand(0, 100);
    $zipfile->extract(PCLZIP_OPT_PATH, $folder);
    if($zipfile->error_code != 1)
    {
      $mainframe = & JFactory::getApplication('administrator');
      $mainframe->redirect('index.php?option='._JOOM_OPTION, $zipfile->errorInfo(), 'error');
    }

    JError::raiseNotice('301', JText::_('JGA_ADMENU_REDIRECT_NOTE'));

    // Let's ask Joomla! to do the rest
?>
    <form action="index.php" method="post" name="JoomUpdateForm">
      <input type="hidden" name="installtype" value="folder" />
      <input type="hidden" name="install_directory" value="<?php echo $folder; ?>" />
      <input type="hidden" name="task" value="doInstall" />
      <input type="hidden" name="option" value="com_installer" />
      <?php echo JHTML::_('form.token'); ?>
    </form>
    <script type="text/javascript">
      document.JoomUpdateForm.submit();
    </script>
<?php
  }
}