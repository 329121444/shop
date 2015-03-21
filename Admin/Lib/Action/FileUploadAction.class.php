<?php
class FileUploadAction extends Action{
		public function upload(){
		    if (!empty($_FILES)) {
		        import('ORG.Net.UploadFile');
		        $upload = new UploadFile();
		        $upload->maxSize  = -1;
		        $upload->allowExts = array('jpg','jpeg','gif','png');
		        $upload->savePath = './uploads/product/';
		        $upload->uploadReplace = true;
		        $upload->saveRule =  time; //上传规则
      			if (!$upload->upload()) { 
      				// 上传错误提示错误信息
      				$error['message'] = $upload->getErrorMsg();
                      $error['status'] = 0;
      			          echo json_encode($error);
                  
                  } else {
                      // 上传成功 获取上传文件信息
                      $info = $upload->getUploadFileInfo();
                      $info[0]['file'] = trim($info[0]['savepath'].$info[0]['savename'],'.');
                      echo json_encode($info[0]);
                
                  }
		    }
 	}


        //删除图片
    public function  del(){
     		$p=$_POST['path'];
     		if($p){
     			$path='.'.$p;
     			$row=@unlink($path);
     				if($row>0){
     					$data['code']=1;
     				}else{
     					$data['code']=0;
     				} 			
     		}else{
     				$data['code']=0;
     		}
     		echo json_encode($data);

     	}
}?>