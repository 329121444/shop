<?php
/**
* video action
*/
class VideoAction extends Action{
	//this  method  is  chech  session
	public  function __construct()
	{
			parent::__construct();
			$this->checkManageSession();

	}

	public function checkManageSession(){
		if(!session('manage')){
			$this->exitSystem();
		}
	}

	public function exitSystem (){
		if(session('manage'))
			session('manage',null);
		echo "<script>window.parent.location.href='".__APP__."'</script>";
	}
	//upload  file method
	
	public function  uploadVideo(){
		import('ORG.Net.UploadFile');
		$upload = new UploadFile();// 实例化上传类
		$upload->maxSize  = -1 ;// 设置附件上传大小
		//,'webm','ogg','flv','wav'
		$upload->allowExts  = array('jpg', 'gif', 'png', 'jpeg','mp3','mp4');// 设置附件上传类型
		$upload->savePath =  './uploads/media/';// 设置附件上传目录
		$upload->saveRule=uniqid;
		$upload->uploadReplace = true;
		 if(!$upload->upload()) {// 上传错误提示错误信息
			$code=10;
		 }else{// 上传成功 获取上传文件信息
			$info =  $upload->getUploadFileInfo();
			$db = M("Video"); // 实例化User对象
			$data['title']=$_POST['title'];
			$data['date']=date('Y-m-d');
			$data['time']=date('H:i:s');
			$data['author']=session('manage')['name'];
			$data['img']='/uploads/media/'.$info[1]['savename'];
			$data['path']='/uploads/media/'.$info[0]['savename'];
			$type=$info[0]['type'];
			$extension=$info[0]['extension'];
			if($extension=='mp3'){
				$data['type']=1;
			}
			if($extension=='mp4'){
				if($type=='video/mp4'){
					$data['type']=3;
				}
				
			}
			$data['state']=1;
			$rows=$db->add($data);
			if($rows>0){
				$code=1;
			}else{
				$code=11;
			}
			
		 }
		 redirect('?m=Video&a=addVideo&result='.$code);		
	}

	public  function  modifyVideo(){
		import('ORG.Util.Page');
		$db=M('Video');
		$count=$db->where('state = 1')->count();
		$Page       = new Page($count,10);
	    $nowPage = isset($_GET['p'])?$_GET['p']:1;
	    $list = $db->where('state = 1')->page($nowPage.','.$Page->listRows)->select();
	    $show       = $Page->show();// 分页显示输出
	    $this->assign('page',$show);// 赋值分页输出
	    $this->assign('data',$list);// 赋值数据集
	    $this->display(); // 输出模板
	}
	//
	public  function delVideo(){
		$vid=$_GET['vid'];
		if(isset($vid)){
			$db=M('Video');
			$video=$db->where(array('id'=>$vid,'state'=>1))->find();
			$data['state']=0;
			$rows=$db->where(array('id'=>$vid))->save($data);
			if($rows>0){
				@unlink('.'.$video['img']);
				@unlink('.'.$video['path']);
			}
		}
		redirect('?m=Video&a=modifyVideo');
	}


	public  function editVideo(){
		$vid=$_GET['vid'];
		if(isset($vid)){
			$db=M('Video');
			$data=$db->where('id='.$vid)->find();
			$this->assign('data',$data);
			$this->display();
		}else{
			redirect('?m=Video&a=modifyVideo');
		}
	}
	public  function editMeadia(){
		$vid=$_GET['vid'];
		if(isset($vid)){
			$db=M('Video');
			$data=$db->where('id='.$vid)->find();
			$this->assign('data',$data);
			$this->display();
		}else{
			redirect('?m=Video&a=modifyVideo');
		}
	}
	public  function editImage(){
		$vid=$_GET['vid'];
		if(isset($vid)){
			$db=M('Video');
			$data=$db->where('id='.$vid)->find();
			$this->assign('data',$data);
			$this->display();
		}else{
			redirect('?m=Video&a=modifyVideo');
		}
	}
	public function updateVideoTitle(){
		$vid=$_GET['vid'];
		if(isset($vid)){
			$data['title']=$_POST['title'];
			$data['date']=date('Y-m-d');
			$data['time']=date('H:i:s');
			$data['author']=session('manage')['name'];
			$db=M('Video');
			$rows=$db->where('id='.$vid)->save($data);
			if($rows>0){
				$code=1;
			}else{
				$code=11;
			}
			redirect('?m=Video&a=editVideo&result='.$code.'&vid='.$vid);
		}else{
			redirect('?m=Video&a=modifyVideo');
		}
	}
	public function  updateMeadia(){
		$vid=$_GET['vid'];
		if(isset($vid)){
			import('ORG.Net.UploadFile');
			$upload = new UploadFile();// 实例化上传类
			$upload->maxSize  = -1 ;// 设置附件上传大小
			//,'webm','ogg','flv','wav'
			$upload->allowExts  = array('mp3','mp4');// 设置附件上传类型
			$upload->savePath =  './uploads/media/';// 设置附件上传目录
			$upload->saveRule=uniqid;
			$upload->uploadReplace = true;
			if(!$upload->upload()) {// 上传错误提示错误信息
			$code=10;
		 }else{// 上传成功 获取上传文件信息
			$info =  $upload->getUploadFileInfo();
			$db = M("Video"); // 实例化User对象
			$data['date']=date('Y-m-d');
			$data['time']=date('H:i:s');
			$data['author']=session('manage')['name'];
			$data['path']='/uploads/media/'.$info[0]['savename'];
			$type=$info[0]['type'];
			$extension=$info[0]['extension'];
			if($extension=='mp3'){
				$data['type']=1;
			}
			if($extension=='mp4'){
				if($type=='video/mp4'){
					$data['type']=3;
				}	
			}
			$v=$db->where(array('id'=>$vid))->find();

			$rows=$db->where(array('id'=>$vid))->save($data);
			if($rows>0){
				$code=1;
				@unlink('.'.$v['path']);
			}else{
				$code=11;
			}
			
		 }
		 redirect('?m=Video&a=editMeadia&result='.$code.'&vid='.$vid);
		}else{
			redirect('?m=Video&a=modifyVideo');
		}	
	}



	public function  updateImage(){
		$vid=$_GET['vid'];
		if(isset($vid)){
			import('ORG.Net.UploadFile');
			$upload = new UploadFile();// 实例化上传类
			$upload->maxSize  = -1 ;// 设置附件上传大小
			//,'webm','ogg','flv','wav'
			$upload->allowExts  = array('jpg', 'gif', 'png', 'jpeg');// 设置附件上传类型
			$upload->savePath =  './uploads/media/';// 设置附件上传目录
			$upload->saveRule=uniqid;
			$upload->uploadReplace = true;
			if(!$upload->upload()) {// 上传错误提示错误信息
			$code=10;
		 }else{// 上传成功 获取上传文件信息
			$info =  $upload->getUploadFileInfo();
			$db = M("Video"); // 实例化User对象
			$data['date']=date('Y-m-d');
			$data['time']=date('H:i:s');
			$data['author']=session('manage')['name'];
			$data['img']='/uploads/media/'.$info[0]['savename'];
			$v=$db->where(array('id'=>$vid))->find();

			$rows=$db->where(array('id'=>$vid))->save($data);
			if($rows>0){
				$code=1;
				@unlink('.'.$v['img']);
			}else{
				$code=11;
			}
			
		 }
		 redirect('?m=Video&a=editImage&result='.$code.'&vid='.$vid);
		}else{
			redirect('?m=Video&a=modifyVideo');
		}	
	}
}?>
