# Analysis and Detection of Android Stegomalware: the Impact of the Loading Stage

This is the repository for the paper *Analysis and Detection of Android Stegomalware: the Impact of the Loading Stage* submitted to the 13th ACM Workshop on Information Hiding and Multimedia Security (IH&MMSec 2025).

This repository contains the data and source code that can be used to implement a steganographic loader, with the methodology described in the paper, as well as the smali code of the loader classes.

## Content

This repository contains the following:
- *Data* directory contains a [link](https://www.dropbox.com/scl/fi/iifp9yvf0lsolgedgc18f/APKs.zip?rlkey=a0yqxlxhow1jb0quu5xrixjp8&st=uzlbar81&dl=0) to download the APKs in the testbed presented in the paper, 
and the mapping sha256 and obfuscation methodology;
- *Code* directory contains the source code of the unobfuscated custom-built application, and the smali code of the loader classes;
- *VirusTotal* directory contains the summary of the results by VirusTotal.

## Memory Forensics

To dump (extract) the content of the RAM of the single target process (the stegomalware apk, i.e., the custom apk and the repacked Telegram), we used Fridump [link](https://github.com/Nightbringer21/fridump). This includes the following steps:
1) A rooted Android device, both physical (real) or emulated (AVD with Android Studio or Genymotion). The Android device can be root according to the specifics of the vendor, Android version etc in case of the real device, for example using Magisk; or with RootAVD in case of emulated device [link](https://github.com/newbit1/rootAVD). We need a root device in order to access the memory.
2) Install frida with ```pip install frida``` in your Python environment. 
3) Download the frida-server binary executable for Android according to the architecture of the real Android device (arm32 or arm64) or the emulated one (x86 or x86_64): [link](https://github.com/frida/frida/releases). Note that the downloaded version must match the version installed in the Python environment.
4) Push the frida-server binary in a chosen directory on the Android device, e.g., ```adb push frida-server /data/local/tmp```. Change the permissions for executing the binary ```chmod +x frida-server```. Run the binary keeping the connection open ```./frida-server &```.
5) Run the target application and check its PID with ```frida-ps -U```. This will display the full apk name at runtime. Note that this name is different if you execute the process list command from ```adb shell ps -A```, which displays the package name.
6) Now go in fridump directory and run the memory dump with this command: ```python fridump.py -U AppName -o out_dir```. If you want the file with the full strings add the option ```-s ```. e.g., ```python fridump.py -U Telegram -o /Telegram_dump -s```. With this example, in the directory Telegram_dump I will have the files of the memory dump (.data files) of the Telegram application and a file strings.txt containing all the strings of the dump.
7) You can analyse the strings with a text editor, looking for the interesting patterns such as the decoded string, URLs, IPs, images magic number (PNG, JPG, etc.). Alternatively, you can analyse the dumps (.data files) with an hexadecimal editor.
