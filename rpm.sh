#! /bin/bash
install -d package/usr/share/jitsi-meet package/etc/jisti/meet package/usr/share/doc
install config.js package/usr/share/doc/
install LICENSE package/usr/share/doc/
install README.md package/usr/share/doc
install analytics.js package/usr/share/jitsi-meet/
install app.js package/usr/share/jitsi-meet/
install external_api.js package/usr/share/jitsi-meet/
install *.ico package/usr/share/jitsi-meet/
install *.html package/usr/share/jitsi-meet/
install *.json package/usr/share/jitsi-meet/

install -d package/usr/share/jitsi-meet/css
install css/* package/usr/share/jitsi-meet/css/

install -d package/usr/share/jitsi-meet/lang
install lang/* package/usr/share/jitsi-meet/lang

install -d package/usr/share/jitsi-meet/images
install images/*.png package/usr/share/jitsi-meet/images
install -d package/usr/share/jitsi-meet/images/smileys
install images/smileys/* package/usr/share/jitsi-meet/images/smileys
install -d package/usr/share/jitsi-meet/images/welcome_page
install images/welcome_page/* package/usr/share/jitsi-meet/images/welcome_page

install -d package/usr/share/jitsi-meet/sounds
install sounds/* package/usr/share/jitsi-meet/sounds

install -d package/usr/share/jitsi-meet/libs/strophe
install libs/strophe/* package/usr/share/jitsi-meet/libs/strophe
install libs/*.js package/usr/share/jitsi-meet/libs/
install libs/*.map package/usr/share/jitsi-meet/libs/

install -d package/usr/share/jitsi-meet/fonts
install fonts/* package/usr/share/jitsi-meet/fonts/

install -d package/usr/share/jitsi-meet/service/authentication
install service/authentication/* package/usr/share/jitsi-meet/service/authentication/
install -d package/usr/share/jitsi-meet/service/connectionquality
install service/connectionquality/* package/usr/share/jitsi-meet/service/connectionquality/
install -d package/usr/share/jitsi-meet/service/desktopsharing
install service/desktopsharing/* package/usr/share/jitsi-meet/service/desktopsharing/
install -d package/usr/share/jitsi-meet/service/members
install service/members/* package/usr/share/jitsi-meet/service/members/
install -d package/usr/share/jitsi-meet/service/RTC
install service/RTC/* package/usr/share/jitsi-meet/service/RTC/
install -d package/usr/share/jitsi-meet/service/translation
install service/translation/* package/usr/share/jitsi-meet/service/translation/
install -d package/usr/share/jitsi-meet/service/UI
install service/UI/* package/usr/share/jitsi-meet/service/UI/
install -d package/usr/share/jitsi-meet/service/xmpp
install service/xmpp/* package/usr/share/jitsi-meet/service/xmpp/

fpm \
		-s dir \
		-t rpm \
		-n jitsi-meet \
		-v 0.0.1 \
		--epoch 1 \
		-a amd64 \
		-m "Daniel Paulus <daniel@inuits.eu>" \
		--description "This is a WebRTC frontend of the video conferencing tool Jitsi Meet." \
		--license MIT \
		--url https://jitsi.org/Projects/JitsiMeet \
		-C package .
