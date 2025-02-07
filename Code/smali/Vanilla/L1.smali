.class public final Lcom/example/sampleapplication/L1;
.super Ljava/lang/Object;
.source "L1.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006J\u000e\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\tJ\u000e\u0010\n\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\tJ\u000e\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\tJ\u000e\u0010\u000c\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\t\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/example/sampleapplication/L1;",
        "",
        "()V",
        "d1",
        "",
        "bitmap",
        "Landroid/graphics/Bitmap;",
        "d2",
        "mat",
        "Lorg/opencv/core/Mat;",
        "d3",
        "d4",
        "d5",
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

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final d1(Landroid/graphics/Bitmap;)Ljava/lang/String;
    .locals 11
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    const-string v0, "bitmap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .local v0, "binaryMessage":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "-"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Stego"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    const/4 v1, 0x0

    .local v1, "y":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    :goto_0
    if-ge v1, v3, :cond_1

    .line 19
    const/4 v4, 0x0

    .local v4, "x":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    :goto_1
    if-ge v4, v5, :cond_0

    .line 20
    invoke-virtual {p1, v4, v1}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v6

    .line 21
    .local v6, "pixel":I
    invoke-static {v6}, Landroid/graphics/Color;->blue(I)I

    move-result v7

    .line 22
    .local v7, "blue":I
    invoke-static {v6}, Landroid/graphics/Color;->red(I)I

    move-result v8

    .line 23
    .local v8, "red":I
    invoke-static {v6}, Landroid/graphics/Color;->green(I)I

    move-result v9

    .line 25
    .local v9, "green":I
    sget-object v10, Lcom/example/sampleapplication/Utils;->INSTANCE:Lcom/example/sampleapplication/Utils;

    invoke-virtual {v10, v0, v8, v9, v7}, Lcom/example/sampleapplication/Utils;->appendBit(Ljava/lang/StringBuilder;III)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 19
    .end local v6    # "pixel":I
    .end local v7    # "blue":I
    .end local v8    # "red":I
    .end local v9    # "green":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 18
    .end local v4    # "x":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 28
    .end local v1    # "y":I
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    sget-object v1, Lcom/example/sampleapplication/Utils;->INSTANCE:Lcom/example/sampleapplication/Utils;

    invoke-virtual {v1, v0}, Lcom/example/sampleapplication/Utils;->bitsToString(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final d2(Lorg/opencv/core/Mat;)Ljava/lang/String;
    .locals 10
    .param p1, "mat"    # Lorg/opencv/core/Mat;

    const-string v0, "mat"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    .local v0, "binaryMessage":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "x":I
    invoke-virtual {p1}, Lorg/opencv/core/Mat;->height()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_1

    .line 36
    const/4 v3, 0x0

    .local v3, "y":I
    invoke-virtual {p1}, Lorg/opencv/core/Mat;->width()I

    move-result v4

    :goto_1
    if-ge v3, v4, :cond_0

    .line 37
    invoke-virtual {p1, v1, v3}, Lorg/opencv/core/Mat;->get(II)[D

    move-result-object v5

    .line 38
    .local v5, "pixel":[D
    const/4 v6, 0x2

    aget-wide v6, v5, v6

    double-to-int v6, v6

    .line 39
    .local v6, "red":I
    const/4 v7, 0x1

    aget-wide v7, v5, v7

    double-to-int v7, v7

    .line 40
    .local v7, "green":I
    const/4 v8, 0x0

    aget-wide v8, v5, v8

    double-to-int v8, v8

    .line 42
    .local v8, "blue":I
    sget-object v9, Lcom/example/sampleapplication/Utils;->INSTANCE:Lcom/example/sampleapplication/Utils;

    invoke-virtual {v9, v0, v6, v7, v8}, Lcom/example/sampleapplication/Utils;->appendBit(Ljava/lang/StringBuilder;III)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 36
    .end local v5    # "pixel":[D
    .end local v6    # "red":I
    .end local v7    # "green":I
    .end local v8    # "blue":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 35
    .end local v3    # "y":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 46
    .end local v1    # "x":I
    :cond_1
    sget-object v1, Lcom/example/sampleapplication/Utils;->INSTANCE:Lcom/example/sampleapplication/Utils;

    invoke-virtual {v1, v0}, Lcom/example/sampleapplication/Utils;->bitsToString(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final d3(Lorg/opencv/core/Mat;)Ljava/lang/String;
    .locals 8
    .param p1, "mat"    # Lorg/opencv/core/Mat;

    const-string v0, "mat"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    .local v0, "binaryMessage":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "x":I
    invoke-virtual {p1}, Lorg/opencv/core/Mat;->height()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_1

    .line 53
    const/4 v3, 0x0

    .local v3, "y":I
    invoke-virtual {p1}, Lorg/opencv/core/Mat;->width()I

    move-result v4

    :goto_1
    if-ge v3, v4, :cond_0

    .line 54
    invoke-virtual {p1, v1, v3}, Lorg/opencv/core/Mat;->get(II)[D

    move-result-object v5

    .line 55
    .local v5, "pixel":[D
    const/4 v6, 0x0

    aget-wide v6, v5, v6

    double-to-int v6, v6

    and-int/lit8 v6, v6, 0x1

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 53
    .end local v5    # "pixel":[D
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 52
    .end local v3    # "y":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 59
    .end local v1    # "x":I
    :cond_1
    sget-object v1, Lcom/example/sampleapplication/Utils;->INSTANCE:Lcom/example/sampleapplication/Utils;

    invoke-virtual {v1, v0}, Lcom/example/sampleapplication/Utils;->bitsToString(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final d4(Lorg/opencv/core/Mat;)Ljava/lang/String;
    .locals 18
    .param p1, "mat"    # Lorg/opencv/core/Mat;

    move-object/from16 v0, p1

    const-string v1, "mat"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    .line 65
    .local v1, "binaryMessage":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lorg/opencv/core/Mat;->width()I

    move-result v2

    const/4 v3, 0x3

    div-int/2addr v2, v3

    .line 66
    .local v2, "blockWidth":I
    invoke-virtual/range {p1 .. p1}, Lorg/opencv/core/Mat;->height()I

    move-result v4

    div-int/2addr v4, v3

    .line 68
    .local v4, "blockHeight":I
    const/4 v5, 0x1

    .line 69
    .local v5, "idx":I
    const/4 v6, 0x0

    .local v6, "row":I
    :goto_0
    if-ge v6, v3, :cond_3

    .line 70
    const/4 v7, 0x0

    .local v7, "col":I
    :goto_1
    if-ge v7, v3, :cond_2

    .line 71
    sparse-switch v5, :sswitch_data_0

    move-object/from16 v13, p0

    move/from16 v16, v4

    move v15, v6

    move/from16 v17, v7

    .end local v4    # "blockHeight":I
    .end local v6    # "row":I
    .end local v7    # "col":I
    .local v15, "row":I
    .local v16, "blockHeight":I
    .local v17, "col":I
    goto :goto_4

    .line 72
    .end local v15    # "row":I
    .end local v16    # "blockHeight":I
    .end local v17    # "col":I
    .restart local v4    # "blockHeight":I
    .restart local v6    # "row":I
    .restart local v7    # "col":I
    :sswitch_0
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "Stego"

    invoke-static {v9, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    mul-int v8, v7, v2

    .line 74
    .local v8, "x1":I
    mul-int v10, v6, v4

    .line 76
    .local v10, "y1":I
    const/4 v11, 0x2

    if-ge v7, v11, :cond_0

    add-int v12, v8, v2

    goto :goto_2

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lorg/opencv/core/Mat;->width()I

    move-result v12

    .line 77
    .local v12, "x2":I
    :goto_2
    if-ge v6, v11, :cond_1

    add-int v11, v10, v4

    goto :goto_3

    :cond_1
    invoke-virtual/range {p1 .. p1}, Lorg/opencv/core/Mat;->height()I

    move-result v11

    .line 79
    .local v11, "y2":I
    :goto_3
    new-instance v13, Lorg/opencv/core/Point;

    int-to-double v14, v8

    move/from16 v16, v4

    .end local v4    # "blockHeight":I
    .restart local v16    # "blockHeight":I
    int-to-double v3, v10

    invoke-direct {v13, v14, v15, v3, v4}, Lorg/opencv/core/Point;-><init>(DD)V

    move-object v3, v13

    .line 80
    .local v3, "p1":Lorg/opencv/core/Point;
    new-instance v4, Lorg/opencv/core/Point;

    int-to-double v13, v12

    move v15, v6

    move/from16 v17, v7

    .end local v6    # "row":I
    .end local v7    # "col":I
    .restart local v15    # "row":I
    .restart local v17    # "col":I
    int-to-double v6, v11

    invoke-direct {v4, v13, v14, v6, v7}, Lorg/opencv/core/Point;-><init>(DD)V

    .line 82
    .local v4, "p2":Lorg/opencv/core/Point;
    new-instance v6, Lorg/opencv/core/Rect;

    invoke-direct {v6, v3, v4}, Lorg/opencv/core/Rect;-><init>(Lorg/opencv/core/Point;Lorg/opencv/core/Point;)V

    .line 83
    .local v6, "rect":Lorg/opencv/core/Rect;
    new-instance v7, Lorg/opencv/core/Mat;

    invoke-direct {v7, v0, v6}, Lorg/opencv/core/Mat;-><init>(Lorg/opencv/core/Mat;Lorg/opencv/core/Rect;)V

    .line 84
    .local v7, "croppedMat":Lorg/opencv/core/Mat;
    move-object/from16 v13, p0

    invoke-virtual {v13, v7}, Lcom/example/sampleapplication/L1;->d2(Lorg/opencv/core/Mat;)Ljava/lang/String;

    move-result-object v14

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 86
    invoke-static {v9, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .end local v3    # "p1":Lorg/opencv/core/Point;
    .end local v4    # "p2":Lorg/opencv/core/Point;
    .end local v6    # "rect":Lorg/opencv/core/Rect;
    .end local v7    # "croppedMat":Lorg/opencv/core/Mat;
    .end local v8    # "x1":I
    .end local v10    # "y1":I
    .end local v11    # "y2":I
    .end local v12    # "x2":I
    :goto_4
    add-int/lit8 v5, v5, 0x1

    .line 88
    nop

    .line 70
    add-int/lit8 v7, v17, 0x1

    move-object/from16 v0, p1

    move v6, v15

    move/from16 v4, v16

    const/4 v3, 0x3

    .end local v17    # "col":I
    .local v7, "col":I
    goto :goto_1

    .end local v15    # "row":I
    .end local v16    # "blockHeight":I
    .local v4, "blockHeight":I
    .local v6, "row":I
    :cond_2
    move-object/from16 v13, p0

    move/from16 v16, v4

    move v15, v6

    move/from16 v17, v7

    .line 69
    .end local v4    # "blockHeight":I
    .end local v6    # "row":I
    .end local v7    # "col":I
    .restart local v15    # "row":I
    .restart local v16    # "blockHeight":I
    add-int/lit8 v6, v15, 0x1

    move-object/from16 v0, p1

    const/4 v3, 0x3

    .end local v15    # "row":I
    .restart local v6    # "row":I
    goto/16 :goto_0

    .line 92
    .end local v6    # "row":I
    .end local v16    # "blockHeight":I
    .restart local v4    # "blockHeight":I
    :cond_3
    return-object v1

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x5 -> :sswitch_0
        0x9 -> :sswitch_0
    .end sparse-switch
.end method

.method public final d5(Lorg/opencv/core/Mat;)Ljava/lang/String;
    .locals 18
    .param p1, "mat"    # Lorg/opencv/core/Mat;

    move-object/from16 v0, p1

    const-string v1, "mat"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    .line 98
    .local v1, "binaryMessage":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lorg/opencv/core/Mat;->width()I

    move-result v2

    const/4 v3, 0x3

    div-int/2addr v2, v3

    .line 99
    .local v2, "blockWidth":I
    invoke-virtual/range {p1 .. p1}, Lorg/opencv/core/Mat;->height()I

    move-result v4

    div-int/2addr v4, v3

    .line 101
    .local v4, "blockHeight":I
    const/4 v5, 0x1

    .line 102
    .local v5, "idx":I
    const/4 v6, 0x0

    .local v6, "row":I
    :goto_0
    if-ge v6, v3, :cond_3

    .line 103
    const/4 v7, 0x0

    .local v7, "col":I
    :goto_1
    if-ge v7, v3, :cond_2

    .line 104
    sparse-switch v5, :sswitch_data_0

    move-object/from16 v13, p0

    move/from16 v16, v4

    move v15, v6

    move/from16 v17, v7

    .end local v4    # "blockHeight":I
    .end local v6    # "row":I
    .end local v7    # "col":I
    .local v15, "row":I
    .local v16, "blockHeight":I
    .local v17, "col":I
    goto :goto_4

    .line 105
    .end local v15    # "row":I
    .end local v16    # "blockHeight":I
    .end local v17    # "col":I
    .restart local v4    # "blockHeight":I
    .restart local v6    # "row":I
    .restart local v7    # "col":I
    :sswitch_0
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "Stego"

    invoke-static {v9, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    mul-int v8, v7, v2

    .line 107
    .local v8, "x1":I
    mul-int v10, v6, v4

    .line 109
    .local v10, "y1":I
    const/4 v11, 0x2

    if-ge v7, v11, :cond_0

    add-int v12, v8, v2

    goto :goto_2

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lorg/opencv/core/Mat;->width()I

    move-result v12

    .line 110
    .local v12, "x2":I
    :goto_2
    if-ge v6, v11, :cond_1

    add-int v11, v10, v4

    goto :goto_3

    :cond_1
    invoke-virtual/range {p1 .. p1}, Lorg/opencv/core/Mat;->height()I

    move-result v11

    .line 112
    .local v11, "y2":I
    :goto_3
    new-instance v13, Lorg/opencv/core/Point;

    int-to-double v14, v8

    move/from16 v16, v4

    .end local v4    # "blockHeight":I
    .restart local v16    # "blockHeight":I
    int-to-double v3, v10

    invoke-direct {v13, v14, v15, v3, v4}, Lorg/opencv/core/Point;-><init>(DD)V

    move-object v3, v13

    .line 113
    .local v3, "p1":Lorg/opencv/core/Point;
    new-instance v4, Lorg/opencv/core/Point;

    int-to-double v13, v12

    move v15, v6

    move/from16 v17, v7

    .end local v6    # "row":I
    .end local v7    # "col":I
    .restart local v15    # "row":I
    .restart local v17    # "col":I
    int-to-double v6, v11

    invoke-direct {v4, v13, v14, v6, v7}, Lorg/opencv/core/Point;-><init>(DD)V

    .line 115
    .local v4, "p2":Lorg/opencv/core/Point;
    new-instance v6, Lorg/opencv/core/Rect;

    invoke-direct {v6, v3, v4}, Lorg/opencv/core/Rect;-><init>(Lorg/opencv/core/Point;Lorg/opencv/core/Point;)V

    .line 116
    .local v6, "rect":Lorg/opencv/core/Rect;
    new-instance v7, Lorg/opencv/core/Mat;

    invoke-direct {v7, v0, v6}, Lorg/opencv/core/Mat;-><init>(Lorg/opencv/core/Mat;Lorg/opencv/core/Rect;)V

    .line 117
    .local v7, "croppedMat":Lorg/opencv/core/Mat;
    move-object/from16 v13, p0

    invoke-virtual {v13, v7}, Lcom/example/sampleapplication/L1;->d3(Lorg/opencv/core/Mat;)Ljava/lang/String;

    move-result-object v14

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 119
    invoke-static {v9, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .end local v3    # "p1":Lorg/opencv/core/Point;
    .end local v4    # "p2":Lorg/opencv/core/Point;
    .end local v6    # "rect":Lorg/opencv/core/Rect;
    .end local v7    # "croppedMat":Lorg/opencv/core/Mat;
    .end local v8    # "x1":I
    .end local v10    # "y1":I
    .end local v11    # "y2":I
    .end local v12    # "x2":I
    :goto_4
    add-int/lit8 v5, v5, 0x1

    .line 121
    nop

    .line 103
    add-int/lit8 v7, v17, 0x1

    move-object/from16 v0, p1

    move v6, v15

    move/from16 v4, v16

    const/4 v3, 0x3

    .end local v17    # "col":I
    .local v7, "col":I
    goto :goto_1

    .end local v15    # "row":I
    .end local v16    # "blockHeight":I
    .local v4, "blockHeight":I
    .local v6, "row":I
    :cond_2
    move-object/from16 v13, p0

    move/from16 v16, v4

    move v15, v6

    move/from16 v17, v7

    .line 102
    .end local v4    # "blockHeight":I
    .end local v6    # "row":I
    .end local v7    # "col":I
    .restart local v15    # "row":I
    .restart local v16    # "blockHeight":I
    add-int/lit8 v6, v15, 0x1

    move-object/from16 v0, p1

    const/4 v3, 0x3

    .end local v15    # "row":I
    .restart local v6    # "row":I
    goto/16 :goto_0

    .line 125
    .end local v6    # "row":I
    .end local v16    # "blockHeight":I
    .restart local v4    # "blockHeight":I
    :cond_3
    return-object v1

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x5 -> :sswitch_0
        0x9 -> :sswitch_0
    .end sparse-switch
.end method
