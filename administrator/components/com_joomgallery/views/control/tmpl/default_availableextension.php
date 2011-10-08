<?php

defined('_JEXEC') or die('Direct Access to this location is not allowed.'); ?>
  <div class="TODO" style="padding:10px;">
<?php if(isset($this->extension['description'])): ?>
    <div>
      <?php echo $this->extension['description']; ?>
      <hr />
    </div>
<?php endif;
      if( isset($this->extension['downloadlink'])
        &&
        ((isset($this->installed_extensions[$this->name]) && isset($this->dated_extensions[$this->name])) || !isset($this->installed_extensions[$this->name]))):
        if(isset($this->installed_extensions[$this->name]) && isset($this->dated_extensions[$this->name])):
          $label = JText::_('JGA_ADMENU_DOWNLOAD_UPDATE_LINK');
        endif;
        if(!isset($this->installed_extensions[$this->name])):
          $label = JText::_('JGA_ADMENU_DOWNLOAD_INSTALLATION_LINK');
        endif; ?>
    <div class="TODO" style="font-weight:bold;"><a href="<?php echo $this->extension['downloadlink']; ?>" target="_blank"><?php echo $label; ?></a></div>
<?php endif; ?>
    <div class="TODO" style="margin-left:10px;">
      <table>
<?php if(isset($this->dated_extensions[$this->name])): ?>
        <tr>
          <td><?php echo JText::_('JGA_ADMENU_YOUR_VERSION'); ?></td>
          <td><?php echo $this->dated_extensions[$this->name]['installed_version']; ?></td>
        </tr>
<?php endif; ?>
        <tr>
          <td><?php echo JText::_('JGA_ADMENU_CURRENT_VERSION'); ?></td>
          <td><?php echo $this->extension['version']; ?></td>
<?php if(isset($this->extension['releaselink'])): ?>
          <td><a href="<?php echo $this->extension['releaselink']; ?>" target="_blank"><?php echo JText::_('JGA_ADMENU_MORE_INFO_LINK'); ?></a></td>
<?php endif; ?>
        </tr>
      </table>
    </div>
<?php if(isset($this->extension['updatelink'])
        &&
        ((isset($this->installed_extensions[$this->name]) && isset($this->dated_extensions[$this->name])) || !isset($this->installed_extensions[$this->name]))):
        if(isset($this->installed_extensions[$this->name]) && isset($this->dated_extensions[$this->name])):
          $label = JText::_('JGA_ADMENU_AUTOUPDATE_LINK');
        endif;
        if(!isset($this->installed_extensions[$this->name])):
          $label = JText::_('JGA_ADMENU_AUTOINSTALLATION_LINK');
        endif;
        if($this->params->get('curl_loaded')): ?>
    <div class="TODO" style="margin:5px 0px;"><?php echo JText::_('JGA_ADMENU_AUTOUPDATE_TEXT'); ?></div>
    <div class="TODO" style="font-weight:bold;">
      <a href="index.php?option=<?php echo _JOOM_OPTION; ?>&amp;task=install&amp;extension=<?php echo $this->name; ?>"><?php echo $label; ?></a></div>
<?php   endif;
        if(!$this->params->get('curl_loaded')):
          if($this->params->get('url_fopen_allowed')): ?>
    <div style="margin:5px 0px;"><?php echo JText::_('JGA_ADMENU_AUTOUPDATE_TEXT'); ?>
      <form enctype="multipart/form-data" action="index.php" method="post" name="JoomUpdateForm<?php echo $this->entry; ?>">
        <input type="hidden" name="installtype" value="url" />
        <input type="hidden" name="install_url" value="<?php echo $this->extension['updatelink']; ?>" />
        <input type="hidden" name="task" value="doInstall" />
        <input type="hidden" name="option" value="com_installer" />
        <?php echo JHTML::_('form.token'); ?>
      </form>
    </div>
    <div class="TODO" style="font-weight:bold;">
      <a href="javascript:document.JoomUpdateForm<?php echo $this->entry; ?>.submit();"><?php echo $label; ?></a></div>
<?php     endif;
          if(!$this->params->get('url_fopen_allowed')):
            if(isset($this->installed_extensions[$this->name])):
              $label = JText::_('JGA_ADMENU_AUTOUPDATE_NOT_POSSIBLE');
             endif;
            if(!isset($this->installed_extensions[$this->name])):
              $label = JText::_('JGA_ADMENU_AUTOINSTALLATION_NOT_POSSIBLE');
            endif; ?>
    <div class="TODO" style="margin:5px 0px;"><?php echo $label; ?></div>
<?php     endif;
        endif;
      endif; ?>
  </div>
