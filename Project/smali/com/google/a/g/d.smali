.class public final Lcom/google/a/g/d;
.super Lcom/google/a/g/s;
.source "Code128Writer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/a/g/d$a;
    }
.end annotation


# static fields
.field private static final a:I = 0x67

.field private static final b:I = 0x68

.field private static final c:I = 0x69

.field private static final d:I = 0x65

.field private static final e:I = 0x64

.field private static final f:I = 0x63

.field private static final g:I = 0x6a

.field private static final h:C = '\u00f1'

.field private static final i:C = '\u00f2'

.field private static final j:C = '\u00f3'

.field private static final k:C = '\u00f4'

.field private static final l:I = 0x66

.field private static final m:I = 0x61

.field private static final n:I = 0x60

.field private static final o:I = 0x65

.field private static final p:I = 0x64


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/google/a/g/s;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/CharSequence;I)I
    .locals 4

    .line 212
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 214
    sget p0, Lcom/google/a/g/d$a;->a:I

    return p0

    .line 216
    :cond_0
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0xf1

    if-ne v1, v2, :cond_1

    .line 218
    sget p0, Lcom/google/a/g/d$a;->d:I

    return p0

    :cond_1
    const/16 v2, 0x30

    if-lt v1, v2, :cond_6

    const/16 v3, 0x39

    if-le v1, v3, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 p1, p1, 0x1

    if-lt p1, v0, :cond_3

    .line 224
    sget p0, Lcom/google/a/g/d$a;->b:I

    return p0

    .line 226
    :cond_3
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p0

    if-lt p0, v2, :cond_5

    if-le p0, v3, :cond_4

    goto :goto_0

    .line 230
    :cond_4
    sget p0, Lcom/google/a/g/d$a;->c:I

    return p0

    .line 228
    :cond_5
    :goto_0
    sget p0, Lcom/google/a/g/d$a;->b:I

    return p0

    .line 221
    :cond_6
    :goto_1
    sget p0, Lcom/google/a/g/d$a;->a:I

    return p0
.end method

.method private static a(Ljava/lang/CharSequence;II)I
    .locals 3

    .line 234
    invoke-static {p0, p1}, Lcom/google/a/g/d;->a(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 235
    sget v1, Lcom/google/a/g/d$a;->b:I

    const/16 v2, 0x64

    if-ne v0, v1, :cond_0

    return v2

    .line 238
    :cond_0
    sget v1, Lcom/google/a/g/d$a;->a:I

    if-ne v0, v1, :cond_3

    .line 239
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ge p1, v0, :cond_2

    .line 240
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p0

    const/16 p1, 0x20

    const/16 v0, 0x65

    if-lt p0, p1, :cond_1

    if-ne p2, v0, :cond_2

    const/16 p1, 0x60

    if-ge p0, p1, :cond_2

    :cond_1
    return v0

    :cond_2
    return v2

    :cond_3
    const/16 v1, 0x63

    if-ne p2, v1, :cond_4

    return v1

    :cond_4
    if-ne p2, v2, :cond_c

    .line 252
    sget p2, Lcom/google/a/g/d$a;->d:I

    if-ne v0, p2, :cond_5

    return v2

    :cond_5
    add-int/lit8 p2, p1, 0x2

    .line 256
    invoke-static {p0, p2}, Lcom/google/a/g/d;->a(Ljava/lang/CharSequence;I)I

    move-result p2

    .line 257
    sget v0, Lcom/google/a/g/d$a;->a:I

    if-eq p2, v0, :cond_b

    sget v0, Lcom/google/a/g/d$a;->b:I

    if-ne p2, v0, :cond_6

    goto :goto_1

    .line 260
    :cond_6
    sget v0, Lcom/google/a/g/d$a;->d:I

    if-ne p2, v0, :cond_8

    add-int/lit8 p1, p1, 0x3

    .line 261
    invoke-static {p0, p1}, Lcom/google/a/g/d;->a(Ljava/lang/CharSequence;I)I

    move-result p0

    .line 262
    sget p1, Lcom/google/a/g/d$a;->c:I

    if-ne p0, p1, :cond_7

    return v1

    :cond_7
    return v2

    :cond_8
    add-int/lit8 p1, p1, 0x4

    .line 271
    :goto_0
    invoke-static {p0, p1}, Lcom/google/a/g/d;->a(Ljava/lang/CharSequence;I)I

    move-result p2

    sget v0, Lcom/google/a/g/d$a;->c:I

    if-ne p2, v0, :cond_9

    add-int/lit8 p1, p1, 0x2

    goto :goto_0

    .line 274
    :cond_9
    sget p0, Lcom/google/a/g/d$a;->b:I

    if-ne p2, p0, :cond_a

    return v2

    :cond_a
    return v1

    :cond_b
    :goto_1
    return v2

    .line 280
    :cond_c
    sget p2, Lcom/google/a/g/d$a;->d:I

    if-ne v0, p2, :cond_d

    add-int/lit8 p1, p1, 0x1

    .line 281
    invoke-static {p0, p1}, Lcom/google/a/g/d;->a(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 283
    :cond_d
    sget p0, Lcom/google/a/g/d$a;->c:I

    if-ne v0, p0, :cond_e

    return v1

    :cond_e
    return v2
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/google/a/a;IILjava/util/Map;)Lcom/google/a/c/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/a/a;",
            "II",
            "Ljava/util/Map<",
            "Lcom/google/a/g;",
            "*>;)",
            "Lcom/google/a/c/b;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/w;
        }
    .end annotation

    .line 69
    sget-object v0, Lcom/google/a/a;->e:Lcom/google/a/a;

    if-eq p2, v0, :cond_0

    .line 70
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p3, "Can only encode CODE_128, but got "

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 72
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/google/a/g/s;->a(Ljava/lang/String;Lcom/google/a/a;IILjava/util/Map;)Lcom/google/a/c/b;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/String;)[Z
    .locals 10

    .line 77
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_c

    const/16 v1, 0x50

    if-le v0, v1, :cond_0

    goto/16 :goto_8

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 85
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    packed-switch v3, :pswitch_data_0

    const/16 v4, 0x7f

    if-le v3, v4, :cond_1

    .line 95
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Bad character in input: "

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :pswitch_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 100
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    :cond_3
    :goto_1
    const/16 v8, 0x67

    if-ge v4, v0, :cond_8

    .line 108
    invoke-static {p1, v4, v5}, Lcom/google/a/g/d;->a(Ljava/lang/CharSequence;II)I

    move-result v9

    if-ne v9, v5, :cond_6

    .line 115
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x65

    packed-switch v8, :pswitch_data_1

    packed-switch v5, :pswitch_data_2

    add-int/lit8 v8, v4, 0x2

    .line 147
    invoke-virtual {p1, v4, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :pswitch_1
    if-ne v5, v9, :cond_4

    goto :goto_2

    :cond_4
    const/16 v9, 0x64

    goto :goto_2

    :pswitch_2
    const/16 v9, 0x60

    goto :goto_2

    :pswitch_3
    const/16 v9, 0x61

    goto :goto_2

    :pswitch_4
    const/16 v9, 0x66

    goto :goto_2

    .line 136
    :pswitch_5
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v8

    add-int/lit8 v9, v8, -0x20

    if-gez v9, :cond_5

    add-int/lit8 v9, v9, 0x60

    goto :goto_2

    .line 143
    :pswitch_6
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v8

    add-int/lit8 v9, v8, -0x20

    :cond_5
    :goto_2
    add-int/2addr v4, v3

    move v8, v9

    goto :goto_4

    :cond_6
    if-nez v5, :cond_7

    packed-switch v9, :pswitch_data_3

    const/16 v8, 0x69

    goto :goto_3

    :pswitch_7
    const/16 v8, 0x68

    goto :goto_3

    :cond_7
    move v8, v9

    :goto_3
    :pswitch_8
    move v5, v9

    .line 177
    :goto_4
    sget-object v9, Lcom/google/a/g/c;->a:[[I

    aget-object v9, v9, v8

    invoke-interface {v2, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    mul-int v8, v8, v7

    add-int/2addr v6, v8

    if-eqz v4, :cond_3

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 187
    :cond_8
    rem-int/2addr v6, v8

    .line 188
    sget-object p1, Lcom/google/a/g/c;->a:[[I

    aget-object p1, p1, v6

    invoke-interface {v2, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 191
    sget-object p1, Lcom/google/a/g/c;->a:[[I

    const/16 v0, 0x6a

    aget-object p1, p1, v0

    invoke-interface {v2, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 195
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    .line 196
    array-length v5, v4

    move v6, v0

    const/4 v0, 0x0

    :goto_6
    if-ge v0, v5, :cond_9

    aget v7, v4, v0

    add-int/2addr v6, v7

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_9
    move v0, v6

    goto :goto_5

    .line 202
    :cond_a
    new-array p1, v0, [Z

    .line 204
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    .line 205
    invoke-static {p1, v1, v2, v3}, Lcom/google/a/g/d;->a([ZI[IZ)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_7

    :cond_b
    return-object p1

    .line 80
    :cond_c
    :goto_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v1, "Contents length should be between 1 and 80 characters, but got "

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_data_0
    .packed-switch 0xf1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xf1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x64
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x64
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method
