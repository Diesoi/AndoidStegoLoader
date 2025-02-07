.class public final Lcom/example/sampleapplication/L2;
.super Ljava/lang/Object;
.source "L2.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006J\u000e\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\t\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/example/sampleapplication/L2;",
        "",
        "()V",
        "d1",
        "",
        "bitmap",
        "Landroid/graphics/Bitmap;",
        "d2",
        "mat",
        "Lorg/opencv/core/Mat;",
        "app_debug"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final d1(Landroid/graphics/Bitmap;)Ljava/lang/String;
    .locals 5
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    const-string v0, "bitmap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .local v0, "binaryMessage":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v1}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v1

    .line 23
    .local v1, "pixel":I
    invoke-static {v1}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    const/4 v3, 0x2

    invoke-static {v3}, Lkotlin/text/CharsKt;->checkRadix(I)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "toString(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    .local v2, "blue":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x3

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "substring(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "Stego"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    sget-object v3, Lcom/example/sampleapplication/Utils;->INSTANCE:Lcom/example/sampleapplication/Utils;

    invoke-virtual {v3, v0}, Lcom/example/sampleapplication/Utils;->bitsToString(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public final d2(Lorg/opencv/core/Mat;)Ljava/lang/String;
    .locals 14
    .param p1, "mat"    # Lorg/opencv/core/Mat;

    const-string v0, "mat"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .local v0, "binaryMessage":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "x":I
    invoke-virtual {p1}, Lorg/opencv/core/Mat;->height()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_1

    .line 44
    const/4 v3, 0x0

    .local v3, "y":I
    invoke-virtual {p1}, Lorg/opencv/core/Mat;->width()I

    move-result v4

    :goto_1
    if-ge v3, v4, :cond_0

    .line 45
    invoke-virtual {p1, v1, v3}, Lorg/opencv/core/Mat;->get(II)[D

    move-result-object v5

    .line 46
    .local v5, "pixel":[D
    const/4 v6, 0x2

    aget-wide v7, v5, v6

    double-to-int v7, v7

    invoke-static {v6}, Lkotlin/text/CharsKt;->checkRadix(I)I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v7

    const-string v8, "toString(...)"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v9, 0x8

    const/16 v10, 0x30

    invoke-static {v7, v9, v10}, Lkotlin/text/StringsKt;->padStart(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v7

    .line 47
    .local v7, "red":Ljava/lang/String;
    const/4 v11, 0x1

    aget-wide v11, v5, v11

    double-to-int v11, v11

    invoke-static {v6}, Lkotlin/text/CharsKt;->checkRadix(I)I

    move-result v12

    invoke-static {v11, v12}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v11, v9, v10}, Lkotlin/text/StringsKt;->padStart(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v11

    .line 48
    .local v11, "green":Ljava/lang/String;
    const/4 v12, 0x0

    aget-wide v12, v5, v12

    double-to-int v12, v12

    invoke-static {v6}, Lkotlin/text/CharsKt;->checkRadix(I)I

    move-result v13

    invoke-static {v12, v13}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v12, v9, v10}, Lkotlin/text/StringsKt;->padStart(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v8

    .line 50
    .local v8, "blue":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x3

    invoke-virtual {v7, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, "substring(...)"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v7, v9

    .line 51
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x3

    invoke-virtual {v11, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    .end local v11    # "green":Ljava/lang/String;
    .local v9, "green":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v11

    sub-int/2addr v11, v6

    invoke-virtual {v8, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    .end local v8    # "blue":Ljava/lang/String;
    .local v6, "blue":Ljava/lang/String;
    sget-object v8, Lcom/example/sampleapplication/Utils;->INSTANCE:Lcom/example/sampleapplication/Utils;

    invoke-virtual {v8, v0, v7, v9, v6}, Lcom/example/sampleapplication/Utils;->appendBit(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 44
    .end local v5    # "pixel":[D
    .end local v6    # "blue":Ljava/lang/String;
    .end local v7    # "red":Ljava/lang/String;
    .end local v9    # "green":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 43
    .end local v3    # "y":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 57
    .end local v1    # "x":I
    :cond_1
    const-string v1, "Stego"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    sget-object v1, Lcom/example/sampleapplication/Utils;->INSTANCE:Lcom/example/sampleapplication/Utils;

    invoke-virtual {v1, v0}, Lcom/example/sampleapplication/Utils;->bitsToString(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
