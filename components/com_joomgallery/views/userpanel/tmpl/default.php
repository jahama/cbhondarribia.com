<?php defined('_JEXEC') or die('Direct Access to this location is not allowed.');
echo $this->loadTemplate('header'); ?>
  <div class="jg_userpanelview">
    <div class="jg_up_head">
<?php if($this->params->get('show_upload_button')): ?>
      <input type="button" name="button" value="<?php echo JText::_('JGS_COMMON_UPLOAD_NEW_IMAGE'); ?>" class="button"
        onclick="javascript:location.href='<?php echo JRoute::_('index.php?view=upload', false); ?>';" />
<?php endif;
      if($this->params->get('show_categories_button')): ?>
      <input type="button" name="button" value="<?php echo JText::_('JGS_COMMON_CATEGORIES'); ?>" class="button"
      onclick="javascript:location.href='<?php echo JRoute::_('index.php?view=usercategories', false); ?>';" />
<?php endif; ?>
      <form action="<?php echo JRoute::_('index.php?view=userpanel'); ?>" method="post" name="form">
        <p>
<?php if(!is_null($this->pagination)): ?>
          <?php echo $this->pagination->getListFooter(); ?> 
<?php endif; ?>
          <?php echo $this->lists['filter']; ?> 
          <?php echo $this->lists['ordering']; ?> 
        </p>
      </form>
    </div>
    <div class="sectiontableheader">
      <div class="jg_up_entry">
        <div class="jg_up_ename">
          <?php echo JText::_('JGS_COMMON_IMAGE_NAME'); ?> 
        </div>
        <div class="jg_up_ehits">
          <?php echo JText::_('JGS_COMMON_HITS'); ?> 
        </div>
        <div class="jg_up_ecat">
          <?php echo JText::_('JGS_COMMON_CATEGORY'); ?> 
        </div>
        <div class="jg_up_eact">
          <?php echo JText::_('JGS_COMMON_ACTION'); ?> 
        </div>
<?php if($this->_config->get('jg_approve')): ?>
        <div class="jg_up_eappr">
          <?php echo JText::_('JGS_USERPANEL_APPROVED'); ?> 
        </div>
<?php endif; /* TODO: add column 'published' with link */ ?>
      </div>
    </div>
<?php if(!count($this->rows)): ?>
    <div class="jg_txtrow">
      <div class="sectiontableentry1">
        <?php echo JHTML::_('joomgallery.icon', 'arrow.png', 'arrow'); ?>
        <?php echo JText::_('JGS_USERPANEL_YOU_DO_NOT_HAVE_IMAGE'); ?>
      </div>
    </div>
<?php endif;
      $this->i = 0;
      foreach($this->rows as $row): ?>
    <div class="sectiontableentry<?php $this->i++; echo ($this->i%2)+1; ?>">
      <div class="jg_up_entry">
<?php   if($row->approved)
        {
          $link = JHTML::_('joomgallery.openImage', $this->_config->get('jg_detailpic_open'), $row);
        }
        else
        {
          $link = '#';
        } ?>
        <div class="jg_up_ename">
<?php   if($this->_config->get('jg_showminithumbs')):
          if($row->imgsource): ?>
            <span<?php echo JHTML::_('joomgallery.tip', htmlspecialchars('<img src="'.$row->imgsource.'" width="'.$row->imgwidth.'" height="'.$row->imgheight.'" alt="TODO" />', ENT_QUOTES, 'UTF-8'), null, true, false); ?>>
              <a href="<?php echo $link; ?>">
                <img src="<?php echo $row->imgsource; ?>" border="0" height="30" alt="TODO" /></a>
            </span>
<?php     endif;
          if(!$row->imgsource): ?>
            &nbsp;
<?php     endif;
        endif;
        if(!$this->_config->get('jg_showminithumbs')): ?>
          <div class="jg_floatleft">
            <?php echo JHTML::_('joomgallery.icon', 'arrow.png', 'arrow'); ?>
          </div>
<?php   endif;
        if($row->approved): ?>
          <a href="<?php echo $link; ?>"> 
<?php   endif; ?>
            <?php echo $row->imgtitle; ?> 
<?php   if($row->approved): ?>
          </a>
<?php   endif; ?>
        </div>
        <div class="jg_up_ehits">
        <?php echo $row->hits; ?> 
        </div>
        <div class="jg_up_ecat">
          <?php echo JoomHelper::categoryPathLink($row->catid,false);?>
        </div>
        <div class="jg_up_esub1">
          <a href="<?php echo JRoute::_('index.php?view=edit&id='.$row->id); ?>" title="<?php echo JText::_('JGS_COMMON_EDIT'); ?>">
            <?php echo JHTML::_('joomgallery.icon', 'edit.png', 'JGS_COMMON_EDIT'); ?></a>
        </div>
        <div class="jg_up_esub2">
          <a href="javascript:if(confirm('<?php echo JText::_('JGS_COMMON_ALERT_SURE_DELETE_SELECTED_ITEM', true); ?>')){ location.href='<?php echo JRoute::_('index.php?task=delete&id='.$row->id, false);?>';}" title="<?php echo JText::_('JGS_COMMON_DELETE'); ?>">
            <?php echo JHTML::_('joomgallery.icon', 'edit_trash.png', 'JGS_COMMON_DELETE'); ?></a>
        </div>
<?php   if($this->_config->get('jg_approve')):
          $a_img = 'cross';
          if($row->approved):
            $a_img = 'tick';
          endif; ?>
        <div class="jg_up_eappr">
          <?php echo JHTML::_('joomgallery.icon', $a_img.'.png', $a_img); ?>
        </div>
<?php   endif; ?>
      </div>
    </div>
<?php endforeach; ?>
  </div>
<?php echo $this->loadTemplate('footer');