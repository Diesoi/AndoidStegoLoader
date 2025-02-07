.class public final Lp3/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Bitmap;)Ljava/lang/String;
    .registers 12
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Lg7/d;
        .end annotation
    .end param
    .annotation build Lg7/d;
    .end annotation

    const-string v0, "bitmap"

    invoke-static {p1, v0}, Li6/l0;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_10
    if-ge v3, v1, :cond_34

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    move v5, v2

    :goto_17
    if-ge v5, v4, :cond_31

    invoke-virtual {p1, v5, v3}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v6

    invoke-static {v6}, Landroid/graphics/Color;->blue(I)I

    move-result v7

    invoke-static {v6}, Landroid/graphics/Color;->red(I)I

    move-result v8

    invoke-static {v6}, Landroid/graphics/Color;->green(I)I

    move-result v6

    sget-object v9, Lp3/e;->a:Lp3/e;

    invoke-virtual {v9, v0, v8, v6, v7}, Lp3/e;->a(Ljava/lang/StringBuilder;III)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_17

    :cond_31
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    :cond_34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "Stego"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p1, Lp3/e;->a:Lp3/e;

    invoke-virtual {p1, v0}, Lp3/e;->c(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final b(Lorg/opencv/core/Mat;)Ljava/lang/String;
    .registers 13
    .param p1    # Lorg/opencv/core/Mat;
        .annotation build Lg7/d;
        .end annotation
    .end param
    .annotation build Lg7/d;
    .end annotation

    const-string v0, "mat"

    invoke-static {p1, v0}, Li6/l0;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lorg/opencv/core/Mat;->Y()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_10
    if-ge v3, v1, :cond_33

    invoke-virtual {p1}, Lorg/opencv/core/Mat;->U0()I

    move-result v4

    move v5, v2

    :goto_17
    if-ge v5, v4, :cond_30

    invoke-virtual {p1, v3, v5}, Lorg/opencv/core/Mat;->V(II)[D

    move-result-object v6

    const/4 v7, 0x2

    aget-wide v7, v6, v7

    double-to-int v7, v7

    const/4 v8, 0x1

    aget-wide v8, v6, v8

    double-to-int v8, v8

    aget-wide v9, v6, v2

    double-to-int v6, v9

    sget-object v9, Lp3/e;->a:Lp3/e;

    invoke-virtual {v9, v0, v7, v8, v6}, Lp3/e;->a(Ljava/lang/StringBuilder;III)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_17

    :cond_30
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    :cond_33
    sget-object p1, Lp3/e;->a:Lp3/e;

    invoke-virtual {p1, v0}, Lp3/e;->c(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final c(Lorg/opencv/core/Mat;)Ljava/lang/String;
    .registers 11
    .param p1    # Lorg/opencv/core/Mat;
        .annotation build Lg7/d;
        .end annotation
    .end param
    .annotation build Lg7/d;
    .end annotation

    const-string v0, "mat"

    invoke-static {p1, v0}, Li6/l0;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lorg/opencv/core/Mat;->Y()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_10
    if-ge v3, v1, :cond_2b

    invoke-virtual {p1}, Lorg/opencv/core/Mat;->U0()I

    move-result v4

    move v5, v2

    :goto_17
    if-ge v5, v4, :cond_28

    invoke-virtual {p1, v3, v5}, Lorg/opencv/core/Mat;->V(II)[D

    move-result-object v6

    aget-wide v7, v6, v2

    double-to-int v6, v7

    and-int/lit8 v6, v6, 0x1

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_17

    :cond_28
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    :cond_2b
    sget-object p1, Lp3/e;->a:Lp3/e;

    invoke-virtual {p1, v0}, Lp3/e;->c(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final d(Lorg/opencv/core/Mat;)Ljava/lang/String;
    .registers 19
    .param p1    # Lorg/opencv/core/Mat;
        .annotation build Lg7/d;
        .end annotation
    .end param
    .annotation build Lg7/d;
    .end annotation

    move-object/from16 v0, p1

    const-string v1, "mat"

    invoke-static {v0, v1}, Li6/l0;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lorg/opencv/core/Mat;->U0()I

    move-result v2

    const/4 v3, 0x3

    div-int/2addr v2, v3

    invoke-virtual/range {p1 .. p1}, Lorg/opencv/core/Mat;->Y()I

    move-result v4

    div-int/2addr v4, v3

    const/4 v5, 0x1

    move v8, v5

    const/4 v7, 0x0

    :goto_1a
    if-ge v7, v3, :cond_93

    const/4 v9, 0x0

    :goto_1d
    if-ge v9, v3, :cond_88

    if-eq v8, v5, :cond_2d

    const/4 v10, 0x5

    if-eq v8, v10, :cond_2d

    const/16 v10, 0x9

    if-eq v8, v10, :cond_2d

    move/from16 v16, v4

    move-object/from16 v4, p0

    goto :goto_7f

    :cond_2d
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    const-string v11, "Stego"

    invoke-static {v11, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    mul-int v10, v9, v2

    mul-int v12, v7, v4

    const/4 v13, 0x2

    if-ge v9, v13, :cond_40

    add-int v14, v10, v2

    goto :goto_44

    :cond_40
    invoke-virtual/range {p1 .. p1}, Lorg/opencv/core/Mat;->U0()I

    move-result v14

    :goto_44
    if-ge v7, v13, :cond_49

    add-int v13, v12, v4

    goto :goto_4d

    :cond_49
    invoke-virtual/range {p1 .. p1}, Lorg/opencv/core/Mat;->Y()I

    move-result v13

    :goto_4d
    new-instance v15, Lj7/w;

    move/from16 v16, v4

    int-to-double v3, v10

    int-to-double v5, v12

    invoke-direct {v15, v3, v4, v5, v6}, Lj7/w;-><init>(DD)V

    new-instance v3, Lj7/w;

    int-to-double v4, v14

    int-to-double v12, v13

    invoke-direct {v3, v4, v5, v12, v13}, Lj7/w;-><init>(DD)V

    new-instance v4, Lj7/y;

    invoke-direct {v4, v15, v3}, Lj7/y;-><init>(Lj7/w;Lj7/w;)V

    new-instance v3, Lorg/opencv/core/Mat;

    invoke-direct {v3, v0, v4}, Lorg/opencv/core/Mat;-><init>(Lorg/opencv/core/Mat;Lj7/y;)V

    move-object/from16 v4, p0

    invoke-virtual {v4, v3}, Lp3/a;->b(Lorg/opencv/core/Mat;)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_7f
    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v9, v9, 0x1

    move/from16 v4, v16

    const/4 v3, 0x3

    const/4 v5, 0x1

    goto :goto_1d

    :cond_88
    move/from16 v16, v4

    move-object/from16 v4, p0

    add-int/lit8 v7, v7, 0x1

    move/from16 v4, v16

    const/4 v3, 0x3

    const/4 v5, 0x1

    goto :goto_1a

    :cond_93
    move-object/from16 v4, p0

    return-object v1
.end method

.method public final e(Lorg/opencv/core/Mat;)Ljava/lang/String;
    .registers 19
    .param p1    # Lorg/opencv/core/Mat;
        .annotation build Lg7/d;
        .end annotation
    .end param
    .annotation build Lg7/d;
    .end annotation

    move-object/from16 v0, p1

    const-string v1, "mat"

    invoke-static {v0, v1}, Li6/l0;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lorg/opencv/core/Mat;->U0()I

    move-result v2

    const/4 v3, 0x3

    div-int/2addr v2, v3

    invoke-virtual/range {p1 .. p1}, Lorg/opencv/core/Mat;->Y()I

    move-result v4

    div-int/2addr v4, v3

    const/4 v5, 0x1

    move v8, v5

    const/4 v7, 0x0

    :goto_1a
    if-ge v7, v3, :cond_93

    const/4 v9, 0x0

    :goto_1d
    if-ge v9, v3, :cond_88

    if-eq v8, v5, :cond_2d

    const/4 v10, 0x5

    if-eq v8, v10, :cond_2d

    const/16 v10, 0x9

    if-eq v8, v10, :cond_2d

    move/from16 v16, v4

    move-object/from16 v4, p0

    goto :goto_7f

    :cond_2d
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    const-string v11, "Stego"

    invoke-static {v11, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    mul-int v10, v9, v2

    mul-int v12, v7, v4

    const/4 v13, 0x2

    if-ge v9, v13, :cond_40

    add-int v14, v10, v2

    goto :goto_44

    :cond_40
    invoke-virtual/range {p1 .. p1}, Lorg/opencv/core/Mat;->U0()I

    move-result v14

    :goto_44
    if-ge v7, v13, :cond_49

    add-int v13, v12, v4

    goto :goto_4d

    :cond_49
    invoke-virtual/range {p1 .. p1}, Lorg/opencv/core/Mat;->Y()I

    move-result v13

    :goto_4d
    new-instance v15, Lj7/w;

    move/from16 v16, v4

    int-to-double v3, v10

    int-to-double v5, v12

    invoke-direct {v15, v3, v4, v5, v6}, Lj7/w;-><init>(DD)V

    new-instance v3, Lj7/w;

    int-to-double v4, v14

    int-to-double v12, v13

    invoke-direct {v3, v4, v5, v12, v13}, Lj7/w;-><init>(DD)V

    new-instance v4, Lj7/y;

    invoke-direct {v4, v15, v3}, Lj7/y;-><init>(Lj7/w;Lj7/w;)V

    new-instance v3, Lorg/opencv/core/Mat;

    invoke-direct {v3, v0, v4}, Lorg/opencv/core/Mat;-><init>(Lorg/opencv/core/Mat;Lj7/y;)V

    move-object/from16 v4, p0

    invoke-virtual {v4, v3}, Lp3/a;->c(Lorg/opencv/core/Mat;)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_7f
    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v9, v9, 0x1

    move/from16 v4, v16

    const/4 v3, 0x3

    const/4 v5, 0x1

    goto :goto_1d

    :cond_88
    move/from16 v16, v4

    move-object/from16 v4, p0

    add-int/lit8 v7, v7, 0x1

    move/from16 v4, v16

    const/4 v3, 0x3

    const/4 v5, 0x1

    goto :goto_1a

    :cond_93
    move-object/from16 v4, p0

    return-object v1
.end method

