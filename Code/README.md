## Code Directory

This directory contains the source code employed for the tests. In particular:

- **smali** contains the smali code of the loader employed to repack telegram
    
    - **Vanilla**, with the smali loaders without any obfuscation tecniques
    - **Obfuscated - R8**, with the smali loaders obfuscated with Proguard

- **custom_application_source** contains the whole source code of the custom built application

    To fully employ it, you need to download the OpenCV release by following [this](https://medium.com/@sdranju/android-studio-step-by-step-guide-for-setting-up-opencv-sdk-4-9-on-android-740547f3260b) guide

- file **proguard-rules.pro** contains the rules we employed to obfuscate the loader classes with R8

- file **tagAnalysis.ipynb** contains the code to obtain the graphs inside the paper