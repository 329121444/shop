<?php
class MessageAction extends Action{
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
		
	public function modifyMessage(){
		$db=M('Message');
		$data=$db->where('state=1')->order('id desc')->select();
		$this->assign('data',$data);
		$this->display();
		
	}





}?>