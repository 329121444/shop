<?php
 /**
 * 
 */
 class ProductAction extends Action{
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
        
 	//添加产品分类
    public function saveProductType(){
    	$db=M('Producttype');
    	$name=$_POST['name'];
    	$manage=session('manage');
    	if($name && $manage){
    		$temp=$db->where(array('name' =>$name))->select();
    		if(count($temp)<1){
				$data['name']=$name;
	    		$data['date']=date('Y-m-d');
	    		$data['time']=date('H:i:s');
	    		$data['mid']=$manage['id'];
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
    	}else{
    				$code=11;
    	}
    	redirect('?m=Product&a=addProductType&result='.$code.'&name='.$name);
    }
    //展示产品分类列表
    public function modifyProductType(){
        import('ORG.Util.Page');
        $db=M();
        $count=$db->table(array('shop_producttype'=>'a','shop_manage'=>'b'))->field('a.*,b.name as username, b.account as account')->where('a.mid=b.id and a.state=1')->count();
        $Page       = new Page($count,10);
        $nowPage = isset($_GET['p'])?$_GET['p']:1;
        $list = $db->table(array('shop_producttype'=>'a','shop_manage'=>'b'))->field('a.*,b.name as username, b.account as account')->where('a.mid=b.id and a.state=1')->page($nowPage.','.$Page->listRows)->select();
        $show       = $Page->show();// 分页显示输出
        $this->assign('page',$show);// 赋值分页输出
        $this->assign('data',$list);// 赋值数据集
        $this->display(); // 输出模板
    }
    public function editProductType(){
        $id=$_GET['tid'];
        if( $id){
            $db=M('Producttype');
            $data=$db->where(array('id'=>$id))->find();
            $this->assign('data',$data);
            $this->display();

        }else{
            $this->modifyProductType();
        }

    }
    //修改产品类型
    public  function updateProductTypeById(){
        $id=$_GET['tid'];
        $db=M('Producttype');
        $name=$_POST['name'];
        $manage=session('manage');
        if($name && $manage && $id){
                $data['name']=$name;
                $data['date']=date('Y-m-d');
                $data['time']=date('H:i:s');
                $data['mid']=$manage['id'];
                $row=$db->where(array('id'=>$id))->save($data);
                if($row>0){
                    $code=1;
                }else{
                    $code=11;
                }
           redirect('?m=Product&a=editProductType&result='.$code.'&name='.$name.'&tid='.$id); 
        }else{
            redirect('?m=Product&a=modifyProductType');
        }
    }
    //删除产品分类
    public function deleProductTypeById(){
        $id=$_POST['tid'];
        $db=M();
        $db->startTrans();
        try {
            $db->table(array('shop_producttype'=>'a'))->where(array('a.id'=>$id))->data(array('a.state'=>0))->save();
            $db->table(array('shop_product'=>'b'))->where(array('b.tid'=>$id))->data(array('b.state'=>0))->save();
            $temp=$db->table(array('shop_product'=>'d'))->where(array('d.tid'=>$id))->select();
        if($temp){
            foreach ($temp as $key => $vo){
            $db->table(array('shop_productimg'=>'e'))->where(array('e.pid'=>$vo['id']))->data(array('e.state'=>0))->save(); 
            }
            
        }
            $data['code']=1;
            $db->commit();
        } catch (Exception $e) {
            $data['code']=0;
            $db->rollback(); 
        }
        echo json_encode($data);

    }
    
    //添加产品

    public function addProduct(){
        $db=M('Producttype');
        $data=$db->where('state=1')->select();
        $rand=rand(0,999);
        $this->assign('data',$data);
        $this->assign('rand',$rand);
        $this->display();
    }

    public  function saveProduct(){
        $db =M();
        $name=$_POST['name'];
        $model=$_POST['model'];
        $explain=$_POST['explain'];
        $tid=$_POST['tid'];
        $state=1;
        $pimg=$_POST['file'];
        $db->startTrans();
        if($name && $tid && $tid && $model){
            $data[name]=$name;
            $data[model]=$model;
            $data[explain]=$explain;
            $data[tid]=$tid;
            $data[state]=$state;
            $id=$db->table('shop_product')->add($data);
            if($pimg){
                $count=0;
                foreach ($pimg as $i => $vo) { 
                    $temp['path']=$vo;
                    if($i==0){
                     $temp['type']=1;   
                    }else{
                     $temp['type']=0; 
                    }
                     $temp['state']=1;
                     $temp['pid']=$id;
                     $row=$db->table('shop_productimg')->add($temp);
                     if($row>0)
                        $count++;
                }
                
                if($count==count($pimg)){
                    $db->commit();
                    //跳转详情编辑页面
                    $code=1;
                    redirect('?m=Product&a=modifyHtml&pid='.$id.'&result='.$code);
                }else{
                    $db->rollback();
                    $code=11;
                    redirect('?m=Product&a=addProduct&result='.$code);
                }


            }else{
                if($id>0){
                    $db->commit();
                    //跳转详情编辑页面
                    $code=1;
                    redirect('?m=Product&a=modifyHtml&pid='.$id.'&result='.$code); 
                }else{
                    $db->rollback();
                    $code=11;
                    redirect('?m=Product&a=addProduct&result='.$code);
                }
                
            }
        }else{
            //返回添加页面
            $code=11;
            redirect('?m=Product&a=addProduct&result='.$code);
        }

    }
    //编辑详情
    public  function  modifyHtml(){
        $pid=$_GET['pid'];
        if($pid){
            $db=M('Product');
            $data=$db->find($pid);
            $this->assign('data',$data);
            $this->display();
        }else{
          redirect('?m=Product&a=modifyProduct');  
        }

 
    }


    public function saveModifyHtmlById(){
        $pid=$_GET['pid'];
        $content=$_POST['textarea'];
        $db=M('Product');
        if($pid){
            $data['html']=$content;
            $rows=$db->where(array('id'=>$pid))->save($data);
            $code=1;
        }else{
            $code=11;
        }
        
        redirect('?m=Product&a=modifyProduct&result='.$code); 
    }
    //显示商品列表
    public function  modifyProduct(){
        import('ORG.Util.Page');
        $db=M();
        $count=$db->table(array('shop_producttype'=>'a','shop_product'=>'b'))->field('b.*,a.name as typename')->where('b.tid=a.id and a.state=1 and b.state=1')->count();
        $Page       = new Page($count,10);
        $nowPage = isset($_GET['p'])?$_GET['p']:1;
        $list = $db->table(array('shop_producttype'=>'a','shop_product'=>'b'))->field('b.*,a.name as typename')->where('b.tid=a.id and a.state=1 and b.state=1')->page($nowPage.','.$Page->listRows)->select();
        $show       = $Page->show();// 分页显示输出
        $this->assign('page',$show);// 赋值分页输出
        $this->assign('data',$list);// 赋值数据集
        $this->display(); // 输出模板
    }
    //
    public  function  editProduct(){
        $pid=$_GET['pid'];
        if(isset($pid)){
            $product=M('Product');
            $p=$product->where(array('id'=>$pid,'state'=>1))->find();
            if($p){
                $this->assign('product',$p);
                $db=M('Producttype');
                $data=$db->where('state=1')->select();
                $rand=rand(0,999);
                $this->assign('data',$data);
                $this->assign('rand',$rand); 
                $this->display();
            }else{
               redirect('?m=Product&a=modifyProduct'); 
            }
        }else{
            redirect('?m=Product&a=modifyProduct');
        }

    }


    //修改商品
    public function  updateproductinfo(){
        $pid=$_GET['pid'];
        if(isset($pid)){
            $db=M('Product');
            $data['name']=$_POST['name'];
            $data['model']=$_POST['model'];
            $data['explain']=$_POST['explain'];
            $data['html']=$_POST['html'];
            $data['tid']=$_POST['tid'];
            $rows=$db->where(array('id'=>$pid))->save($data);
            if($rows>0){
                $code=1;
            }else{
                $code=11;
            }

            redirect('?m=Product&a=editProduct&result='.$code.'&pid='.$pid);
        }else{
            redirect('?m=Product&a=modifyProduct');
        }

    }

    //删除商品
    public function delProduct(){
        $pid=$_GET['pid'];
        if(isset($pid)){
            $db=M();
            $db->startTrans();
            $data['state']=0;
            $db->table('shop_product')->where('id='.$pid)->save($data);
            $arr=$db->table('shop_productimg')->where('pid='.$pid)->select();
            $db->table('shop_productimg')->where('pid='.$pid)->save($data);
            $db->commit();
            foreach ($arr as $key => $obj) {
                @unlink('.'.$obj['path']);
            }
        }
      redirect('?m=Product&a=modifyProduct');
    }
    //图片编辑

    public  function  editImage(){
        $pid=$_GET['pid'];
        if(isset($pid)){
            $img=M('Productimg');
            $data=$img->where(array('pid'=>$pid,'state'=>1))->select();
            $p=M('Product');
            $product=$p->where('id='.$pid)->find();
            $this->assign('productimg',$data);
            $this->assign('product',$product);
            $this->display(); 
        }else{
           redirect('?m=Product&a=modifyProduct');  
        }
    }
    //删除图片
    public  function removeImage (){
        $id=$_POST['imgid'];
        if(isset($id)){
            $db=M('Productimg');
            $temp=$db->where('id='.$id)->find();
            if($temp['type']!=1){
                $da['state']=0;
                $rows=$db->where('id='.$id)->save($da);
                if($rows>0){
                    $data['code']=1;
                    @unlink('.'.$temp['path']);
                }else{
                    $data['code']=0;
                }                
               
            }else{
                 $data['code']=-1;
            }
        }else{
            $data['code']=-2;
        }
        echo json_encode($data);
    }


    //上传图片
    public  function  uploadImage(){
        import('ORG.Net.UploadFile');
        $upload = new UploadFile();// 实例化上传类
        $upload->maxSize  = -1 ;// 设置附件上传大小
        $upload->allowExts  = array('jpg','jpeg','gif','png');// 设置附件上传类型
        $upload->savePath =  './uploads/product/';// 设置附件上传目录
        $upload->saveRule=uniqid;
        $upload->uploadReplace = true;
      $pid=$_POST['pid'];
      if(isset($pid)){
            $db=M('Productimg');
            $temp=$db->where(array('pid'=>$pid,'state'=>1))->count();
            if($temp<4){
                 if(!$upload->upload()) {
                    $data['code']=-3;
                 }else{
                    $info =  $upload->getUploadFileInfo();
                    $data['pid']=$pid;
                    $data['type']=0;
                    $data['path']='/uploads/product/'.$info[0]['savename'];
                    $data['state']=1;
                    $row=$db->add($data);
                    if($row>0){
                         $data['code']=1;
                    }else{
                        $data['code']=0;
                        @unlink('.'.$data['path']);
                    }
                }


            }else{
                $data['code']=-1;
            }

      }else{
        $data['code']=-2;
      }  
      echo json_encode($data);
    }

    //修改图片
    public  function   updateImage(){
        import('ORG.Net.UploadFile');
        $upload = new UploadFile();// 实例化上传类
        $upload->maxSize  = -1 ;// 设置附件上传大小
        $upload->allowExts  = array('jpg','jpeg','gif','png');// 设置附件上传类型
        $upload->savePath =  './uploads/product/';// 设置附件上传目录
        $upload->saveRule=uniqid;
        $upload->uploadReplace = true;
        $id=$_POST['imgid'];
        if(isset($id)){
            $db=M('Productimg');
            $temp=$db->where(array('id'=>$id))->find();
              if(!$upload->upload()) {
                    $data['code']=-2;
                 }else{
                    $info =  $upload->getUploadFileInfo();
                    $d['path']='/uploads/product/'.$info[0]['savename'];
                    $row=$db->where(array('id'=>$id))->save($d);
                    if($row>0){
                         $data['code']=1;
                         @unlink('.'.$temp['path']);
                    }else{
                        $data['code']=0;
                        
                    }
                }
        }else{
             $data['code']=-1;
        }
        echo json_encode($data) ;
    }

 }?>