# vivo.sh

```sh
#!/system/bin/sh

clear

echo "=========================================="
echo "       Vivo Debloat Started"
echo "=========================================="
echo

packages="
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
"

total=$(echo "$packages" | grep -c "[a-z]")
current=0

for s in $packages
do
current=$((current+1))

echo
echo "Clear"
echo "$current/$total: Clearing data \"$s\""
pm clear "$s" >/dev/null 2>&1

echo "Uninstall"
echo "$current/$total: Uninstalling \"$s\""
pm uninstall --user 0 "$s" >/dev/null 2>&1

done

echo
echo "=========================================="
echo "       Optimizing Apps"
echo "=========================================="
echo

echo "Optimizing Kiwi Browser..."
adb shell pm clear com.kiwibrowser.browser
adb shell cmd package compile -m space -f com.kiwibrowser.browser
adb shell cmd package compile -m verify -f com.kiwibrowser.browser
adb shell pm clear com.kiwibrowser.browser

echo "Optimizing Vivo Global Search..."
 pm clear com.vivo.globalsearch
 cmd package compile -m space -f com.vivo.globalsearch
 cmd package compile -m verify -f com.vivo.globalsearch
 pm clear com.vivo.globalsearch

echo "Optimizing BBK Music..."
 pm clear com.android.bbkmusic
 cmd package compile -m space -f com.android.bbkmusic
 cmd package compile -m verify -f com.android.bbkmusic
 pm clear com.android.bbkmusic

echo "Optimizing Google Play Store..."
 pm clear com.android.vending
 cmd package compile -m space -f com.android.vending
 cmd package compile -m verify -f com.android.vending
 pm clear com.android.vending

echo "Optimizing Vivo App Store..."
 pm clear com.vivo.appstore
 cmd package compile -m space -f com.vivo.appstore
 cmd package compile -m verify -f com.vivo.appstore
 pm clear com.vivo.appstore

echo "Optimizing Vivo Website..."
 pm clear com.vivo.website
 cmd package compile -m space -f com.vivo.website
 cmd package compile -m verify -f com.vivo.website
 pm clear com.vivo.website

echo "Optimizing Vivo Video Editor..."
 pm clear com.vivo.videoeditor
 cmd package compile -m space -f com.vivo.videoeditor
 cmd package compile -m verify -f com.vivo.videoeditor
 pm clear com.vivo.videoeditor

echo "Optimizing iManager..."
 pm clear com.vivo.imanager
 cmd package compile -m space -f com.vivo.imanager
 cmd package compile -m verify -f com.vivo.imanager
 pm clear com.vivo.imanager

echo "Optimizing Vivo Cloud..."
 pm clear com.bbk.cloud
 cmd package compile -m space -f com.bbk.cloud
 cmd package compile -m verify -f com.bbk.cloud
 pm clear com.bbk.cloud

echo "Optimizing iTheme..."
 pm clear com.bbk.theme
 cmd package compile -m space -f com.bbk.theme
 cmd package compile -m verify -f com.bbk.theme
 pm clear com.bbk.theme

echo "Optimizing Jovi Home Service Tool..."
 pm clear com.vivo.assistant
 cmd package compile -m space -f com.vivo.assistant
 cmd package compile -m verify -f com.vivo.assistant
 pm clear com.vivo.assistant

echo "Optimizing Jovi Home..."
 pm clear com.vivo.hiboard
 cmd package compile -m space -f com.vivo.hiboard
 cmd package compile -m verify -f com.vivo.hiboard
 pm clear com.vivo.hiboard

echo "Optimizing Vivo Weather Provider..."
 pm clear com.vivo.weather.provider
 cmd package compile -m space -f com.vivo.weather.provider
 cmd package compile -m verify -f com.vivo.weather.provider
 pm clear com.vivo.weather.provider

echo "Optimizing Google Photos..."
 pm clear com.google.android.apps.photos
 cmd package compile -m space -f com.google.android.apps.photos
 cmd package compile -m verify -f com.google.android.apps.photos
 pm clear com.google.android.apps.photos

echo "Optimizing Vivo Camera..."
 pm clear com.android.camera
 cmd package compile -m space -f com.android.camera
 cmd package compile -m verify -f com.android.camera
 pm clear com.android.camera

echo "Optimizing Gboard..."
 pm clear com.google.android.inputmethod.latin
 cmd package compile -m space -f com.google.android.inputmethod.latin
 cmd package compile -m verify -f com.google.android.inputmethod.latin
 pm clear com.google.android.inputmethod.latin

printf "Optimize Google Play Services? (y/n): "
read optgms

if [ "$optgms" = "y" ] || [ "$optgms" = "Y" ]; then
echo "Optimizing Google Play Services..."
 pm clear com.google.android.gms
 cmd package compile -m space -f com.google.android.gms
 cmd package compile -m verify -f com.google.android.gms
 pm clear com.google.android.gms
fi

echo
echo "=========================================="
echo "Done."
echo "=========================================="
```
