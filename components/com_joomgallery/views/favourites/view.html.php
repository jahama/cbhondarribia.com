<?php
// $HeadURL: https://joomgallery.org/svn/joomgallery/JG-1.5/JG/trunk/components/com_joomgallery/views/favourites/view.html.php $
// $Id: view.html.php 1966 2010-03-21 17:24:16Z mab $
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
 * HTML View class for the favourites view
 *
 * @package JoomGallery
 * @since   1.5.5
 */
class JoomGalleryViewFavourites extends JoomGalleryView
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
    // Breadcrumbs
    if($this->_config->get('jg_completebreadcrumbs'))
    {
      $breadcrumbs  = &$this->_mainframe->getPathway();
      $breadcrumbs->addItem($this->output('MY'));
    }

    $params           = &$this->_mainframe->getParams();

    // Header and footer
    JoomHelper::prepareParams($params);

    $pathway  = $this->output('MY');

    $backtarget = JRoute::_('index.php?view=gallery'); //see above
    $backtext   = JText::_('JGS_COMMON_BACK_TO_GALLERY');

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

    $rows = &$this->get('Favourites');

    foreach($rows as $key => $row)
    {
      $row->link = JHTML::_('joomgallery.openimage', $this->_config->get('jg_detailpic_open'), $row);

      if($this->_config->get('jg_showauthor'))
      {
        if($row->imgauthor)
        {
          $row->authorowner = $row->imgauthor;
        }
        else
        {
          if($this->_config->get('jg_showowner'))
          {
            $row->authorowner = JHTML::_('joomgallery.displayname', $row->imgowner);
          }
          else
          {
            $row->authorowner = JText::_('JGS_COMMON_NO_DATA');
          }
        }
      }

      if($this->_config->get('jg_showcatrate'))
      {
        if($row->imgvotes)
        {
          $row->rating = number_format($row->imgvotesum / $row->imgvotes, 2, ',', '.');
          if($row->imgvotes == 1)
          {
            $ratings = $row->rating.' ('.$row->imgvotes.' '.  JText::_('JGS_COMMON_ONE_VOTE') . ')';
          }
          else
          {
            $ratings = $row->rating.' ('.$row->imgvotes.' '.  JText::_('JGS_COMMON_VOTES') . ')';
          }
        }
        else
        {
          $ratings = JText::_('JGS_COMMON_NO_VOTES');
        }
        $row->ratings = $ratings;
      }

      if($this->_config->get('jg_showcatcom'))
      {
        // TODO
        $model = &$this->getModel();
        $row->comments = $model->getCommentsNumber($row->id);
      }
 
      $row->show_editor_icons = false;
      if(     $this->_user->get('gid') > 23
          || ($row->imgowner && $row->imgowner == $this->_user->get('id'))
        )
      {
        $row->show_editor_icons = true;
      }
    }

    // Download Icon # at this point the setting for the detail view is used at the moment
    /*if((is_file(JPath::clean(JPATH_ROOT.DS.$config->jg_pathoriginalimages.$catpath.$imgfilename)) 
         || $config->jg_downloadfile!=1)) {*/
      if(   (($this->_config->get('jg_showdetaildownload') == 1) && ($this->_user->get('aid') >= 1)) 
         || (($this->_config->get('jg_showdetaildownload') == 2) && ($this->_user->get('aid') == 2)) 
         ||  ($this->_config->get('jg_showdetaildownload') == 3)
        )
      {
        $params->set('show_download_icon', 1);
      }
      else
      {
        if(($this->_config->get('jg_showdetaildownload') == 1) && ($this->_user->get('aid') < 1))
        {
          $params->set('show_download_icon', -1);
        }
      }
    #}

    $this->assignRef('params',          $params);
    $this->assignRef('rows',            $rows);
    $this->assignRef('pathway',         $pathway);
    $this->assignRef('modules',         $modules);
    $this->assignRef('backtarget',      $backtarget);
    $this->assignRef('backtext',        $backtext);
    $this->assignRef('numberofpics',    $numbers[0]);
    if(isset($numbers[1]))
    {
      $this->assignRef('numberofhits',  $numbers[1]);
    }

    $layout = JRequest::getCmd('layout');
    if(!$layout && $this->get('Layout'))
    {
      $this->setLayout('list');
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
