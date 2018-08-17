SHELL=/bin/bash

clean:
	@rm -f app/libs/aerserv-sdk.jar
	@./gradlew clean

build-app:
	@cp ../lib/aerserv-sdk.jar app/libs
	@./gradlew assembleDebug

build-app-debug:
	@cp ../lib/aerserv-sdk.jar app/libs
	@./gradlew assembleDebug

uninstall:
	@adb uninstall com.aerserv.sample

install:
	@adb install app/build/outputs/apk/app-debug.apk

key:
	@keytool -genkey -v -keystore keys/keystore -alias sdk -keyalg RSA -keysize 2048 -validity 20000
