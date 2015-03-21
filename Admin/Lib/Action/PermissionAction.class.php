<?php

class PermissionAction extends Action{
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
	//显示所有权限列表

	public function  modifyPermission(){
		$rid=$_GET['rid'];
		if($rid){
			$c=M('Children');
			$p=M('Permission');
			$r=M('Role');
			$children=$c->where('state=1')->select();
			$permission=$p->where(array('state'=>1,'rid'=>$rid))->select();
			$role=$r->where('id='.$rid)->find();
			$this->assign('children',$children);
			$this->assign('permission',$permission);
			$this->assign('role',$role);
			$this->display();
		}else{
			redirect('?m=Role&a=modifyRole');
		}
	}

	public  function  updatePermission(){
   		$roleid=$_POST['roleid'];
   		$cid=$_POST['cid'];
   		$isChecked=$_POST['isChecked'];
   		if(isset($roleid) && isset($cid) && isset($isChecked)){
   			$p=M('Permission');
   			$temp=$p->where(array('rid'=>$roleid,'cid'=>$cid))->find();
   			$t['editor']=session('manage')['name'];
   			$t['date']=date('Y-m-d');
   			$t['time']=date('H:i:s');
   			if($temp){
   				if($isChecked==1){
   					$t['state']=1;
   				}else{
   					$t['state']=0;
   				}
   				$rows=$p->where(array('rid'=>$roleid,'cid'=>$cid))->save($t);
   				if($rows>0){
   					$data['code']=1;
   				}else{
					$data['code']=0;
   				}

   			}else{
   				$t['state']=1;
   				$t['rid']=$roleid;
   				$t['cid']=$cid;
   				$rows=$p->add($t);
   				if($rows>0){
   					$data['code']=1;
   				}else{
					$data['code']=0;
   				}
   			}

   		}else{
   			$data['code']=-1;
   		}
   		echo json_encode($data);
	}

}?>