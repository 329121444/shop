<?php
/**
* 
*/
class RoleAction extends Action{
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
	//添加角色
 	public  function saveRole(){
 		$name=$_POST['name'];
 		if(isset($name)){
 			$db=M('Role');
 			$data['name']=$name;
 			$data['editor']=session('manage')['name'];
 			$data['date']=date('Y-m-d');
 			$data['time']=date('H:i:s');
 			$data['state']=1;
 			$rows=$db->add($data);
 			if($rows>0){
 				$code=1;
 			}else{
 				$code=11;
 			}
 		}else{
 				$code=11;
 		}
 		redirect('?m=Role&a=addRole&result='.$code);
 	}
 	//显示角色列表
	public  function   modifyRole(){
		import('ORG.Util.Page');
		$db=M('Role');
		$count=$db->where('state = 1')->count();
		$Page       = new Page($count,10);
	    $nowPage = isset($_GET['p'])?$_GET['p']:1;
	    $list = $db->where('state = 1')->page($nowPage.','.$Page->listRows)->select();
	    $show       = $Page->show();// 分页显示输出
	    $this->assign('page',$show);// 赋值分页输出
	    $this->assign('data',$list);// 赋值数据集
	    $this->display(); // 输出模板
	}
	//回显角色
	public function editRole(){
		$rid=$_GET['rid'];
		if(isset($rid)){
			$db=M('Role');
			$data=$db->where(array('id'=>$rid,'state'=>1))->find();
			if($data){
				$this->assign('data',$data);
				$this->display();
			}else{
			redirect('?m=Role&a=modifyRole');	
			}
		}else{
			redirect('?m=Role&a=modifyRole');
		}
		
	}

	public  function updateRole(){
		$rid=$_GET['rid'];
		if(isset($rid) && isset($_POST['name'])){
			$db=M('Role');
			$data['name']=$_POST['name'];
			$data['editor']=session('manage')['name'];
			$data['date']=date('Y-m-d');
			$data['time']=date('H:i:s');
			$rows=$db->where(array('id'=>$rid))->save($data);
			if($rows){
				$code=1;
			}else{
				$rows=11;
			}
		redirect('?m=Role&a=editRole&result='.$code.'&rid='.$rid);
		}else{
			redirect('?m=Role&a=modifyRole');
		}
		
	}
	//删除角色
	public  function delRole(){
		$rid=$_GET['rid'];
		if(isset($rid)){
			$db=M('Role');
			$data['state']=0;
			$data['editor']=session('manage')['name'];
			$data['date']=date('Y-m-d');
			$data['time']=date('H:i:s');
			$rows=$db->where(array('id'=>$rid))->save($data);		
		}
		redirect('?m=Role&a=modifyRole');
	}

}?>