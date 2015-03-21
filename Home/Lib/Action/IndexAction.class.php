<?php
class IndexAction extends Action {
    public function index(){
      $db=M();
      $data=$db->table('shop_system')->where(array('id' =>1))->find();
      $banner=$db->table('shop_banner')->where('state=1')->order('id desc')->limit(10)->select();
      $trade=$db->table('shop_trade')->where('state=1')->order('id desc')->select();
      $producttype=$db->table('shop_producttype')->where('state=1')->select();
      $product=$db->table(array('shop_product'=>'a','shop_productimg'=>'b'))->where('a.state=1 and  b.state=1 and a.id=b.pid and b.type=1')->field(array('a.*','b.path'=>'path'))->order('a.id desc')->limit(8)->select();
      $news=$db->table('shop_news')->where('state = 1')->order('id desc')->limit(8)->select();
      $vedio=$db->table('shop_video')->where('state = 1')->order('id desc')->select();
      $this->assign('data',$data);
      $this->assign('banner',$banner);
      $this->assign('trade',$trade);
      $this->assign('producttype',$producttype);
      $this->assign('product',$product);
      $this->assign('news',$news);
      $this->assign('vedio',$vedio);
  	  $this->display();
    }
    //取系统时间
    public  function  getDateTime(){
     $data['year']=date('Y');
     $data['month']=date('m');
     $data['day']=date('d');
     $week=date('N');
     if($week==7)
        $week=0;
     $data['week']=$week;
     echo json_encode($data);
    }
    //更多成功案例更多
    public function moretrade(){
        import('ORG.Util.Page');
        $db=M();
        $data=$db->table('shop_system')->where(array('id' =>1))->find();
        $this->assign('s',$data);
        $count=$db->table('shop_trade')->where(' state = 1')->order('id desc')->count();
        $Page       = new Page($count,15);
        $nowPage = isset($_GET['p'])?$_GET['p']:1;
        $list = $db->table('shop_trade')->where(' state = 1')->order('id desc')->page($nowPage.','.$Page->listRows)->select();
        $show       = $Page->show();// 分页显示输出
        $this->assign('page',$show);// 赋值分页输出
        $this->assign('data',$list);// 赋值数据集
        $this->display();
    }
    //显示单个案例
    public  function  showtrade(){
        $db=M();
        $data=$db->table('shop_system')->where(array('id' =>1))->find();
        $this->assign('s',$data);
        $tid=$_GET['tid'];
        if($tid){
          $data=$db->table('shop_trade')->where(array('id'=>$tid))->find();
          $this->assign('data',$data);
          $this->display();   
        }else{
          redirect('?m=Index&a=moretrade');
        }
    }
    //公司简介
    public function explain(){
        $db=M();
        $data=$db->table('shop_system')->where(array('id' =>1))->find();
        $this->assign('s',$data);
        $this->display(); 
    }
    //行业资讯
    public function morenews(){
       import('ORG.Util.Page');
        $db=M();
        $data=$db->table('shop_system')->where(array('id' =>1))->find();
        $this->assign('s',$data);
        $count=$db->table('shop_news')->where(' state = 1')->order('id desc')->count();
        $Page       = new Page($count,15);
        $nowPage = isset($_GET['p'])?$_GET['p']:1;
        $list = $db->table('shop_news')->where(' state = 1')->order('id desc')->page($nowPage.','.$Page->listRows)->select();
        $show       = $Page->show();// 分页显示输出
        $this->assign('page',$show);// 赋值分页输出
        $this->assign('data',$list);// 赋值数据集
        $this->display();
    }
    //显示单条行业资讯
     public  function  shownews(){
            $db=M();
            $data=$db->table('shop_system')->where(array('id' =>1))->find();
            $this->assign('s',$data);
            $nid=$_GET['nid'];
            if($nid){
              $data=$db->table('shop_news')->where(array('id'=>$nid))->find();
              $this->assign('data',$data);
              $this->display();   
            }else{
              redirect('?m=Index&a=morenews');
            }
        }
    //展示商品列表包括搜索
      public function  moreproduct(){
          import('ORG.Util.Page');
            $db=M();
            $tid=$_GET['tid'];
            $pid=$_GET['pid'];
            $model=$_GET['ml'];
            $searchValue=$_POST['searchValue'];
            $data=$db->table('shop_system')->where(array('id' =>1))->find();
            $this->assign('s',$data);
            $producttype=$db->table('shop_producttype')->where('state=1')->select();
            if($tid){
                $count=$db->table(array('shop_product'=>'a','shop_productimg'=>'b'))->where('a.id = b.pid and a.state=1 and b.state=1 and b.type=1 and a.tid='.$tid)->field(array('a.*','b.path'=>'path'))->count();
                $Page       = new Page($count,8);
                $nowPage = isset($_GET['p'])?$_GET['p']:1;
                $temp = $db->table(array('shop_product'=>'a','shop_productimg'=>'b'))->where('a.id = b.pid and a.state=1 and b.state=1 and b.type=1 and a.tid='.$tid)->field(array('a.*','b.path'=>'path'))->page($nowPage.','.$Page->listRows)->select();
                $show       = $Page->show();
                $this->assign('page',$show);
            }
            if($searchValue){
                $count=$db->table(array('shop_product'=>'a','shop_productimg'=>'b'))->where("a.id = b.pid and a.state=1 and b.state=1 and b.type=1 and (a.model like '%".$searchValue."%' or a.name like '%".$searchValue."%')")->field(array('a.*','b.path'=>'path'))->count('distinct(a.id)');
                $Page       = new Page($count,8);
                $nowPage = isset($_GET['p'])?$_GET['p']:1;
                $temp = $db->table(array('shop_product'=>'a','shop_productimg'=>'b'))->where("a.id = b.pid and a.state=1 and b.state=1 and b.type=1 and ( a.model like '%".$searchValue."%' or a.name like '%".$searchValue."%')")->field(array('a.*','b.path'=>'path'))->distinct('a.id')->page($nowPage.','.$Page->listRows)->select();
                $show       = $Page->show();
                $this->assign('page',$show);
            }
            if($pid){
               $temp=$db->table(array('shop_product'=>'a','shop_productimg'=>'b'))->where("a.id = b.pid and a.state=1 and b.state=1 and b.type=1 and a.id=".$pid)->field(array('a.*','b.path'=>'path'))->select();    
               $tid=$temp[0]['tid'];
            }
            if($model){
                $count=$db->table(array('shop_product'=>'a','shop_productimg'=>'b'))->where("a.id = b.pid and a.state=1 and b.state=1 and b.type=1 and a.model like '%".$model."%'")->field(array('a.*','b.path'=>'path'))->count();    
                $Page       = new Page($count,8);
                $nowPage = isset($_GET['p'])?$_GET['p']:1;
                $temp = $db->table(array('shop_product'=>'a','shop_productimg'=>'b'))->where("a.id = b.pid and a.state=1 and b.state=1 and b.type=1 and a.model like '%".$model."%'")->field(array('a.*','b.path'=>'path'))->page($nowPage.','.$Page->listRows)->select();
                $show       = $Page->show();
                $this->assign('page',$show);  
            }
           
            if(!$tid && !$searchValue && ! $pid && !$model){
                $count=$db->table(array('shop_product'=>'a','shop_productimg'=>'b'))->where('a.state=1 and  b.state=1 and a.id=b.pid and b.type=1')->order('a.id desc')->field(array('a.*','b.path'=>'path'))->count();     
                $Page       = new Page($count,8);
                $nowPage = isset($_GET['p'])?$_GET['p']:1;
                $temp = $db->table(array('shop_product'=>'a','shop_productimg'=>'b'))->where('a.state=1 and  b.state=1 and a.id=b.pid and b.type=1')->order('a.id desc')->field(array('a.*','b.path'=>'path'))->page($nowPage.','.$Page->listRows)->select();
                $show       = $Page->show();
                $this->assign('page',$show); 
            }

            $this->assign('tid',$tid);
            $this->assign('producttype',$producttype);
            $this->assign('data',$temp);
            $this->display();   
      } 

      //显示单个产品
      public function  showproduct(){
            $db=M();
            $data=$db->table('shop_system')->where(array('id' =>1))->find();
            $this->assign('s',$data);
            $producttype=$db->table('shop_producttype')->where('state=1')->select();
            $this->assign('producttype',$producttype);
            $pid=$_GET['pid'];
            if($pid){
                $data=$db->table('shop_product')->where(array('id'=>$pid))->find();
                $tid=$data['tid'];
                $img=$db->table('shop_productimg')->where(array('pid'=>$pid,'state'=>1))->select();
                $this->assign('data',$data);
                $this->assign('arr',$img);
                $this->assign('tid',$tid);
                $this->display();
            }else{
                redirect('?m=Index&a=moreproduct');
            }
  
      } 
      //显示租赁中心

      public function lease(){

            $db=M();
            $data=$db->table('shop_system')->where(array('id' =>1))->find();
            $this->assign('s',$data);
            $this->display();
      }

      //公司动态

      public function dynamic(){
            import('ORG.Util.Page');
            $db=M();
            $data=$db->table('shop_system')->where(array('id' =>1))->find();
            $this->assign('s',$data);
            $count=$db->table('shop_trade')->where(' state = 1')->order('id desc')->count();
            $Page       = new Page($count,15);
            $nowPage = isset($_GET['p'])?$_GET['p']:1;
            $list = $db->table('shop_trade')->where(' state = 1')->order('id desc')->page($nowPage.','.$Page->listRows)->select();
            $show       = $Page->show();// 分页显示输出
            $this->assign('page',$show);// 赋值分页输出
            $this->assign('data',$list);// 赋值数据集
            $this->display();
      }
      public  function showdynamic(){
            $db=M();
            $data=$db->table('shop_system')->where(array('id' =>1))->find();
            $this->assign('s',$data);
            $tid=$_GET['tid'];
            if($tid){
              $data=$db->table('shop_trade')->where(array('id'=>$tid))->find();
              $this->assign('data',$data);
              $this->display();   
            }else{
              redirect('?m=Index&a=dynamic');
            }

      }


      //下载中心
      public function down(){
            $db=M();
            $data=$db->table('shop_system')->where(array('id' =>1))->find();
            $temp=$db->table('shop_driver')->where(array('state'=>1))->select();
            $this->assign('s',$data);
            $this->assign('data',$temp);
            $this->display();
      }
      //售后服务
      public function service(){
            $db=M();
            $data=$db->table('shop_system')->where(array('id' =>1))->find();
            $this->assign('s',$data);
            $this->display();
      }
      //联系我们
      public function callme(){
            $db=M();
            $data=$db->table('shop_system')->where(array('id' =>1))->find();
            $this->assign('s',$data);
            $this->display();
      }
      //展示banner
      public  function  showbanner(){
        $bid=$_GET['bid'];
        if($bid){
          $db=M('Banner');
          $data=$db->where(array('id'=>$bid))->find();
          $this->assign('data',$data);
          $this->display();
        }else{
          redirect('Index:index');
        }
      }
      //写入访问日志
 public function  addHistory(){
          import('ORG.Net.IpLocation');// 导入IpLocation类
          $ipl = new IpLocation('UTFWry.dat'); // 实例化类
          $db=M('History');
          $data['date']=date('Y-m-d');
          $data['time']=date('H:i:s');
          $data['type']=0;
          $ip=get_client_ip();
          if(isset($ip)){
             $data['ip']=$ip;
             $location = $ipl->getlocation($ip);
             if(isset($location)){
              $data['beginip']=$location['beginip'];
              $data['endip']=$location['endip'];
              $data['country']=$location['country'];
              $data['area']=$location['area'];  
             }
            
          }
          $data['state']=1;
          $db->add($data);
      }

}?>