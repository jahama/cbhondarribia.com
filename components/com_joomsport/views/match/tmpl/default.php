<?php // no direct accessdefined('_JEXEC') or die('Restricted access'); 	if(isset($this->message)){		$this->display('message');	}	$match = $this->match;	$lists = $this->lists;	global $Itemid;?><?php if ( $this->params->def( 'show_page_title', 1 ) ) : ?><div class="componentheading<?php echo $this->params->get( 'pageclass_sfx' ); ?>">	<?php echo $this->escape($this->params->get('page_title')); ?></div><?php endif; ?><div class="clrthis"><?php  require_once(JPATH_ROOT.DS.'components'.DS.'com_joomsport'.DS.'includes'.DS.'tabs.php'); $etabs = new esTabs();  $etabs->newTab($this->bl_lang['BL_TAB_MATCH'],'etab_match','','vis');  $how_rowst = (count($lists['squard1']) > count($lists['squard2']))?count($lists['squard1']):count($lists['squard2']);  if($how_rowst){	$etabs->newTab($this->bl_lang['BL_TAB_SQUAD'],'etab_squad');  }  $how_rowsev = (count($this->h_events) > count($this->a_events))?count($this->h_events):count($this->a_events);  if($how_rowsev){	$etabs->newTab($this->bl_lang['BL_TBL_STAT'],'etab_stats');  }  if(count($this->photos)){  	$etabs->newTab($this->bl_lang['BL_TAB_PHOTOS'],'etab_photos');  }  ?></div><div id="etab_match_div" class="tabdiv"><?phpecho '<div id="d_name">'.$match->m_name."</div>";?><table style="margin-top:15px;" border="0" cellpadding="5" cellspacing="0" width="100%">	<?php		?>		<tr>			<td colspan="6" align="center">				<?php echo $match->m_location;?>			</td>		</tr>		<tr id="score" valign="top">			<th id="match_thome" nowrap><?php echo $match->home?></th>			<th id="match_rhome" nowrap colspan="2"><?php echo ($match->m_played?$match->score1:'-').' :'?> </th>			<th id="match_raway" width="5%" colspan="2" ><?php echo ($match->m_played?$match->score2:'-');?></th>			<th id="match_taway" nowrap><?php echo '<div style="float: left; ">'.$match->away.'</div>'; if($this->enbl_extra && $match->is_extra){ echo "<div id='overtime' style='float: left;'> (".$this->bl_lang['BL_RES_EXTRA'].")</div>";}?></th>		</tr>		<tr>			<td class="date_and_time" colspan="6">				<?php				if($match->m_date){					echo date_bl($match->m_date,$match->m_time);				}				?>			</td>		</tr>	<?php	$prev_id = 0;	$ev_count = (count($this->m_events_home) > count($this->m_events_away)) ? (count($this->m_events_home)) : (count($this->m_events_away));	for($i=0;$i<$ev_count;$i++){	?>	<tr>		<?php		if(isset($this->m_events_home[$i])){			echo '<td class="home_event">';			if($this->m_events_home[$i]->e_img && is_file('media/bearleague/events/'.$this->m_events_home[$i]->e_img)){				echo '<img height="15" src="'.JURI::base().'media/bearleague/events/'.$this->m_events_home[$i]->e_img.'" title="'.$this->m_events_home[$i]->e_name.'" />';			}else{ 				echo $this->m_events_home[$i]->e_name;			}			$link = JRoute::_('index.php?option=com_joomsport&task=player&id='.$this->m_events_home[$i]->plid.'&sid='.$match->s_id.'&Itemid='.$Itemid);			echo "&nbsp;<a href='".$link."'>".$this->m_events_home[$i]->p_name."</a>";			echo '</td>';			?>			<td class="home_event_count">			<?php			if($this->m_events_home[$i]->ecount){				echo $this->m_events_home[$i]->ecount;			}else echo "&nbsp;";			?>			</td>			<td class="home_event_minute">			<?php			if($this->m_events_home[$i]->minutes){				echo $this->m_events_home[$i]->minutes.'"';			}			echo '&nbsp;&nbsp;';			?>			</td>			<?php		}else{			echo '<td style="padding:0px" colspan="3">&nbsp;</td>';		}		if(isset($this->m_events_away[$i])){			?>			<td class="away_event_minute">			<?php			if($this->m_events_away[$i]->minutes){				echo $this->m_events_away[$i]->minutes.'"';			}else echo "&nbsp;";			?>			</td>			<td class="away_event_count">			<?php			if($this->m_events_away[$i]->ecount){				echo $this->m_events_away[$i]->ecount;			}else echo "&nbsp;";			?>			</td>			<?php			echo '<td class="away_event" >';			if($this->m_events_away[$i]->e_img && is_file('media/bearleague/events/'.$this->m_events_away[$i]->e_img)){				echo '<img height="15" src="'.JURI::base().'media/bearleague/events/'.$this->m_events_away[$i]->e_img.'" title="'.$this->m_events_away[$i]->e_name.'" />';			}else{ 				echo $this->m_events_away[$i]->e_name;			}			$link = JRoute::_('index.php?option=com_joomsport&task=player&id='.$this->m_events_away[$i]->plid.'&sid='.$match->s_id.'&Itemid='.$Itemid);						echo "&nbsp;<a href='".$link."'>".$this->m_events_away[$i]->p_name."</a>";			echo '</td>';		}else{			echo '<td style="padding:0px" colspan="3">&nbsp;</td>';		}		?>	</tr>	<?php	}?></table>	<table><?phpfor ($p=0;$p<count($this->ext_fields);$p++){					if($this->ext_fields[$p]->fvalue){?><tr>	<td class="player_info">		<?php echo $this->ext_fields[$p]->name?> :	</td>	<td>		<?php echo $this->ext_fields[$p]->fvalue?>	</td></tr>	<?php		}}?></table><br /><div><?php echo $match->match_descr; ?></div></div><?php$how_rows = (count($lists['squard1']) > count($lists['squard2']))?count($lists['squard1']):count($lists['squard2']);if($how_rows){echo '<div id="etab_squad_div" class="tabdiv" style="display:none;">';?><?php echo "<div class='mainsquad' style='text-align:center'><h4>".$this->bl_lang['BL_LINEUP']."</h4></div>";//$how_rows = (count($lists['squard1']) > count($lists['squard2']))?count($lists['squard1']):count($lists['squard2']);if($how_rows){	echo '<table width="100%">';	for($p=0;$p<$how_rows;$p++){	echo "<tr>";	echo "<td width='50%' align='right' style='padding-right:20px;'>".($lists['squard1'][$p]->name?$lists['squard1'][$p]->name:"&nbsp;")."</td>";	echo "<td>".($lists['squard2'][$p]->name?$lists['squard2'][$p]->name:"&nbsp;")."</td>";	echo "</tr>";	}	echo '</table>';}	?><?php $how_rows = (count($lists['squard1_res']) > count($lists['squard2_res']))?count($lists['squard1_res']):count($lists['squard2_res']);if($how_rows){	echo "<div class='mainsquad' style='text-align:center'><h4>".$this->bl_lang['BL_SUBTITUTES']."</h4></div>";	echo '<table width="100%">';	for($p=0;$p<$how_rows;$p++){	echo "<tr>";	echo "<td width='50%' align='right' style='padding-right:20px;'>".($lists['squard1_res'][$p]->name?$lists['squard1_res'][$p]->name:"&nbsp;")."</td>";	echo "<td>".($lists['squard2_res'][$p]->name?$lists['squard2_res'][$p]->name:"&nbsp;")."</td>";	echo "</tr>";	}	echo '</table>';}	echo "</div>";}?><?php	$how_rows = (count($this->h_events) > count($this->a_events))?count($this->h_events):count($this->a_events);	if($how_rows){	echo '<div id="etab_stats_div" class="tabdiv" style="display:none;">';	for($p=0;$p<$how_rows;$p++){		if($p==0){						echo '<table  border="1" cellpadding="5" cellspacing="0" width="100%">';		}		echo "<tr>";		echo "<td>";		if(isset($this->h_events[$p])){			if($this->h_events[$p]->e_img && is_file('media/bearleague/events/'.$this->h_events[$p]->e_img)){				echo '<div style="float:left"><img height="20" src="'.JURI::base().'media/bearleague/events/'.$this->h_events[$p]->e_img.'" title="'.$this->h_events[$p]->e_name.'" /></div>';			}else{ 			}		echo '<div style="float:left;padding:5px;">'.$this->h_events[$p]->e_name."</div>";			}else echo "&nbsp;";		echo "</td>";		echo "<td class='home_stats_minute'>";			if(isset($this->h_events[$p])){				echo $this->h_events[$p]->ecount;		}else echo "&nbsp;";		echo "</td>";		echo "<td class='away_stats_minute'>";			if(isset($this->a_events[$p])){				echo $this->a_events[$p]->ecount;		}else echo "&nbsp;";		echo "</td>";		echo "<td>";		if(isset($this->a_events[$p])){			if($this->a_events[$p]->e_img && is_file('media/bearleague/events/'.$this->a_events[$p]->e_img)){				echo '<div style="float:left"><img height="20" src="'.JURI::base().'media/bearleague/events/'.$this->a_events[$p]->e_img.'" title="'.$this->a_events[$p]->e_name.'" /></div>';			}else{ 			}		echo '<div style="float:left;padding:5px;">'.$this->a_events[$p]->e_name."</div>";			}else echo "&nbsp;";		echo "</td>";		echo "</tr>";	}	echo "</table></div>";	}	?><?phpif(count($this->photos)){echo '<div id="etab_photos_div" class="tabdiv" style="display:none;">';echo "<table><tr><td>";	for($i=0;$i<count($this->photos);$i++){		$photo = $this->photos[$i];	?>		<div style="float:left; padding:10px; height:120px;">			<a rel="{handler: 'image'}" href="<?php echo JURI::base();?>media/bearleague/<?php echo $photo->filename?>" class="team-images"><img src="<?php echo (is_file(JPATH_ROOT.'/media/bearleague/thumbs/'.$photo->filename)?(JURI::base().'media/bearleague/thumbs/'.$photo->filename):(JURI::base().'media/bearleague/'.$photo->filename));?>"  height="100" class="allimages" title="<?php echo htmlspecialchars($photo->name)?>" /></a>		</div>	<?php	}echo "</td></tr></table></div>";	}?><div align="right"><div style="width:100px;float:right;text-align:right"><a href="javascript:void(0);" onclick="history.back(-1);"><?php echo $this->bl_lang["BL_BACK"]?></a></div></div>