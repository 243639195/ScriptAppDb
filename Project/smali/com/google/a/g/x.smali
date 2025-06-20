.class final Lcom/google/a/g/x;
.super Ljava/lang/Object;
.source "UPCEANExtensionSupport.java"


# static fields
.field private static final a:[I


# instance fields
.field private final b:Lcom/google/a/g/v;

.field private final c:Lcom/google/a/g/w;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    .line 26
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/a/g/x;->a:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x1
        0x2
    .end array-data
.end method

.method constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Lcom/google/a/g/v;

    invoke-direct {v0}, Lcom/google/a/g/v;-><init>()V

    iput-object v0, p0, Lcom/google/a/g/x;->b:Lcom/google/a/g/v;

    .line 29
    new-instance v0, Lcom/google/a/g/w;

    invoke-direct {v0}, Lcom/google/a/g/w;-><init>()V

    iput-object v0, p0, Lcom/google/a/g/x;->c:Lcom/google/a/g/w;

    return-void
.end method


# virtual methods
.method final a(ILcom/google/a/c/a;I)Lcom/google/a/r;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/m;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    .line 32
    sget-object v3, Lcom/google/a/g/x;->a:[I

    const/4 v4, 0x0

    move/from16 v5, p3

    invoke-static {v2, v5, v4, v3}, Lcom/google/a/g/y;->a(Lcom/google/a/c/a;IZ[I)[I

    move-result-object v3

    .line 34
    :try_start_0
    iget-object v5, v0, Lcom/google/a/g/x;->c:Lcom/google/a/g/w;

    .line 1043
    iget-object v6, v5, Lcom/google/a/g/w;->c:Ljava/lang/StringBuilder;

    .line 1044
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1065
    iget-object v5, v5, Lcom/google/a/g/w;->b:[I

    .line 1066
    aput v4, v5, v4

    const/4 v7, 0x1

    .line 1067
    aput v4, v5, v7

    const/4 v8, 0x2

    .line 1068
    aput v4, v5, v8

    const/4 v9, 0x3

    .line 1069
    aput v4, v5, v9

    .line 2048
    iget v10, v2, Lcom/google/a/c/a;->b:I

    .line 1071
    aget v11, v3, v7

    move v12, v11

    const/4 v11, 0x0

    const/4 v13, 0x0

    :goto_0
    const/4 v14, 0x5

    const/16 v15, 0x30

    const/16 v8, 0xa

    if-ge v11, v14, :cond_3

    if-ge v12, v10, :cond_3

    .line 1076
    sget-object v14, Lcom/google/a/g/y;->f:[[I

    invoke-static {v2, v5, v12, v14}, Lcom/google/a/g/y;->a(Lcom/google/a/c/a;[II[[I)I

    move-result v14

    .line 1077
    rem-int/lit8 v16, v14, 0xa

    add-int/lit8 v15, v16, 0x30

    int-to-char v15, v15

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1078
    array-length v15, v5

    move v4, v12

    const/4 v12, 0x0

    :goto_1
    if-ge v12, v15, :cond_0

    aget v16, v5, v12

    add-int v4, v4, v16

    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_0
    const/4 v12, 0x4

    if-lt v14, v8, :cond_1

    rsub-int/lit8 v8, v11, 0x4

    shl-int v8, v7, v8

    or-int/2addr v8, v13

    move v13, v8

    :cond_1
    if-eq v11, v12, :cond_2

    .line 1086
    invoke-virtual {v2, v4}, Lcom/google/a/c/a;->c(I)I

    move-result v4

    .line 1087
    invoke-virtual {v2, v4}, Lcom/google/a/c/a;->d(I)I

    move-result v4

    :cond_2
    move v12, v4

    add-int/lit8 v11, v11, 0x1

    const/4 v4, 0x0

    const/4 v8, 0x2

    goto :goto_0

    .line 1091
    :cond_3
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-eq v4, v14, :cond_4

    .line 1092
    invoke-static {}, Lcom/google/a/m;->a()Lcom/google/a/m;

    move-result-object v4

    throw v4

    :cond_4
    const/4 v4, 0x0

    :goto_2
    if-ge v4, v8, :cond_12

    .line 2120
    sget-object v5, Lcom/google/a/g/w;->a:[I

    aget v5, v5, v4

    if-ne v13, v5, :cond_11

    .line 1096
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3104
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v10

    add-int/lit8 v11, v10, -0x2

    const/4 v13, 0x0

    :goto_3
    if-ltz v11, :cond_5

    .line 3107
    invoke-interface {v5, v11}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v16

    add-int/lit8 v16, v16, -0x30

    add-int v13, v13, v16

    add-int/lit8 v11, v11, -0x2

    goto :goto_3

    :cond_5
    mul-int/lit8 v13, v13, 0x3

    sub-int/2addr v10, v7

    :goto_4
    if-ltz v10, :cond_6

    .line 3111
    invoke-interface {v5, v10}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v11

    sub-int/2addr v11, v15

    add-int/2addr v13, v11

    add-int/lit8 v10, v10, -0x2

    goto :goto_4

    :cond_6
    mul-int/lit8 v13, v13, 0x3

    .line 3114
    rem-int/2addr v13, v8

    if-eq v13, v4, :cond_7

    .line 1097
    invoke-static {}, Lcom/google/a/m;->a()Lcom/google/a/m;

    move-result-object v4

    throw v4

    .line 1047
    :cond_7
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3133
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x0

    if-eq v5, v14, :cond_8

    :goto_5
    move-object v8, v6

    goto/16 :goto_a

    :cond_8
    const/4 v5, 0x0

    .line 3147
    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-eq v9, v15, :cond_d

    const/16 v5, 0x35

    if-eq v9, v5, :cond_c

    const/16 v5, 0x39

    if-eq v9, v5, :cond_9

    const-string v5, ""

    goto :goto_7

    :cond_9
    const/4 v5, -0x1

    .line 3156
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v9

    const v10, 0x339c7b9

    if-eq v9, v10, :cond_a

    packed-switch v9, :pswitch_data_0

    goto :goto_6

    :pswitch_0
    const-string v9, "99991"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    const/4 v5, 0x1

    goto :goto_6

    :pswitch_1
    const-string v9, "99990"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    const/4 v5, 0x2

    goto :goto_6

    :cond_a
    const-string v9, "90000"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    const/4 v5, 0x0

    :cond_b
    :goto_6
    packed-switch v5, :pswitch_data_1

    const-string v5, ""

    goto :goto_7

    :pswitch_2
    const-string v5, "Used"

    goto :goto_9

    :pswitch_3
    const-string v5, "0.00"

    goto :goto_9

    :pswitch_4
    move-object v5, v6

    goto :goto_9

    :cond_c
    const-string v5, "$"

    goto :goto_7

    :cond_d
    const-string v5, "\u00a3"

    .line 3173
    :goto_7
    invoke-virtual {v4, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 3174
    div-int/lit8 v10, v9, 0x64

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    .line 3175
    rem-int/lit8 v9, v9, 0x64

    if-ge v9, v8, :cond_e

    const-string v8, "0"

    .line 3176
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_8

    :cond_e
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    .line 3177
    :goto_8
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x2e

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_9
    if-nez v5, :cond_f

    goto/16 :goto_5

    .line 3140
    :cond_f
    new-instance v8, Ljava/util/EnumMap;

    const-class v9, Lcom/google/a/s;

    invoke-direct {v8, v9}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 3141
    sget-object v9, Lcom/google/a/s;->f:Lcom/google/a/s;

    invoke-interface {v8, v9, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1050
    :goto_a
    new-instance v5, Lcom/google/a/r;

    const/4 v10, 0x2

    new-array v9, v10, [Lcom/google/a/t;

    new-instance v10, Lcom/google/a/t;

    const/4 v11, 0x0

    aget v13, v3, v11

    aget v14, v3, v7

    add-int/2addr v13, v14

    int-to-float v13, v13

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v13, v14

    int-to-float v14, v1

    invoke-direct {v10, v13, v14}, Lcom/google/a/t;-><init>(FF)V

    aput-object v10, v9, v11

    new-instance v10, Lcom/google/a/t;

    int-to-float v11, v12

    invoke-direct {v10, v11, v14}, Lcom/google/a/t;-><init>(FF)V

    aput-object v10, v9, v7

    sget-object v7, Lcom/google/a/a;->q:Lcom/google/a/a;

    invoke-direct {v5, v4, v6, v9, v7}, Lcom/google/a/r;-><init>(Ljava/lang/String;[B[Lcom/google/a/t;Lcom/google/a/a;)V

    if-eqz v8, :cond_10

    .line 1059
    invoke-virtual {v5, v8}, Lcom/google/a/r;->a(Ljava/util/Map;)V

    :cond_10
    return-object v5

    :cond_11
    const/4 v10, 0x2

    const/4 v11, 0x0

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_2

    .line 2124
    :cond_12
    invoke-static {}, Lcom/google/a/m;->a()Lcom/google/a/m;

    move-result-object v4

    throw v4
    :try_end_0
    .catch Lcom/google/a/q; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    :catch_0
    iget-object v4, v0, Lcom/google/a/g/x;->b:Lcom/google/a/g/v;

    invoke-virtual {v4, v1, v2, v3}, Lcom/google/a/g/v;->a(ILcom/google/a/c/a;[I)Lcom/google/a/r;

    move-result-object v1

    return-object v1

    :pswitch_data_0
    .packed-switch 0x33e01f0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method
