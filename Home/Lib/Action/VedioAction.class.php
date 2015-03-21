<?php
/**
* 视频播放Action
*/
class VedioAction extends Action{
	//视频播放
	public function play(){
		$db=M('Video');
		$vid=$_GET['vid'];
		$d=M();
		$data=$db->where('state = 1')->order('id desc')->select();
   		$temp=$d->table('shop_system')->where(array('id' =>1))->find();
		if(isset($vid)){
			$vedio=$db->where('state = 1 and id='.$vid)->find();
			if(!$vedio){
				$vedio=$data[0];
			}
		}else{
			
			$vedio=$data[0];
		}
		$this->assign('data',$data);
		$this->assign('vedio',$vedio);
		$this->assign('s',$temp);
		$this->display();
	}
	
}?>