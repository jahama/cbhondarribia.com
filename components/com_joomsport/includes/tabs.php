<?php
defined('_JEXEC') or die('Restricted access');

class EsTabs{
private $tabclass = 'esporttab';	
	function __construct($class = 'esporttab'){
		$this->tabclass = $class;
		//echo '<div style="clear:both;"></div>';
		?>
		<script type="text/javascript">
			function show_etabs(tab_id){
				var tabz = $$('div.<?php echo $this->tabclass?>');
				
				for(i=0;i<tabz.length;i++) {
					var div_id = tabz[i].id+'_div';
					$(div_id).style.display='none';
					tabz[i].className = 'etabs_hide <?php echo $this->tabclass?>';
				}
				
				
				$(tab_id).className = 'etabs_vis <?php echo $this->tabclass?>';
				$(tab_id+'_div').style.display='block';
			}
		</script>
		<?php
	}
	function newTab($name,$tab_id,$bg = 'tab_star', $status = 'hide',$visible = true){
		
		echo '<div id="'.$tab_id.'" class="etabs_'.$status.' '.$this->tabclass.'" onclick="show_etabs(\''.$tab_id.'\')" style="background-image:url(\'components/com_joomsport/images/'.$bg.'.png\');">'.$name.'</div>';
	}
}
?>