<%@ page pageEncoding="UTF-8"%>

        <div id="main">
            <div class="mt25">
                <h2><i class="bi bi-chat-text-fill"></i>자유 게시판</h2>
                <hr>
            </div>
            
       
            <div class="row mt25">
                <div class="col"></div>
                <div class="col-5">
                    <button type="button" class="btn btn-light"><i class="bi bi-chevron-left"></i> 이전으로</button>
                    <button type="button" class="btn btn-light">다음으로 <i class="bi bi-chevron-right"></i></button>
                </div>
                <div class="col-5 text-right">
                    <button type="button" class="btn btn-light"><i class="bi bi-plus-circle-fill"></i>새글쓰기</button>
                </div>
                <div class="col"></div>
            </div>


            <div class="row mt25">
                <div class="col"></div>
                <div class="col-10">
                    <table class="table table">
                        <tbody>
                            <tr>
                                <td colspan="2" class="vhead" style="padding: 45px 0"><h3>Praesent quis magna vitae nuncmalesuada tempor a pretium metus.</h3></td><!-- 제목 -->
                            </tr>
                            <tr class="bg1">
                                <td>bigdata</td>
                                <td class="text-right">2021.01.01 12:12:12 / 123 / 999</td>
                            </tr><!-- 작성자, 작성일, 조회수 -->
                            <tr>
                                <td colspan="2" class="vhead2" style="height: 550px">
                                    Curabitur ac eros laoreet, euismod sapien non, iaculis magna. Maecenas est massa, scelerisque id porta vel, iaculis eget magna. Ut vel libero at ante fermentum accumsan ut ac elit. In et posuere lacus, vel congue ligula. Nunc laoreet rhoncus tortor quis facilisis. Nunc sed euismod dolor. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Sed metus ipsum, blandit eget ante ut, finibus pretium nisl.
                                    Curabitur ac eros laoreet, euismod sapien non, iaculis magna. Maecenas est massa, scelerisque id porta vel, iaculis eget magna. Ut vel libero at ante fermentum accumsan ut ac elit. In et posuere lacus, vel congue ligula. Nunc laoreet rhoncus tortor quis facilisis. Nunc sed euismod dolor. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Sed metus ipsum, blandit eget ante ut, finibus pretium nisl.
                                </td>
                                <td></td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <div class="col"></div>
            </div><!-- 본문 -->


            <div class="row mt25">
                <div class="col"></div>
                <div class="col-5">
                    <button type="button" class="btn btn-warning text-white"><i class="bi bi-pencil-square"></i> 수정하기</button>
                    <button type="button" class="btn btn-danger"><i class="bi bi-x-circle-fill"></i> 삭제하기</button>
                </div>

                <div class="row"></div>

                <div class="col-5 text-right">
                    <button type="button" class="btn btn-light"><i class="bi bi-list-ul"></i> 목록으로</button>
                </div>
                <div class="col"></div>
            </div><!-- 버튼 -->


            <div class="row mt25">
                <div class="col"></div>
                <div class="col-10">
                    <h3><i class="bi bi-chat-quote-fill"></i> 나도 한마디</h3>
                    <table class="table rhead">
                        <tr>
                            <td class="cmtwd"><h4>spring</h4></td><!-- 작성자 -->
                            <td>
                                <div class="cmtbg">2021.12.31 12:13:14</div>
                                <p style="cmt">Donec varius arcu sed orci ultrices bibendum. Aliquam vitae mi augue. Nulla facilisi. Nullam at felis dictum, posuere tellus rhoncus, molestie nulla. Donec auctor commodo tempor. Aenean posuere urna at metus cursus, et vehicula libero lacinia. Vestibulum lectus nisl, finibus eu aliquet dictum, finibus id lacus. Nullam interdum fringilla dui a malesuada. Suspendisse placerat ultrices tellus. Mauris finibus purus eget sagittis rhoncus.</p>

                                <ul class="rply">
                                    <li>
                                        <div class="rplybg">
                                            <span><b>bootstrap</b></span>
                                            <span style="float:right">2021-12-31 13:13:14</span>
                                        </div>
                                        <p class="cmt">정말인가요? 우와~ 심하다~!</p>
                                    </li>
                                </ul><!-- 대댓글 -->
                            </td>
                        </tr>
                        <tr>
                            <td class="cmtwd"><h4>spring</h4></td><!-- 작성자 -->
                            <td>
                                <div class="cmtbg">2021.12.31 12:13:14</div>
                                <p style="cmt">Donec varius arcu sed orci ultrices bibendum. Aliquam vitae mi augue. Nulla facilisi. Nullam at felis dictum, posuere tellus rhoncus, molestie nulla. Donec auctor commodo tempor. Aenean posuere urna at metus cursus, et vehicula libero lacinia. Vestibulum lectus nisl, finibus eu aliquet dictum, finibus id lacus. Nullam interdum fringilla dui a malesuada. Suspendisse placerat ultrices tellus. Mauris finibus purus eget sagittis rhoncus.</p>
                            </td>
                        </tr>
                        <tr>
                            <td class="cmtwd"><h4>spring</h4></td><!-- 작성자 -->
                            <td>
                                <div class="cmtbg">2021.12.31 12:13:14</div>
                                <p style="cmt">Donec varius arcu sed orci ultrices bibendum. Aliquam vitae mi augue. Nulla facilisi. Nullam at felis dictum, posuere tellus rhoncus, molestie nulla. Donec auctor commodo tempor. Aenean posuere urna at metus cursus, et vehicula libero lacinia. Vestibulum lectus nisl, finibus eu aliquet dictum, finibus id lacus. Nullam interdum fringilla dui a malesuada. Suspendisse placerat ultrices tellus. Mauris finibus purus eget sagittis rhoncus.</p>

                                <ul class="rply">
                                    <li>
                                        <div class="rplybg">
                                            <span><b>bootstrap</b></span>
                                            <span style="float:right">2021-12-31 13:13:14</span>
                                        </div>
                                        <p class="cmt">정말인가요? 우와~ 심하다~!</p>
                                    </li>
                                </ul><!-- 대댓글 -->
                            </td>
                        </tr>
                    </table>
                </div>
                <div class="col"></div>
            </div>

            <div class="row mtb25">
                <div class="col"></div>
                <div class="col-10 card card-body bg-light">
                    <form name="cmtfrm" id="cmtfrm">
                        <div class="form-group row">
                            <label style="margin: auto">로그인하세요</label>
                            <textarea rows="7" class="form-control col-7" style="margin-bottom: -15px"></textarea>
                            <button type="button" class="btn btn-dark" style="margin: auto">댓글쓰기</button>
                        </div>
                    </form>
                </div>
                <div class="col"></div>
            </div><!-- 댓글 쓰기-->

        </div><!-- main -->
        
