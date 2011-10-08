// $HeadURL: https://joomgallery.org/svn/joomgallery/JG-1.5/JG/trunk/components/com_joomgallery/assets/js/detail.js $
// $Id: detail.js 2054 2010-04-09 08:54:34Z chraneco $
/*******************************************************************************
 * **************************************************************************************\ *
 * JoomGallery 1.5.5 ** * By: JoomGallery::ProjectTeam ** * Copyright (C) 2008 -
 * 2009 M. Andreas Boettcher ** * Based on: JoomGallery 1.0.0 by
 * JoomGallery::ProjectTeam ** * Released under GNU GPL Public License ** *
 * License: http://www.gnu.org/copyleft/gpl.html or have a look ** * at
 * administrator/components/com_joomgallery/LICENSE.TXT ** \
 ******************************************************************************/

// Javascript for SmilieInsert and Form Check
function joom_getcoordinates()
{
  document.nameshieldform.xvalue.value = document.getElementById("jg-movable-nametag").offsetTop;
  document.nameshieldform.yvalue.value = document.getElementById("jg-movable-nametag").offsetLeft;
  document.nameshieldform.submit();
}

function selectnametag(id, username)
{
  window.parent.document.getElementById('jg-movable-nametag').removeClass('jg_displaynone');
  window.parent.document.getElementById('jg-movable-nametag').setText(username);
  window.parent.document.nameshieldform.userid.value = id;
  width = username.length * jg_nameshields_width;
  window.parent.document.getElementById('jg-movable-nametag').style.width = width + 'px';
  window.parent.document.getElementById('sbox-window').close();
}

function addtooltips(tip)
{
  if($('jg-movable-nametag-icon'))
  {
    $('jg-movable-nametag-icon').cloneEvents($('jg-tooltip-helper-1'));
  }

  $$('.nametagRemoveIcon').cloneEvents($('jg-tooltip-helper-2'));

  tip.setStyle('visibility', 'visible');
}

function joom_validatecomment()
{
  if (document.commentform.cmttext.value == '')
  {
    alert(JText._('JGS_DETAIL_COMMENTS_ALERT_ENTER_COMMENT'));
  }
  else
  {
    if (document.commentform.jg_captcha_code != null
        && document.commentform.jg_captcha_code.value == '')
    {
      alert(JText._('JGS_DETAIL_COMMENTS_ALERT_ENTER_CODE'));
    }
    else
    {
      document.commentform.submit();
    }
  }
}

function joom_smilie(thesmile)
{
  document.commentform.cmttext.value += thesmile + ' ';
  document.commentform.cmttext.focus();
}

function joom_validatesend2friend()
{
  if ((document.send2friend.send2friendname.value == '')
      || (document.send2friend.send2friendemail.value == ''))
  {
    alert(JText._('JGS_DETAIL_SENDTOFRIEND_ALERT_ENTER_NAME_EMAIL'));
  }
  else
  {
    document.send2friend.submit();
  }
}

function joom_cursorchange(e)
{
  active_slimbox = document.getElementById("lbOverlay");
  if (active_slimbox != null && active_slimbox.style.visibility == "visible" )
  {
    return;
  }

  var target;
  if (typeof e =='undefined')
  {
    //IE
    target = document.activeElement.type;
  }
  else
  {
    //other
    if (typeof e.explicitOriginalTarget == 'undefined')
    {
      //Opera
      target = e.target.type;
    }
    else
    {
      //Firefox
      target = e.explicitOriginalTarget.type;
    }
  }
  if (typeof target=="undefined" || target.indexOf("text") != 0)
  {
    if (navigator.appName == "Microsoft Internet Explorer")
    {
      taste = window.event.keyCode;
    }
    else
    {
      taste = e.which;
    }
    switch (taste)
    {
      case 37:
        if (document.form_jg_back_link)
        {
          window.location = document.form_jg_back_link.action;
        }
        break;
      case 39:
        if (document.form_jg_forward_link)
        {
          window.location = document.form_jg_forward_link.action;
        }
        break;
      default:
        break;
    }
  }
}