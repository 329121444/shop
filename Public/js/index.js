function DateTimeSystem (){
   this.year='';
   this.month='';
   this.day='';
   this.week='';
};

DateTimeSystem.prototype.getYear=function(){
	return this.year;
}

DateTimeSystem.prototype.getMonth=function(){
	return this.month;
}

DateTimeSystem.prototype.getDay=function(){
	return this.day;
}

DateTimeSystem.prototype.getWeeks=function(){
	return this.week;
}

DateTimeSystem.prototype.getLocationDate=function(){
     var date=new Date();
     this.year=date.getFullYear();
     this.month=date.getMonth()+1;
     this.day=date.getDate();
     var week=date.getDay();
     this.getWeek(week,this);
     return this;

};

DateTimeSystem.prototype.getServerDate=function(requsturl){
  var oData=null; 
  $.ajax({
  	url:requsturl,
  	type:'post',
  	dataType:'json',
  	async:false,
  	success:function(data){
  	   //alert(JSON.stringify(data));
  	   oData=eval(data);
  	},
  	error:function(){
       
  	}
  });
  	if(oData!=null){
    this.year=oData['year'];
    this.month=oData['month'];
    this.day=oData['day'];
    this.getWeek(oData['week'],this);
    return this;
  	}else{
  		this.getLocationDate();
  	}



};


DateTimeSystem.prototype.getWeek=function(week,that){
     var d=parseInt(week);
		 switch(d){
		 	 case 0:
		     that.week='天'
		     break;
		      case 1:
		     that.week='一'
		     break;
		      case 2:
		     that.week='二'
		     break;
		      case 3:
		     that.week='三'
		     break;
		      case 4:
		     that.week='四'
		     break;
		      case 5:
		     that.week='五'
		     break;
		      case 6:
		     that.week='六'
		     break;
		 }
		         
};


function StringBuffer() {
    this.__strings__ = new Array();
}

StringBuffer.prototype.append = function (str) {
    this.__strings__.push(str);
};

StringBuffer.prototype.toString = function () {
    return this.__strings__.join("");
};


//加入收藏夹

function HandlerSystem(){};
HandlerSystem.prototype.addFavorite= function(sURL, sTitle) {
 
            sURL = encodeURI(sURL); 
        try{   
 
            window.external.addFavorite(sURL, sTitle);   
 
        }catch(e) {   
 
            try{   
 
                window.sidebar.addPanel(sTitle, sURL, "");   
 
            }catch (e) {   
 
                layer.alert("加入收藏失败，请使用Ctrl+D进行添加,或手动在浏览器里进行设置!",0);
 
            }   
 
        }
 };
//滚动条事件
HandlerSystem.prototype.addScrollListener=function(){
  //设置宽度
  $('.body').css({width:$('.article').width()});


  $(window).scroll(function(){
       var  top= $(window).scrollTop();
         $('.body').stop();
         $('.body').animate({top:(157-top)+'px'},100);
  });

};
HandlerSystem.prototype.startFlash=function(){
      startMove();
};


HandlerSystem.prototype.seamlessRollingTop=function(obj,count){
      var _this=this;
      var $this = $('.'+obj)||$('#'+obj);
      var len=$this.find("ul li").length;

      $this.find("ul li a").hover(function(){
        $(this).css({color:'#FF6600'});
      },function(){
        $(this).css({color:'black'});
      });
      if(len>=count){
          var scrollTimer; 
          $this.hover(function(){ 
          clearInterval(scrollTimer); 
          },function(){ 
          scrollTimer = setInterval(function(){ 
          _this.scrollNews( $this ); 
          }, 2000 ); 
          }).trigger("mouseout"); 
      } 
      
};
 
HandlerSystem.prototype.scrollNews=function(obj){ 
      var $self = obj.find("ul:first");
      $self.find("li:first").clone(true).appendTo($self);  
      var lineHeight = $self.find("li:first").height(); 
      $self.animate({ "margin-top" : -lineHeight +"px" },600 , function(){ 
      $self.css({"margin-top":"0px"}).find("li:first").remove(); 
      }) 
}; 

//视频列表特效

HandlerSystem.prototype.movieRollingTop=function(obj,count){
      var _this=this;
      var $this = $('.'+obj)||$('#'+obj);
      var len=$this.find("ul li").length;

      $this.find("ul li a").hover(function(){
        $(this).css({color:'#FF6600'});
      },function(){
        $(this).css({color:'black'});
      });
      if(len>=count){
          var scrollTimer; 
          $this.hover(function(){ 
          clearInterval(scrollTimer); 
          },function(){ 
          scrollTimer = setInterval(function(){ 
          _this.scrollMovie( $this ); 
          }, 4000 ); 
          }).trigger("mouseout"); 
      } 
      
};
 
HandlerSystem.prototype.scrollMovie=function(obj){ 
      var $self = obj.find("ul:first");
      $self.find("li:first").clone(true).appendTo($self);  
      var lineHeight = $self.find("li:first").height(); 
      $self.animate({ "margin-top" : -lineHeight +"px" },800 , function(){ 
      $self.css({"margin-top":"0px"}).find("li:first").remove(); 
      }) 
};





HandlerSystem.prototype.changeColor=function(obj){
      var _this=this;
      var $this = $('.'+obj)||$('#'+obj);
      $this.find("ul li a").hover(function(){
      $(this).css({color:'#FF6600'});
      },function(){
        $(this).css({color:'black'});
      });

}


//视频滚动
HandlerSystem.prototype.seamlessRollingLeft=function(speed,time){
      var _this=this;

      var len=$('#picpanl ul li').length;
      if(len>4){
            var width=$('#picpanl ul li').outerWidth(true);
            $('#picpanl ul').css('width',(2*len)*width+'px');
            var html=$('#picpanl ul').html();
            $('#picpanl ul').html(html+html);


            function animate(){
              //console.log($('#picpanl').offset().left);
              if($('#picpanl').position().left<=(-len*width)){
                  $('#picpanl').css('left','0px');
              }else{
                $('#picpanl').css('left',($('#picpanl').position().left-speed)+'px');
              }

              
            }
            _this.t=setInterval(animate,time);
             $('#picpanl').hover(function(){clearInterval(_this.t);},function(){ _this.t=setInterval(animate,time);});
          }else{

          }
};

HandlerSystem.prototype.addHistory=function(url){
     $.ajax({
      url:url,
      type:'post'
     }); 
}












