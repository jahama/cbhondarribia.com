<?php
// $HeadURL: https://joomgallery.org/svn/joomgallery/JG-1.5/JG/trunk/administrator/components/com_joomgallery/views/mini/view.html.php $
// $Id: view.html.php 2005 2010-03-29 13:02:36Z chraneco $
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
 * HTML View class for the Mini Joom view
 *
 * @package JoomGallery
 * @since   1.5.5
 */
class JoomGalleryViewMini extends JoomGalleryView
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
    $this->_doc->addStyleSheet(_JOOM_LIVE_SITE.'administrator/templates/system/css/system.css');

    // JavaScript for inserting the tag
    $this->_doc->addScript($this->_ambit->getScript('mini.js'));

    $lists = array();

    $catid = $this->_mainframe->getUserStateFromRequest('joom.mini.catid', 'catid', 0, 'int');
    $lists['image_categories']         = JHTML::_('joomselect.categorylist', $catid, 'catid', 'onchange="this.form.submit();"');
    $this->assignRef('catid', $catid);

    $extended     = $this->_mainframe->getUserStateFromRequest('joom.mini.extended', 'extended', 1, 'int');
    $pane_options = array();
    if($extended > 0)
    {
      $plugin = & JPluginHelper::getPlugin('content', 'joomplu');
      if(!count($plugin))
      {
        JError::raiseNotice(100, JText::_('JGA_PLUGIN_MINI_MSG_NOT_INSTALLED_OR_ACTIVATED'));
        $params = '';
      }
      else
      {
        $params = $plugin->params;
      }

      // Load plugin parameters
      $params = new JParameter($params);

      $options  = array();
      $arr      = array();
      $arr[]                = JHTML::_('select.option', 'thumb', JText::_('JGA_COMMON_THUMBNAIL'));
      $arr[]                = JHTML::_('select.option', 'img', JText::_('JGA_PLUGIN_MINI_DETAIL'));
      $arr[]                = JHTML::_('select.option', 'orig', JText::_('JGA_PLUGIN_MINI_ORIGINAL'));
      $options['type']      = JHTML::_('select.radiolist', $arr, 'jg_bu_type', null, 'value', 'text', $params->get('default_type', 'thumb'));
      $options['position']  = JHTML::_('list.positions', 'jg_bu_position', $params->get('default_position'));
      $arr      = array();
      $arr[]                = JHTML::_('select.option', '0', JText::_('NO'));
      $arr[]                = JHTML::_('select.option', '1', JText::_('JGA_PLUGIN_MINI_DETAIL_VIEW'));
      $arr[]                = JHTML::_('select.option', '2', JText::_('JGA_PLUGIN_MINI_CATEGORY_VIEW'));
      $options['linked']    = JHTML::_('select.radiolist', $arr, 'jg_bu_linked', null, 'value', 'text', $params->get('default_linked', 1));
      $arr      = array();
      $arr[]                = JHTML::_('select.option', '0', JText::_('JGA_PLUGIN_MINI_CATEGORY_MODE_THUMBNAILS'));
      $arr[]                = JHTML::_('select.option', '1', JText::_('JGA_PLUGIN_MINI_CATEGORY_MODE_TEXTLINK'));
      $options['category']  = JHTML::_('select.radiolist', $arr, 'jg_bu_category', null, 'value', 'text', $params->get('default_category_mode', 0));
      $arr      = array();
      $arr[]                = JHTML::_('select.option', '0', JText::_('JGA_PLUGIN_MINI_CATEGORY_ORDERING_ORDERING'));
      $arr[]                = JHTML::_('select.option', '1', JText::_('JGA_PLUGIN_MINI_CATEGORY_ORDERING_RANDOM'));
      $options['ordering']  = JHTML::_('select.genericlist', $arr, 'jg_bu_thumbnail_ordering', null, 'value', 'text', $params->get('default_category_ordering', 0));
      $options['class']     = '';
      $this->assignRef('options', $options);
      $this->assignRef('params',  $params);
      $pane_options  = array('allowAllClose' => 1 /*, 'startOffset' => 1, 'startTransition' => 1*/);

      JHTML::_('behavior.tooltip');

      $lists['category_categories'] = JHTML::_('joomselect.categorylist', $catid, 'category_catid', 'onchange="insertCategory(this.value);" id="category_catid"');

      // Upload
      $lists['upload_categories'] = JHTML::_('joomselect.categorylist', $params->get('default_catid'), 'catid');
      $this->_doc->addScript($this->_ambit->getScript('miniupload.js'));
      $this->_doc->addScriptDeclaration('    var jg_filenamewithjs = '.$this->_config->jg_filenamewithjs.';
      var jg_ffwrong = \''.$this->_config->get('jg_wrongvaluecolor').'\';
      var jg_inputcounter = 1;');
      $this->_ambit->script('JGA_COMMON_ALERT_YOU_MUST_SELECT_CATEGORY');
      $this->_ambit->script('JGA_IMGMAN_CHOOSE_IMAGE');
      $this->_ambit->script('JG_COMMON_ALERT_YOU_MUST_SELECT_ONE_FILE');
      $this->_ambit->script('JGA_COMMON_ALERT_IMAGE_MUST_HAVE_TITLE');
      $this->_ambit->script('JGA_UPLOAD_ALERT_FILENAME_DOUBLE_ONE');
      $this->_ambit->script('JGA_UPLOAD_ALERT_FILENAME_DOUBLE_TWO');
      $this->_ambit->script('JG_COMMON_ALERT_WRONG_FIILENAME');
      $this->_ambit->script('JG_COMMON_ALERT_WRONG_EXTENSION');
      $this->_ambit->script('JG_COMMON_ALERT_WRONG_VALUE');
    }

    jimport('joomla.html.pane');
		$tabs     = & JPane::getInstance('tabs');
		$sliders  = & JPane::getInstance('sliders', $pane_options);

    // Pagination
    $total      = &$this->get('TotalImages');
    $limitstart = JRequest::getInt('limitstart', 0);
    $limit      = $this->_mainframe->getUserStateFromRequest('joom.mini.limit', 'limit', 50, 'int');
    if($total <= $limit)
    {
      $limitstart = 0;
      JRequest::setVar('limitstart', $limitstart);
    }

    JRequest::setVar('limit', $limit);

    $images = &$this->get('Images');

    jimport('joomla.html.pagination');
    $pagination = new JPagination($total, $limitstart, $limit);

    foreach($images as $key => $image)
    {
      $image->thumb_src = null;
      $thumb = $this->_ambit->getImg('thumb_path', $image);
      if($image->imgthumbname && is_file($thumb))
      {
        $imginfo              = getimagesize($thumb);
        $image->thumb_src     = $this->_ambit->getImg('thumb_url', $image);
        $image->thumb_width   = $imginfo[0];
        $image->thumb_height  = $imginfo[1];
        $this->image          = $image;
        $overlib              = $this->loadTemplate('overlib');
        $image->overlib       = str_replace(array("\r\n", "\r", "\n"), '', htmlspecialchars($overlib, ENT_QUOTES, 'UTF-8'));
      }

      $images[$key]         = $image;
    }

    $this->assignRef('images',      $images);
    $this->assignRef('lists',       $lists);
    $this->assignRef('extended',    $extended);
    $this->assignRef('tabs',        $tabs);
    $this->assignRef('sliders',     $sliders);
    $this->assignRef('pagination',  $pagination);

    parent::display($tpl);
  }
}