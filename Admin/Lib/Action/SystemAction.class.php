<?php
/**
* 
*/
class SystemAction extends Action{
	
	public  function __construct()
	{
			parent::__construct();
			$this->checkManageSession();

	}

	public function checkManageSession(){
		if(!session('manage')){
			echo "<script>window.parent.location.href='".__APP__."'</script>";
		}
	}
	//显示modifyTitle页面
	public function modifyTitle(){
		$db=M('System');
	    $data=$db->where(array('id' =>1))->find();
	    $this->assign('title',$data['title']);
	    $this->assign('headertitle',$data['headertitle']);
	    $this->assign('id',$data['id']);
		$this->display();
	}
	//显示 modify logo  title
	public function modifyHeaderTitle(){
		$db=M('System');
	    $data=$db->where(array('id' =>1))->find();
	    $this->assign('title',$data['title']);
	    $this->assign('headertitle',$data['headertitle']);
	    $this->assign('id',$data['id']);
		$this->display();
	}
	//modify system title by id
	public function saveSystemTitleById(){
		$db=M('System');
		$id=$_POST['systemId'];
		$title=$_POST['title'];
		if($id && $title){
			$data['title']=$title;
			$rows=$db->where(array('id' =>$id))->save($data);
			if($rows>0){
				$code=1;
			}else{
				$code=11;
			}
		}else{
				$code=11;
		}

	    redirect('?m=System&a=modifyTitle&result='.$code);
	}
	public function saveHeaderTitleById(){
		$db=M('System');
		$id=$_POST['systemId'];
		$headertitle=$_POST['headertitle'];
		if($id && $headertitle){
			$data['headertitle']=$headertitle;
			$rows=$db->where(array('id' =>$id))->save($data);
			if($rows>0){
				$code=1;
			}else{
				$code=11;
			}
			
		}else{
				$code=11;
		}
	    redirect('?m=System&a=modifyHeaderTitle&result='.$code);
	}

	//clear runtime 
	public function removeRuntime($path){
	 	if(is_dir($dirName)){
	        if ( $handle = opendir( "$dirName" ) ) {  

	          while ( false !== ( $item = readdir( $handle ) ) ) {  

	              if ( $item != "." && $item != ".." ) {  

	                  if ( is_dir( "$dirName/$item" ) ) {  

	                   removeRuntime( "$dirName/$item" );  

	                  } else {  

	                    unlink( "$dirName/$item" );

	                  }  

	              }  

	          }  
	     		  closedir( $handle );  
			      rmdir( $dirName ) ;

			   }
			}   
	}

	public function clearRuntime(){
		   $path='./Admin/Runtime/';
		   $this->removeRuntime($path);
		   $path='./Home/Runtime/';
		   $this->removeRuntime($path);	
         redirect('?m=System&a=modifyRuntime&result=1');	
	}

  	//公司简介
  	public function  explain(){
  		$db=M('System');
  		$data=$db->where('id = 1')->find();
  		$this->assign('data',$data);
  		$this->display();
  	}
  	public function upexplain(){
  		$data['explain']=$_POST['explain'];
  		$db=M('System');
  		$row=$db->where('id = 1')->save($data);
  		if($row>0){
  			$code=1;
  		}else{
  			$code=11;
  		}
  		redirect('?m=System&a=explain&result='.$code);
  	}

  	//租赁中心
	public function  lease(){
  		$db=M('System');
  		$data=$db->where('id = 1')->find();
  		$this->assign('data',$data);
  		$this->display();
  	}

	public function uplease(){
  		$data['lease']=$_POST['lease'];
  		$db=M('System');
  		$row=$db->where('id = 1')->save($data);
  		if($row>0){
  			$code=1;
  		}else{
  			$code=11;
  		}
  		redirect('?m=System&a=lease&result='.$code);
  	}
  	//联系我们
	public function  callme(){
  		$db=M('System');
  		$data=$db->where('id = 1')->find();
  		$this->assign('data',$data);
  		$this->display();
  	}
	public function upcallme(){
  		$data['callme']=$_POST['callme'];
  		$db=M('System');
  		$row=$db->where('id = 1')->save($data);
  		if($row>0){
  			$code=1;
  		}else{
  			$code=11;
  		}
  		redirect('?m=System&a=callme&result='.$code);
  	}

  	//售后服务
	public function  service(){
  		$db=M('System');
  		$data=$db->where('id = 1')->find();
  		$this->assign('data',$data);
  		$this->display();
  	}
	public function upservice(){
  		$data['service']=$_POST['service'];
  		$db=M('System');
  		$row=$db->where('id = 1')->save($data);
  		if($row>0){
  			$code=1;
  		}else{
  			$code=11;
  		}
  		redirect('?m=System&a=service&result='.$code);
  	}
  	//关于我们
	public function  about(){
  		$db=M('System');
  		$data=$db->where('id = 1')->find();
  		$this->assign('data',$data);
  		$this->display();
  	}
	public function upabout(){
  		$data['about']=$_POST['about'];
  		$db=M('System');
  		$row=$db->where('id = 1')->save($data);
  		if($row>0){
  			$code=1;
  		}else{
  			$code=11;
  		}
  		redirect('?m=System&a=about&result='.$code);
  	}	 	
	
	public function  map(){
		$db=M('System');
  		$data=$db->where('id = 1')->find();
  		$this->assign('s',$data);
  		$this->display();

	}

	//updatemap
	public function updatemap(){
		$name=$_POST['name'];
		$address=$_POST['address'];
		$points=$_POST['points'];
		if(isset($name) && isset($address) && isset($points)){
			$db=M('System');
			$data['name']=$name;
			$data['address']=$address;
			$data['points']=$points;
			$rows=$db->where('id = 1')->save($data);
			if($rows>0){
				$code=1;
			}else{
				$code=11;
			}
		}else{
				$code=11;
		}
		redirect('?m=System&a=map&result='.$code);
	}
}?>