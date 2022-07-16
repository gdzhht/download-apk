#! /bin/bash  

#for play app
cat ./download-play.txt |  while  read PACKAGE  
do
         aptoide-download -o ./fdroid/repo/$PACKAGE".apk" $PACKAGE
done 


#neoterm
wget -O ./fdroid/repo/io.neoterm.apk  $(curl "https://api.github.com/repos/NeoTerrm/NeoTerm/releases/latest" | grep browser_download_url | grep apk | sed 's/...............................//' | sed 's/.$//')

#steam++
wget -O ./fdroid/repo/net.steampp.app.apk  $(curl "https://api.github.com/repos/BeyondDimension/SteamTools/releases/latest" | grep browser_download_url | grep apk | sed 's/...............................//' | sed 's/.$//')

#MCinaBox
wget -O ./fdroid/repo/com.aof.mcinabox.apk  $(curl "https://api.github.com/repos/AOF-Dev/MCinaBox/releases/latest" | grep browser_download_url | grep apk | sed 's/...............................//' | sed 's/.$//')

#skydroid
wget -O ./fdroid/repo/app.skydroid.apk https://get.skydroid.app/
#or
#wget -O ./fdroid/repo/app.skydroid.apk  $(curl "https://api.github.com/repos/redsolver/skydroid/releases/latest" | grep browser_download_url | grep apk | sed 's/...............................//' | sed 's/.$//')

#music_player_lite
wget -O ./fdroid/repo/com.atul.musicplayeronline.apk  $(curl "https://api.github.com/repos/AP-Atul/music_player_lite/releases/latest" | grep browser_download_url | grep apk | sed 's/...............................//' | sed 's/.$//')

#firefox
#armv8
wget -O ./fdroid/repo/org.mozilla.firefox.armv8.apk https://firefox-ci-tc.services.mozilla.com/api/index/v1/task/mobile.v2.fenix.release.latest.arm64-v8a/artifacts/public/build/arm64-v8a/target.apk
#armv7
#wget https://firefox-ci-tc.services.mozilla.com/api/index/v1/task/mobile.v2.fenix.release.latest.armeabi-v7a/artifacts/public/build/armeabi-v7a/target.apk
#x86
#wget https://firefox-ci-tc.services.mozilla.com/api/index/v1/task/mobile.v2.fenix.release.latest.x86/artifacts/public/build/x86/target.apk
#x86_64
#wget https://firefox-ci-tc.services.mozilla.com/api/index/v1/task/mobile.v2.fenix.release.latest.x86_64/artifacts/public/build/x86_64/target.apk

#firefox nightly
#armv8
wget -O ./fdroid/repo/org.mozilla.fenix.armv8.apk https://firefox-ci-tc.services.mozilla.com/api/index/v1/task/mobile.v2.fenix.nightly.latest.arm64-v8a/artifacts/public/build/arm64-v8a/target.apk
