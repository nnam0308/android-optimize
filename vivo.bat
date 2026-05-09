@echo off
setlocal enabledelayedexpansion

title Vivo Debloat + App Optimize

adb wait-for-device

set /a count=0

for %%s in (
com.agoda.mobile.consumer
com.epi
com.facebook.katana
com.google.android.apps.docs
com.google.android.apps.magazines
com.google.android.apps.podcasts
com.google.android.apps.subscriptions.red
com.google.android.videos
com.lazada.android
com.shopee.vn
com.ss.android.ugc.trill
com.zing.mp3
com.zing.zalo
com.google.mainline.telemetry
com.google.android.setupwizard
com.google.android.apps.setupwizard.searchselector
com.vivo.fingerprintui
com.android.chrome
com.vivo.doubletimezoneclock
com.google.android.apps.tachyon
com.google.android.onetimeinitializer
com.vivo.fingerprintengineer
com.vivo.aiengine
com.vivo.FMRadio
com.vivo.weather
com.google.android.marvin.talkback
com.vivo.compass
com.bbk.account
com.bbk.iqoo.logsystem
com.vivo.widget.gallery
com.vivo.desktopstickers
com.vivo.gamecube
com.google.android.apps.wellbeing
com.google.android.partnersetup
com.google.android.youtube
com.vivo.widgetweather
com.android.email.partnerprovider
com.vivo.fuelsummary
com.vivo.feedback
com.vivo.floatingball
com.google.android.apps.restore
com.android.egg
com.facebook.services
com.vivo.simpleiconthemeres
com.funtouch.uiengine
com.vivo.timerwidget
com.google.ar.core
com.vivo.setupwizard
com.google.ar.lens
com.android.bookmarkprovider
com.vivo.widget.cleanspeed
com.vivo.audiofx
com.vivo.browser
com.android.backupconfirm
com.vivo.crontab
com.google.android.apps.googleassistant
com.android.VideoPlayer
com.google.android.gm
com.android.providers.partnerbookmarks
com.vivo.notes
com.vivo.ewarranty
com.google.android.apps.maps
com.vivo.share
com.facebook.system
com.vivo.magazine
com.vlife.vivo.wallpaper
com.android.htmlviewer
com.vivo.gamewatch
com.vivo.musicwidgetmix
com.vivo.easyshare
com.yozo.vivo.office
com.google.android.projection.gearhead
com.vivo.simplelauncher
com.google.android.cellbroadcastreceiver
com.facebook.appmanager
com.vivo.game
com.google.android.safetycenter.resources
com.google.android.calendar
com.android.emergency
com.google.android.apps.youtube.music
com.android.bbklog
com.vivo.gallery
com.google.android.googlequicksearchbox
) do (
set /a count+=1
)

set total=%count%
set /a current=0

echo.
echo ==========================================
echo        Vivo Debloat Started
echo ==========================================
echo.

for %%s in (
com.agoda.mobile.consumer
com.epi
com.facebook.katana
com.google.android.apps.docs
com.google.android.apps.magazines
com.google.android.apps.podcasts
com.google.android.apps.subscriptions.red
com.google.android.videos
com.lazada.android
com.shopee.vn
com.ss.android.ugc.trill
com.zing.mp3
com.zing.zalo
com.google.mainline.telemetry
com.google.android.setupwizard
com.google.android.apps.setupwizard.searchselector
com.vivo.fingerprintui
com.android.chrome
com.vivo.doubletimezoneclock
com.google.android.apps.tachyon
com.google.android.onetimeinitializer
com.vivo.fingerprintengineer
com.vivo.aiengine
com.vivo.FMRadio
com.vivo.weather
com.google.android.marvin.talkback
com.vivo.compass
com.bbk.account
com.bbk.iqoo.logsystem
com.vivo.widget.gallery
com.vivo.desktopstickers
com.vivo.gamecube
com.google.android.apps.wellbeing
com.google.android.partnersetup
com.google.android.youtube
com.vivo.widgetweather
com.android.email.partnerprovider
com.vivo.fuelsummary
com.vivo.feedback
com.vivo.floatingball
com.google.android.apps.restore
com.android.egg
com.facebook.services
com.vivo.simpleiconthemeres
com.funtouch.uiengine
com.vivo.timerwidget
com.google.ar.core
com.vivo.setupwizard
com.google.ar.lens
com.android.bookmarkprovider
com.vivo.widget.cleanspeed
com.vivo.audiofx
com.vivo.browser
com.android.backupconfirm
com.vivo.crontab
com.google.android.apps.googleassistant
com.android.VideoPlayer
com.google.android.gm
com.android.providers.partnerbookmarks
com.vivo.notes
com.vivo.ewarranty
com.google.android.apps.maps
com.vivo.share
com.facebook.system
com.vivo.magazine
com.vlife.vivo.wallpaper
com.android.htmlviewer
com.vivo.gamewatch
com.vivo.musicwidgetmix
com.vivo.easyshare
com.yozo.vivo.office
com.google.android.projection.gearhead
com.vivo.simplelauncher
com.google.android.cellbroadcastreceiver
com.facebook.appmanager
com.vivo.game
com.google.android.safetycenter.resources
com.google.android.calendar
com.android.emergency
com.google.android.apps.youtube.music
com.android.bbklog
com.vivo.gallery
com.google.android.googlequicksearchbox
com.vivo.weather.provider
com.vivo.soundrecorder
com.vivo.calculator
) do (

set /a current+=1

echo.
echo Clear
echo !current!/!total!: Clearing data "%%s"
adb shell pm clear %%s >nul

echo Uninstall
echo !current!/!total!: Uninstalling "%%s"
adb shell pm uninstall --user 0 %%s >nul

echo Clear 2
echo !current!/!total!: Clearing data "%%s"
adb shell pm clear %%s >nul

)

echo.
echo ==========================================
echo        Optimizing Apps
echo ==========================================
echo.

echo Optimizing Google Play Services...
adb shell pm clear com.google.android.gms
adb shell cmd package compile -m space -f com.google.android.gms
adb shell cmd package compile -m verify -f com.google.android.gms
adb shell pm clear com.google.android.gms

echo Optimizing Vivo Global Search...
adb shell pm clear com.vivo.globalsearch
adb shell cmd package compile -m space -f com.vivo.globalsearch
adb shell cmd package compile -m verify -f com.vivo.globalsearch
adb shell pm clear com.vivo.globalsearch

echo Optimizing BBK Music...
adb shell pm clear com.android.bbkmusic
adb shell cmd package compile -m space -f com.android.bbkmusic
adb shell cmd package compile -m verify -f com.android.bbkmusic
adb shell pm clear com.android.bbkmusic

echo Optimizing Google Play Store...
adb shell pm clear com.android.vending
adb shell cmd package compile -m space -f com.android.vending
adb shell cmd package compile -m verify -f com.android.vending
adb shell pm clear com.android.vending

echo Optimizing Vivo App Store...
adb shell pm clear com.vivo.appstore
adb shell cmd package compile -m space -f com.vivo.appstore
adb shell cmd package compile -m verify -f com.vivo.appstore
adb shell pm clear com.vivo.appstore

echo Optimizing Vivo Website...
adb shell pm clear com.vivo.website
adb shell cmd package compile -m space -f com.vivo.website
adb shell cmd package compile -m verify -f com.vivo.website
adb shell pm clear com.vivo.website

echo Optimizing Vivo Video Editor...
adb shell pm clear com.vivo.videoeditor
adb shell cmd package compile -m space -f com.vivo.videoeditor
adb shell cmd package compile -m verify -f com.vivo.videoeditor
adb shell pm clear com.vivo.videoeditor

echo Optimizing iManager...
adb shell pm clear com.vivo.imanager
adb shell cmd package compile -m space -f com.vivo.imanager
adb shell cmd package compile -m verify -f com.vivo.imanager
adb shell pm clear com.vivo.imanager

echo Optimizing Vivo Cloud...
adb shell pm clear com.bbk.cloud
adb shell cmd package compile -m space -f com.bbk.cloud
adb shell cmd package compile -m verify -f com.bbk.cloud
adb shell pm clear com.bbk.cloud

echo Optimizing iTheme...
adb shell pm clear com.bbk.theme
adb shell cmd package compile -m space -f com.bbk.theme
adb shell cmd package compile -m verify -f com.bbk.theme
adb shell pm clear com.bbk.theme

echo Optimizing Jovi Home Service Tool...
adb shell pm clear com.vivo.assistant
adb shell cmd package compile -m space -f com.vivo.assistant
adb shell cmd package compile -m verify -f com.vivo.assistant
adb shell pm clear com.vivo.assistant

echo Optimizing Jovi Home...
adb shell pm clear com.vivo.hiboard
adb shell cmd package compile -m space -f com.vivo.hiboard
adb shell cmd package compile -m verify -f com.vivo.hiboard
adb shell pm clear com.vivo.hiboard

echo Optimizing Vivo Weather Provider...
adb shell pm clear com.vivo.weather.provider
adb shell cmd package compile -m space -f com.vivo.weather.provider
adb shell cmd package compile -m verify -f com.vivo.weather.provider
adb shell pm clear com.vivo.weather.provider

echo Optimizing Google Photos...
adb shell pm clear com.google.android.apps.photos
adb shell cmd package compile -m space -f com.google.android.apps.photos
adb shell cmd package compile -m verify -f com.google.android.apps.photos
adb shell pm clear com.google.android.apps.photos

echo Optimizing Vivo Camera...
adb shell pm clear com.android.camera
adb shell cmd package compile -m space -f com.android.camera
adb shell cmd package compile -m verify -f com.android.camera
adb shell pm clear com.android.camera

echo Optimizing Gboard...
adb shell pm clear com.google.android.inputmethod.latin
adb shell cmd package compile -m space -f com.google.android.inputmethod.latin
adb shell cmd package compile -m verify -f com.google.android.inputmethod.latin
adb shell pm clear com.google.android.inputmethod.latin

echo.
echo ==========================================
echo Done.
echo ==========================================
pause
