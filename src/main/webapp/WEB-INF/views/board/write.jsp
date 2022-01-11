<%@ page pageEncoding="UTF-8"%>

        <div id="main">
            <div class="mt25">
                <h2><i class="bi bi-chat-text-fill"></i>자유 게시판</h2>
                <hr>
            </div>
            
            <div class="row mt25">
                <div class="col"></div>
                <div class="col-5">
                    <h3><i class="bi bi-plus-circle-fill"></i> 새글 쓰기</h3>
                </div>
                <div class="col-5 text-right">
                    <button type="button" class="btn btn-light"><i class="bi bi-list-ul"></i> 목록으로</button>
                </div>
                <div class="col"></div>
            </div>
            
            <div class="row">
                <div class="col"></div>
                <div class="col-10 card card-body bg-light text-danger mtb25">
                    <div class="form-group row ">
                        <lable for="title" class="col-form-label col-2 text-right">제목</lable>
                        <input type="text" name="title" id="title" class="form-control col-9  border-danger">
                    </div>
                    <div class="form-group row">
                        <lable for="title" class="col-form-label col-2 text-right">본문내용</lable>
                        <textarea name="contents" id="contents" class="form-control col-9 border-danger" rows="15"></textarea>
                        <!-- textarea말고 editor형으로 더 예쁘게 작성 가능. 오픈소스 구글링 해보기 -->
                    </div>
                    <div class="">
                        <lable for="captcha" class="col-form-label col-2 text-right">자동입력방지</lable>
                        <img src="../imgs/google_recaptcha.gif" width="45%" class="mm5">
                    </div>
                    <hr>
                    <div class="row justify-content-center mtb25">
                       <!--<div class="col-12 text-center">-->
                            <button type="button" class="btn btn-primary"><i class="fa fa-check"></i>입력완료</button>&nbsp;
                            <button type="button" class="btn btn-danger"><i class="fa fa-remove"></i>취소하기</button>
                        <!--</div>-->
                    </div>
                </div>
                <div class="col"></div>
            </div>

        </div><!-- main -->
        
