<?php

defined('_JEXEC') or die('Direct Access to this location is not allowed.'); ?>
<table width="100%" border="0" cellpadding="4" cellspacing="2" class="adminlist">
  <tr align="center" valign="middle">
    <td align="right" width="50%">
      <?php echo JText::_('JGA_COMMON_IMAGE_PATH'); ?>:
    </td>
    <td align="left" width="50%">
      <?php echo JPath::clean($this->_ambit->get('ftp_path').$this->subdirectory); ?>
    </td>
  </tr>
<?php if(count($this->subdirectories)): ?>
  <tr>
    <td align="right">
      <?php echo JText::_('JGA_UPLOAD_SELECT_DIRECTORY'); ?>:
    </td>
    <td align="left">
      <form action="index.php?option=<?php echo _JOOM_OPTION; ?>&amp;controller=ftpupload" method="post" name="dirForm">
        <select name="subdirectory" size="1" onchange="submit();">
          <option><?php echo DS;?></option>
<?php   foreach($this->subdirectories as $subdirectory):
          $subdirectory = str_replace(JPath::clean($this->_ambit->get('ftp_path')), '', $subdirectory);
          $selected = ($subdirectory.DS == $this->subdirectory) ? ' selected = "selected"' : ''; ?>
          <option<?php echo $selected.'>'.$subdirectory.DS; ?></option>
<?php   endforeach; ?>
        </select>
        <input type="submit" value="<?php echo JText::_('JGA_UPLOAD_CHANGE_FOLDER'); ?>" />
      </form>
    </td>
  </tr>
<?php endif; ?>
</table>
<form action="index.php" method="post" name="adminForm" enctype="multipart/form-data" onsubmit="return joom_checkme();">
  <table width="100%" border="0" cellpadding="4" cellspacing="2" class="adminlist">
    <tr>
      <td align="right" width="50%">
        <?php echo JText::_('JGA_UPLOAD_PLEASE_SELECT_IMAGES'); ?>:
      </td>
      <td align="left">
        <select name="ftpfiles[]"  multiple size="20">
<?php foreach($this->files as $file): ?>
          <option><?php echo $file; ?></option>
<?php endforeach; ?>
        </select>
      </td>
    </tr>
    <tr>
      <td align="right">
        <?php echo JText::_('JGA_UPLOAD_IMAGE_ASSIGN_TO_CATEGORY'); ?>
      </td>
      <td align="left">
        <?php echo $this->lists['cats']; ?>
      </td>
    </tr>
<?php if(!$this->_config->get('jg_useorigfilename') && $this->_config->get('jg_filenamenumber'))
      {
        $sup1 = '&sup1;';
        $sup2 = '&sup2;';
        if(!$this->_config->get('jg_delete_original') == 2)
        {
          $sup3 = '&sup2;';
        }
        else
        {
          $sup3 = '&sup3;';
        }
      }
      else
      {
        if(!$this->_config->get('jg_delete_original') == 2)
        {
          $sup3 = '&sup1;';
        }
        else
        {
          $sup2 = '&sup1;';
          $sup3 = '&sup2;';
        }
      }
      if(!$this->_config->get('jg_useorigfilename') && $this->_config->get('jg_filenamenumber')): ?>
    <tr>
      <td align="right">
        <?php echo JText::_('JG_UPLOAD_COUNTER_NUMBER'); ?>&nbsp;<?php echo $sup1; ?>
      </td>
      <td align="left">
        <input type="text" name="filecounter" size="5" maxlength="5" />
      </td>
    </tr>
<?php endif;
      if(!$this->_config->get('jg_useorigfilename')): ?>
    <tr>
      <td align="right">
        <?php echo JText::_('JG_UPLOAD_GENERIC_TITLE'); ?>
      </td>
      <td align="left">
        <input type="text" name="gentitle" size="34" maxlength="256" value="" />
      </td>
    </tr>
<?php endif; ?>
    <tr>
      <td align="right">
        <?php echo JText::_('JG_UPLOAD_GENERIC_DESCRIPTION_OPTIONAL'); ?>
      </td>
      <td align="left">
        <input type="text" name="gendesc" size="34" maxlength="1000" />
      </td>
    </tr>
    <tr>
      <td align="right">
        <?php echo JText::_('JGA_UPLOAD_AUTHOR_OPTIONAL'); ?>
      </td>
      <td align="left">
        <input type="text" name="photocred" size="34" maxlength="256" />
      </td>
    </tr>
    <tr>
      <td align="right">
        <?php echo JText::_('JGA_UPLOAD_DELETE_AFTER_UPLOAD'); ?>
      </td>
      <td align="left">
        <input type="checkbox" name="file_delete" value="1" checked="checked" />
      </td>
    </tr>
<?php if($this->_config->get('jg_delete_original') == 2): ?>
    <tr>
      <td align="right">
        <?php echo JText::_('JG_UPLOAD_DELETE_ORIGINAL_AFTER_UPLOAD'); ?>&nbsp;<?php echo $sup2; ?>
      </td>
      <td align="left">
        <input type="checkbox" name="original_delete" value="1" />
      </td>
    </tr>
<?php endif; ?>
    <tr>
      <td align="right">
        <?php echo JText::_('JG_UPLOAD_CREATE_SPECIAL_GIF'); ?>&nbsp;<?php echo $sup3; ?>
      </td>
      <td align="left">
        <input type="checkbox" name="create_special_gif" value="1" />
      </td>
    </tr>
    <tr>
      <td align="right">
        <?php echo JText::_('JGA_UPLOAD_DEBUG_MODE'); ?>
      </td>
      <td align="left">
        <input type="checkbox" name="debug" value="1" />
      </td>
    </tr>
    <tr>
      <td colspan="2" align="center">
        <input type="submit" value="<?php echo JText::_('JGA_UPLOAD_UPLOAD'); ?>" />
      </td>
    </tr>
    <tr>
      <td colspan="2" align="center">
        <div align="center" class="smallgrey">
<?php if(!$this->_config->get('jg_useorigfilename') && $this->_config->get('jg_filenamenumber')): ?>
          <?php echo $sup1; ?>&nbsp;<?php echo JText::_('JG_UPLOAD_COUNTER_NUMBER_ASTERISK'); ?>
<?php endif;
      if($this->_config->get('jg_delete_original') == 2): ?>
          <br /><?php echo $sup2; ?>&nbsp;<?php echo JText::_('JG_UPLOAD_DELETE_ORIGINAL_AFTER_UPLOAD_ASTERISK'); ?>
<?php endif; ?>
          <br /><?php echo $sup3; ?>&nbsp;<?php echo JText::_('JG_UPLOAD_CREATE_SPECIAL_GIF_ASTERISK'); ?>
          <br /><b><?php echo JText::_('JGA_UPLOAD_DEBUG_MODE_ASTERISK'); ?></b>
        </div>
      </td>
    </tr>
  </table>
  <div>
    <input type="hidden" name="option" value="<?php echo _JOOM_OPTION; ?>" />
    <input type="hidden" name="controller" value="ftpupload" />
    <input type="hidden" name="task" value="upload" />
    <input type="hidden" name="subdirectory" value="<?php echo $this->subdirectory; ?>" />
  </div>
</form>
<?php JHTML::_('joomgallery.credits');
