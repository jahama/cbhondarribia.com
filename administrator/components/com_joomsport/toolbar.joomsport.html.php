<?php/*http://BearDev.com */
class TOOLBAR_joomsport{		function _EDITMODER($edit)	{		$text = ( $edit ? JText::_( 'Edit' ) : JText::_( 'New' ) );		JToolBarHelper::title( JText::_( 'BLBE_MODERATORS' ).': <small><small>[ '. $text.' ]</small></small>', 'addedit.png' );		JToolBarHelper::save('moder_save');		JToolBarHelper::apply('moder_apply');		if ( $edit ) {			JToolBarHelper::cancel( 'moder_list', 'Close' );		} else {			JToolBarHelper::cancel('moder_list');		}	}	function _SHOWMODER()	{		JToolBarHelper::title( JText::_( 'BLBE_MODERATORSLIST' ), 'addedit.png' );		JToolBarHelper::deleteList('','moder_delete','Delete');		JToolBarHelper::editListX('moder_edit');		JToolBarHelper::addNewX('moder_new');	}	function _EDITTOUR($edit)	{		$text = ( $edit ? JText::_( 'Edit' ) : JText::_( 'New' ) );		JToolBarHelper::title( JText::_( 'BLBE_TOURNAMENT' ).': <small><small>[ '. $text.' ]</small></small>', 'addedit.png' );		JToolBarHelper::save('tour_save');		JToolBarHelper::apply('tour_apply');		if ( $edit ) {			JToolBarHelper::cancel( 'cancel', 'Close' );		} else {			JToolBarHelper::cancel();		}	}	function _SHOWTOURN()	{		JToolBarHelper::title( JText::_( 'BLBE_TOURNAMENTLIST' ), 'addedit.png' );		JToolBarHelper::publishList('tour_publ');		JToolBarHelper::unpublishList('tour_unpubl');		JToolBarHelper::deleteList('','tour_del','Delete');		JToolBarHelper::editListX('tour_edit');		JToolBarHelper::addNewX('tour_add');	}		function _EDITSEASON($edit)	{		$text = ( $edit ? JText::_( 'Edit' ) : JText::_( 'New' ) );		JToolBarHelper::title( JText::_( 'BLBE_SEASON' ).': <small><small>[ '. $text.' ]</small></small>', 'addedit.png' );		JToolBarHelper::save('season_save');		JToolBarHelper::apply('season_apply');		if ( $edit ) {			JToolBarHelper::cancel( 'season_cancel', 'Close' );		} else {			JToolBarHelper::cancel('season_cancel');		}	}	function _SHOWSEASON()	{		JToolBarHelper::title( JText::_( 'BLBE_SEASONLIST' ), 'addedit.png' );		JToolBarHelper::publishList('season_publ');		JToolBarHelper::unpublishList('season_unpubl');		JToolBarHelper::deleteList('','season_del','Delete');		JToolBarHelper::editListX('season_edit');		JToolBarHelper::addNewX('season_add');	}		function _EDITTEAM($edit)	{		$text = ( $edit ? JText::_( 'Edit' ) : JText::_( 'New' ) );		JToolBarHelper::title( JText::_( 'BLBE_TEAM' ).': <small><small>[ '. $text.' ]</small></small>', 'addedit.png' );		JToolBarHelper::save('team_save');		JToolBarHelper::apply('team_apply');		if ( $edit ) {			JToolBarHelper::cancel( 'team_cancel', 'Close' );		} else {			JToolBarHelper::cancel('team_cancel');		}	}	function _SHOWTEAM()	{		JToolBarHelper::title( JText::_( 'BLBE_TEAMSLIST' ), 'addedit.png' );		JToolBarHelper::deleteList('','team_del','Delete');		JToolBarHelper::editListX('team_edit');		JToolBarHelper::addNewX('team_add');	}		function _EDITPOS($edit)	{		$text = ( $edit ? JText::_( 'Edit' ) : JText::_( 'New' ) );		JToolBarHelper::title( JText::_( 'BLBE_POSITION' ).': <small><small>[ '. $text.' ]</small></small>', 'addedit.png' );		JToolBarHelper::save('pos_save');		if ( $edit ) {			JToolBarHelper::cancel( 'pos_cancel', 'Close' );		} else {			JToolBarHelper::cancel('pos_cancel');		}	}	function _SHOWPOS()	{		JToolBarHelper::title( JText::_( 'BLBE_POSITIONLIST' ), 'addedit.png' );		JToolBarHelper::deleteList('','pos_del','Delete');		JToolBarHelper::editListX('pos_edit');		JToolBarHelper::addNewX('pos_add');	}		function _EDITPLAYER($edit)	{		$text = ( $edit ? JText::_( 'Edit' ) : JText::_( 'New' ) );		JToolBarHelper::title( JText::_( 'BLBE_PLAYER' ).': <small><small>[ '. $text.' ]</small></small>', 'addedit.png' );		JToolBarHelper::save('player_save');		JToolBarHelper::apply('player_apply');				if ( $edit ) {			JToolBarHelper::cancel( 'player_cancel', 'Close' );		} else {			JToolBarHelper::cancel('player_cancel');		}	}	function _SHOWPLAYER()	{		JToolBarHelper::title( JText::_( 'BLBE_PLAYERSLIST' ), 'addedit.png' );		JToolBarHelper::deleteList('','player_del','Delete');		JToolBarHelper::editListX('player_edit');		JToolBarHelper::addNewX('player_add');	}		function _EDITMDAY($edit)	{		$text = ( $edit ? JText::_( 'Edit' ) : JText::_( 'New' ) );		JToolBarHelper::title( JText::_( 'BLBE_MATCHDAY' ).': <small><small>[ '. $text.' ]</small></small>', 'addedit.png' );		JToolBarHelper::save('matchday_save');		JToolBarHelper::apply('matchday_apply');		if ( $edit ) {			JToolBarHelper::cancel( 'matchday_cancel', 'Close' );		} else {			JToolBarHelper::cancel('matchday_cancel');		}	}	function _SHOWMDAY()	{		JToolBarHelper::title( JText::_( 'BLBE_MATCHDAYLIST' ), 'addedit.png' );		JToolBarHelper::deleteList('','matchday_del','Delete');		JToolBarHelper::editListX('matchday_edit');		JToolBarHelper::addNewX('matchday_add');	}		function _EDITMATCH($edit)	{		$text = ( $edit ? JText::_( 'Edit' ) : JText::_( 'New' ) );		JToolBarHelper::title( JText::_( 'Match' ).': <small><small>[ '. $text.' ]</small></small>', 'addedit.png' );		JToolBarHelper::save('match_save');		JToolBarHelper::apply('match_apply');		if ( $edit ) {			JToolBarHelper::cancel( 'matchday_cancel', 'Close' );		} else {			JToolBarHelper::cancel('matchday_cancel');		}	}		function _EDITEVENT($edit)	{		$text = ( $edit ? JText::_( 'Edit' ) : JText::_( 'New' ) );		JToolBarHelper::title( JText::_( 'BLBE_EVENT' ).': <small><small>[ '. $text.' ]</small></small>', 'addedit.png' );		JToolBarHelper::save('event_save');		JToolBarHelper::apply('event_apply');		if ( $edit ) {			JToolBarHelper::cancel( 'event_cancel', 'Close' );		} else {			JToolBarHelper::cancel('event_cancel');		}	}	function _SHOWEVENT()	{		JToolBarHelper::title( JText::_( 'BLBE_EVENTLIST' ), 'addedit.png' );		JToolBarHelper::deleteList('','event_del','Delete');		JToolBarHelper::editListX('event_edit');		JToolBarHelper::addNewX('event_add');	}		function _EDITGROUP($edit)	{		$text = ( $edit ? JText::_( 'Edit' ) : JText::_( 'New' ) );		JToolBarHelper::title( JText::_( 'Group' ).': <small><small>[ '. $text.' ]</small></small>', 'addedit.png' );		JToolBarHelper::save('group_save');		JToolBarHelper::apply('group_apply');		if ( $edit ) {			JToolBarHelper::cancel( 'group_cancel', 'Close' );		} else {			JToolBarHelper::cancel('group_cancel');		}	}	function _SHOWGROUP()	{		JToolBarHelper::title( JText::_( 'BLBE_GROUPLIST' ), 'addedit.png' );		JToolBarHelper::deleteList('','group_del','Delete');		JToolBarHelper::editListX('group_edit');		JToolBarHelper::addNewX('group_add');	}		function _EDITFIELDS($edit)	{		$text = ( $edit ? JText::_( 'Edit' ) : JText::_( 'New' ) );		JToolBarHelper::title( JText::_( 'BLBE_FIELD' ).': <small><small>[ '. $text.' ]</small></small>', 'addedit.png' );		JToolBarHelper::save('fields_save');		JToolBarHelper::apply('fields_apply');		if ( $edit ) {			JToolBarHelper::cancel( 'fields_cancel', 'Close' );		} else {			JToolBarHelper::cancel('fields_cancel');		}	}	function _SHOWFIELDS()	{		JToolBarHelper::title( JText::_( 'BLBE_FIELDLIST' ), 'addedit.png' );		JToolBarHelper::publishList('fields_publ');		JToolBarHelper::unpublishList('fields_unpubl');		JToolBarHelper::deleteList('','fields_del','Delete');		JToolBarHelper::editListX('fields_edit');		JToolBarHelper::addNewX('fields_add');	}			function _LANGUAGESLIST() {			JToolBarHelper::title( JText::_( 'BLBE_LANGUAGELIST' ), 'addedit.png' );			JToolBarHelper::deleteList('', 'del_lang', 'Delete');		JToolBarHelper::editListX('edit_lang');		JToolBarHelper::addNewX('add_lang');		JToolBarHelper::makeDefault('default_lang');			}		function _LANGUAGESEDIT() {		JToolBarHelper::title( JText::_( 'Language' ), 'addedit.png' );		JToolBarHelper::save('save_lang');		JToolBarHelper::apply('apply_lang');		JToolBarHelper::cancel( 'cancel_lang', 'Close' ); 	}	function _BLCONFIG(){		JToolBarHelper::title( JText::_( 'BLBE_CONFIG' ), 'addedit.png' );		JToolBarHelper::save('save_config');	}	function _SHOWHELP()	{		JToolBarHelper::title( JText::_( 'Help' ), 'help_header.png' );	}		function _SHOWABOUT()	{		JToolBarHelper::title(JText::_( 'BLBE_ABOUT'), 'systeminfo.png' );	}}