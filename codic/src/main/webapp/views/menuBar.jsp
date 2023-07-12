<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <link href="../resources/style/reset.css" rel="stylesheet">
    <link href="../resources/style/menuBar.css" rel="stylesheet">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    
</head>

<body>
    <div class="menu_bar">
        <div class="menu">
            <ul>
                <li><span onclick="showHide1()">HTML</span>
                    <ul class="sub-title-menu" id="sub-title-menu1">
                        <li>HTML이란?</li>
                        <li>Elements</li>
                        <li>Classes</li>
                        <li>Forms</li>
                    </ul>
                </li>
                <li><span onclick="showHide2()">JavaScript</span>
                    <ul class="sub-title-menu" id="sub-title-menu2">
                        <li>JavaScript1</li>
                        <li>JavaScript2</li>
                        <li>JavaScript3</li>
                        <li>JavaScript4</li>
                    </ul>
                </li>
                <li><span onclick="showHide3()">Css</span>
                    <ul class="sub-title-menu" id="sub-title-menu3">
                        <li>Css1</li>
                        <li>Css2</li>
                        <li>Css3</li>
                        <li>Css4</li>
                    </ul>
                </li>
                <li><span onclick="showHide4()">JAVA</span>
                    <ul class="sub-title-menu" id="sub-title-menu4">
                        <li>JAVA1</li>
                        <li>JAVA2</li>
                        <li>JAVA3</li>
                        <li>JAVA4</li>
                    </ul>
                </li>
                <li><span onclick="showHide5()">DataBase</span>
                    <ul class="sub-title-menu" id="sub-title-menu5">
                        <li>DataBase1</li>
                        <li>DataBase2</li>
                        <li>DataBase3</li>
                        <li>DataBase4</li>
                    </ul>
                </li>
                <li><span onclick="showHide6()">질문게시판</span>
                    <ul class="sub-title-menu" id="sub-title-menu6">
                        <li>전체 글</li>
                        <li>내가 작성한 질문</li>
                    </ul>
                </li>
                <li><span>로드맵</span></li>
            </ul>

        </div>
        <div class="qboard">
            내용
        </div>
    </div>
    <script src="/menuBar.js"></script>
</body>

</html>