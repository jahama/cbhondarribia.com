<?php defined('_JEXEC') or die('Direct Access to this location is not allowed.');
echo $this->loadTemplate('header'); ?>
  <div class="sectiontableheader">
    <?php echo $this->output('DOWNLOAD'); ?>
  </div>
  <div class="jg_createzip">
    <a href="<?php echo $this->zipname; ?>"><?php echo JText::_('JGS_DOWNLOADZIP_DOWNLOAD_READY'); ?></a>
    <br />
    <a href="<?php echo $this->zipname; ?>">
      <img src="<?php echo $this->_ambit->getIcon('disk.png'); ?>" border="0" align="middle" alt="<?php echo JText::_('JGS_DOWNLOADZIP_DOWNLOAD'); ?>" />
    </a>
    <br />
    <?php echo JText::sprintf('JGS_DOWNLOADZIP_FILESIZE', $this->zipsize); ?> 
    <br /><br />
    <a href="<?php echo JRoute::_('index.php?task=removeall'); ?>">
      <?php echo $this->output('CREATEZIP_REMOVE_ALL'); ?> 
    </a>
  </div>
  <div class="sectiontableheader">
    &nbsp;
  </div>
<?php echo $this->loadTemplate('footer');