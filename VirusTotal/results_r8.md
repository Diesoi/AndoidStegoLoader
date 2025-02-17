## R8 results

In the following there are the sha256 of the R8 obfuscated APKs with their correspondence in terms of kind of loaders and obfuscation, and the corresponding summary of results in terms of detection engines, VT Tags, and other IoCs found by VirusTotal.

The meaning of each VT tag can be found [here](https://docs.virustotal.com/docs/intelligence-tag-list)

## Obfuscated
### Custom
#### Bitmap Loader

    65237a23562f458d4b58c4728049d97911883c53aeb395ec5e62a0a6e80b3998
        1. Detection engines: 2/65 (both static and dynamic analysis with VirusTotal R2DBox and Zenbox Android)
            - Google: Detected
            - Ikarus: Trojan-Dropper.AndroidOS.Agent
        2. VT Tags: android, apk, contains-elf, runtime-modules, detect-debug-environment, checks-gps, telephony, reflection
        3. No IoC found

#### OpenCV Loader

    51f997d84814529ec44c8b330f78493610f53cb7e13dd04912c4091914406ae7
        1. Detection engines: 2/65 (both static and dynamic analysis with VirusTotal R2DBox and Zenbox Android)
            - Google: Detected
            - Ikarus: Trojan-Dropper.AndroidOS.Agent
        2. VT Tags: android, apk, contains-elf, runtime-modules, detect-debug-environment, checks-gps, telephony, reflection
        3. No IoC found

### Telegram
#### Bitmap Loader

    ae6cb06536bc50b8400565e42b70884fca88482a4d27f2be1ea3d8797f5a7204
        1. Detection engines: 0/65 (both static and dynamic analysis with VirusTotal R2DBox and Zenbox Android)
        2. VT Tags: android, apk, contains-elf, obfuscated, detect-debug-environment, checks-gps, telephony, reflection
        3. IP Adresses: 149.154.167.51

#### OpenCV Loader

    ac4845474c129c18a9c986a69f480ab3d3c4fc359bb0358362f00dd43541dbbe
        1. Detection engines: 0/65 (both static and dynamic analysis with VirusTotal R2DBox and Zenbox Android)
        2. VT Tags: android, apk, contains-elf, checks-gps, telephony, reflection
        3. IP Adresses: 108.177.119.95, 149.154.167.51; Files: classes.dex



