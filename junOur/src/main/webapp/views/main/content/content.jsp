<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
 <%@ include file="../top_bottom/header.jsp" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<%
    int no = Integer.parseInt(request.getParameter("no"));
%>
 <style>
		body{
			background: #807979;
			background-image: url("/static/content/allimg.jpg");
			
		}

        ul {
            list-style: none;
        }

        .wrap {
        	margin: 0 auto;
            display: flex;
            background: grey;
            width:965px;
            border:6px solid #242424;
            border-radius:25px;
        }

        .content {
            margin-right: 20px;
        }
        
        /* 진행 */
        .a {
            width: 390px;
            height: 440px;
            background: #fff;
            border-bottom: 20px solid #4a4747;
            border-radius:25px;
            padding: 30px;
        }

        /* 소개 */
        .b {
            width: 390px;
            height: 440px;
            background: #fff;
            border-bottom: 20px solid #4a4747;
            border-radius:25px;
            /* 간격 */
            padding: 30px;
        }

        /* 경기장 정보 */
        .c {
            width: 450px;
            height: 260px;
            background: #fff;
            border-bottom: 20px solid #4a4747;
            border-radius:25px;
            padding-top: 20px;
            
        
        }
        .cimg{
        	margin-left: 80px;
        }

        /* 예약 하기 */
        .d {
            float: right;
            width: 450px;
            height: 350px;
            background: #fff;
            border-radius:25px;
            padding: 25px;
            position: sticky;
 		    top: 0; /* 화면 상단에 고정되도록 설정 */
            z-index: 1; /* 다른 내용 위에 나타나도록 z-index 설정 */
        }

        .d > ul > li:first-child {
            font-weight: bold;
        }

        .d > ul > li:nth-child(2) {
            font-size: 22px;
            margin: 10px 0;
        }

        .d img {
            width: 16px;
        }
        
        .e {
            width: 390px;
            height: 440px;
            background: #fff;
            border-bottom: 20px solid #4a4747;
            border-radius:25px;
            /* 간격 */
            padding: 30px;
        }
        

        .address {
        padding:0;
            display: flex;
        }

        .address li {
        	
            margin-right: 10px;
        }


        .data {
        padding:0;
            display: flex;
            margin: 10px 0;
        }

        .data li {
            margin-right: 20px;
        }

        .price {
            border-top: 1px solid #000;
            margin: 20px 0;
            padding-top: 20px;
        }

        .price li:first-child {
            font-size: 18px;
            font-weight: bold;
        }
        .price li:last-child {
            font-size: 12px;
            color: rgb(255, 77, 55);
            margin-top: 20px;
        }
        
        .btn2 {
            width: 100px;
            height: 50px;
            line-height: 50px;
            border-radius: 10px;
            background: #1570FF;
            color: #fff;
            text-align: center;
            float: right;
            margin-top: 30px;
        }
 

     /* 여기서부터 레이어 */
  #modal{
    width:100%;
    height:2500px;
    position:absolute;
    left:0;
    top:0;
    background:rgba(0,0,0,0.5); 
    z-index:11; 
    display:none; 
}
#modal.active{
    display:block;
}
.modal_up{   /*레이어 팝업창 스타일*/
   width:450px;
   height:350px;
   position:fixed;
   left:50%; 
    transform: translateX(-50%);
   top:25%; 
   background-color:#ffffff;
   z-index:10;
}
.uptitle{
   margin-top:30px;
   text-align:center; 
   line-height:16px; 
   font-size:20px; 
   font-weight:bold;
}
.upbody{
   padding:30px;
   text-align:center;
   font-size:16px;
   line-height:30px; 
}
.btn{
   width:80px;
   height:20px;
   display:block;
   text-align:center;
   font-size:15px;
   font-weight:bold;
   background:#cccccc;
   position:absolute; 
   left:10px;
   bottom:10px;
}
.btndong{
	width:80px;
	height:20px;
	display:block;
	text-align:center;
	font-size:15px;
	font-weight:bold;
	background:#cccccc;
	position:absolute; 
	right:10px;
	bottom:10px;
}
.ab{
   margin-left : 130px;
   height:20px;
   line-height: 20px;
   position: absolute;
   bottom:10px;
}
#mainimg {
	width: 965px;
	height: 300px;
    margin:20px auto; 
    border:6px solid #242424;
    border-radius:25px;
}

#mainimg img {
    width: 965px;
    height: 300px;
    border-radius:25px;

    
}
#allimg {
	display:flex;
}

  </style>
   <script>
  function addjjim(src)
  {
  	//alert(src.indexOf("full.png"));
  	  if (src.indexOf("empty.png") == -1)  
  	  {
    	var url = "deljjim?no=${no}";
    	var img = "/static/content/empty.png";
  	  } 
  	  else 
  	  {
   		 var url = "addjjim?no=${no}";
   	  	 var img = "/static/content/full.png";
 	  }

  console.log("URL:", url); // URL이 정확한지 확인
  console.log("Image Path:", img); // 이미지 경로가 정확한지 확인
      //alert(url);
  	 
  	var chk=new XMLHttpRequest();
      chk.onload=function()
      {
      	//alert(chk.responseText);
      	if(chk.responseText=="1")
      		alert("잘못된 동작이 발생했습니다");
      	else if(chk.responseText=="0")
      		   document.getElementById("jjim").src=img;
      	else if(chk.responseText=="2")
      		   location="../member/login?no=${no}";
      }
      chk.open("get",url);
      chk.send();
       
  }
  </script>
</head>
<body>
	<div id="mainimg">
       <img src="/static/content/${contentDetail.img}" alt="Image">
    </div>
  <div class="wrap">
  	
        <div class="content">
            <div class="a">
            <div  align="center"><h2>진행방식</h2></div>
            	${contentDetail.jinhang}
            </div>
            <div class="b">
            <div  align="center"><h2>소개</h2></div>
            	${contentDetail.sogae}
            </div>
             <div class="e">
             <div  align="center"><h2>규칙</h2></div>
             	${contentDetail.rule}
             </div>
            <div class="c">
            <div  align="center"><h2>정보</h2></div>
            	<span class="cimg"><img src="/static/content/car.png" width="40" height="40" valign="middle"> 무료주차	 &nbsp; &nbsp; &nbsp; <img src="/static/content/gender.png" width="40" height="40" valign="middle" style="margin-bottom: 40px"> 성별무관 <p></span>
            	<span class="cimg"><img src="/static/content/inwon.png" width="40" height="40" valign="middle"> ${contentDetail.inwon} 명  &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp;<img src="/static/content/toil.png" width="40" height="40" valign="middle"> 남/녀 화장실	<p></span>
            	<span class="cimg"></span>
            </div>           
        </div><!--content-->
        <div class="d">
            <ul>
                <li>${contentDetail.rsdate} ${contentDetail.rstime}</li>
                <li>${contentDetail.title}</li>
                <li>
                    <ul class="address">
                        <li>${contentDetail.address}</li>
                    </ul>
                </li>
                <li>
                    <ul class="data">
                        <li><img src="/static/content/${img}" id="jjim"  onclick="addjjim(this.src)" valign="middle"></li>
                    </ul>
                </li>
                <li>
                    <ul class="price">
                     
                        
                    </ul>
                </li>
                
                <li class="btn2">신청하기</li>
            </ul>
        </div>
       		
    </div><!--wrap -->

    <div id="modal"> <!-- <!— 레이어 팝업창 영역 —> -->
  	<div class="modal_up">
    <div class="uptitle">※신청하기 전 주의사항※</div>
    <div class="upbody">
    저희 모션메이트에서는 아무런 금전적 보상을
    취하지 않고 장소를 대여해주는 사이트 입니다.
    따라서 사용자의 부주의로 인한 불이익은 해당 사이트에서
    아무런 보상을 해 줄 수 없음을 안내 드립니다. 또한
    잦은 취소신청 또한 사이트 이용제한이 발생할 수 있음을 안내드리며
    오늘도 저희 모션메이트를 이용해 주셔서 감사합니다.
    </div>
    <div class="btn">닫기</div><div style="color:red; font-size:14px;" class="ab">주의사항을 모두 읽고 닫아 주세요.</div>
   <div class="btndong" onclick="redirectToCorrectPage()">동의하기</div>
  </div>
</div> 
 
  <script src="https://code.jquery.com/jquery-3.4.1.js"></script>
<script>
$(".btn2").click(function () {
    var btn = document.querySelector(".btn2");
    var currentDate = getCurrentDate();
    var rsDate = "${contentDetail.rsdate}"; // rsdate 변수를 가져오세요 (예: "2023-12-31" 형식)

    // 현재 날짜와 rsdate를 비교
    if (currentDate > rsDate) {
      // 만료된 경우 아무 동작도 하지 않도록 중단
      return false;
    }

    // 아직 유효한 경우 레이어 팝업 열기
    $("#modal").addClass("active");
  });

  $(".btn").click(function () {
    $("#modal").removeClass("active");
  });

  function redirectToCorrectPage() {
    var userId = "${sessionScope.userid}";
    if (userId) {
      window.location.href = "pwdAgree";
    } else {
      window.location.href = "../../member/login";
    }
  }

  function getCurrentDate() {
    var today = new Date();
    var dd = String(today.getDate()).padStart(2, '0');
    var mm = String(today.getMonth() + 1).padStart(2, '0'); // January is 0!
    var yyyy = today.getFullYear();
    return yyyy + '-' + mm + '-' + dd;
  }

  // 페이지 로드 시 버튼 상태를 업데이트
  window.addEventListener("load", updateButtonStatus);

  function updateButtonStatus() {
    var currentDate = getCurrentDate();
    var rsDate = "${contentDetail.rsdate}"; // rsdate 변수를 가져오세요 (예: "2023-12-31" 형식)

    // 현재 날짜와 rsdate를 비교
    if (currentDate > rsDate) {
      // 만료된 경우 버튼을 비활성화하고 스타일 변경
      var btn = document.querySelector(".btn2");
      btn.disabled = true;
      btn.textContent = "만료됨";
      btn.style.backgroundColor = "gray"; // 배경색 회색으로 변경
      btn.style.color = "white"; // 글자색 흰색으로 변경
      btn.style.cursor = "not-allowed"; // 클릭 비활성화
    }
  }
</script>
     <div id="qna">

     </div>

</body>
</html>
<%@ include file="../top_bottom/footer.jsp" %>