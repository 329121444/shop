<?php
/**
* 
*/
class BannerAction extends Action
{
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
	//this  method is add banner
	public function uploadbanner(){
		
		import('ORG.Net.UploadFile');
		$title=$_POST['title'];
		$alt=$_POST['alt'];
		$html=$_POST['html'];
		$upload = new UploadFile();// 实例化上传类
		$upload->maxSize  = -1 ;// 设置附件上传大小
		$upload->allowExts  = array('jpg','jpeg','gif','png');// 设置附件上传类型
		$upload->savePath =  './uploads/banner/';// 设置附件上传目录
		$upload->saveRule=uniqid;
		$upload->uploadReplace = true;
		 if(!$upload->upload()) {// 上传错误提示错误信息
			$code=10;
		 }else{// 上传成功 获取上传文件信息
			$info =  $upload->getUploadFileInfo();
			$db = M("Banner");
			$data['title']=$title;
			$data['alt']=$alt;
			$data['html']=$html;
			$data['path']='/uploads/banner/'.$info[0]['savename'];
			$data['state']=1;
			$row=$db->add($data);
			if($row>0){
				$code=1;
			}else{
				$code=11;
			}
		}
			
			redirect('?m=Banner&a=addBanner&result='.$code);

	}
	
	public  function  modifyBanner(){
		import('ORG.Util.Page');
		$db=M('Banner');
		$count=$db->where('state = 1')->count();
		$Page       = new Page($count,10);
	    $nowPage = isset($_GET['p'])?$_GET['p']:1;
	    $list = $db->where('state = 1')->page($nowPage.','.$Page->listRows)->select();
	    $show       = $Page->show();// 分页显示输出
	    $this->assign('page',$show);// 赋值分页输出
	    $this->assign('data',$list);// 赋值数据集
	    $this->display(); // 输出模板
	}

	public  function editBanner(){
		$bid=$_GET['bid'];
		if(isset($bid)){
			$db=M('Banner');
			$data=$db->where(array('id'=>$bid))->find();
			$this->assign('b',$data);
			$this->display();
		}else{
			redirect('Banner:modifyBanner');
		}
	}

	public function  updatebanner(){
		$bid=$_GET['bid'];
		$title=$_POST['title'];
		$alt=$_POST['alt'];
		$html=$_POST['html'];
		if(isset($bid) && isset($title) && isset($alt)){
			$db=M('Banner');
			$data['title']=$title;
			$data['alt']=$alt;
			$data['html']=$html;
			$rows=$db->where('id='.$bid)->save($data);
			if($rows>0){
				$code=1;
			}else{
				$code=11;
			}
			redirect('?m=Banner&a=editBanner&bid='.$bid.'&result='.$code);
		}else{
			redirect('?m=Banner&a=modifyBanner');
		}
		
	}

	public function delBanner(){
		$bid=$_GET['bid'];
		if(isset($bid)){
			$db=M('Banner');
			$data=$db->where('id='.$bid)->find();
			$data['state']=0;
			$rows=$db->where('id='.$bid)->save($data);
			if($rows>0){
				@unlink('.'.$data['path']);
			}
		}
		redirect('?m=Banner&a=modifyBanner');

	}


	public  function editBannerImg(){
		$bid=$_GET['bid'];
		if(isset($bid)){
			$db=M('Banner');
			$data=$db->where(array('id'=>$bid))->find();
			$this->assign('b',$data);
			$this->display();
		}else{
			redirect('Banner:modifyBanner');
		}
	}

	public function updatebannerimg(){
		$bid=$_GET['bid'];
		if(isset($bid)){
			import('ORG.Net.UploadFile');
			$upload = new UploadFile();// 实例化上传类
			$upload->maxSize  = -1;
			$upload->allowExts  = array('jpg','jpeg','gif','png');// 设置附件上传类型
			$upload->savePath =  './uploads/banner/';// 设置附件上传目录
			$upload->saveRule=uniqid;
			$upload->uploadReplace = true;
			 if(!$upload->upload()) {// 上传错误提示错误信息
				$code=11;
			 }else{// 上传成功 获取上传文件信息
				$info =  $upload->getUploadFileInfo();
				$db = M("Banner"); 
				$b=$db->where('id='.$bid)->find();
				$data['path']='/uploads/banner/'.$info[0]['savename'];
				$row=$db->where(array('id'=>$bid))->save($data); // 写入用户数据到数据库
				if($row>0){
					$code=1;
					$path='.'.$b['path'];
	     		    @unlink($path);
				}else{
					$code=11;
				}
			}

			redirect('?m=Banner&a=editBannerImg&bid='.$bid.'&result='.$code);
		}else{
			redirect('?m=Banner&a=modifyBanner');
		}

	}


	
}?>