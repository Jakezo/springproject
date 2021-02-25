<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<head>
<style type="text/css">
#lookatfooter {
	margin-top: 100px;
	bottom: 0;
	color: grey;
	font-size: 11px;
}

#leftFooterContainer {
	padding-left: 20px;
	padding-bottom: 20px;
	color: grey;
	float: left;
}

.footerBtn {
	background-color: white;
	border: none;
	color: grey;
}

.footerBtn:hover {
	color: lightgrey;
}

#rightFooterContainer {
	padding-right: 50px;
	padding-bottom: 20px;
	text-align: right;
	float: right;
}
</style>
</head>

<!-- Bootstrap core JavaScript -->
<script src="resources/vendor/jquery/jquery.min.js"></script>
<script src="resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- Bootstrap core JavaScript -->
<script src="resources/ViewVendor/jquery/jquery.min.js"></script>
<script src="resources/ViewVendor/bootstrap/js/bootstrap.bundle.min.js"></script>

<footer id="lookatfooter">
	<div id="leftFooterContainer">
		<input type="button" class="footerBtn" value="instagram" />
		<input type="button" class="footerBtn" value="facebook" /><br />
		<span id="leftFooterText"> 
			Opening Hours. Mon-Fri. 11:00 ~ 18:00. Closed, Sat Sun Holidays<br />
			Bank Info. 신한은행 1234-1234-1234. Account Holder : 김룩앳
		</span>
	</div>
	<div id="rightFooterContainer">
		<span id="rightFooterText">
			이지상 leejisang314@naver.com<br />
			윤진주 jjyoun48@gmail.com<br />
			윤세한 yunshll@naver.com<br />
			조재익 wowodlr21@gmail.com<br />	
		</span>
	</div>
</footer>
</body>
</html>