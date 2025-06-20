.class public final Lcom/google/a/b/a/ai;
.super Lcom/google/a/b/a/u;
.source "VINResultParser.java"


# static fields
.field private static final a:Ljava/util/regex/Pattern;

.field private static final b:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "[IOQ]"

    .line 31
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/a/b/a/ai;->a:Ljava/util/regex/Pattern;

    const-string v0, "[A-Z0-9]{17}"

    .line 32
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/a/b/a/ai;->b:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/google/a/b/a/u;-><init>()V

    return-void
.end method

.method private static a(I)I
    .locals 3

    const/16 v0, 0x9

    if-lez p0, :cond_0

    const/4 v1, 0x7

    if-gt p0, v1, :cond_0

    sub-int/2addr v0, p0

    return v0

    :cond_0
    const/16 v1, 0x8

    const/16 v2, 0xa

    if-ne p0, v1, :cond_1

    return v2

    :cond_1
    if-ne p0, v0, :cond_2

    const/4 p0, 0x0

    return p0

    :cond_2
    if-lt p0, v2, :cond_3

    const/16 v0, 0x11

    if-gt p0, v0, :cond_3

    rsub-int/lit8 p0, p0, 0x13

    return p0

    .line 102
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method private static a(Ljava/lang/CharSequence;)Z
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 65
    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const/16 v4, 0x8

    const/16 v5, 0x30

    const/16 v6, 0xa

    const/4 v7, 0x1

    if-ge v1, v3, :cond_8

    add-int/lit8 v3, v1, 0x1

    const/16 v8, 0x9

    if-lez v3, :cond_0

    const/4 v9, 0x7

    if-gt v3, v9, :cond_0

    rsub-int/lit8 v4, v3, 0x9

    goto :goto_1

    :cond_0
    if-ne v3, v4, :cond_1

    const/16 v4, 0xa

    goto :goto_1

    :cond_1
    if-ne v3, v8, :cond_2

    const/4 v4, 0x0

    goto :goto_1

    :cond_2
    if-lt v3, v6, :cond_7

    const/16 v4, 0x11

    if-gt v3, v4, :cond_7

    rsub-int/lit8 v4, v3, 0x13

    .line 66
    :goto_1
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v6, 0x41

    if-lt v1, v6, :cond_3

    const/16 v6, 0x49

    if-gt v1, v6, :cond_3

    add-int/lit8 v1, v1, -0x41

    add-int/2addr v1, v7

    goto :goto_2

    :cond_3
    const/16 v6, 0x4a

    if-lt v1, v6, :cond_4

    const/16 v6, 0x52

    if-gt v1, v6, :cond_4

    add-int/lit8 v1, v1, -0x4a

    add-int/2addr v1, v7

    goto :goto_2

    :cond_4
    const/16 v6, 0x53

    if-lt v1, v6, :cond_5

    const/16 v6, 0x5a

    if-gt v1, v6, :cond_5

    add-int/lit8 v1, v1, -0x53

    add-int/lit8 v1, v1, 0x2

    goto :goto_2

    :cond_5
    if-lt v1, v5, :cond_6

    const/16 v5, 0x39

    if-gt v1, v5, :cond_6

    add-int/lit8 v1, v1, -0x30

    :goto_2
    mul-int v4, v4, v1

    add-int/2addr v2, v4

    move v1, v3

    goto :goto_0

    .line 7086
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 6102
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 68
    :cond_8
    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p0

    .line 69
    rem-int/lit8 v2, v2, 0xb

    if-ge v2, v6, :cond_9

    add-int/2addr v2, v5

    int-to-char v1, v2

    goto :goto_3

    :cond_9
    if-ne v2, v6, :cond_b

    const/16 v1, 0x58

    :goto_3
    if-ne p0, v1, :cond_a

    return v7

    :cond_a
    return v0

    .line 7112
    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method private static b(I)C
    .locals 1

    const/16 v0, 0xa

    if-ge p0, v0, :cond_0

    add-int/lit8 p0, p0, 0x30

    int-to-char p0, p0

    return p0

    :cond_0
    if-ne p0, v0, :cond_1

    const/16 p0, 0x58

    return p0

    .line 112
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method private static b(C)I
    .locals 2

    const/16 v0, 0x41

    if-lt p0, v0, :cond_0

    const/16 v1, 0x49

    if-gt p0, v1, :cond_0

    sub-int/2addr p0, v0

    add-int/lit8 p0, p0, 0x1

    return p0

    :cond_0
    const/16 v0, 0x4a

    if-lt p0, v0, :cond_1

    const/16 v1, 0x52

    if-gt p0, v1, :cond_1

    sub-int/2addr p0, v0

    add-int/lit8 p0, p0, 0x1

    return p0

    :cond_1
    const/16 v0, 0x53

    if-lt p0, v0, :cond_2

    const/16 v1, 0x5a

    if-gt p0, v1, :cond_2

    sub-int/2addr p0, v0

    add-int/lit8 p0, p0, 0x2

    return p0

    :cond_2
    const/16 v0, 0x30

    if-lt p0, v0, :cond_3

    const/16 v1, 0x39

    if-gt p0, v1, :cond_3

    sub-int/2addr p0, v0

    return p0

    .line 86
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method private static b(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 9

    const/4 v0, 0x0

    .line 141
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/4 v1, 0x1

    .line 142
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p0

    const/16 v1, 0x45

    const/16 v2, 0x33

    const/16 v3, 0x39

    const/16 v4, 0x41

    if-eq v0, v3, :cond_5

    const/16 v5, 0x54

    const/16 v6, 0x53

    if-eq v0, v6, :cond_3

    const/16 v7, 0x5a

    const/16 v8, 0x52

    if-eq v0, v7, :cond_2

    const/16 v7, 0x57

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    goto/16 :goto_0

    :pswitch_0
    const/16 v0, 0x30

    if-eq p0, v0, :cond_0

    if-lt p0, v2, :cond_8

    if-gt p0, v3, :cond_8

    :cond_0
    const-string p0, "RU"

    return-object p0

    :pswitch_1
    const-string p0, "DE"

    return-object p0

    :pswitch_2
    const/16 v0, 0x46

    if-lt p0, v0, :cond_1

    if-gt p0, v8, :cond_1

    const-string p0, "FR"

    return-object p0

    :cond_1
    if-lt p0, v6, :cond_8

    if-gt p0, v7, :cond_8

    const-string p0, "ES"

    return-object p0

    :pswitch_3
    if-lt p0, v4, :cond_8

    if-gt p0, v1, :cond_8

    const-string p0, "IN"

    return-object p0

    :pswitch_4
    const-string p0, "CN"

    return-object p0

    :pswitch_5
    const/16 v0, 0x4c

    if-lt p0, v0, :cond_8

    if-gt p0, v8, :cond_8

    const-string p0, "KO"

    return-object p0

    :pswitch_6
    if-lt p0, v4, :cond_8

    if-gt p0, v5, :cond_8

    const-string p0, "JP"

    return-object p0

    :pswitch_7
    if-lt p0, v4, :cond_8

    if-gt p0, v7, :cond_8

    const-string p0, "MX"

    return-object p0

    :pswitch_8
    const-string p0, "CA"

    return-object p0

    :pswitch_9
    const-string p0, "US"

    return-object p0

    :cond_2
    if-lt p0, v4, :cond_8

    if-gt p0, v8, :cond_8

    const-string p0, "IT"

    return-object p0

    :cond_3
    if-lt p0, v4, :cond_4

    const/16 v0, 0x4d

    if-gt p0, v0, :cond_4

    const-string p0, "UK"

    return-object p0

    :cond_4
    const/16 v0, 0x4e

    if-lt p0, v0, :cond_8

    if-gt p0, v5, :cond_8

    const-string p0, "DE"

    return-object p0

    :cond_5
    if-lt p0, v4, :cond_6

    if-le p0, v1, :cond_7

    :cond_6
    if-lt p0, v2, :cond_8

    if-gt p0, v3, :cond_8

    :cond_7
    const-string p0, "BR"

    return-object p0

    :cond_8
    :goto_0
    const/4 p0, 0x0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x31
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_9
        :pswitch_9
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x4a
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x56
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static c(C)I
    .locals 2

    const/16 v0, 0x45

    if-lt p0, v0, :cond_0

    const/16 v1, 0x48

    if-gt p0, v1, :cond_0

    sub-int/2addr p0, v0

    add-int/lit16 p0, p0, 0x7c0

    return p0

    :cond_0
    const/16 v0, 0x4a

    if-lt p0, v0, :cond_1

    const/16 v1, 0x4e

    if-gt p0, v1, :cond_1

    sub-int/2addr p0, v0

    add-int/lit16 p0, p0, 0x7c4

    return p0

    :cond_1
    const/16 v0, 0x50

    if-ne p0, v0, :cond_2

    const/16 p0, 0x7c9

    return p0

    :cond_2
    const/16 v0, 0x52

    if-lt p0, v0, :cond_3

    const/16 v1, 0x54

    if-gt p0, v1, :cond_3

    sub-int/2addr p0, v0

    add-int/lit16 p0, p0, 0x7ca

    return p0

    :cond_3
    const/16 v0, 0x56

    if-lt p0, v0, :cond_4

    const/16 v1, 0x59

    if-gt p0, v1, :cond_4

    sub-int/2addr p0, v0

    add-int/lit16 p0, p0, 0x7cd

    return p0

    :cond_4
    const/16 v0, 0x31

    if-lt p0, v0, :cond_5

    const/16 v1, 0x39

    if-gt p0, v1, :cond_5

    sub-int/2addr p0, v0

    add-int/lit16 p0, p0, 0x7d1

    return p0

    :cond_5
    const/16 v0, 0x41

    if-lt p0, v0, :cond_6

    const/16 v1, 0x44

    if-gt p0, v1, :cond_6

    sub-int/2addr p0, v0

    add-int/lit16 p0, p0, 0x7da

    return p0

    .line 137
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method private static c(Lcom/google/a/r;)Lcom/google/a/b/a/ah;
    .locals 20

    move-object/from16 v0, p0

    .line 1103
    iget-object v1, v0, Lcom/google/a/r;->e:Lcom/google/a/a;

    .line 36
    sget-object v2, Lcom/google/a/a;->c:Lcom/google/a/a;

    const/4 v3, 0x0

    if-eq v1, v2, :cond_0

    return-object v3

    .line 2072
    :cond_0
    iget-object v0, v0, Lcom/google/a/r;->a:Ljava/lang/String;

    .line 40
    sget-object v1, Lcom/google/a/b/a/ai;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 41
    sget-object v0, Lcom/google/a/b/a/ai;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_1

    return-object v3

    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 3065
    :goto_0
    :try_start_0
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v4

    const/16 v6, 0x8

    const/16 v7, 0x30

    const/16 v8, 0x53

    const/16 v9, 0x4a

    const/16 v10, 0x39

    const/16 v11, 0xa

    const/16 v12, 0x9

    const/4 v13, 0x1

    const/16 v14, 0x52

    const/16 v15, 0x41

    if-ge v1, v4, :cond_a

    add-int/lit8 v4, v1, 0x1

    if-lez v4, :cond_2

    const/4 v0, 0x7

    if-gt v4, v0, :cond_2

    rsub-int/lit8 v0, v4, 0x9

    goto :goto_1

    :cond_2
    if-ne v4, v6, :cond_3

    const/16 v0, 0xa

    goto :goto_1

    :cond_3
    if-ne v4, v12, :cond_4

    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    if-lt v4, v11, :cond_9

    const/16 v0, 0x11

    if-gt v4, v0, :cond_9

    rsub-int/lit8 v0, v4, 0x13

    .line 3066
    :goto_1
    invoke-interface {v5, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    if-lt v1, v15, :cond_5

    const/16 v6, 0x49

    if-gt v1, v6, :cond_5

    add-int/lit8 v1, v1, -0x41

    add-int/2addr v1, v13

    goto :goto_2

    :cond_5
    if-lt v1, v9, :cond_6

    if-gt v1, v14, :cond_6

    add-int/lit8 v1, v1, -0x4a

    add-int/2addr v1, v13

    goto :goto_2

    :cond_6
    if-lt v1, v8, :cond_7

    const/16 v6, 0x5a

    if-gt v1, v6, :cond_7

    add-int/lit8 v1, v1, -0x53

    add-int/lit8 v1, v1, 0x2

    goto :goto_2

    :cond_7
    if-lt v1, v7, :cond_8

    if-gt v1, v10, :cond_8

    add-int/lit8 v1, v1, -0x30

    :goto_2
    mul-int v0, v0, v1

    add-int/2addr v2, v0

    move v1, v4

    goto :goto_0

    .line 4086
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 3102
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 3068
    :cond_a
    invoke-interface {v5, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 3069
    rem-int/lit8 v2, v2, 0xb

    if-ge v2, v11, :cond_b

    add-int/2addr v2, v7

    int-to-char v1, v2

    goto :goto_3

    :cond_b
    if-ne v2, v11, :cond_1e

    const/16 v1, 0x58

    :goto_3
    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_4

    :cond_c
    const/4 v0, 0x0

    :goto_4
    if-nez v0, :cond_d

    return-object v3

    :cond_d
    const/4 v0, 0x3

    const/4 v1, 0x0

    .line 48
    invoke-virtual {v5, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 49
    new-instance v16, Lcom/google/a/b/a/ah;

    .line 51
    invoke-virtual {v5, v0, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    const/16 v4, 0x11

    .line 52
    invoke-virtual {v5, v12, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    .line 4141
    invoke-interface {v2, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 4142
    invoke-interface {v2, v13}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    const/16 v13, 0x54

    const/16 v3, 0x45

    if-eq v1, v10, :cond_13

    if-eq v1, v8, :cond_11

    const/16 v11, 0x5a

    if-eq v1, v11, :cond_10

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    packed-switch v1, :pswitch_data_2

    goto/16 :goto_5

    :pswitch_0
    if-eq v4, v7, :cond_e

    const/16 v1, 0x33

    if-lt v4, v1, :cond_16

    if-gt v4, v10, :cond_16

    :cond_e
    :try_start_1
    const-string v1, "RU"

    goto/16 :goto_6

    :pswitch_1
    const-string v1, "DE"

    goto/16 :goto_6

    :pswitch_2
    const/16 v1, 0x46

    if-lt v4, v1, :cond_f

    if-gt v4, v14, :cond_f

    const-string v1, "FR"

    goto/16 :goto_6

    :cond_f
    if-lt v4, v8, :cond_16

    const/16 v1, 0x57

    if-gt v4, v1, :cond_16

    const-string v1, "ES"

    goto :goto_6

    :pswitch_3
    if-lt v4, v15, :cond_16

    if-gt v4, v3, :cond_16

    const-string v1, "IN"

    goto :goto_6

    :pswitch_4
    const-string v1, "CN"

    goto :goto_6

    :pswitch_5
    const/16 v1, 0x4c

    if-lt v4, v1, :cond_16

    if-gt v4, v14, :cond_16

    const-string v1, "KO"

    goto :goto_6

    :pswitch_6
    if-lt v4, v15, :cond_16

    if-gt v4, v13, :cond_16

    const-string v1, "JP"

    goto :goto_6

    :pswitch_7
    if-lt v4, v15, :cond_16

    const/16 v1, 0x57

    if-gt v4, v1, :cond_16

    const-string v1, "MX"

    goto :goto_6

    :pswitch_8
    const-string v1, "CA"

    goto :goto_6

    :pswitch_9
    const-string v1, "US"

    goto :goto_6

    :cond_10
    if-lt v4, v15, :cond_16

    if-gt v4, v14, :cond_16

    const-string v1, "IT"

    goto :goto_6

    :cond_11
    if-lt v4, v15, :cond_12

    const/16 v1, 0x4d

    if-gt v4, v1, :cond_12

    const-string v1, "UK"

    goto :goto_6

    :cond_12
    const/16 v1, 0x4e

    if-lt v4, v1, :cond_16

    if-gt v4, v13, :cond_16

    const-string v1, "DE"

    goto :goto_6

    :cond_13
    if-lt v4, v15, :cond_14

    if-le v4, v3, :cond_15

    :cond_14
    const/16 v1, 0x33

    if-lt v4, v1, :cond_16

    if-gt v4, v10, :cond_16

    :cond_15
    const-string v1, "BR"

    goto :goto_6

    :cond_16
    :goto_5
    const/4 v1, 0x0

    .line 54
    :goto_6
    invoke-virtual {v5, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 55
    invoke-virtual {v5, v12}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v3, :cond_17

    const/16 v6, 0x48

    if-gt v4, v6, :cond_17

    sub-int/2addr v4, v3

    add-int/lit16 v4, v4, 0x7c0

    :goto_7
    move v11, v4

    const/16 v3, 0xa

    goto :goto_8

    :cond_17
    if-lt v4, v9, :cond_18

    const/16 v3, 0x4e

    if-gt v4, v3, :cond_18

    sub-int/2addr v4, v9

    add-int/lit16 v4, v4, 0x7c4

    goto :goto_7

    :cond_18
    const/16 v3, 0x50

    if-ne v4, v3, :cond_19

    const/16 v3, 0x7c9

    const/16 v3, 0xa

    const/16 v11, 0x7c9

    goto :goto_8

    :cond_19
    if-lt v4, v14, :cond_1a

    if-gt v4, v13, :cond_1a

    sub-int/2addr v4, v14

    add-int/lit16 v4, v4, 0x7ca

    goto :goto_7

    :cond_1a
    const/16 v3, 0x56

    if-lt v4, v3, :cond_1b

    const/16 v3, 0x59

    if-gt v4, v3, :cond_1b

    add-int/lit8 v4, v4, -0x56

    add-int/lit16 v4, v4, 0x7cd

    goto :goto_7

    :cond_1b
    const/16 v3, 0x31

    if-lt v4, v3, :cond_1c

    if-gt v4, v10, :cond_1c

    add-int/lit8 v4, v4, -0x31

    add-int/lit16 v4, v4, 0x7d1

    goto :goto_7

    :cond_1c
    if-lt v4, v15, :cond_1d

    const/16 v3, 0x44

    if-gt v4, v3, :cond_1d

    sub-int/2addr v4, v15

    add-int/lit16 v4, v4, 0x7da

    goto :goto_7

    .line 56
    :goto_8
    invoke-virtual {v5, v3}, Ljava/lang/String;->charAt(I)C

    move-result v12

    const/16 v3, 0xb

    .line 57
    invoke-virtual {v5, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v4, v16

    move-object v6, v2

    move-object/from16 v7, v17

    move-object/from16 v8, v18

    move-object v9, v1

    move-object v10, v0

    invoke-direct/range {v4 .. v13}, Lcom/google/a/b/a/ah;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ICLjava/lang/String;)V

    return-object v16

    .line 5137
    :cond_1d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 4112
    :cond_1e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    const/4 v0, 0x0

    goto :goto_9

    :catch_1
    move-object v0, v3

    :goto_9
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x31
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_9
        :pswitch_9
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x4a
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x56
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final synthetic a(Lcom/google/a/r;)Lcom/google/a/b/a/q;
    .locals 0

    .line 29
    invoke-static {p1}, Lcom/google/a/b/a/ai;->c(Lcom/google/a/r;)Lcom/google/a/b/a/ah;

    move-result-object p1

    return-object p1
.end method
