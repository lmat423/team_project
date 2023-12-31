<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>모션 메이트</title> 



<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-mousewheel/3.1.13/jquery.mousewheel.min.js"></script>

  <link href="https://fonts.googleapis.com/css2?family=Pacifico&display=swap" rel="stylesheet">
  <!-- Slick CSS -->
    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick.min.css"/>
    <!-- Optional theme -->
    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick-theme.min.css"/>
  
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">
  
  <style>
  
 @font-face {
    font-family: 'Pretendard-Regular';
    src: url('https://cdn.jsdelivr.net/gh/Project-Noonnu/noonfonts_2107@1.1/Pretendard-Regular.woff') format('woff');
    font-weight: 400;
    font-style: normal;
}
   
    body {
    font-family:  'Pretendard-Regular', sans-serif;
    margin: 0;
    padding: 0;
    justify-content: center;
    align-items: center;
    min-height: 100vh;
    background-color: #f4f4f4;
    background-size: cover;
	background-position: center;
	overflow-x: hidden;
     
  
 
}
#myVideo {
    position: fixed;
    right: 0;
    bottom: 0;
    min-width: 100%;
    min-height: 100%;
    z-index: -1; /* 다른 내용 위에 영상이 나타나지 않도록 */
}

.sports-slider-wrapper  {
   text-align:center;
   height:calc(100vh - 172px);
   background-color: #333;
   display:flex;
   justifi-content:center;
   align-items:end;
   padding-bottom:40px;
   box-sizing:border-box;
   background-image: url("/static/content/jogging-4211946_1920.jpg");
   background-position:bottom;
   background-size: cover; /* 배경 이미지 크기 조정을 추가합니다. */
   transition: transform 0.5s;
   transform: scale(0.3);
}



      
.sports-grid {
    
    width: 100%;         
    box-sizing: border-box;
     display: inline-block;
    grid-template-columns: repeat(12, 1fr);
    grid-gap: 10px;
    margin: 0 auto;
   
   
}

.sport-item {

    background-color: transparent;
    padding: 20px;
    text-align: center;
    opacity:0.9;
   
    transition: transform 0.2s ease-in-out;
     position: relative;
     z-index: -1;
     
    
    
    
}

.sport-item a {

    display: block;
    position: relative;
    
    
}



@keyframes waveEffect {
    0% {
        height: 0%;
    }
    25% {
        height: 40%;
    }
    50% {
        height: 70%;
    }
    75% {
        height: 85%;
    }
    100% {
        height: 100%;
    }
}


.sport-item.special-effect {
    
    /* 기본 배경색은 흰색 */
    transition: background-color 0.5s ease-in-out; /* 배경색이 부드럽게 변하도록 설정 */
    overflow: hidden;
    
}


.sport-item.special-effect a::before {
     
    content: "";
    position: absolute;
    width: 87%;
    height: 87%;
    left: 50%;
    top: 50%;
    transform: translate(-50%, -50%);
    /* radial 그라데이션 사용 */
     background: radial-gradient(circle, white, #C6C6C6);
    background-size: 100% 0%;
    background-repeat: no-repeat;
    background-position: bottom;
    opacity: 1;
    transition: opacity 0.5s, background-size 0.5s ease-in-out;
    border-radius: 50%;  
    z-index: -1;
    /* 입체감을 높이기 위한 그림자 추가 */
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.3);
 
}


.sport-item.special-effect:hover a::before {
    opacity: 0.7;
    background-size: 100% 100%; /* 호버 시 100% 높이로 채우기 */
  
    
}

.sport-item.special-effect:hover {
    transform: scale(1.05);
    
}
.sport-item.special-effect:hover::before {
  animation: waveEffect 0.5s forwards; 
}



 .notice-weather {
        display: flex;
        justify-content: space-between;
        width:100%;
        height: calc(100vh - 150px);
        margin: 0 auto;
        padding: 0px;
        background-image: url("/static/content/friendship.jpg");
        background-size: cover;
	    background-position: center;
	   
    }
    
    #notice {
     padding-top:20px;
     font-size:20px;
      
    }
   #notice a {
  text-decoration: none; /* 밑줄 제거 */
  color: white; /* 링크 색상을 부모 요소로 상속 */
}

   
    
    .nbsp {
      flex:2.5;
    }
    

    .weather {
        background-color: rgba(40, 40, 40, 0.8);;
        padding: 0px; 
        flex: 1;
        margin-left: 300px;
        font-size:18px;
        height:814px;
        white-space: nowrap;
        overflow: hidden;     
        text-overflow: ellipsis; 
    }

   .hugi {
        background-color: #fff;
        padding: 20px;
        border: 1px solid #ccc;
        max-width: 800px;
        margin: 0 auto;
        text-align: center;
    }
    
      .M_photo {
        background-color: #fff;
        padding: 20px;
        border: 1px solid #ccc;
        max-width: 800px;
        margin: 0 auto;
        text-align: center;
    }
    
 

    .photo-grid {
        display: grid;
        grid-template-columns: repeat(2, 1fr);
        grid-gap: 10px;
        max-width: 800px;
        margin: 0 auto;
        padding: 20px;
        
        
    }

    .photo-item {
        background-color: #f4f4f4;
        border: 1px solid #ccc;
        padding: 10px;
        text-align: center;
        box-shadow: 0px 2px 4px rgba(0, 0, 0, 0.1);
        position: relative;  
        overflow: hidden;    
        height: 400px;       
    }
   .photo-item img {
    width: 100%;           
    height: 100%;          
    object-fit: contain;   
    display: block;
    margin: 0 auto;
    }   

    a {
    	text-decoration: none;
    }

.sport-item img {
 max-width: 100%;
    width: 100%;       /* 이미지의 폭을 부모 요소의 100%로 설정 */
    height: auto;      /* 이미지의 높이를 원래 비율에 맞게 자동으로 설정 */
    display: block;    /* 이미지를 블록 요소로 설정 */
    margin: 0 auto;    /* 이미지를 가운데 정렬 */
     transition: filter 0.9s ease-in-out;
     
  
}
.sport-item .sport-label {
    position: absolute;
    top: 40%;       /* 원하는 위치에 맞게 조절하세요 */
    left: 50%;
    transform: translateX(-50%);
    opacity: 0;     /* 처음에는 투명하게 설정 */
    transition: opacity 0.5s ease-in-out;   /* 부드럽게 나타나게 하기 위한 트랜지션 */
    font-size: 38px; /* 글자 크기 조절 */
    font-weight: bold; /* 글씨를 굵게 만듭니다 */
    z-index: 1;     
    color: white; /* 글씨 색을 흰색으로 변경합니다 */
    text-shadow: 2px 2px 0px #000,   /* right, down */
                -2px -2px 0px #000,  /* left, up */
                2px -2px 0px #000,   /* right, up */
                -2px 2px 0px #000;  /* 글씨에 테두리 효과를 줍니다 */
                 white-space: nowrap;
                
}



 .sport-item.special-effect.soccer::before {
            background-color:  #D6F0FF; 
            z-index: -3;      
        }      
  .sport-item.special-effect.soccer a::before {   
     content: "";
    position: absolute;
    width: 91%;
    height: 91%;
    left: 50%;
    top: 50%;
    transform: translate(-50%, -50%);
    background: radial-gradient(circle, white, white);
    background-size: 100% 0%;
    background-repeat: no-repeat;
    background-position: bottom;
    opacity: 1;
    transition: opacity 0.5s, background-size 0.5s ease-in-out;
    border-radius: 50%;  
    z-index: -1;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.3); 
}
.sport-item.special-effect.soccer a::after {   
    content: "";
    position: absolute;
    width: 87%;
    height: 87%;
    left: 50%;
    top: 50%;
    transform: translate(-50%, -50%);
    background: radial-gradient(circle, white, black);
    border-radius: 50%;  
    z-index: -2;
    
}
.sport-item.special-effect.soccer:hover a::before {  
    background-size: 100% 100%; 
  
}






 .sport-item.special-effect.basketball::before {
            background-color:  #D6F0FF;   
             z-index: -3;     
        }      
  .sport-item.special-effect.basketball a::before {
     content: "";
    position: absolute;
    width: 98%;
    height: 98%;
    left: 50%;
    top: 50%;
    transform: translate(-50%, -50%);
     background: radial-gradient(circle, white, white);
    background-size: 100% 0%;
    background-repeat: no-repeat;
    background-position: bottom;
    opacity: 1;
    transition: opacity 0.5s, background-size 0.5s ease-in-out;
    border-radius: 50%;  
    z-index: -1;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.3); 
}
.sport-item.special-effect.basketball a::after {   
    content: "";
    position: absolute;
    width: 90%;
    height: 90%;
    left: 50%;
    top: 50%;
    transform: translate(-50%, -50%);
    background: radial-gradient(circle, white, black);
    border-radius: 50%;  
    z-index: -2;
}
.sport-item.special-effect.basketball:hover a::before {
    background-size: 100% 100%; 
}






 .sport-item.special-effect.volleyball::before {
            background-color:  #D6F0FF;    
            z-index: -3;    
        }
  .sport-item.special-effect.volleyball a::before {
     content: "";
    position: absolute;
    width: 97%;
    height: 97%;
    left: 50%;
    top: 50%;
    transform: translate(-50%, -50%);
    background: radial-gradient(circle, white, white);
    background-size: 100% 0%;
    background-repeat: no-repeat;
    background-position: bottom;
    opacity: 1;
    transition: opacity 0.5s, background-size 0.5s ease-in-out;
    border-radius: 50%;  
    z-index: -1;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.3); 
}
.sport-item.special-effect.volleyball a::after {   
    content: "";
    position: absolute;
    width: 88%;
    height: 88%;
    left: 50%;
    top: 50%;
    transform: translate(-50%, -50%);
    background: radial-gradient(circle,  #A1A1A1, #6B6B6B);
    border-radius: 50%;  
    z-index: -2;
}
.sport-item.special-effect.volleyball:hover a::before {
    background-size: 100% 100%; 
}





   .sport-item.special-effect.baseball::before {
            background-color:  #D6F0FF; 
            z-index: -3;      
        }      
  .sport-item.special-effect.baseball a::before {
     content: "";
    position: absolute;
    width: 97%;
    height: 97%;
    left: 50%;
    top: 50%;
    transform: translate(-50%, -50%);
     background: radial-gradient(circle, #C5C5C5, white);
    background-size: 100% 0%;
    background-repeat: no-repeat;
    background-position: bottom;
    opacity: 1;
    transition: opacity 0.5s, background-size 0.5s ease-in-out;
    border-radius: 50%;  
    z-index: -1;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.3); 
}
.sport-item.special-effect.baseball a::after {   
    content: "";
    position: absolute;
    width: 76%;
    height: 76%;
    left: 50%;
    top: 50%;
    transform: translate(-50%, -50%);
    background: radial-gradient(circle,  white, black);
    border-radius: 50%;  
    z-index: -2;
}
.sport-item.special-effect.baseball:hover a::before {
    background-size: 100% 100%; 
}






.sport-item.special-effect.dangu::before {
            background-color:  #D6F0FF;      
            z-index:-3; 
        }      
  .sport-item.special-effect.dangu a::before {
     content: "";
    position: absolute;
    width: 98%;
    height: 98%;
    left: 49%;
    top: 50%;
    transform: translate(-50%, -50%);
     background: radial-gradient(circle, white, white);
    background-size: 100% 0%;
    background-repeat: no-repeat;
    background-position: bottom;
    opacity: 1;
    transition: opacity 0.5s, background-size 0.5s ease-in-out;
    border-radius: 50%;  
    z-index: -1;
   
}
.sport-item.special-effect.dangu a::after {   
    content: "";
    position: absolute;
    width: 90%;
    height: 90%;
    left: 50%;
    top: 50%;
    transform: translate(-50%, -50%);
    background: radial-gradient(circle, white, #474747);
    border-radius: 50%;  
    z-index: -2;
}
.sport-item.special-effect.dangu:hover a::before {
   opacity: 1;
    background-size: 100% 100%; 
}








 .sport-item.special-effect.bowling::before {
            background-color:  #D6F0FF;  
            z-index: -3;     
        }      
  .sport-item.special-effect.bowling a::before {
     content: "";
    position: absolute;
    width: 98%;
    height: 98%;
    left: 50%;    
    top: 50%;
    transform: translate(-50%, -50%);
     background: radial-gradient(circle, white, white);
    background-size: 100% 0%;
    background-repeat: no-repeat;
    background-position: bottom;
    opacity: 1;
    transition: opacity 0.5s, background-size 0.5s ease-in-out;
    border-radius: 50%;  
    z-index: -1;
    /* 입체감을 높이기 위한 그림자 추가 */
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.3); 
}
.sport-item.special-effect.bowling a::after {   
    content: "";
    position: absolute;
    width: 90%;
    height: 90%;
    left: 50%;
    top: 50%;
    transform: translate(-50%, -50%);
    background: radial-gradient(circle, #5F00FF, #00006F);
    border-radius: 50%;  
    z-index: -2;
}
.sport-item.special-effect.bowling:hover a::before {
    background-size: 100% 100%; 
}






.sport-item.special-effect.golf::before {
            background-color:  #D6F0FF;      
            z-index:-3; 
        }      
  .sport-item.special-effect.golf a::before {
     content: "";
    position: absolute;  
    width: 98%;
    height: 98%;
    left: 50%;
    top: 50%;
    transform: translate(-50%, -50%);
    background: radial-gradient(circle, white, white);
    background-size: 100% 0%;
    background-repeat: no-repeat;
    background-position: bottom;
    opacity: 1;
    transition: opacity 0.5s, background-size 0.5s ease-in-out;
    border-radius: 50%;  
    z-index: -1;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.8); 
}
.sport-item.special-effect.golf a::after {   
    content: "";
    position: absolute;
    width: 55%;
    height: 55%;
    left: 50%;
    top: 50%;
    transform: translate(-50%, -50%);
    background: radial-gradient(circle at 30% 30%, #F3F3F3, #D0D0D0 70%, #BEBEBE);
    border-radius: 50%;  
    z-index: -2;
}
.sport-item.special-effect.golf:hover a::before {
   opacity: 1;
    background-size: 100% 100%; 
}








.sport-item.special-effect.tennis::before {
            background-color:  #D6F0FF;      
            z-index:-3; 
        }      
  .sport-item.special-effect.tennis a::before {
     content: "";
    position: absolute;
    width: 100%;
    height: 100%;
    left: 50%;
    top: 50%;
    transform: translate(-50%, -50%);
     background: radial-gradient(circle, white, white);
    background-size: 100% 0%;
    background-repeat: no-repeat;
    background-position: bottom;
    opacity: 1;
    transition: opacity 0.5s, background-size 0.5s ease-in-out;
    border-radius: 50%;  
    z-index: -1;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.8); 
}
.sport-item.special-effect.tennis a::after {   
    content: "";
    position: absolute;
    width: 93%;
    height: 93%;
    left: 50%;
    top: 50%;
    transform: translate(-50%, -50%);
    background: radial-gradient(circle, #D9C582, #FAED7D);
    border-radius: 50%;  
    z-index: -2;
}
.sport-item.special-effect.tennis:hover a::before {
   opacity: 1;
    background-size: 100% 100%; 
}



.sport-item.special-effect.swim::before {
            background-color:  #D6F0FF;      
            z-index:-3; 
        }      
  .sport-item.special-effect.swim a::before {
     content: "";
    position: absolute;
    width: 100%;    
    height: 100%;
    left: 50%;
    top: 50%;
    transform: translate(-50%, -50%);
     background: radial-gradient(circle, white, white);
   
    background-size: 100% 0%;
    background-repeat: no-repeat;
    background-position:center bottom;
    opacity: 1;
    transition: opacity 0.5s, background-size 0.5s ease-in-out;
    border-radius: 50%;  
    z-index: -1;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.8); 
}
.sport-item.special-effect.swim a::after {   
    content: "";
    position: absolute;
    width: 96%;
    height: 96%;
    left: 50%;
    top: 50%;
    transform: translate(-50%, -50%);
    background: radial-gradient(circle, white, #C6C6C6);
    border-radius: 50%;  
    z-index: -2;
}
.sport-item.special-effect.swim:hover a::before {
   opacity: 1;
    background-size: 100% 100%; 
}





.sport-item.special-effect.badmin::before {
    background-color:  #D6F0FF;      
    z-index:-3; 
}      
.sport-item.special-effect.badmin a::before {
    content: "";
    position: absolute;
    width: 0%;    
    height: 0%;
    left: 45%;     /* 중앙에서 시작하도록 조정 */
    top: 55%;   /* 중앙에서 시작하도록 조정 */
    background: linear-gradient(to top right, #E4F7BA, white);
    opacity: 1;
    transition: width 0.5s, height 0.5s ease-in-out;
    z-index: -1;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.8); 
}
.sport-item.special-effect.badmin a::after {   
    content: "";
    position: absolute;
    width: 100%;
    height: 100%;
    left: 45%;
    top: 55%;
    transform: translate(-50%, -50%);
    background: radial-gradient(circle, white, #C6C6C6);
    border-radius: 50%;  
    z-index: -2;
}
.sport-item.special-effect.badmin:hover a::before {
    width: 100%; 
   height: 100%;
}


.sport-item.special-effect.tacgu::before {
    background-color:  #D6F0FF;      
    z-index:-3; 
}      
.sport-item.special-effect.tacgu a::before {
    content: "";
    position: absolute;
    width: 0%;    
    height: 0%;
    left: 45%;     /* 중앙에서 시작하도록 조정 */
    top: 55%;   /* 중앙에서 시작하도록 조정 */
    background: linear-gradient(to top right, #E4F7BA, white);
    opacity: 1;
    transition: width 0.5s, height 0.5s ease-in-out;
    z-index: -1;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.8); 
}
.sport-item.special-effect.tacgu a::after {   
    content: "";
    position: absolute;
    width: 100%;
    height: 100%;
    left: 45%;
    top: 55%;
    transform: translate(-50%, -50%);
    background: radial-gradient(circle, white, #C6C6C6);
    border-radius: 50%;  
    z-index: -2;
}
.sport-item.special-effect.tacgu:hover a::before {
    width: 100%; 
   height: 100%;
   
   
}


 .sport-item.special-effect.joggu::before {
            background-color:  #D6F0FF; 
            z-index: -3;      
        }      
  .sport-item.special-effect.joggu a::before {   
     content: "";
    position: absolute;
    width: 97%;
    height: 97%;
    left: 50%;
    top: 50%;
    transform: translate(-50%, -50%);
    background: radial-gradient(circle, white, white);
    background-size: 100% 0%;
    background-repeat: no-repeat;
    background-position: bottom;
    opacity: 1;
    transition: opacity 0.5s, background-size 0.5s ease-in-out;
    border-radius: 50%;  
    z-index: -1;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.3); 
}
.sport-item.special-effect.joggu a::after {   
    content: "";
    position: absolute;
    width: 82%;
    height: 82%;
    left: 50%;
    top: 50%;
    transform: translate(-50%, -50%);
    background: radial-gradient(circle, white, black);
    border-radius: 50%;  
    z-index: -2;
}
.sport-item.special-effect.joggu:hover a::before {  
    background-size: 100% 100%; 
}

#awcc {
    margin-bottom: 70px; /* 원하는 간격을 설정하세요 */
}

#notice-title{
font-size:32px;
text-align:center;
}
 #move-reserve{
 padding-top:10px;
 padding-bottom:10px;
 margin-top:250px;
 margin-left:20px;
 margin-right:20px;
 font-size:40px;
 text-align:center;
 border:3px solid black;
 border-radius:15px;
 color:black;
 background-color:#eee;
 font-family: 'Pretendard-Regular', sans-serif;
 

 }  
 
.sports-header {
  font-size: 45px;
  color: white;
  position: absolute;
  top: 200px;
  left: 0;
  right: 0;
  margin: 0 auto;
  text-shadow: -2px -2px 0 black, 2px -2px 0 black, -2px 2px 0 black, 2px 2px 0 black;
}

  </style>






</head>
<body>
   <%@ include file="top_bottom/header.jsp" %>
 

<div class="notice-weather">
        
        <div class="nbsp"></div>
        
        <div class="weather">
       <a href="https://www.accuweather.com/ko/kr/seoul/226081/current-weather/226081" target="_blank" class="aw-widget-legal"></a>
      <div id="awcc" class="aw-widget-current"  data-locationkey="226081" data-unit="c" data-language="ko-kr" data-useip="false" data-uid="awcc..."></div>
       <script type="text/javascript" src="https://oap.accuweather.com/launch.js"></script>
        
       
          <div id="notice-title">공지사항</div>
         <c:forEach items="${glist}" var="gvo">
              <div id="notice">           
              <a href="../gongji/gongji_content?no=${gvo.no}">${gvo.title } || ${gvo.writeday }</a>
              </div>                                   
              <hr>    
            </c:forEach>
              <a href="#" onclick="scrollToSportsSlider()" id="move-reserve"> 예약하러가기</a>
        </div>
    </div>


<div class="sports-slider-wrapper">
<h2 class="sports-header">원하는 종목을 선택하세요</h2>
    <div class="sports-grid">
        <div class="sport-item special-effect soccer">
            <a href="rlist?jongmok_id=1">
                <img src="/static/photos/ball.png" alt="Soccer Ball" />
                <span class="sport-label">축구</span>
            </a>
        </div>
        <div class="sport-item special-effect basketball">
            <a href="rlist?jongmok_id=2">
                <img src="/static/photos/ball2.png" alt="BasketBall" />
                <span class="sport-label">농구</span>
            </a>
        </div>
        <div class="sport-item special-effect volleyball">
            <a href="rlist?jongmok_id=3">
            <img src="/static/photos/ball3.png" alt="Volleyball" />
          <span class="sport-label">배구</span></a>
        </div>     
        <div class="sport-item special-effect baseball">
            <a href="rlist?jongmok_id=4">
            <img src="/static/photos/ball4.png" alt="Baseball" />
          <span class="sport-label">야구</span></a>
        </div> 
       <div class="sport-item special-effect dangu">
            <a href="rlist?jongmok_id=5">
            <img src="/static/photos/ball5.png" alt="Dangu" />
          <span class="sport-label">당구</span></a>
        </div>    
        <div class="sport-item special-effect bowling">
            <a href="rlist?jongmok_id=6">
            <img src="/static/photos/ball6.png" alt="Bowling" />
          <span class="sport-label">볼링</span></a>
        </div>    
        <div class="sport-item special-effect golf">
            <a href="rlist?jongmok_id=7">
            <img src="/static/photos/ball7.png" alt="Golf" />
          <span class="sport-label">골프</span></a>
        </div>    
         <div class="sport-item special-effect tennis">
            <a href="rlist?jongmok_id=8">
            <img src="/static/photos/ball8.png" alt="Tennis" />
          <span class="sport-label">테니스</span></a>
        </div>   
        <div class="sport-item special-effect swim">
            <a href="rlist?jongmok_id=9">
            <img src="/static/photos/ball9.png" alt="Swim" />
          <span class="sport-label">수영</span></a>
        </div>
        <div class="sport-item special-effect badmin">
            <a href="rlist?jongmok_id=10">
            <img src="/static/photos/ball10.png" alt="Badmin" />
          <span class="sport-label">배트민턴</span></a>
        </div>
        <div class="sport-item special-effect tacgu">
            <a href="rlist?jongmok_id=11">
            <img src="/static/photos/ball11.png" alt="Tacgu" />
          <span class="sport-label">탁구</span></a>
        </div>
        <div class="sport-item special-effect joggu">
            <a href="rlist?jongmok_id=12">
            <img src="/static/photos/ball12.png" alt="Joggu" />
          <span class="sport-label">족구</span></a>
        </div>
    </div>
   </div>
    
    
        
   
       <%@ include file="top_bottom/footer.jsp" %>
       
       
        <!-- Slick JS + jQuery -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick.min.js"></script>
   
   
     <script>
     var sportsSliderWrapper = document.querySelector(".sports-slider-wrapper");
     var isImageExpanded = false;

     // 사용자의 스크롤 이벤트를 감지하고 이미지 크기 조정 함수 호출
     window.addEventListener("scroll", handleScroll);

     function handleScroll() {
       var scrollY = window.scrollY;
       var threshold = window.innerHeight / 2; // 중앙 위치로 조정

       if (scrollY >= threshold && !isImageExpanded) {
         // 스크롤 위치가 임계값 이상이고 이미지가 확대되지 않은 경우
         sportsSliderWrapper.style.transform = "scale(1)"; // 배경 이미지 확대
         isImageExpanded = true;
       } else if (scrollY < threshold && isImageExpanded) {
         // 스크롤 위치가 임계값 미만이고 이미지가 확대된 경우
         sportsSliderWrapper.style.transform = "scale(0.3)"; // 배경 이미지 축소
         isImageExpanded = false;
       }
     }

   
     
     function scrollToSportsSlider() {
    	    var sportsSliderWrapper = document.querySelector(".sports-slider-wrapper");
    	    
    	    // sports-slider-wrapper로 스크롤 이동
    	    sportsSliderWrapper.scrollIntoView({ behavior: "smooth" });
    	}
     
$(document).ready(function(){
    $('.photo-slider').slick({
        infinite: true,
        slidesToShow: 1,
        slidesToScroll: 1,
        autoplay: true,          
        autoplaySpeed:3000
    });


    
    $('.sports-grid').slick({
        infinite: true, 
        slidesToShow: 7,
        slidesToScroll: 1,
        draggable: true, 
        autoplay: true,
        autoplaySpeed: 2000, // 이 값을 크게 조절해주세요. 예를 들어 슬라이드 한 개가 화면에 30초 동안 머무를 경우
        speed: 1000, // 슬라이드 전환 속도를 느리게 조절
  
    });
    
   
    $('.sports-grid').on('wheel', function(e) {
        if(e.originalEvent.deltaY > 0) {
            $(this).slick('slickNext');
        } else {
            $(this).slick('slickPrev');
        }
        e.preventDefault();
    });
    
    $('.sports-grid').on('mouseenter', function(){
        $(this).slick('slickPause');
    });

  
    $('.sports-grid').on('mouseleave', function(){
        $(this).slick('slickPlay');
    });
    

    $('.sport-item.special-effect').hover(
        function() {  
            $(this).find('.sport-label').css('opacity', '1');
        },
        function() {
            $(this).find('.sport-label').css('opacity', '0');
        }
    );
});
</script>
</body>
</html>