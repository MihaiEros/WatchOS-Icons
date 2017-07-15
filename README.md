# WatchOS-Icons

I am a huge fan of https://makeappicon.com, I use it for almost every iOS app I have to.

Unfortunately, they have to update their Assets for Watch, Watch Extension and Watch Complication for Watch OS 4 and Xcode 9.

While waiting for them to fix their scripts, I developed this tiny ruby script which generates the Assets correctly for Watch OS 4.

**USAGE**

1. Download or clone the repo.
2. Place your app icon PNG file into the main folder and rename it to **1024p.png**.
3. Open a terminal window.
4. Run: ruby script.rb.
5. Check your main folder, an Assets.xcassets folder should be there containing your desired icons.
6. **Copy-paste-replace** your Assets.xcassets with the generated one.
7. **DONE!**
