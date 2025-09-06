@echo off
cd C:\news_pwa\knews-119

echo === Netlify Functions 최종 수정 ===

:: 올바른 함수 생성
echo const handler = async () =^> { > netlify\functions\feed.js
echo   return { >> netlify\functions\feed.js
echo     statusCode: 200, >> netlify\functions\feed.js
echo     headers: { "content-type": "application/json" }, >> netlify\functions\feed.js
echo     body: JSON.stringify({ >> netlify\functions\feed.js
echo       v: 1, >> netlify\functions\feed.js
echo       items: [ >> netlify\functions\feed.js
echo         { title: "테스트 뉴스 1", url: "#" }, >> netlify\functions\feed.js
echo         { title: "테스트 뉴스 2", url: "#" } >> netlify\functions\feed.js
echo       ] >> netlify\functions\feed.js
echo     }) >> netlify\functions\feed.js
echo   } >> netlify\functions\feed.js
echo } >> netlify\functions\feed.js
echo module.exports = { handler } >> netlify\functions\feed.js

:: HTML 수정
echo ^<!DOCTYPE html^>^<html^>^<head^>^<title^>K-News 119^</title^>^</head^>^<body^>^<h1^>K-News 119^</h1^>^<div id="app"^>로딩...^</div^>^<script^>fetch('/.netlify/functions/feed').then(r=^>r.json()).then(d=^>{document.getElementById('app').innerHTML=d.items.map(x=^>`^<div^>${x.title}^</div^>`).join('')}).catch(e=^>document.getElementById('app').innerHTML='오류:'+e)^</script^>^</body^>^</html^> > public\index.html

:: Git 푸시
git add .
git commit -m "Final fix"
git push

echo.
echo === 완료 ===
echo 3분 후 확인:
echo https://knews-119.netlify.app
echo https://knews-119.netlify.app/.netlify/functions/feed
pause