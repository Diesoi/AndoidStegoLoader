## Vanilla Results

In the following there are the sha256 of the vanilla APKs with their correspondence in terms of kind of loaders and obfuscation, and the corresponding summary of results in terms of detection engines, VT Tags, and other IoCs found by VirusTotal.

The meaning of each VT tag can be found [here](https://docs.virustotal.com/docs/intelligence-tag-list)


## Vanilla
### Custom
    Bitmap Loader -> 6126c8401f5719ddb3e38103f3b82d979cd075c9bd7190adeb9d5b0507cf7309
        1. Detection engines: 0/65 (only static analysis)
        2. VT Tags: android, apk, contains-elf
        3. No IoC found

    OpenCV Loader -> 766e30624439a745904500d7ef1ac782414f9567093f6af8b2c3fcb9c30b7914
        1. Detection engines: 0/65 (only static analysis)
        2. VT Tags: android, apk, contains-elf
        3. No IoC found

### Telegram
    Original Telegram application without the loader -> 6c5e7eaa2a3039f1cd2d99e4a06692b43e6bf892b878a4e66ff86f7f34f65053
        1. Detection engines: 0/65 (both static and dynamic analysis with VirusTotal R2DBox and Zenbox Android)
        2. VT Tags: android, apk, reflection, obfuscated, telephony, checks-gps
        3. IP addresses -> 108.177.119.95, 149.154.167.51

    Bitmap Loader -> 7a50c88865f5b0cb44ee4898cef4d3308bec2097faf183c9eaf4a7ae50ff2c56
        1. Detection engines: 0/65 (both static and dynamic analysis with VirusTotal R2DBox and Zenbox Android)
        2. VT Tags: android, apk, reflection, obfuscated, detect-debug-environment, checks-gps, telephony
        3. IP address -> 149.154.167.51

    OpenCV Loader -> 17e6e6545e1978fdbe97ec4fc4a76b86f1fee011dd5557639b6858eadc3f2579
        1. Detection engines: 0/65 (both static and dynamic analysis with VirusTotal R2DBox and Zenbox Android)
        2. VT Tags: android, apk, reflection, obfuscated, detect-debug-environment, checks-gps, telephony
        3. IP address -> 149.154.167.51

