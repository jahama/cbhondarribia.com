<?php
/*
#------------------------------------------------------------------------
  JA Purity II for Joomla 1.5
#------------------------------------------------------------------------
#Copyright (C) 2004-2009 J.O.O.M Solutions Co., Ltd. All Rights Reserved.
#@license - GNU/GPL, http://www.gnu.org/copyleft/gpl.html
#Author: J.O.O.M Solutions Co., Ltd
#Websites: http://www.joomlart.com - http://www.joomlancers.com
#------------------------------------------------------------------------
*/


defined('_JEXEC') or die('Restricted access');
?>

<?php if($this->params->get('show_page_title',1)) : ?>
<h1 class="componentheading<?php echo $this->escape($this->params->get('pageclass_sfx')) ?>">
	<?php echo $this->escape($this->params->get('page_title')) ?>
</h1>
<?php endif; ?>

<div id="page">

<?php if (!$this->error) :
	echo $this->loadTemplate('results');
else :
	echo $this->loadTemplate('error');
endif; ?>

<?php echo $this->loadTemplate('form'); ?>

</div>
