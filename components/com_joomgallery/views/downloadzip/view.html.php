<?php
// $HeadURL: https://joomgallery.org/svn/joomgallery/JG-1.5/JG/trunk/components/com_joomgallery/views/downloadzip/view.html.php $
// $Id: view.html.php 2333 2010-08-29 14:59:21Z chraneco $
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
 * HTML View class for the download view for zips
 *
 * @package JoomGallery
 * @since   1.5.5
 */
class JoomGalleryViewDownloadzip extends JoomGalleryView
{
  /**
   * HTML view display method
   *
   * @access  public
   * @param   string  $tpl  The name of the template file to parse
   * @return  void
   * @since   1.5.5
   */
  function display($tpl = null)
  {
    $params           = &$this->_mainframe->getParams();

    // Breadcrumbs
    if($this->_config->get('jg_completebreadcrumbs'))
    {
      $breadcrumbs  = &$this->_mainframe->getPathway();
      $breadcrumbs->addItem(JText::_('JGS_DOWNLOADZIP_DOWNLOAD'));
    }

    // Header and footer
    JoomHelper::prepareParams($params);

    $pathway  = JText::_('JGS_DOWNLOADZIP_DOWNLOAD');

    $backtarget = JRoute::_('index.php?view=favourites'); //see above
    $backtext   = JText::_('JGS_DOWNLOADZIP_BACK_TO_FAVOURITES');

    $numbers  = JoomHelper::getPicsAndHits($params);

    if(!$params->get('page_title'))
    {
      $params->set('page_title', JText::_('JGS_COMMON_GALLERY'));
    }

    // Load modules at position 'top'
    $modules['top'] = JoomHelper::getRenderedModules('top');
    if(count($modules['top']))
    {
      $params->set('show_top_modules', 1);
    }

    // Load modules at position 'btm'
    $modules['btm'] = JoomHelper::getRenderedModules('btm');
    if(count($modules['btm']))
    {
      $params->set('show_btm_modules', 1);
    }

    $zipname = $this->_mainframe->getUserState('joom.favourites.zipname');

    if(!$zipname || !file_exists(JPath::clean(JPATH_ROOT.DS.$zipname)))
    {
      $this->_mainframe->redirect(JRoute::_('index.php?view=favourites', false), JText::_('JGS_ZIPFILE_NOT_FOUND'), 'error');
    }

    $zipsize = filesize($zipname);
    if($zipsize < 1000000)
    {
      $zipsize        = round($zipsize, -3) / 1000;
      $zipsize_string = $zipsize.' KB';
    }
    else
    {
      $zipsize        = round($zipsize, -6) / 1000000;
      $zipsize_string = $zipsize.' MB';
    }

    $this->assignRef('params',          $params);
    $this->assignRef('zipname',         $zipname);
    $this->assignRef('zipsize',         $zipsize_string);
    $this->assignRef('pathway',         $pathway);
    $this->assignRef('modules',         $modules);
    $this->assignRef('backtarget',      $backtarget);
    $this->assignRef('backtext',        $backtext);
    $this->assignRef('numberofpics',    $numbers[0]);
    if(isset($numbers[1]))
    {
      $this->assignRef('numberofhits',  $numbers[1]);
    }

    parent::display($tpl);
  }

  /**
   * Returns a language string depending on the used mode for the zip download
   *
   * @access  public
   * @param   string  The main part of the language constant to use
   * @return  string  The translated string of the selected and completed language constant
   * @since   1.0.0
   */
  function output($msg)
  {
    if($this->_user->get('id') && $this->_config->get('jg_usefavouritesforzip') != 1)
    {
      $prefix = 'JGS_FAVOURITES_';
    }
    else
    {
      $prefix = 'JGS_DOWNLOADZIP_';
    }

    return JText::_($prefix.$msg);
  }
}