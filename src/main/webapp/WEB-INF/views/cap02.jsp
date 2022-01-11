<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>recaptcha</title>
    <script src="https://www.google.com/recaptcha/api.js" async defer></script>
    <!-- async defer 스크립트 실행 시점 설정 (html을 다 읽고 실행) -->
    <script>
        function onSubmit() {
            //'나는 로봇이 아닙니다' 클릭여부 확인
            if(grecaptcha.getResponse().length==0) {
                alert('recaptcha를 클릭하세요!');
                return;
            }else{
                document.getElementById('frm').method='post';
                document.getElementById('g-recaptcha').value=grecaptcha.getResponse();
                document.getElementById('frm').submit();
            }
        }
    </script>
</head>
<body>
<h1>recaptcha</h1>
<form name="loginfrm" id="frm">
    <div>아이디<input type="text" name="uid" id="uid"/></div>
    <div>비밀번호<input type="password" name="pwd" id="pwd"/></div>
    <div>아이디<button type="button" onclick="onSubmit()">로그인</button></div>
    <div class="g-recaptcha" data-sitekey="6Lfd8fYdAAAAANHx-j0vQAZT7uz16wBCGhTuEAxW"></div>
<%--                                                    리캡챠 사이트키 복붙--%>
    <input type="hidden" id="g-recaptcha" name="g-recaptcha">

</form>
</body>
</html>
