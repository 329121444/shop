<?php

class IndexAction extends Action {
    public function index(){
    	$db=M('System');
	    $data=$db->where(array('id' =>1))->find();
	    $this->assign('title',$data['title']);
		$this->display();
    }

	public function login(){
		$db=M('manage');
		$account=$_POST['account'];
		$password=md5($_POST['password']);

		if($_SESSION['verify'] != md5($_POST['verify'])) {
			$code=2;
   			redirect('?m=Index&a=index&result='.$code);
 		}else{
 			$data=$db->where(array('account' =>$account,'password'=>$password,'state'=>1))->find();
			if($data!=null){
				session('manage',$data);
				redirect('?m=Manage&a=manage');
			}else{
				$d=$db->where(array('account' =>$account,'password'=>$password))->find();
				if($d){		
				  $code=1;
				}else{
				  $code=3;
				}
				redirect('?m=Index&a=index&result='.$code);
			}
 		}
	
	
	}



	//生成验证码
	public  function randCode(){
		//buildImageVerify($length,$mode,$type,$width,$height,$verifyName)
		import('ORG.Util.Image');
    	Image::buildImageVerify(4,1,'png','',22,'verify');
	}


	//取系统时间
 	public  function  getDateTime(){
	     $data['year']=date('Y');
	     $data['month']=date('m');
	     $data['day']=date('d');
	     $week=date('N');
	     if($week==7)
	        $week=0;

	     $data['week']=$week;
	     echo json_encode($data);
    }
}?>