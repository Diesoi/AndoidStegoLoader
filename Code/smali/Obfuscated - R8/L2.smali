.class public final Lp3/b;
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
    .registers 4
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

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v1}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result p1

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    const/4 v1, 0x2

    invoke-static {v1}, Lw6/d;->a(I)I

    invoke-static {p1, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object p1

    const-string v1, "toString(...)"

    invoke-static {p1, v1}, Li6/l0;->o(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x3

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "substring(...)"

    invoke-static {p1, v1}, Li6/l0;->o(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "Stego"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p1, Lp3/e;->a:Lp3/e;

    invoke-virtual {p1, v0}, Lp3/e;->c(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final b(Lorg/opencv/core/Mat;)Ljava/lang/String;
    .registers 18
    .param p1    # Lorg/opencv/core/Mat;
        .annotation build Lg7/d;
        .end annotation
    .end param
    .annotation build Lg7/d;
    .end annotation

    move-object/from16 v0, p1

    const-string v1, "mat"

    invoke-static {v0, v1}, Li6/l0;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lorg/opencv/core/Mat;->Y()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_12
    if-ge v4, v2, :cond_8d

    invoke-virtual/range {p1 .. p1}, Lorg/opencv/core/Mat;->U0()I

    move-result v5

    move v6, v3

    :goto_19
    if-ge v6, v5, :cond_8a

    invoke-virtual {v0, v4, v6}, Lorg/opencv/core/Mat;->V(II)[D

    move-result-object v7

    const/4 v8, 0x2

    aget-wide v9, v7, v8

    double-to-int v9, v9

    invoke-static {v8}, Lw6/d;->a(I)I

    invoke-static {v9, v8}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v9

    const-string v10, "toString(...)"

    invoke-static {v9, v10}, Li6/l0;->o(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v11, 0x8

    const/16 v12, 0x30

    invoke-static {v9, v11, v12}, Lw6/h0;->R3(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v9

    const/4 v13, 0x1

    aget-wide v13, v7, v13

    double-to-int v13, v13

    invoke-static {v8}, Lw6/d;->a(I)I

    invoke-static {v13, v8}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13, v10}, Li6/l0;->o(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v13, v11, v12}, Lw6/h0;->R3(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v13

    aget-wide v14, v7, v3

    double-to-int v7, v14

    invoke-static {v8}, Lw6/d;->a(I)I

    invoke-static {v7, v8}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v10}, Li6/l0;->o(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7, v11, v12}, Lw6/h0;->R3(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x3

    invoke-virtual {v9, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, "substring(...)"

    invoke-static {v9, v10}, Li6/l0;->o(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v11

    add-int/lit8 v11, v11, -0x3

    invoke-virtual {v13, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v10}, Li6/l0;->o(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v12

    sub-int/2addr v12, v8

    invoke-virtual {v7, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v10}, Li6/l0;->o(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v8, Lp3/e;->a:Lp3/e;

    invoke-virtual {v8, v1, v9, v11, v7}, Lp3/e;->b(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_19

    :cond_8a
    add-int/lit8 v4, v4, 0x1

    goto :goto_12

    :cond_8d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Stego"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lp3/e;->a:Lp3/e;

    invoke-virtual {v0, v1}, Lp3/e;->c(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

