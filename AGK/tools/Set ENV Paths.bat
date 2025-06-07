@ECHO OFF
SET "currentLocation=%cd%"
cd /D "%~dp0..\..\"
rem SET "repoLocation=%cd%"
SET "repoLocation=D:\DEV"

cd /D "%UserProfile%"

for %%I in (.) do set AGKUserFolderName=%%~nxI

cd /D "%currentLocation%"

set "agkstudiopath=%repoLocation%\AGKStudio\AGK"
set "ndkpath=%repoLocation%\AGKExternal\android-ndk-r20b"
set "steamworkspath=%repoLocation%\AGKExternal\Steamworks"
set "vulkansdkpath=%repoLocation%\AGKExternal"
set "javahome=C:\Program Files\Java\jdk-17"

echo This Script will:
echo Set environment variable ^(user scope^) ANDROID_HOME to "%LocalAppData%\Android\Sdk"...
echo Set environment variable ^(user scope^) AGK_STUDIO_PATH to "%agkstudiopath%"... 
echo Set environment variable ^(user scope^) NDK_PATH to "%ndkpath%"... 
echo Set environment variable ^(user scope^) STEAMWORKS_PATH to "%steamworkspath%"... 
echo Set environment variable ^(user scope^) USERNAMEFORAGK to "%AGKUserFolderName%"... 
echo Set environment variable ^(user scope^) VULKAN_SDK_PATH to "%vulkansdkpath%"... 
echo Set environment variable ^(user scope^) JAVA_HOME to "%javahome%"... 
echo ^(user scope means for the current windows user only^)
echo Do you want the script to set these environment variables required for this repo?
echo ^(y/n^)
set /P setEnvironmentVars=
if "%setEnvironmentVars%" NEQ "y" echo Abort... & pause & exit 1

setx ANDROID_HOME "%LocalAppData%\Android\Sdk"
setx AGK_STUDIO_PATH "%agkstudiopath%"
setx NDK_PATH "%ndkpath%"
setx STEAMWORKS_PATH "%steamworkspath%"
setx USERNAMEFORAGK "%AGKUserFolderName%"
setx VULKAN_SDK_PATH "%vulkansdkpath%"
setx JAVA_HOME "%javahome%"

exit 0