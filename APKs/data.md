## APK data

In the following there are the sha256 of the APKs with their correspondence in terms of kind of loaders and obfuscation.

In particular, Vanilla refers to the APKs with no obfuscation at all, while Obfuscated refers to the APKs with partial (Code), or full (APK) obfuscation. Specifically:
- *AbReMoCiGo* applies arithmetic branch, reorder, method overload, call indirection, goto insertion
- *RAbCiGo* applies reflection, arithmetic branch, call insertion, goto insertion
- *RCiReMo* applies reflection, call insertion, reorder, method overload


## Vanilla
### Custom
    Bitmap Loader -> 6126c8401f5719ddb3e38103f3b82d979cd075c9bd7190adeb9d5b0507cf7309
    OpenCV Loader -> 766e30624439a745904500d7ef1ac782414f9567093f6af8b2c3fcb9c30b7914
### Telegram
    Oringial Telegram application without the loader -> 6c5e7eaa2a3039f1cd2d99e4a06692b43e6bf892b878a4e66ff86f7f34f65053
    Bitmap Loader -> 7a50c88865f5b0cb44ee4898cef4d3308bec2097faf183c9eaf4a7ae50ff2c56
    OpenCV Loader -> 17e6e6545e1978fdbe97ec4fc4a76b86f1fee011dd5557639b6858eadc3f2579

## Obfuscated
### Custom
#### Bitmap Loader
##### APK Obfuscation
    AbReMoCiGo -> 7c9120548a2ae922477b481caa992c154f7d9f038a8ff64c791a987011e2f0a0
    RAbCiGo -> 55c89e0f4bf516089ea3d863083ac890804bd5ec14406828a51845740e0cb6cb
    RCiReMo -> 123363dca508c597a7d96759cefc118ca642a3bbf47b1b8aa2e687dad23555d3

##### Code Obfuscation
    65237a23562f458d4b58c4728049d97911883c53aeb395ec5e62a0a6e80b3998

#### OpenCV Loader
##### APK Obfuscation
    AbReMoCiGo -> 1d091fb25839409a602ec479b349d7a4403bbbd83879b59fe5e10265abf60402
    RAbCiGo -> cdb71af9cc67390a89569e755e9c0459b50991e82a7447686eb2bc8489874364
    RCiReMo -> bf627bbcdff3013ba7096d66dd58f4ff8d0dec4ec4835f8ca3366624d6b7738f

##### Code Obfuscation
    51f997d84814529ec44c8b330f78493610f53cb7e13dd04912c4091914406ae7

### Telegram
#### Bitmap Loader
##### APK Obfuscation
    AbReMoCiGo -> 0114f4f65613515a552a7b9ea303fd3988b1f1d99296ff304faf3940e8d81bb0
    RAbCiGo -> 8809e0ab73296bb80887431383c2c106b3e75ef937d401605ad5f7305a45a32e
    RCiReMo -> a9ef04cb90a832cdf42563549582edfbd94c885e1df1cba825b36b3b68b2c72d

##### Code Obfuscation
    ae6cb06536bc50b8400565e42b70884fca88482a4d27f2be1ea3d8797f5a7204

#### OpenCV Loader
##### APK Obfuscation
    AbReMoCiGo -> 9cfecb509764f614390046460c915ada152be95c0ac753665a8df14035aad628
    RAbCiGo -> ed54c47f590df093c1f8f1996b0bd517afe7c1f0c17f17fb720c946fec1ed669
    RCiReMo -> 2911772b5b81c62b04b907358e20a49cf7abe6b45fe6f2066f60351b0817f36a

##### Code Obfuscation
    ac4845474c129c18a9c986a69f480ab3d3c4fc359bb0358362f00dd43541dbbe

