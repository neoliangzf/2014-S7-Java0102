<%@ page language="java" pageEncoding="utf-8"%>
<%@ page import="com.czy.dao.GoodsDao"%>
<%@ page import="com.czy.bean.Goods"%>
<%@ page import="com.czy.factory.DAOFactory"%>
<%@ page import="java.util.List"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
	+ request.getServerName() + ":" + request.getServerPort()
	+ path + "/";
%>
<!DOCTYPE html>
<html>
<head>

<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/another_style.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/popuo-box.css" rel="stylesheet" type="text/css" media="all" />


    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="http://v3.bootcss.com/favicon.ico">
    <title>Carousel Template for Bootstrap</title>
    <link href="./Carousel Template for Bootstrap_files/bootstrap.min.css" rel="stylesheet">
    <link href="./Carousel Template for Bootstrap_files/carousel.css" rel="stylesheet">
	<script src="./Carousel Template for Bootstrap_files/jquery.min.js.下载"></script>
    <script src="./Carousel Template for Bootstrap_files/bootstrap.min.js.下载"></script>
    <script src="./Carousel Template for Bootstrap_files/docs.min.js.下载"></script>
    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="./Carousel Template for Bootstrap_files/ie10-viewport-bug-workaround.js.下载"></script>
    <script src="./Carousel Template for Bootstrap_files/ie-emulation-modes-warning.js.下载"></script>
    <script type="text/javascript" src="js/jquery.min.js"></script>
	<script type="text/javascript" src="js/responsiveslides.min.js"></script>

<script>
	$(function() {
		$("#slider").responsiveSlides({
			auto : true,
			speed : 500,
			namespace : "callbacks",
			pager : true,
		});
	});
	<!-- function showtime(){
		var myDate = new Date();
		document.getElementById("time").innerHTML = myDate.getHours() + "时" + myDate.getMinutes() + "分"+ myDate.getSeconds() + "秒" ;
		setTimeout("showtime()",1000);
	}-->
</script> 

</head>
<body>
	<jsp:include page="jsp/head.jsp"></jsp:include>
	<!--  --><div id="myCarousel" class="carousel slide" data-ride="carousel">
      <!-- Indicators -->
      <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class=""></li>
        <li data-target="#myCarousel" data-slide-to="1" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="2"></li>
      </ol>
      <div class="carousel-inner" role="listbox">
        <div class="item">
          <img  src="image\9.jpg" alt="First slide">
          <div class="container">
            <div class="carousel-caption">
              <h1></h1>
              <p> </p>
              
            </div>
          </div>
        </div>
        <div class="item active">
          <img src="image\8.jpg" alt="Second slide">
          <div class="container">
            <div class="carousel-caption">
              <h1></h1>
              <p></p>
              
            </div>
          </div>
        </div>
        <div class="item">
          <img src="image\7.jpg" alt="Third slide">
          <div class="container">
            <div class="carousel-caption">
              <h1></h1>
              <p></p>
             
            </div>
          </div>
        </div>
      </div>
      <a class="left carousel-control" href="http://v3.bootcss.com/examples/carousel/#myCarousel" role="button" data-slide="prev">
        <!--  <span class="glyphicon glyphicon-chevron-left"></span> -->
        <span class="sr-only">Previous</span>
      </a>
      <a class="right carousel-control" href="http://v3.bootcss.com/examples/carousel/#myCarousel" role="button" data-slide="next">
        <!--  <span class="glyphicon glyphicon-chevron-right"></span> -->
        <span class="sr-only">Next</span>
      </a>
    </div><!-- /.carousel -->
	<!--//banner-->
	<!--content-->
	<div class="content">
		<div class="container">
			<div class="content-top">
				<%
					GoodsDao dao = DAOFactory.getGoodsServiceInstance();
					List<Goods> goodsList = dao.getAllGoods();
					if (goodsList != null && goodsList.size() > 0) {
						for (int i = 0; i < goodsList.size(); i++) {
							if (i % 4 == 0) {
				%>
				<div class="content-top1">
					<%
						}
					%>
					<div class="col-md-3 col-md2">
						<div class="col-md1 simpleCart_shelfItem">
							<a
								href="jsp/goodsDescribed.jsp?gid=<%=goodsList.get(i).getGid()%>"
								target="_blank">  <img class="img-responsive" src="images/<%=goodsList.get(i).getGname()%>.jpg" alt="image" />
							</a>
							<h3>
								<a
									href="jsp/goodsDescribed.jsp?gid=<%=goodsList.get(i).getGid()%>"
									target="_blank"><%=goodsList.get(i).getGname()%></a>
							</h3>
							<div class="price">
								<span class="item_price">¥<%=goodsList.get(i).getPrice()%>	
								</span>
								<a
									href="jsp/addToCart.jsp?gid=<%=goodsList.get(i).getGid()%>&buyNumber=1"
									class="item_add">Add to cart</a>
								<div class="clearfix"></div>
							</div>
						</div>
					</div>
					<%
						if (i % 4 == 3) {
					%>
					<div class="clearfix"></div>
				</div>
				<%
					}
						}
					}
				%>
			</div>
		</div>
	</div>
	<br><br><br>
	     <!-- FOOTER -->
      <footer>
        <p class="pull-right"><a href="http://localhost:8080/shopping/index.jsp">Back to top</a></p>
      </footer>

    </div><!-- /.container --> 

<div id="global-zeroclipboard-html-bridge" class="global-zeroclipboard-container" style="position: absolute; left: 0px; top: -9999px; width: 15px; height: 15px; z-index: 999999999;">      <object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" id="global-zeroclipboard-flash-bridge" width="100%" height="100%">         <param name="movie" value="/assets/flash/ZeroClipboard.swf?noCache=1482212066078">         <param name="allowScriptAccess" value="sameDomain">         <param name="scale" value="exactfit">         <param name="loop" value="false">         <param name="menu" value="false">         <param name="quality" value="best">         <param name="bgcolor" value="#ffffff">         <param name="wmode" value="transparent">         <param name="flashvars" value="trustedOrigins=v3.bootcss.com%2C%2F%2Fv3.bootcss.com%2Chttp%3A%2F%2Fv3.bootcss.com">         <embed src="/assets/flash/ZeroClipboard.swf?noCache=1482212066078" loop="false" menu="false" quality="best" bgcolor="#ffffff" width="100%" height="100%" name="global-zeroclipboard-flash-bridge" allowscriptaccess="sameDomain" allowfullscreen="false" type="application/x-shockwave-flash" wmode="transparent" pluginspage="http://www.macromedia.com/go/getflashplayer" flashvars="trustedOrigins=v3.bootcss.com%2C%2F%2Fv3.bootcss.com%2Chttp%3A%2F%2Fv3.bootcss.com" scale="exactfit">                </object></div><svg xmlns="http://www.w3.org/2000/svg" width="500" height="500" viewBox="0 0 500 500" preserveAspectRatio="none" style="visibility: hidden; position: absolute; top: -100%; left: -100%;"><defs></defs><text x="0" y="23" style="font-weight:bold;font-size:23pt;font-family:Arial, Helvetica, Open Sans, sans-serif;dominant-baseline:middle">500x500</text></svg>
</body>
</html>