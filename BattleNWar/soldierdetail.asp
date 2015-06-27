<!doctype html>
<html>
<head>
<meta charset="UTF-8">
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.0/jquery.min.js"></script>
<script type="text/javascript" src="jquery.url.js"></script>
 <style type="text/css">
   body{
   margin:0;
   padding:0;
   background-image: url("rise_of_the_tomb_raider_bear-wallpaper-1600x900.jpg");
   }
   
   #container{
   margin:0;
   padding:0;
   width:100%;
   position:absolute;
   }
  
   #header{
   padding:80px;
   height:50px;
   width:1400px;
   position:relative;
   top:0;
   right:0;
   z-index:2;
   }
     
   #indexdbmscontent{
   padding:90px;
   height:1200px;
   width:1400px;
    position:relative;
   float:left;
   font:20px;
   color:white;
   }
   </style>


</head>

<body>
<div id="container">
<div id="header">
</div>
<div id="indexdbmscontent">
<div id="producttable" style="position: absolute; top: 100px; left:80px; width: 1370px; height: 550px; overflow: hidden;background-color:black;opacity:0.8;z-index:3;padding:18px;border:2px solid white;">
<table id="producttable2" style="width:100%;font-family:'Microsoft JhengHei';font-size:30px;">
<script>
    
	$(function(){
    var ProductName = [];
    var Price = [];
    $.getJSON('https://spreadsheets.google.com/feeds/list/1abJL28HdI2PeJO-YiIRdnjRONRZ04geo-Bb4jB6qPCo/od6/public/values?alt=json', function (data){
        for (var i=0; i < data.feed.entry.length; i++){
            if (data.feed.entry[i].gsx$名稱.$t === $.url.param("cars")) {
			             $('#producttable2').append("<tr><td style='font-size:70px;text-align: center;' colspan='4'>" + data.feed.entry[i].gsx$名稱.$t 
						 + "</td></tr><tr ><td colspan='2'> 生命值 : " + data.feed.entry[i].gsx$生命值.$t + "</td>" + "<td colspan='2'> 生命回復 : " + data.feed.entry[i].gsx$生命回復.$t + "</td></tr>"
						 + "<tr><td colspan='2'> 裝甲值 : " + data.feed.entry[i].gsx$裝甲值.$t + "</td><td colspan='2'> 裝甲類型 : " + data.feed.entry[i].gsx$裝甲類型.$t + "</td></tr>" 
						  + "<tr><td colspan='2'> 魔法值 : " + data.feed.entry[i].gsx$魔法值.$t + "</td><td colspan='2'> 魔法回復 : " + data.feed.entry[i].gsx$魔法回復.$t + "</td></tr>" 
						   + "<tr><td> 攻撃基值 : " + data.feed.entry[i].gsx$攻撃基值.$t + "</td><td> 攻擊隨機 : " + data.feed.entry[i].gsx$攻擊隨機.$t + "</td><td> 攻撃類型 : " 
						   + data.feed.entry[i].gsx$攻撃類型.$t + "</td><td> 攻撃間隔 : " + data.feed.entry[i].gsx$攻撃間隔.$t  + "</td></tr><tr><td> 射程 : " + data.feed.entry[i].gsx$射程.$t + "</td><td> 擴散 : " + data.feed.entry[i].gsx$擴散.$t + "</td><td> 碰撞大小 : " 
						   + data.feed.entry[i].gsx$碰撞大小.$t + "</td><td> 移速 : " + data.feed.entry[i].gsx$移速.$t + "</td></tr><tr><td colspan='4'> 技能 : "+ data.feed.entry[i].gsx$技能.$t +"</td></tr>"
                            + "<tr><td colspan='2'> 賞金 : " + data.feed.entry[i].gsx$賞金.$t + "</td><td colspan='2'> 賞金隨機 : " + data.feed.entry[i].gsx$賞金隨機.$t + "</td></tr>" 
                            + "<tr><td colspan='2'> 出兵時間 : " + data.feed.entry[i].gsx$出兵時間.$t + "</td><td colspan='2'> 出兵數量 : " + data.feed.entry[i].gsx$出兵數量.$t + "</td></tr>" 							
							);
						 $("#header").load("header.html");
						}

        }
    });

});
    
</script>
</table>
 </div>
 </div>
</div>




</body>




</html>