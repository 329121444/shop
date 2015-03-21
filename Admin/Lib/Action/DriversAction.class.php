<?php

class DriversAction extends Action{
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
	public function  uploadDrivers(){
			import('ORG.Net.UploadFile');
			$upload = new UploadFile();// 实例化上传类
			$upload->maxSize  = -1 ;// 设置附件上传大小
			$upload->allowExts  = array('rar','zip','tar','cab','uue','jar','iso','z','7-zip','ace','lzh','arj','gzip','bz2');// 设置附件上传类型
			$upload->savePath =  './uploads/driver/';// 设置附件上传目录
			$upload->saveRule=uniqid;
			$upload->uploadReplace = true;
			 if(!$upload->upload()) {// 上传错误提示错误信息
				$code=10;
			 }else{// 上传成功 获取上传文件信息
				$info =  $upload->getUploadFileInfo();
				$db = M("Driver"); // 实例化User对象
				$data['title']=$_POST['title'];
				$data['explain']=$_POST['explain'];
				$data['path']='/uploads/driver/'.$info[0]['savename'];
				$data['state']=1;
				$row=$db->add($data); // 写入用户数据到数据库
				if($row>0){
					$code=1;
				}else{
					$code=11;
				}
			}
				
				redirect('?m=Drivers&a=addDrivers&result='.$code);	
			 }
	

	public  function  modifyDrivers(){
		import('ORG.Util.Page');
		$db=M('Driver');
		$count=$db->where('state = 1')->count();
		$Page       = new Page($count,10);
	    $nowPage = isset($_GET['p'])?$_GET['p']:1;
	    $list = $db->where('state = 1')->page($nowPage.','.$Page->listRows)->select();
	    $show       = $Page->show();// 分页显示输出
	    $this->assign('page',$show);// 赋值分页输出
	    $this->assign('data',$list);// 赋值数据集
	    $this->display(); // 输出模板
	}	
	public  function editDrivers(){
		$did=$_GET['did'];
		if(isset($did)){
			$db=M('Driver');
			$data=$db->where('id='.$did)->find();
			$this->assign('data',$data);
			$this->display();
		}else{
			redirect('?m=Drivers&a=modifyDrivers');
		}
	}
	public  function editMeadia(){
		$did=$_GET['did'];
		if(isset($did)){
			$db=M('Driver');
			$data=$db->where('id='.$did)->find();
			$this->assign('data',$data);
			$this->display();
		}else{
			redirect('?m=Drivers&a=modifyDrivers');
		}
	}
	//

	public function updateDrivers(){
		$did=$_GET['did'];
		if(isset($did)){
			$data['title']=$_POST['title'];
			$data['explain']=$_POST['explain'];
			$db=M('Driver');
			$rows=$db->where('id='.$did)->save($data);
			if($rows>0){
				$code=1;
			}else{
				$code=11;
			}
			redirect('?m=Drivers&a=editDrivers&result='.$code.'&did='.$did);
		}else{
			redirect('?m=Drivers&a=modifyDrivers');
		}
	} 	
	
	//updateMeadia
	public function  updateMeadia(){
		$did=$_GET['did'];
		if(isset($did)){
			import('ORG.Net.UploadFile');
			$upload = new UploadFile();// 实例化上传类
			$upload->maxSize  = -1 ;// 设置附件上传大小
			//,'webm','ogg','flv','wav'
			$upload->allowExts  = array('rar','zip','tar','cab','uue','jar','iso','z','7-zip','ace','lzh','arj','gzip','bz2');// 设置附件上传类型
			$upload->savePath =  './uploads/driver/';// 设置附件上传目录
			$upload->saveRule=uniqid;
			$upload->uploadReplace = true;
			if(!$upload->upload()) {// 上传错误提示错误信息
			$code=10;
		 }else{// 上传成功 获取上传文件信息
			$info =  $upload->getUploadFileInfo();
			$db = M("Driver"); // 实例化User对象
			$data['path']='/uploads/driver/'.$info[0]['savename'];
			$v=$db->where(array('id'=>$did))->find();
			$rows=$db->where(array('id'=>$did))->save($data);
			if($rows>0){
				$code=1;
				@unlink('.'.$v['path']);
			}else{
				$code=11;
			}
			
		 }
		 redirect('?m=Drivers&a=editMeadia&result='.$code.'&did='.$did);
		}else{
			redirect('?m=Drivers&a=modifyDrivers');
		}	

	}

	//删除delDrivers
	public  function delDrivers(){
		$did=$_GET['did'];
		if(isset($did)){
			$db=M('Driver');
			$d=$db->where(array('id'=>$did,'state'=>1))->find();
			$data['state']=0;
			$rows=$db->where(array('id'=>$did))->save($data);
			if($rows>0){
				@unlink('.'.$d['path']);
			}
		}
		redirect('?m=Drivers&a=modifyDrivers');
	}
}?>
