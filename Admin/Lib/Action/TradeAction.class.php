<?php
/**
* 
*/
class TradeAction extends Action
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
		//
	public function addTrade(){
		$db=M('Product');
		$data=$db->where('state = 1')->order('id desc')->select();
		$this->assign('data',$data);
		$this->display();
	}
	
	//this  method  is  add  trade

	public function savetrade(){
		$title=$_POST['title'];
		$pid=$_POST['pid'];
		$html=$_POST['html'];
		if($title && $html){
			$db=M('Trade');
			$data['title']=$title;
			$data['pid']=$pid;
			$data['date']=date('Y-m-d');
			$data['html']=$html;
			$data['state']=1;
			$row=$db->add($data);
			if($row>0){
				$code=1;
			}else{
				$code=11;
			}

		}else{
			$code=11;
		}
		redirect('?m=Trade&a=addTrade&result='.$code);
	}
	
	//
	public  function   modifyTrade(){
		import('ORG.Util.Page');
		$db=M('Trade');
		$p=M('Product');
		$pro=$p->select();
		$count=$db->where('state = 1')->count();
		$Page       = new Page($count,10);
	    $nowPage = isset($_GET['p'])?$_GET['p']:1;
	    $list = $db->where('state = 1')->page($nowPage.','.$Page->listRows)->select();
	    $show       = $Page->show();// 分页显示输出
	    $this->assign('prodcut',$pro);
	    $this->assign('page',$show);// 赋值分页输出
	    $this->assign('data',$list);// 赋值数据集
	    $this->display(); // 输出模板
	}

	public  function  editTrade(){
		$tid=$_GET['tid'];
		if(isset($tid)){
			$p=M('Product');
			$pro=$p->select();
			$db=M('Trade');
			$data=$db->where(array('id'=>$tid))->find();
			$this->assign('data',$data);
			$this->assign('product',$pro);
			$this->display();
		}else{
			redirect('?m=Trade&a=modifyTrade');
		}
	}

	public  function  updatetrade(){
		$tid=$_GET['tid'];
		$title=$_POST['title'];
		$pid=$_POST['pid'];
		$html=$_POST['html'];
		if(isset($tid) && isset($title)){
			$db=M('Trade');
			$data['title']=$title;
			$data['date']=date('Y-m-d');
			$data['html']=$html;
			$data['pid']=$pid;
			$rows=$db->where('id='.$tid)->save($data);
			if($rows>0){
				$code=1;
			}else{
				$code=11;
			}
			redirect('?m=Trade&a=editTrade&result='.$code.'&tid='.$tid);
		}else{
		    redirect('?m=Trade&a=modifyTrade');
		}
			
	}

	public function  delTrade(){
		$tid=$_GET['tid'];
		if(isset($tid)){
			$db=M('Trade');
			$data['state']=0;
			$rows=$db->where('id='.$tid)->save($data);
			if($rows>0){
			$code=1;
			}else{
			$code=11;	
			}
		}else{
			$code=11;
		}
		redirect('?m=Trade&a=modifyTrade');
	}
}?>