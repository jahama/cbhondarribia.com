<?php // no direct access
defined('_JEXEC') or die('Restricted access'); ?>
<script type="text/javascript" src="<?php echo JURI::base()?>media/system/js/mootools.js"></script>
<script type="text/javascript" src="<?php echo JURI::base()?>components/com_joomsport/js/grid.js"></script>
<?php
	if(isset($this->message)){
		$this->display('message');
	}
	$lists = $this->lists;
	
	global $Itemid;
?>

<div class="clrthis">
<?php if($this->curseas->logo && is_file('media/bearleague/'.$this->curseas->logo)){
	echo "<img src='".JURI::base()."media/bearleague/".$this->curseas->logo."' class='tourn_logo' />";
}
 if ( $this->params->def( 'show_page_title', 1 ) ) : ?>
<div class="componentheading<?php echo $this->params->get( 'pageclass_sfx' ); ?>"><?php echo $this->escape($this->params->get('page_title')); ?>
<div style="float:right; width:30px;"><a href="<?php echo JRoute::_('index.php?option=com_joomsport&amp;task=calendar&amp;sid='.$this->sid.'&Itemid='.$Itemid)?>"><img src="<?php echo JURI::base()?>components/com_joomsport/images/month_f2.png" title="<?php echo $this->bl_lang['BL_CALENDAR'];?>" width="24" /></a></div>
</div>
<?php endif;
echo "<div class='tourn_desc'>".$this->curseas->descr."</div>";
?>
</div>
<?php 
echo $this->adm_links;
 require_once(JPATH_ROOT.DS.'components'.DS.'com_joomsport'.DS.'includes'.DS.'tabs.php');
 $etabs = new esTabs();
  
  if($this->curseas->s_descr){
  echo '<div class="clrthis">';
	$etabs->newTab($this->bl_lang['BL_TAB_TBL'],'etab_tbl','','vis');
	$etabs->newTab($this->bl_lang['BL_TAB_ABOUTSEAS'],'etab_aboutm');
	echo '</div>';
  }
?>  
<?php

if($this->curseas->s_descr){
	echo '<div id="etab_tbl_div" class="tabdiv">';
}	
for($zzz=0;$zzz<count($this->groups);$zzz++){
$show = false;
if(!$this->gr_id || $this->gr_id == $this->groups[$zzz]){
	$show = true;
}
if(!$this->enbl_gr){
	$show = true;
}
if($show){
	if(isset($this->groups_name[$zzz])){
		echo "<div class='group_header'><div><div>".$this->groups_name[$zzz]."</div></div></div>";
	}
?>
<table id="s_table_<?php echo $zzz?>" width="100%" cellpadding="0" cellspacing="0">
	<thead>
	<tr>
		<th width="20" class="sort asc" axis="int" id="tblrank_id">
			<?php echo $this->bl_lang['BL_TBL_RANK'];?>
		</th>
		<?php if($lists['emblem_chk'] == 1) { ?>
		<th class="bno_sort"></th>
		<?php } ?>
		<th width="120" class="sort asc" axis="string">
			<?php echo $this->bl_lang['BL_TBL_TEAMS'];?>
		</th>
		<?php if($lists['played_chk'] == 1) { ?>
		<th class="sort asc" axis="int"><?php echo $this->bl_lang['BL_TBL_PLAYED'];?></th>
		<?php } ?>
		<?php if($lists['win_chk'] == 1) { ?>
		<th class="sort asc" axis="int"><?php echo $this->bl_lang['BL_TBL_WINS'];?></th>
		<?php } ?>
		<?php if($lists['draw_chk'] == 1) { ?>
		<th class="sort asc" axis="int"><?php echo $this->bl_lang['BL_TBL_DRAW'];?></th>
		<?php } ?>
		<?php if($lists['lost_chk'] == 1) { ?>
		<th class="sort asc" axis="int"><?php echo $this->bl_lang['BL_TBL_LOST'];?></th>
		<?php } ?>
		<?php
		if($this->enbl_extra){
			?>
			<?php if($lists['otwin_chk'] == 1) { ?>
			<th class="sort asc" axis="int"><?php echo $this->bl_lang['BL_TBL_EXTRAWIN'];?></th>
			<?php } ?>
			<?php if($lists['otlost_chk'] == 1) { ?>
			<th class="sort asc" axis="int"><?php echo $this->bl_lang['BL_TBL_EXTRALOST'];?></th>
			<?php } ?>
			<?php
		}
		?>
		<?php if($lists['diff_chk'] == 1) { ?>
		<th class="sort asc" axis="string"><?php echo $this->bl_lang['BL_TBL_DIFF'];?></th>
		<?php } ?>
		<?php if($lists['gd_chk'] == 1) { ?>
		<th class="sort asc" axis="int"><?php echo $this->bl_lang['BL_TBL_GD'];?></th>
		<?php } ?>
		<?php if($lists['point_chk'] == 1) { ?>
		<th class="sort asc" axis="int"><?php echo $this->bl_lang['BL_TBL_POINTS'];?></th>
		<?php
		}?>
		<?php if($lists['percent_chk'] == 1) { ?>
		<th class="sort asc" axis="int"><?php echo $this->bl_lang['BL_TBL_WINPERCENT'];?></th>
		<?php
		}
		for($i=0;$i<count($this->ext_fields_name);$i++){
		?>
		<th class="sort asc" axis="string"><?php echo $this->ext_fields_name[$i];?></th>	
		<?php	
		}
		?>
	</tr>
	</thead>
	<tbody>
	<?php
	$ranks = 1;
	for($i=0;$i<count($this->v_table);$i++){
		$team = $this->v_table[$i];
		
		$color = '';
		if(isset($this->colors[$i+1])){
			$color = 'style="background-color:'.$this->colors[$i+1].'"';
		}
		if($team['yteam']){
			$color = 'style="background-color:'.$team['yteam'].'"';
		}
		
		if($team['g_id'] == $this->groups[$zzz]){
		?>
		<tr <?php echo $color?>>
			<td><?php echo $ranks?>
			<?php 
				if(in_array($team['tid'],$this->teams_season)){
					echo '<a href="'.JRoute::_('index.php?option=com_joomsport&task=edit_team&tid='.$team['tid'].'&sid='.$this->sid.'&controller=moder&Itemid='.$Itemid).'"><img width="15" src="components/com_joomsport/images/edit.png" /></a>';
				}
			?>
			</td>
			<?php if($lists['emblem_chk'] == 1) { ?>
			<td>
				<?php
				
					if($team['t_emblem'] && is_file('media/bearleague/'.$team['t_emblem'])){
						echo '<img src="'.JURI::base().'media/bearleague/'.$team['t_emblem'].'" class="embl_in_tbl">';
					}
				
				?>
			</td>
			<?php } ?>
			<td>			
				<a href="<?php echo JRoute::_('index.php?option=com_joomsport&task=team&tid='.$team['tid'].'&sid='.$this->sid.'&Itemid='.$Itemid)?>"><?php echo $team['name']?></a>
			</td>
			<?php if($lists['played_chk'] == 1) { ?>
			<td><?php echo $team['played']?></td>
			<?php } ?>
			<?php if($lists['win_chk'] == 1) { ?>
			<td><?php echo $team['win']?></td>
			<?php } ?>
			<?php if($lists['draw_chk'] == 1) { ?>
			<td><?php echo $team['draw']?></td>
			<?php } ?>
			<?php if($lists['lost_chk'] == 1) { ?>
			<td><?php echo $team['lost']?></td>
			<?php } ?>
			<?php
			if($this->enbl_extra){
				?>
				<?php if($lists['otwin_chk'] == 1) { ?>
				<td><?php echo $team['extra_win']?></td>
				<?php } ?>
				<?php if($lists['otlost_chk'] == 1) { ?>
				<td><?php echo $team['extra_lost']?></td>
				<?php } ?>
				<?php
			}
			?>
			<?php if($lists['diff_chk'] == 1) { ?>
			<td><?php echo $team['goals']?></td>
			<?php } ?>
			<?php if($lists['gd_chk'] == 1) { ?>
			<td><?php echo $team['gd']?></td>
			<?php } ?>
			<?php if($lists['point_chk'] == 1) { ?>
			<td><?php echo $team['points']?></td>
			<?php
			}?>
			<?php if($lists['percent_chk'] == 1) { ?>
			<td><?php echo ($team['winperc'] == 1)?1.000:substr(sprintf("%.3f",round($team['winperc'],3)),1);?></td>
			<?php
			}
			for($j=0;$j<count($team['ext_fields']);$j++){
			?>
			<td><?php echo $team['ext_fields'][$j]?$team['ext_fields'][$j]:'&nbsp;';?></td>	
			<?php	
			}
			?>
			
		</tr>
		<?php
		$ranks++;
		}
		
	}
	?>
	</tbody>
</table>
<br />
<script type="text/javascript">
new Grid($('s_table_<?php echo $zzz?>')); 
</script>
<?php
}

}
if(count($this->playoffs)){
echo "<table>";
$prev_mday = 0;
for ($i=0;$i<count($this->playoffs);$i++){
	$playoff_match = $this->playoffs[$i];
	if($playoff_match->m_id != $prev_mday){
		echo '<tr><th class="playoff_name" colspan = "3">'.$playoff_match->m_name.'</th></tr>';
		$prev_mday = $playoff_match->m_id;
	}
	?>
	<tr>

			<td class="team_thome"><?php echo $playoff_match->home?></td>
			<td class="match_result">
				<a href="<?php echo JRoute::_('index.php?option=com_joomsport&task=view_match&id='.$playoff_match->mid.'&Itemid='.$Itemid)?>"><?php echo $playoff_match->score1?> : <?php echo $playoff_match->score2; if($this->enbl_extra && $playoff_match->is_extra){ echo " (".$this->bl_lang['BL_RES_EXTRA'].")";}?></a>
			</td>
			<td class="team_taway"><?php echo $playoff_match->away?></td>

</tr>
	<?php
}
?>

</table>
<?php
}
if($this->curseas->s_descr){
	echo '</div>';
	echo '<div id="etab_aboutm_div" class="tabdiv" style="display:none;">'.$this->curseas->s_descr.'</div>';
}	

?>
<!-- You are not allowed to remove the next credit link without our approve. Contact us beardev@beardev.com -->
<div id="copy">Developed by <a href="http://beardev.com">BearDev</a></div> 
