-dontwarn

# Enable aggressive shrinking
-dontshrink

# Enable aggressive optimization
-optimizationpasses 5
-allowaccessmodification
-optimizations !code/simplification/arithmetic,!field/*,!class/merging/*

# Enable aggressive obfuscation
-dontusemixedcaseclassnames
-dontskipnonpubliclibraryclasses
-dontpreverify
-verbose

# Keep attributes necessary for reflection
-keepattributes *Annotation*,EnclosingMethod,Signature,InnerClasses,SourceFile,LineNumberTable


# Keep the main entry point
-keep class com.example.sampleapplication.MainActivity {
    public static void main(java.lang.String[]);
}

# Keep all native method names
-keepclasseswithmembernames class * {
    native <methods>;
}

# Keep all classes that implement Parcelable
-keep class * implements android.os.Parcelable {
    public static final android.os.Parcelable$Creator *;
}

