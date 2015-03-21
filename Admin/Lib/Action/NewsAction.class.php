<?php
/**
* 
*/
class NewsAction extends Action
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
	public function savenews(){
		$title=$_POST['title'];
		$html=$_POST['html'];
		if($title && $html){
			$db=M('News');
			$data['title']=$title;
			$data['date']=date('Y-m-d');
			$data['time']=date('H:i:s');
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
		redirect('?m=News&a=addNews&result='.$code);
	}
	
	public  function  modifyNews(){
		import('ORG.Util.Page');
		$db=M('News');
		$count=$db->where('state = 1')->count();
		$Page       = new Page($count,10);
	    $nowPage = isset($_GET['p'])?$_GET['p']:1;
	    $list = $db->where('state = 1')->page($nowPage.','.$Page->listRows)->select();
	    $show       = $Page->show();// 分页显示输出
	    $this->assign('page',$show);// 赋值分页输出
	    $this->assign('data',$list);// 赋值数据集
	    $this->display(); // 输出模板
	}
	public function editNews(){
		$nid=$_GET['nid'];
		if(isset($nid)){
			$db=M('News');
			$data=$db->where('state = 1  and id='.$nid)->find();
			$this->assign('data',$data);
			$this->display();
		}else{
			redirect('?m=News&a=modifyNews');
		}
	}
	public function updatenews(){
		$nid=$_GET['nid'];
		if(isset($nid)){
			$db=M('News');
			$data['title']=$_POST['title'];
			$data['html']=$_POST['html'];
			$data['date']=date('Y-m-d');
			$data['time']=date('H:i:s');
			$rows=$db->where('id='.$nid)->save($data);
			if($rows>0){
				$code=1;
			}else{
				$code=11;
			}
			redirect('?m=News&a=editNews&result='.$code.'&nid='.$nid);
		}else{
			redirect('?m=News&a=modifyNews');
		}

	}


	public  function  delNews(){
		$nid=$_GET['nid'];
		if(isset($nid)){
			$db=M('News');
			$data['state']=0;
			$db->where('id='.$nid)->save($data);
		}
		redirect('?m=News&a=modifyNews');
	}

}?>