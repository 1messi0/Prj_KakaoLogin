<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglibprefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="icon" type="image/x-icon" href="/img/favicon.ico">
<title>카카오 로그인 연동</title>
</head>
<body>
<div>
    <h1>카카오 로그인 연습</h1>
    <a href="javascript:kakaoLogin()"><img src="resources/img/kakao1.png" style="width: 200px"></a>
    
	<script type="text/javascript" src="https://developers.kakao.com/sdk/js/kakao.js"></script>
	<script type="text/javascript">
	    Kakao.init('2018aba68a862de1abac7146f97b0e2e');
	    function kakaoLogin() {
	        Kakao.Auth.login({
	            success: function (response) {
	                Kakao.API.request({
	                    url: '/v2/user/me',
	                    success: function (response) {
	                        alert(JSON.stringify(response))
	                    },
	                    fail: function (error) {
	                        alert(JSON.stringify(error))
	                    },
	                })
	            },
	            fail: function (error) {
	                alert(JSON.stringify(error))
	            },
	        })
	    }
	</script>    
    
</div>	
</body>
</html>