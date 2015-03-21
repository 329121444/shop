<?php
/**
* 
*/
class ManageAction extends Action{
	
	public  function __construct(){
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
	public  function manage(){
	    $db=M('System');
	    $data=$db->where(array('id' =>1))->find();
	    $this->assign('title',$data['title']);
	    $this->assign('headertitle',$data['headertitle']);
	    $m=session('manage');
	    $parent=M('Parent');
	    if($m['type']==1){
	    	$p=$parent->where(array('state'=>1))->order('id  desc')->select();
	    }else{
	    	//根据角色取菜单
	    	$sql='SELECT  distinct  a.* from shop_parent as a ,shop_permission as b ,shop_children as c  WHERE
				b.cid=c.id  AND  c.pid = a.id AND a.state=1 AND   b.state=1 AND c.state=1  AND  
				b.rid='.$m['type'].'  ORDER BY a.id  DESC ';
				$temp=M();
				$p=$temp->query($sql);
	    }
	    $this->assign('data',$p);

		$this->display();
	}
	public function header(){
		if(session('manage')){
			$manage =session('manage');
			$this->assign('manage',$manage);
		}
		$db=M('System');
	    $data=$db->where(array('id' =>1))->find();
	    $this->assign('title',$data['title']);
	    $this->assign('headertitle',$data['headertitle']);
	    //
	    $m=session('manage');
	    $parent=M('Parent');
	    if($m['type']==1){
	    	$p=$parent->where(array('state'=>1))->order('id  desc')->select();
	    }else{
	    	//根据角色取菜单
    		$sql='SELECT  distinct  a.* from shop_parent as a ,shop_permission as b ,shop_children as c  WHERE
			b.cid=c.id  AND  c.pid = a.id AND a.state=1 AND   b.state=1 AND c.state=1  AND  
			b.rid='.$m['type'].'  ORDER BY a.id  DESC ';
			$temp=M();
			$p=$temp->query($sql);
	    }
	    $this->assign('data',$p);
 		$this->display();
	}


	//
	public function getChildren(){
		$pid=$_GET['pid'];
		if(isset($pid)){
			    $m=session('manage');
			    $parent=M('Parent');
			    $children=M('Children');
			    if($m['type']==1){
			    	$p=$parent->where(array('id'=>$pid,'state'=>1))->find();
			    	if($p){
			    		$c=$children->where(array('pid'=>$pid,'state'=>1))->select();
			    	}
			    }else{
			    	//根据角色获取
			    	$temp=M();
			    	$sql='SELECT  distinct  c.* from shop_parent as a ,shop_permission as b ,shop_children as c  WHERE
					b.cid=c.id  AND  c.pid = a.id AND a.state=1 AND   b.state=1 AND c.state=1  AND  
					b.rid='.$m['type'].' AND  a.id='.$pid;
					$c=$temp->query($sql);
			    }
			    	$this->assign('data',$c);
			    	$this->display();
		}
					$this->assign('data',$c);
			    	$this->display();
	}
}?>