<?php
// $HeadURL: https://joomgallery.org/svn/joomgallery/JG-1.5/JG/trunk/components/com_joomgallery/helpers/html/joompopup.php $
// $Id: joompopup.php 1972 2010-03-22 09:48:34Z chraneco $
/******************************************************************************\
**   JoomGallery  1.5                                                         **
**   By: JoomGallery::ProjectTeam                                             **
**   Copyright (C) 2008 - 2009  M. Andreas Boettcher                          **
**   Based on: JoomGallery 1.0.0 by JoomGallery::ProjectTeam                  **
**   Released under GNU GPL Public License                                    **
**   License: http://www.gnu.org/copyleft/gpl.html or have a look             **
**   at administrator/components/com_joomgallery/LICENSE.TXT                  **
\******************************************************************************/

defined('_JEXEC') or die('Direct Access to this location is not allowed.');

/**
 * Utility class for creating HTML output
 *
 * @static
 * @package JoomGallery
 * @since   1.5.5
 */
class JHTMLJoomPopup
{
  /**
   * Displays the approved state as an clickable button
   *
   * @access  public
   * @param   object  $row      Image object, holds image information
   * @param   int     $i        Number of the image in the current list
   * @param   string  $actionA  Description of action if image is approved
   * @param   string  $actionR  Description of action if image is rejected
   * @param   string  $altA     Alternative text for the icon if image is approved
   * @param   string  $altR     Alternative text for the icon if image is rejected
   * @param   string  $imgY     Icon if image is approved
   * @param   string  $imgX     Icon if image is rejected
   * @param   string  $prefix   Optional prefix of the task
   * @return  string  The HTML output  
   * @since   1.5.5 
   */
  function start(&$row, $i, $actionA = 'Reject image', $actionR = 'Approve image', $altA = 'Approved', $altR = 'Rejected', $imgY = 'tick.png', $imgX = 'publish_x.png', $prefix = '')
  {
    // Template CSS is usually not loaded now, but it's better to have it
    $load_template_css = true; // Make available in the plugin params?
    if($load_template_css)
    {
      $template = $this->_mainframe->getTemplate();
      $template_file = false;
      if(is_file(JPATH_THEMES.DS.$template.DS.'css'.DS.'template.css'))
      {
        $template_file = 'templates/'.$template.'/css/template.css';
      }
      else
      {
        if(is_file(JPATH_THEMES.DS.$template.DS.'css'.DS.'template_css.css'))
        {
          $template_file = 'templates/'.$template.'/css/template_css.css';
        }
      }
      if($load_template_css)
      {
        $this->_doc->addStyleSheet(JURI::root().$template_file);
 
        // To avoid scroll bar with some templates
        $this->_doc->addStyleDeclaration("    body{\n      height:90%;\n    }");
      }
    }
  }

  /**
   * Displays the type of an image or category
   */
  function nametags()
  {
    JHTML::_('behavior.mootools');
    $user = & JFactory::getUser(); ?>
<div class="gallery minigallery" style="text-align:center;">
  <div class="jg_header">
    <?php echo JText::_('JGS_SELECT_NAMETAG'); ?>
  </div>
  <div>
    <form action="index.php" name="selectnametagform" method="post">
      <div>
        <input type="submit" value="<?php echo JText::_('JGS_DETAIL_NAMETAGS_SELECT_MYSELF'); ?>" class="button" onclick="window.parent.selectnametag(<?php echo $user->get('id'); ?>, '<?php echo $user->get('username'); ?>');return false;" />
      </div>
      <div>
        <?php echo JHTML::_('joomselect.users', '', 'selectnametaglist', true, 'onchange="window.parent.selectnametag(this.value, this[this.selectedIndex].getText());"'); ?>
      </div>
    </form>
  </div>
</div>
<?php
  }
}