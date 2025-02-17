## Obfuscapk results

In the following there are the sha256 of the APKs obfuscated Obfuscapk with their correspondence in terms of kind of loaders and obfuscation, and the corresponding summary of results in terms of detection engines, VT Tags, and other IoCs found by VirusTotal.

The meaning of each VT tag can be found [here](https://docs.virustotal.com/docs/intelligence-tag-list)


## Obfuscated
### Custom
#### Bitmap Loader

    AbReMoCiGo -> 7c9120548a2ae922477b481caa992c154f7d9f038a8ff64c791a987011e2f0a0
        1. Detection engines: 2/65 (only static analysis)
            - Google: Detected
            - Ikarus: Trojan-Dropper.AndroidOS.Agent
        2. VT Tags: android, apk, contains-elf
        3. No IoC found

    RAbCiGo -> 55c89e0f4bf516089ea3d863083ac890804bd5ec14406828a51845740e0cb6cb
        1. Detection engines: 2/65 (only static analysis)
            - AhnLab-V3: AppCare/Android.Gmt.1277582
            - Ikarus: Trojan-Downloader.AndroidOS.Agent
        2. VT Tags: android, apk, contains-elf
        3. No IoC found

    RCiReMo -> 123363dca508c597a7d96759cefc118ca642a3bbf47b1b8aa2e687dad23555d3
        1. Detection engines: 8/65 (only static analysis)
            - BitDefenderFalx: Android.Adware.Mobby.P
            - ESET-NOD32: A Variant Of Android/Obfus.VC
            - Fortinet: Android/Obfus.RN!tr
            - Google: Detected
            - Ikarus: Trojan-Downloader.AndroidOS.Agent
            - Microsoft: Trojan:Script/Wacatac.B!ml
            - Symantec: Trojan.Gen.MBT
            - Symantec Mobile Insight: AppRisk:Generisk
        2. VT Tags: android, apk, contains-elf
        3. No IoC found

#### OpenCV Loader

    AbReMoCiGo -> 1d091fb25839409a602ec479b349d7a4403bbbd83879b59fe5e10265abf60402
        1. Detection engines: 3/65 (only static analysis)
            - AhnLab-V3: AppCare/Android.Gmt.1277582
            - Google: Detected
            - Ikarus: Trojan-Downloader.AndroidOS.Agent
        2. VT Tags: android, apk, contains-elf
        3. No IoC found

    RAbCiGo -> cdb71af9cc67390a89569e755e9c0459b50991e82a7447686eb2bc8489874364
        1. Detection engines: 3/65 (only static analysis)
            - AhnLab-V3: AppCare/Android.Gmt.1277582
            - Google: Detected
            - Ikarus: Trojan-Downloader.AndroidOS.Agent
        2. VT Tags: android, apk, contains-elf
        3. No IoC found

    RCiReMo -> bf627bbcdff3013ba7096d66dd58f4ff8d0dec4ec4835f8ca3366624d6b7738f
        1. Detection engines: 3/65 (only static analysis)
            - AhnLab-V3: AppCare/Android.Gmt.1277582
            - BitDefenderFalx: Android.Adware.Mobby.P
            - ESET-NOD32: A Variant Of Android/Obfus.VC
            - Google: Detected
            - Ikarus: Trojan-Downloader.AndroidOS.Agent
        2. VT Tags: android, apk, contains-elf
        3. No IoC found


### Telegram
#### Bitmap Loader

    AbReMoCiGo -> 0114f4f65613515a552a7b9ea303fd3988b1f1d99296ff304faf3940e8d81bb0
        1. Detection engines: 2/65 (only static analysis)
            - DrWeb: Android.Locker311.origin
            - Ikarus: Trojan-Downloader.AndroidOS.Agent
        2. VT Tags: android, apk
        3. No IoC found

    RAbCiGo -> 8809e0ab73296bb80887431383c2c106b3e75ef937d401605ad5f7305a45a32e
        1. Detection engines: 3/65 (both static and dynamic analysis with VirusTotal R2DBox and Zenbox Android)
            - DrWeb: Android.Locker311.origin
            - Ikarus: Trojan-Downloader.AndroidOS.Agent
            - QuickHeal: Android.Cerberus.GEN50478
        2. VT Tags: android, apk, obfuscated, reflection, telephony, check-gps
        3. No IoC found

    RCiReMo -> a9ef04cb90a832cdf42563549582edfbd94c885e1df1cba825b36b3b68b2c72d
        1. Detection engines: 1/65 (both static and dynamic analysis with VirusTotal R2DBox and Zenbox Android)
            - DrWeb: Android.Locker311.origin
        2. VT Tags: android, apk
        3. No IoC found

#### OpenCV Loader

    AbReMoCiGo -> 9cfecb509764f614390046460c915ada152be95c0ac753665a8df14035aad628
        1. Detection engines: 1/65 (only static analysis)
            - DrWeb: Android.Locker311.origin
            - Ikarus: Trojan-Downloader.AndroidOS.Agent
            - QuickHeal: Android.Cerberus.GEN50478
        2. VT Tags: android, apk
        3. No IoC found

    RAbCiGo -> ed54c47f590df093c1f8f1996b0bd517afe7c1f0c17f17fb720c946fec1ed669
        1. Detection engines: 2/65 (both static and dynamic analysis with Zenbox Android)
            - DrWeb: Android.Locker311.origin
            - Ikarus: Trojan-Downloader.AndroidOS.Agent
        2. VT Tags: android, apk, checks-gps, telephony, reflection
        3. Files: classes2.dex


    RCiReMo -> 2911772b5b81c62b04b907358e20a49cf7abe6b45fe6f2066f60351b0817f36a
        1. Detection engines: 1/65 (only static analysis)
            - DrWeb: Android.Locker311.origin
        2. VT Tags: android, apk
        3. Files: classes.dex



