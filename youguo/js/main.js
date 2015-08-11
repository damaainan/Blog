window.onload=initBannerLink;
//window.onload =initAll;



var thisAd=0;

function initBannerLink(){
   if(document.getElementById("adBanner").parentNode.tagName=="A"){
      document.getElementById("adBanner").parentNode.onclick=newLocation;
   }
    rotate();
}

function newLocation(){
   var adURL=new Array("1.html","2.html","3.html","4.html","5.html");
   document.location.href="http://www."+adURL[thisAd];
   return false;
}

function rotate(){
 var adImages=new Array("./img/shouye/huandeng1.jpg","./img/shouye/huandeng2.jpg","./img/shouye/huandeng3.jpg","./img/shouye/huandeng4.jpg","./img/shouye/huandeng5.jpg");
  
  thisAd++;
  if(thisAd==adImages.length){
  thisAd=0;
  }
  document.getElementById("adBanner").src=adImages[thisAd];
  
  setTimeout(rotate,1*1000);
}


/*导航所有分类下拉菜单*/
//window.onload = initAll;

function initAll() {
		document.getElementById("xlxfh2").onmouseover=toggleMenu;
		document.getElementById("xlxfh2").onmouseout=function() {
		return false;
        } 
		document.getElementById("dhxlxf").onmouseover=toggleMenu;
		document.getElementById("dhxlxf").onmouseout=toggleMenu1;
		document.getElementById("xlxfh2").onclick = function() {
		return false;
        } 
}
function toggleMenu() {
	document.getElementById("dhxlxf").style.zIndex="1";	
}
function toggleMenu1() {
	document.getElementById("dhxlxf").style.zIndex="-1";
	}
/*导航所有分类下拉菜单下级下拉菜单*/
//window.onload = initAll1;

function initAll1() {
		document.getElementById("xlxfxj").onmouseover=togglexjMenu;
		document.getElementById("xlxfxj").onmouseout=function() {
		return false;
        } 
		document.getElementById("xlxfej").onmouseover=togglexjMenu;
		document.getElementById("xlxfej").onmouseout=togglexjMenu1;
		document.getElementById("xlxfxj").onclick = function() {
		return false;
        } 
}
function togglexjMenu() {
	document.getElementById("xlxfej").style.display="block";	

}
function togglexjMenu1() {
	document.getElementById("xlxfej").style.display="none";
	}
	
	
	
	
	
	
	
	
	
	
	