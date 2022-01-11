<%@ page pageEncoding="UTF-8"%>

<script>
    // 이용약관/개인정보이용 동의 확인
    function agreecheck() {
        let agree1 = document.getElementById('agree1');
        let agree2 = document.getElementById('agree2');

        if (!agree1.checked) alert("이용약관에 동의하세요!");
        else if (!agree2.checked) alert("개인정보 이용에 동의하세요!");
        else location.href = '/join/checkme';
    }

    try{
        let okagree=document.getElementById('okagree');
        okagree.addEventListener('click',agreecheck)
    }catch (e) {//예외가 발생해도 실행 중지되지 않도록
        //alert("agreecheck()에서 에러발생!!")
    }
    function realcheck(){
        let name2=document.getElementById('name2');
        let jumin1=document.getElementById('jumin1');
        let jumin2=document.getElementById('jumin2');
        let usejm=document.getElementById('usejm');

        if(name2.value=="") alert("이름을 입력하세요!");
        else if(jumin1.value==""||jumin2.value=="") alert("주민번호를 입력하세요!");
        else if(!usejm.checked) alert("주민번호 처리에 동의해주세요!");
        else {
            //질의 문자열 생성
            let params='?nm=' + name2.value;
            params += '&jm1='+jumin1.value;
            params += '&jm2='+jumin2.value;
            location.href='/join/joinme'+params;
        }

    }
    /*
    try {
        let check2btn = document.getElementById('check2btn');
        check2btn.addEventListener('click', realcheck);
    }catch(e){}
    */

    //문서 내 특정 요소 선택 후 액션 지정: $(선택자).함수명
    $('#check2btn').on('click', function(){realcheck();});//예외처리도 기본적으로 된다


    //아이디 중복체크
    $('#userid').on('blur', function(){checkuid();});//focus를 잃었을 때

    function checkuid(){
        let uid=$('#userid').val().trim();//trim(): 공백 제거
        if(uid=='') {
            alert('아이디를 입력하세요!');
            return;//함수 실행 중단
        }
        $.ajax({
            //  /join/checkuid?uid=xxxx
            url:'/join/checkuid',   // 비동기 요청 주소
            type: 'GET',            // 비동기 요청 방식 , get은 주소창 ? 와 같다
            data: {uid: uid}        //비동기 요청시 사용할 데이터
        }) //비동기 요청
        .done(function(data){//data에 0인지 1인지 데이터 받아서 저장
            let msg='사용불가 아이디 입니다!';
            if(data.trim()=='0'){
                msg='사용가능 아이디 입니다!';
                $('#uidmsg').attr('style','color:blue');
            }else{
                $('#uidmsg').attr('style','color:red');
            }
            $('#uidmsg').text(msg);
        })  //비동기 요청 성공시
        .fail(function(xhr,status,error){
            alert(xhr.status+'/'+error);
        }); //비동기 요청 실패시

    }

    //비밀번호 일치 여부 확인
    $('#repwd').on('blur', function(){checkpwd();});

    function checkpwd(){
        let pwd=$('#passwd').val();
        let repwd=$('#repwd').val();
        let msg='비밀번호가 일치하지 않습니다!';
        if(pwd==repwd){
            msg='비밀번호가 일치합니다!';
            $('#pwdmsg').attr('style', 'color: blue');
        }else{
            $('#pwdmsg').attr('style', 'color: red');
        }
        $('#pwdmsg').text(msg);
    }

    //우편번호 검색
    $('#findbtn').on('click',function(){findZipcode()});

    function findZipcode(){
        $.ajax({
            //  join/findZipcode?dong=구로1동
            url: '/join/findZipcode',
            type: 'GET',
            data: {dong: $('#dong').val()}
        })
        .done(function(data){
            // 서버로 넘어온 데이터는 JSON형식이므로
            // 출력시 Object로 보여짐
            // alert(data);
            let opts='';
            $.each(data,function(){//행단위 반복처리
                let zip='';
                $.each(this,function(k,v){//열단위 반복처리
                    if(v!=null) zip += v + ' ';
                });
                opts += '<option>'+zip + '</option>';
            });
            //기존 option태그들 제거
            $('#addrlist').find('option').remove();//옵션태그 붙은 데이터 제거
            //새로운 option태그들 추가
            $('#addrlist').append(opts);
        })
        .fail(function(xhr,status,error){
            alert(xhr.status+"/"+error);
        });

    }

    // 주소선택하고 닫기
    $('#sendbtn').on('click',function(){sendzip();});

    function sendzip(){
        let addr=$('#addrlist option:selected').val();

        //주소를 선택하지 않고 버튼을 클릭하는 경우
        if(addr==undefined){
            alert('주소를 선택하세요!');
            return;
        }

        //선택한 주소를 공백으로 나눔
        let addrs=addr.split(' ');

        //나눠진 주소를 지정한 위치로 보냄
        //우편번호는 '-'로 분리해서 zip1,zip2로 보냄
        $('#zip1').val(addrs[0].split('-')[0]);
        $('#zip2').val(addrs[0].split('-')[1]);

        //동까지 addr1로 보냄
        let addr1=addrs[1]+" "+addrs[2]+" "+addrs[3];
        $('#addr1').val(addr1);

        //기존 검색결과 제거
        $('#dong').val('');
        $('#addrlist').find('option').remove();

        //우편번호 검색창 닫기 (부트스트랩)
        $('#zipmodal').modal('hide');
    }

    //이메일 도메인주소 선택
    //선택한 객체.val()  : 태그의 value 속성값을 의미
    //선택한 객체.text() : 태그 사이의 문자열을 의미
    $('#email3').on('change',function(){//따로 함수 만들기 않고 바로 처리
        //선택한 이메일 도메인을 알아냄
        let val=$('#email3 option:selected').text();
        if(val=='직접 입력하기'){
            $('#email2').attr('readonly',false); //readonly 속성 해제
            $('#email2').val('');
        }else {
            $('#email2').attr('readonly',true);
            $('#email2').val(val);
        }
    })

    //가입하기 버튼
    $('#joinbtn').on('click',function(){processJoin();});

    function processJoin(){
        if($('#name').val()==''||$('#jumin1').val()==''||$('#jumin2').val()==''){
            alert('정상적인 과정으로 회원가입을 진행하세요!');
        }else if($('#userid').val()=='') alert('아이디를 입력하세요!');
         else if($('#passwd').val()==''||$('#repwd').val()=='') alert('비밀번호를 입력하세요!');
         else if($('#zip1').val()==''||$('#zip2').val()=='') alert ('우편번호를 검색하세요!');
         else if($('#addr1').val()==''||$('#addr2').val()=='') alert('상세주소를 입력하세요!');
         else if($('#email1').val()==''||$('#email2').val()=='') alert('이메일을 입력하세요!');
         else if($('#tel1').val()==''||$('#tel2').val()==''||$('#tel3').val()=='') alert('전화번호를 입력하세요!');
         else if($('#passwd').val()==''!=$('#repwd').val()=='') alert('비밀번호가 서로 일치하지 않습니다!');
         else if(grecaptcha.getResponse().length==0) alert('자동가입방지 확인하세요!');
         else{
            $('#g-recaptcha').val(grecaptcha.getResponse());
            $('#zipcode').val($('#zip1').val()+'-'+$('#zip2').val());
            $('#email').val($('#email1').val()+'@'+$('#email2').val());
            $('#tel').val($('#tel1').val()+'-'+$('#tel2').val()+'-'+$('#tel3').val());
            $('#joinfrm').attr('method','post');
            $('#joinfrm').submit();
        }
    }
</script>