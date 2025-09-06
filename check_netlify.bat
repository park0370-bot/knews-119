@echo off
echo === Netlify 사이트 점검 ===
cd C:\news_pwa\knews-119

echo.
echo [1] 로컬 파일 확인
echo -------------------------
dir /b
echo.
echo [2] 함수 파일 내용
echo -------------------------
type netlify\functions\feed.mjs
echo.

echo [3] 웹 페이지 열기
echo -------------------------
start https://app.netlify.com/sites/knews-119/deploys
timeout /t 2 >nul
start https://app.netlify.com/sites/knews-119/functions
timeout /t 2 >nul
start https://knews-119.netlify.app
timeout /t 2 >nul
start https://knews-119.netlify.app/api/feed

echo.
echo [4] 간단한 함수로 재배포
echo -------------------------
echo export default async()=^>new Response("TEST OK") > netlify\functions\feed.mjs
git add .
git commit -m "Test deploy"
git push

echo.
echo === 완료 ===
echo 3분 후 사이트 확인
pause