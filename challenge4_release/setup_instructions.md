# Create emulator
```
avdmanager create avd -n pwnable-emulator -k "system-images;android-28;default;x86_64"
```

# Run emulator
```
emulator -wipe-data -accel on -no-boot-anim -no-audio -avd pwnable-emulator
```

# Setup emulator
```
adb install <apk>
adb shell "echo flag{this_is_the_flag} > /data/local/tmp/challenge4"
adb shell "su root chown root:<apk user> /data/local/tmp/challenge4"
adb shell "su root chmod 550 /data/local/tmp/challenge4"
```

# Run apk
```
pkg=$(aapt dump badging <apk>|awk -F" " '/package/ {print $2}'|awk -F"'" '/name=/ {print $2}')
act=$(aapt dump badging <apk>|awk -F" " '/launchable-activity/ {print $2}'|awk -F"'" '/name=/ {print $2}')
adb shell am start -n "$pkg/$act"
```

# Run exploit
```
copy /Y C:\Users\ptneg\Downloads\h1702ctf\Challenge4_exploit\app\build\outputs\apk\release\app-release-unsigned.apk .\challenge4_exploit.apk
java -Xmx256m -jar C:/Users/ptneg/.apkstudio/vendor/uber-apk-signer.jar --debug -a .\challenge4_exploit.apk --overwrite --allowResign
adb install challenge4_exploit.apk
adb shell am start -n "com.challenge4_exploit/.MainActivity"
```
