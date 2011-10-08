<?php
// $HeadURL: https://joomgallery.org/svn/joomgallery/JG-1.5/JG/trunk/administrator/components/com_joomgallery/tables/joomgalleryconfig.php $
// $Id: joomgalleryconfig.php 2054 2010-04-09 08:54:34Z chraneco $
/****************************************************************************************\
**   JoomGallery  1.5.5                                                                 **
**   By: JoomGallery::ProjectTeam                                                       **
**   Copyright (C) 2008 - 2010  JoomGallery::ProjectTeam                                **
**   Based on: JoomGallery 1.0.0 by JoomGallery::ProjectTeam                            **
**   Released under GNU GPL Public License                                              **
**   License: http://www.gnu.org/copyleft/gpl.html or have a look                       **
**   at administrator/components/com_joomgallery/LICENSE.TXT                            **
\****************************************************************************************/

defined('_JEXEC') or die('Direct Access to this location is not allowed.');

/**
 * JoomGallery Configuration Table Class
 *
 * @package JoomGallery
 * @since   1.5.5
 */
class TableJoomgalleryConfig extends JTable
{
  /**
   * Configuration variables
   *
   * @access  protected
   * @var     string, int
   */
  var $jg_pathimages;
  var $jg_pathoriginalimages;
  var $jg_paththumbs;
  var $jg_pathftpupload;
  var $jg_pathtemp;
  var $jg_wmpath;
  var $jg_wmfile;
  var $jg_dateformat;
  var $jg_checkupdate;
  var $jg_filenamewithjs;
  var $jg_filenamesearch;
  var $jg_filenamereplace;
  var $jg_thumbcreation;
  var $jg_fastgd2thumbcreation;
  var $jg_impath;
  var $jg_resizetomaxwidth;
  var $jg_maxwidth;
  var $jg_picturequality;
  var $jg_useforresizedirection;
  var $jg_thumbwidth;
  var $jg_thumbheight;
  var $jg_thumbquality;
  var $jg_uploadorder;
  var $jg_useorigfilename;
  var $jg_filenamenumber;
  var $jg_delete_original;
  var $jg_wrongvaluecolor;
  var $jg_msg_upload_type;
  var $jg_msg_upload_recipients;
  var $jg_msg_comment_type;
  var $jg_msg_comment_recipients;
  var $jg_msg_comment_toowner;
  var $jg_realname;
  var $jg_cooliris;
  var $jg_coolirislink;
  var $jg_contentpluginsenabled;
  var $jg_itemid;
  var $jg_userspace;
  var $jg_approve;
  var $jg_usercat;
  var $jg_maxusercat;
  var $jg_userowncatsupload;
  var $jg_maxuserimage;
  var $jg_maxfilesize;
  var $jg_category;
  var $jg_usercategory;
  var $jg_usercatacc;
  var $jg_maxuploadfields;
  var $jg_useruploadnumber;
  var $jg_special_gif_upload;
  var $jg_delete_original_user;
  var $jg_newpiccopyright;
  var $jg_newpicnote;
  var $jg_showrating;
  var $jg_maxvoting;
  var $jg_onlyreguservotes;
  var $jg_showcomment;
  var $jg_anoncomment;
  var $jg_namedanoncomment;
  var $jg_approvecom;
  var $jg_bbcodesupport;
  var $jg_smiliesupport;
  var $jg_anismilie;
  var $jg_smiliescolor;
  var $jg_anchors;
  var $jg_tooltips;
  var $jg_firstorder;
  var $jg_secondorder;
  var $jg_thirdorder;
  var $jg_pagetitle_cat;
  var $jg_pagetitle_detail;
  var $jg_showgalleryhead;
  var $jg_showpathway;
  var $jg_completebreadcrumbs;
  var $jg_search;
  var $jg_showallpics;
  var $jg_showallhits;
  var $jg_showbacklink;
  var $jg_suppresscredits;
  var $jg_showuserpanel;
  var $jg_showallpicstoadmin;
  var $jg_showminithumbs;
  var $jg_openjs_padding;
  var $jg_openjs_background;
  var $jg_dhtml_border;
  var $jg_show_title_in_dhtml;
  var $jg_show_description_in_dhtml;
  var $jg_lightbox_speed;
  var $jg_lightbox_slide_all;
  var $jg_resize_js_image;
  var $jg_disable_rightclick_original;
  var $jg_showgallerysubhead;
  var $jg_showallcathead;
  var $jg_colcat;
  var $jg_catperpage;
  var $jg_ordercatbyalpha;
  var $jg_showgallerypagenav;
  var $jg_showcatcount;
  var $jg_showcatthumb;
  var $jg_showrandomcatthumb;
  var $jg_ctalign;
  var $jg_showtotalcathits;
  var $jg_showcatasnew;
  var $jg_catdaysnew;
  var $jg_showdescriptioningalleryview;
  var $jg_rmsm;
  var $jg_showrmsmcats;
  var $jg_showsubsingalleryview;
  var $jg_showcathead;
  var $jg_usercatorder;
  var $jg_usercatorderlist;
  var $jg_showcatdescriptionincat;
  var $jg_showpagenav;
  var $jg_showpiccount;
  var $jg_perpage;
  var $jg_catthumbalign;
  var $jg_colnumb;
  var $jg_detailpic_open;
  var $jg_lightboxbigpic;
  var $jg_showtitle;
  var $jg_showpicasnew;
  var $jg_daysnew;
  var $jg_showhits;
  var $jg_showauthor;
  var $jg_showowner;
  var $jg_showcatcom;
  var $jg_showcatrate;
  var $jg_showcatdescription;
  var $jg_showcategorydownload;
  var $jg_showcategoryfavourite;
  var $jg_showsubcathead;
  var $jg_showsubcatcount;
  var $jg_colsubcat;
  var $jg_subperpage;
  var $jg_showpagenavsubs;
  var $jg_subcatthumbalign;
  var $jg_showsubthumbs;
  var $jg_showrandomsubthumb;
  var $jg_showdescriptionincategoryview;
  var $jg_ordersubcatbyalpha;
  var $jg_showtotalsubcathits;
  var $jg_showdetailpage;
  var $jg_showdetailnumberofpics;
  var $jg_cursor_navigation;
  var $jg_disable_rightclick_detail;
  var $jg_showdetailtitle;
  var $jg_showdetail;
  var $jg_showdetailaccordion;
  var $jg_showdetaildescription;
  var $jg_showdetaildatum;
  var $jg_showdetailhits;
  var $jg_showdetailrating;
  var $jg_showdetailfilesize;
  var $jg_showdetailauthor;
  var $jg_showoriginalfilesize;
  var $jg_showdetaildownload;
  var $jg_downloadfile;
  var $jg_downloadwithwatermark;
  var $jg_watermark;
  var $jg_watermarkpos;
  var $jg_bigpic;
  var $jg_bigpic_open;
  var $jg_bbcodelink;
  var $jg_showcommentsunreg;
  var $jg_showcommentsarea;
  var $jg_send2friend;
  var $jg_minis;
  var $jg_motionminis;
  var $jg_motionminiWidth;
  var $jg_motionminiHeight;
  var $jg_miniWidth;
  var $jg_miniHeight;
  var $jg_minisprop;
  var $jg_nameshields;
  var $jg_nameshields_others;
  var $jg_nameshields_unreg;
  var $jg_show_nameshields_unreg;
  var $jg_nameshields_height;
  var $jg_nameshields_width;
  var $jg_slideshow;
  var $jg_slideshow_timer;
  var $jg_slideshow_transition;
  var $jg_slideshow_transtime;
  var $jg_slideshow_maxdimauto;
  var $jg_slideshow_width;
  var $jg_slideshow_heigth;
  var $jg_slideshow_infopane;
  var $jg_slideshow_carousel;
  var $jg_slideshow_arrows;
  var $jg_showexifdata;
  var $jg_geotagging;
  var $jg_subifdtags;
  var $jg_ifdotags;
  var $jg_gpstags;
  var $jg_showiptcdata;
  var $jg_iptctags;
  var $jg_showtoplist;
  var $jg_toplist;
  var $jg_topthumbalign;
  var $jg_toptextalign;
  var $jg_toplistcols;
  var $jg_whereshowtoplist;
  var $jg_showrate;
  var $jg_showlatest;
  var $jg_showcom;
  var $jg_showthiscomment;
  var $jg_showmostviewed;
  var $jg_favourites;
  var $jg_showdetailfavourite;
  var $jg_favouritesshownotauth;
  var $jg_maxfavourites;
  var $jg_zipdownload;
  var $jg_usefavouritesforpubliczip;
  var $jg_usefavouritesforzip;

  /**
   * Constructor
   *
   * @access  protected
   * @return  void
   * @since   1.5.5
   */
  function TableJoomGalleryConfig(&$db)
  {
    parent::__construct(_JOOM_TABLE_CONFIG, 'id', $db);
  }

  /**
   * Checks specific entries in the configuration
   * and makes them ready to save.
   *
   * @access  public
   * @return  boolean True, if the configuration may be saved, false otherwise
   * @since   1.5.5
   */
  function check()
  {
    // Fix the pathes
    $this->jg_pathimages          = $this->fixPath($this->jg_pathimages);
    $this->jg_pathoriginalimages  = $this->fixPath($this->jg_pathoriginalimages);
    $this->jg_paththumbs          = $this->fixPath($this->jg_paththumbs);
    $this->jg_pathftpupload       = $this->fixPath($this->jg_pathftpupload);
    $this->jg_pathtemp            = $this->fixPath($this->jg_pathtemp);
    $this->jg_wmpath              = $this->fixPath($this->jg_wmpath);

    // Arrays
    if(is_array($this->jg_msg_upload_recipients))
    {
      $this->jg_msg_upload_recipients  = implode(',', $this->jg_msg_upload_recipients);
    }

    if(is_array($this->jg_msg_comment_recipients))
    {
      $this->jg_msg_comment_recipients  = implode(',', $this->jg_msg_comment_recipients);
    }

    if(is_array($this->jg_usercategory))
    {
      $usercats     = $this->jg_usercategory;
      $usercats_new = array();
      foreach($usercats as $usercat)
      {
        $usercat = intval($usercat);
        if($usercat > 0)
        {
          array_push($usercats_new, $usercat);
        }
      }
      $this->jg_usercategory = implode(',', $usercats_new);
    }

    if(is_array($this->jg_category))
    {
      $cats     = $this->jg_category;
      $cats_new = array();
      foreach($cats as $cat)
      {
        $cat = intval($cat);
        if($cat > 0)
        {
          array_push($cats_new, $cat);
        }
      }
      $this->jg_category = implode(',', $cats_new);
    }

    if(is_array($this->jg_usercatorderlist))
    {
      $this->jg_usercatorderlist  = implode(',', $this->jg_usercatorderlist);
    }

    // When no array there are no ticked checkboxes submitted per $_POST
    if(is_array($this->jg_subifdtags))
    {
      $subifdtags     = $this->jg_subifdtags;
      $subifdtags_new = array();
      if($subifdtags)
      {
        foreach($subifdtags as $subifdtag)
        {
          $subifdtag = intval($subifdtag);
          if($subifdtag > 0)
          {
            array_push($subifdtags_new, $subifdtag);
          }
        }
      }
      $this->jg_subifdtags = implode(',', $subifdtags_new);
    }
      else
    {
      $this->jg_subifdtags = '';
    }

    // When no array there are no ticked checkboxes submitted per $_POST
    if(is_array($this->jg_ifdotags))
    {
      $ifdotags     = $this->jg_ifdotags;
      $ifdotags_new = array();
      if($ifdotags)
      {
        foreach($ifdotags as $ifdotag)
        {
          $ifdotag = intval($ifdotag);
          if($ifdotag > 0)
          {
            array_push($ifdotags_new, $ifdotag);
          }
        }
      }
      $this->jg_ifdotags = implode(',', $ifdotags_new);
    }
    else
    {
      $this->jg_ifdotags = '';
    }

    // When no array there are no ticked checkboxes submitted per $_POST
    if(is_array($this->jg_gpstags))
    {
      $gpstags      = $this->jg_gpstags;
      $gpstags_new  = array();
      if($gpstags)
      {
        foreach($gpstags as $gpstag)
        {
          $gpstag = intval($gpstag);
          if($gpstag >= 0)
          {
            array_push($gpstags_new, $gpstag);
          }
        }
      }
      $this->jg_gpstags = implode(',', $gpstags_new);
    }
    else
    {
      $this->jg_gpstags = '';
    }

    // When no array there are no ticked checkboxes submitted per $_POST
    if(is_array($this->jg_iptctags))
    {
      $iptctags     = $this->jg_iptctags;
      $iptctags_new = array();
      if($iptctags)
      {
        foreach($iptctags as $iptctag)
        {
          $iptctag = intval($iptctag);
          if($iptctag >= 0)
          {
            array_push($iptctags_new, $iptctag);
          }
        }
      }
      $this->jg_iptctags = implode(',', $iptctags_new);
    }
    else
    {
      $this->jg_iptctags = '';
    }

    // Ensure that there is the same number of characters
    // in jg_filenamesearch and jg_filenamereplace
    // (Option for replacing special characters in filenames)
    $filenamesearch_array     = explode('|', $this->jg_filenamesearch);
    $this->jg_filenamesearch  = array();
    foreach($filenamesearch_array as $value)
    {
      if($value)
      {
        $this->jg_filenamesearch[] = $value;
      }
    }
    $filenamereplace_array    = explode('|', $this->jg_filenamereplace);
    $this->jg_filenamereplace = array();
    foreach($filenamereplace_array as $value)
    {
      if($value)
      {
        $this->jg_filenamereplace[] = $value;
      }
    }
    $count_filenamesearch     = count($this->jg_filenamesearch);
    $count_filenamereplace    = count($this->jg_filenamereplace);
    if($count_filenamesearch != $count_filenamereplace)
    {
      if($count_filenamesearch < $count_filenamereplace)
      {
        for($i = $count_filenamesearch; $i <= $count_filenamereplace; $i++)
        {
          unset($this->jg_filenamereplace[$i]);
        }
        #$this->jg_filenamereplace = array_splice($this->jg_filenamereplace, $count_filenamesearch - 1);
      }
      else
      {
        for($i = $count_filenamereplace; $i <= $count_filenamesearch; $i++)
        {
          unset($this->jg_filenamesearch[$i]);
        }
        #$this->jg_filenamesearch  = array_splice($this->jg_filenamesearch, $count_filenamereplace - 1);
      }

      JError::raiseNotice(500, JText::_('JGA_CONFIG_MSG_SETTINGS_FOR_SPECIALCHARS_CORRECTED'));
    }
    $this->jg_filenamereplace = implode('|', $this->jg_filenamereplace);
    $this->jg_filenamesearch  = implode('|', $this->jg_filenamesearch);

    return true;
  }

  /**
   * Modify path
   *
   * 1. trim '/' from path and append one
   *
   * @access  public
   * @param   string  $path The path to fix
   * @return  string  Modified path or root warning
   * @since   1.5.0
   */
  function fixPath($path)
  {
    $path = trim($path,'/').'/';
    if($path == '/'){
      return 'PLEASE_DO_NOT_USE_JOOMLA_ROOT';
    }
    return $path;
  }
}
