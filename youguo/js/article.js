window.onload=initBannerLink;

var thisAd=0;

function initBannerLink(){
   if(document.getElementById("adBanner").parentNode.tagName=="A"){
      document.getElementById("adBanner").parentNode.onclick=newLocation;
   }
    rotate();
}

function newLocation(){
   var adURL=new Array("1.html","2.html","3.html","4.html");
   document.location.href="http://www."+adURL[thisAd];
   return false;
}

function rotate(){
 var adImages=new Array("./img/xq/dibuhuandeng1.jpg","./img/xq/dibuhuandeng2.jpg","./img/xq/dibuhuandeng3.jpg","./img/xq/dibuhuandeng4.jpg");
  
  thisAd++;
  if(thisAd==adImages.length){
  thisAd=0;
  }
  document.getElementById("adBanner").src=adImages[thisAd];
  
  setTimeout(rotate,2*1000);
}
