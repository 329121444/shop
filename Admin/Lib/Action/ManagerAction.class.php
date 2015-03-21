<?php
/**
* 
*/
class ManagerAction extends Action{
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



	public function saveManager(){
		 $db=M('Manage');
		 $account=$_POST['account'];
		 $password=md5($_POST['password']);
		 $email=$_POST['email'];
		 $name=$_POST['name'];
		 $sex=$_POST['sex'];
		 $marry=$_POST['marry'];
		 $address=$_POST['address'];
		 $type=$_POST['type'];
		 //$date=$_POST['date'];
		 $date=date('Y-m-d');
		 //$validity=$_POST['validity'];
		 $validity='3000-01-01';
		 $state=$_POST['state'];

		 if($account && $password && $email && $name && $sex!=null  && $date && $validity){
		 	$data['account']=$account;
		 	$data['password']=$password;
		 	$data['email']=$email;
		 	$data['name']=$name;
		 	$data['sex']=$sex;
		 	$data['marry']=$marry;
		 	$data['type']=$type;
		 	$data['date']=$date;
		 	$data['address']=$address;
		 	$data['validity']=$validity;
		 	$data['state']=$state;
		 	$rows=$db->add($data);
		 	if($rows>0){
		 		$code=1;
		 		
		 	}else{
		 		$code=11;
		 	}
		 }else{
		 	$code=11;
		 }

      	redirect('?m=Manager&a=addManager&result='.$code);

	}
	//展示所有管理员账户除admin之外
	public function modifyManager(){
		import('ORG.Util.Page');
		$db=M('Manage');
	    $r=	M('Role');
		$count=$db->where(' id <> 1  and  state=1')->count();
		$Page       = new Page($count,10);
	    $nowPage = isset($_GET['p'])?$_GET['p']:1;
	    $list = $db->where(' id <> 1 and  state=1')->page($nowPage.','.$Page->listRows)->select();
	    $show       = $Page->show();// 分页显示输出
	    $this->assign('page',$show);// 赋值分页输出
		$role=$r->where('state=1')->select();
		$this->assign('role',$role);
	    $this->assign('data',$list);// 赋值数据集
	    $this->display(); // 输出模板
	}
	//根据ID  取Manage数据
	public  function   editManager(){
		$id=$_GET['mid'];
		$db=M('Manage');
		if($id){
			$data=$db->where(array('id'=>$id))->find();
			$r=	M('Role');
			$role=$r->where('state=1')->select();
			$this->assign('role',$role);
			$this->assign('data',$data);
			$this->display();
		}else{
			$this->modifyManager();
		}

	}

	//更新信息
	public function  updateManagerById(){
		$id=$_GET['mid'];
		$db=M('Manage');
		 $email=$_POST['email'];
		 $name=$_POST['name'];
		 $sex=$_POST['sex'];
		 $marry=$_POST['marry'];
		 $address=$_POST['address'];
		 $type=$_POST['type'];
		 $state=$_POST['state'];
		if($id && $email ){
		 	$data['email']=$email;
		 	$data['name']=$name;
		 	$data['sex']=$sex;
		 	$data['marry']=$marry;
		 	$data['type']=$type;
		 	$data['address']=$address;
		 	$data['state']=$state;
		 	$rows=$db->where(array('id'=>$id))->save($data);
		 	if($rows>0){
		 		$code=1;
		 	}else{
		 		$code=11;
		 	}
		}else{
				$code=11;
		}
			redirect('?m=Manager&a=editManager&mid='.$id.'&result='.$code);
	}
	public function  delManager(){
		$mid=$_GET['mid'];
		if(isset($mid)){
			$db=M('Manage');
			$data['state']=0;
			$rows=$db->where('id='.$mid)->save($data);
			if($rows>0){
				$code=1;
			}else{
				$code=11;
			}
		}else{
			$code=11;
		}
		redirect('?m=Manager&a=modifyManager');
	}


	public function updatepsd(){
		$this->display();
	}
	public function updatepsdbyid(){
		if(!session('manage')){
			$this->exitSystem();
		}else{
			$db=M('Manage');
			$password=$_POST['password'];
			if(isset($password)){
				$data['password']=md5($password);
				$id=session('manage')['id'];
				$rows=$db->where('id='.$id)->save($data);
				if($rows>0){
					$code=1;
				}else{
					$code=11;
				}
			}else{
				$code=11;
			}
		}
		redirect('?m=Manager&a=updatepsd&result='.$code);
	}

	public  function addManager(){
		$db=	M('Role');
		$data=$db->where('state=1')->select();
		$this->assign('role',$data);
		$this->display();
	}
}?>