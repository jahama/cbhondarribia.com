<?php // no direct access
defined('_JEXEC') or die('Restricted access'); 

	if(isset($this->message)){
		$this->display('message');
	}
	$row = $this->rows;
	$lists = $this->lists;
?>
<script type="text/javascript">
function bl_submit(task,chk){
	if(chk == 1 && document.adminForm.boxchecked.value == 0){
		alert('<?php echo JText::_('BLFA_SELECTITEM')?>');
	}else{
		document.adminForm.task.value = task;
		document.adminForm.submit();	
	}
}
</script>
<?php if($this->msg){ ?>
<div class="message"><?php echo $this->msg;?></div>
<?php }?>
<div align="right">
<div style="float:right;padding:0px 5px;width:32px;"><a href="#" class="toolbar" onclick="javascript:bl_submit('admin_team',0);"><span class="icon-32-cancel"></span><br /><?php echo JText::_('BLFA_CLOSE')?></a></div>
<div style="float:right;padding:0px 5px;width:32px;"><a href="#" class="toolbar" onclick="javascript:submitbutton('team_save');"><span class="icon-32-save"></span><br /><?php echo JText::_('BLFA_SAVE')?></a></div>
</div>
<div style="clear:both;"></div>
<?php

		//$editor =& JFactory::getEditor();
		JHTML::_('behavior.tooltip');
		?>
		<script type="text/javascript">
		
		function Delete_tbl_row(element) {
			var del_index = element.parentNode.parentNode.sectionRowIndex;
			var tbl_id = element.parentNode.parentNode.parentNode.parentNode.id;
			element.parentNode.parentNode.parentNode.deleteRow(del_index);
		}	
		function submitbutton(pressbutton) {
			var form = document.adminForm;
			if (pressbutton == 'team_save' || pressbutton == 'team_apply') {
				
				
				if(form.t_name.value != ""){
				
					submitform( pressbutton );
					return;
				}else{	
					alert("BLFA_ENTERNAME");	
				}
			}else{
				submitform( pressbutton );
					return;
			}
		}	
		</script>
		<form action="" method="post" name="adminForm" enctype="multipart/form-data">
		
		<table>
			<tr>
				<td width="100">
					<span class="editlinktip hasTip" title="<?php echo JText::_( 'BLFA_TEAMNAME' ); ?>::<?php echo JText::_( 'BLFA_TT_TEAMNAME' );?>"><?php echo JText::_( 'BLFA_TEAMNAME' ); ?>
					<img src="administrator/components/com_joomsport/img/quest.jpg" border="0" /></span>
				</td>
				<td>
					<input type="text" maxlength="255" size="60" name="t_name" value="<?php echo htmlspecialchars($row->t_name)?>" />
				</td>
			</tr>
			<tr>
				<td width="100">
					<span class="editlinktip hasTip" title="<?php echo JText::_( 'BLFA_CITY' ); ?>::<?php echo JText::_( 'BLFA_TT_CITY' );?>"><?php echo JText::_( 'BLFA_CITY' ); ?>
					<img src="administrator/components/com_joomsport/img/quest.jpg" border="0" /></span>
				</td>
				<td>
					<input type="text" maxlength="255" size="60" name="t_city" value="<?php echo htmlspecialchars($row->t_city)?>" />
				</td>
			</tr>

			<?php
			for($p=0;$p<count($lists['ext_fields']);$p++){
			?>
			<tr>
				<td width="100">
					<?php echo $lists['ext_fields'][$p]->name;?>
				</td>
				<td>
					<input type="text" maxlength="255" size="60" name="extraf[]" value="<?php echo isset($lists['ext_fields'][$p]->fvalue)?htmlspecialchars($lists['ext_fields'][$p]->fvalue):""?>" />
					<input type="hidden" name="extra_id[]" value="<?php echo $lists['ext_fields'][$p]->id?>" />
				</td>
			</tr>
			<?php	
			}
			?>
			<tr>
				<td valign="top">
					<?php echo JText::_( 'BLFA_TEAM_LOGO' ); ?>
					<span class="editlinktip hasTip" title="<?php echo JText::_( 'BLFA_TEAM_LOGO' ); ?>::<?php echo JText::_( 'BLFA_TT_TEAM_LOGO' );?>"><img src="administrator/components/com_joomsport/img/quest.jpg" border="0" /></span>
				</td>
				<td>
					<input type="file" name="t_logo" />
					<br />
					<?php
					
					if($row->t_emblem && is_file('media/bearleague/'.$row->t_emblem)){
						echo '<img src="'.JURI::base().'../media/bearleague/'.$row->t_emblem.'">';
					}
					?>
				</td>
			</tr>
			<tr>
				<td width="100">
					<?php echo JText::_( 'BLFA_ABOUT_TEAM' ); ?>
					<span class="editlinktip hasTip" title="<?php echo JText::_( 'BLFA_ABOUT_TEAM' ); ?>::<?php echo JText::_( 'BLFA_TT_ABOUT_TEAM' );?>"><img src="administrator/components/com_joomsport/img/quest.jpg" border="0" /></span>
				</td>
				<td>
					<?php  echo $this->editor->display( 't_descr',  htmlspecialchars($row->t_descr, ENT_QUOTES), '550', '300', '60', '20', array('pagebreak', 'readmore') ) ;  ?>
					
				</td>
			</tr>
		</table>
		
		<br />
		<table style="padding:10px;">
			<tr>
				<td>
				</td>
			</tr>
			<tr>
				<td>
					<?php echo JText::_( 'BLFA_UPLFOTO' ); ?>
					<span class="editlinktip hasTip" title="<?php echo JText::_( 'BLFA_UPLFOTO' ); ?>::<?php echo JText::_( 'BLFA_TT_UPLOAD_PHOTO' );?>"><img src="administrator/components/com_joomsport/img/quest.jpg" border="0" /></span>
				</td>
			</tr>
			<tr>
				<td>
				<input type="file" name="player_photo_1" value="" />
				</td>
			</tr>
			<tr>
				<td>
				<input type="file" name="player_photo_2" value="" />
				</td>
			</tr>
			<tr>
				<td>
					<input type="button" value="<?php echo JText::_( 'BLFA_UPLOAD' ); ?>" onclick="javascript:submitbutton('team_apply');" />
				</td>
			</tr>
		</table>
		<?php
		if(count($lists['photos'])){
		?>
		<table class="adminlist">
			<tr>
				<th class="title" width="30"><?php echo JText::_( 'BLFA_DELETE' ); ?></th>
				<th class="title" width="30"><?php echo JText::_( 'BLFA_DEFAULT' ); ?></th>
				<th class="title" ><?php echo JText::_( 'BLFA_TITLE' ); ?></th>
				<th class="title" width="250"><?php echo JText::_( 'BLFA_IMAGE' ); ?></th>
			</tr>
			<?php
			foreach($lists['photos'] as $photos){
			?>
			<td align="center">
				<a href="javascript:void(0);" title="<?php echo JText::_( 'BLFA_REMOVE' ); ?>" onClick="javascript:Delete_tbl_row(this);"><img src="<?php echo JURI::base();?>administrator/images/publish_x.png" title="<?php echo JText::_( 'BLFA_REMOVE' ); ?>" /></a>
			</td>
			<td align="center">
				<?php
				$ph_checked = ($row->def_img == $photos->id) ? 'checked="true"' : "";
				
				?>
				<input type="radio" name="ph_default" value="<?php echo $photos->id;?>" <?php echo $ph_checked?>/>
				<input type="hidden" name="photos_id[]" value="<?php echo $photos->id;?>"/>
			</td>
			<td>
				<input type="text" maxlength="255" size="60" name="ph_names[]" value="<?php echo htmlspecialchars($photos->name)?>" />
			</td>
			<td align="center">
				<?php
				$imgsize = getimagesize('media/bearleague/'.$photos->filename);
				if($imgsize[0] > 200){
					$width = 200;
				}else{
					$width  = $imgsize[0];
				}
				?>
				<a rel="{handler: 'image'}" href="<?php echo JURI::base();?>../media/bearleague/<?php echo $photos->filename?>" title="Image" class="modal-button"><img src="<?php echo JURI::base();?>../media/bearleague/<?php echo $photos->filename?>" width="<?php echo $width;?>" /></a>
			</td>
			</tr>
			<?php
			}
			?>
		</table>
		<?php
		}
		?>
		<input type="hidden" name="option" value="<?php echo $option?>" />
		<input type="hidden" name="task" value="edit_team" />
		<input type="hidden" name="id" value="<?php echo $row->id?>" />
		<input type="hidden" name="boxchecked" value="0" />
		<input type="hidden" name="sid" value="<?php echo $this->s_id;?>" />
		<?php echo JHTML::_( 'form.token' ); ?>
		</form>
