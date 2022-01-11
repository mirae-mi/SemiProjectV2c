<%@ page pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<header class="row">
    <div class="col">
        <h1>Lorem Ipsum</h1>
    </div>
    <div class="col text-right">
        <h1>
            <c:if test="${empty sessionScope.uid}">
                <button type="button" class="btn btn-danger" data-toggle="modal" data-target="#loginmodal">로그인</button>
                <button type="button" class="btn btn-primary">회원가입</button>
            </c:if>
            <c:if test="${not empty sessionScope.uid}">
                <button type="button" class="btn btn-dark" id="logoutbtn" name="logoutbtn">로그아웃</button>
            </c:if>
            </h1><!-- h1은 위 여백 주려고 -->
    </div>
</header>

<nav class="nav navbar-expand navbar-dark bg-dark">
    <ul class="navbar-nav nav-fill w-100"><!-- w=witdh -->
        <li class="nav-item"><a class="nav-link" href="/intro">프로젝트 소개</a></li>
        <li class="nav-item"><a class="nav-link" href="/join/agree">회원가입</a></li>
        <li class="nav-item"><a class="nav-link" href="/board/list">게시판</a></li>
        <li class="nav-item"><a class="nav-link" href="/pds/list">자료실</a></li>
        <li class="nav-item"><a class="nav-link" href="/gallery/list">갤러리</a></li>
        <li class="nav-item"><a class="nav-link" href="/admin">관리자</a></li>
    </ul>
</nav>
