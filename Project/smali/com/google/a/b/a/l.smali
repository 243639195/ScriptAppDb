.class public final Lcom/google/a/b/a/l;
.super Lcom/google/a/b/a/u;
.source "ExpandedProductResultParser.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/google/a/b/a/u;-><init>()V

    return-void
.end method

.method private static a(ILjava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 176
    invoke-virtual {p1, p0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x28

    if-eq v0, v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 p0, p0, 0x1

    .line 182
    invoke-virtual {p1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 184
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    .line 185
    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v0, v2, :cond_4

    .line 186
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0x29

    if-ne v2, v3, :cond_1

    .line 188
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const/16 v3, 0x30

    if-lt v2, v3, :cond_3

    const/16 v3, 0x39

    if-le v2, v3, :cond_2

    goto :goto_1

    .line 193
    :cond_2
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-object v1

    .line 195
    :cond_4
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static b(ILjava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 200
    invoke-virtual {p1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    .line 202
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge p1, v1, :cond_1

    .line 203
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x28

    if-ne v1, v2, :cond_0

    .line 207
    invoke-static {p1, p0}, Lcom/google/a/b/a/l;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 210
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 212
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 215
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static c(Lcom/google/a/r;)Lcom/google/a/b/a/k;
    .locals 24

    move-object/from16 v0, p0

    .line 1103
    iget-object v1, v0, Lcom/google/a/r;->e:Lcom/google/a/a;

    .line 46
    sget-object v2, Lcom/google/a/a;->n:Lcom/google/a/a;

    const/4 v3, 0x0

    if-eq v1, v2, :cond_0

    return-object v3

    .line 50
    :cond_0
    invoke-static/range {p0 .. p0}, Lcom/google/a/b/a/l;->b(Lcom/google/a/r;)Ljava/lang/String;

    move-result-object v5

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v6, v3

    move-object v7, v6

    move-object v8, v7

    move-object v9, v8

    move-object v10, v9

    move-object v11, v10

    move-object v12, v11

    move-object v13, v12

    move-object v14, v13

    move-object v15, v14

    move-object/from16 v16, v15

    move-object/from16 v17, v16

    move-object/from16 v18, v17

    const/4 v2, 0x0

    .line 69
    :goto_0
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_7

    .line 70
    invoke-static {v2, v5}, Lcom/google/a/b/a/l;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    return-object v3

    .line 76
    :cond_1
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v19

    const/16 v20, 0x2

    add-int/lit8 v19, v19, 0x2

    add-int v2, v2, v19

    .line 77
    invoke-static {v2, v5}, Lcom/google/a/b/a/l;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 78
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v19

    add-int v2, v2, v19

    const/16 v19, -0x1

    .line 80
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v3

    move/from16 v21, v2

    const/16 v2, 0x622

    move-object/from16 v22, v15

    const/4 v15, 0x3

    if-eq v3, v2, :cond_4

    const/16 v2, 0x624

    if-eq v3, v2, :cond_3

    const/16 v2, 0x626

    if-eq v3, v2, :cond_2

    packed-switch v3, :pswitch_data_0

    packed-switch v3, :pswitch_data_1

    packed-switch v3, :pswitch_data_2

    packed-switch v3, :pswitch_data_3

    packed-switch v3, :pswitch_data_4

    packed-switch v3, :pswitch_data_5

    goto/16 :goto_1

    :pswitch_0
    const-string v2, "3933"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/16 v2, 0x22

    goto/16 :goto_2

    :pswitch_1
    const-string v2, "3932"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/16 v2, 0x21

    goto/16 :goto_2

    :pswitch_2
    const-string v2, "3931"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/16 v2, 0x20

    goto/16 :goto_2

    :pswitch_3
    const-string v2, "3930"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/16 v2, 0x1f

    goto/16 :goto_2

    :pswitch_4
    const-string v2, "3923"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/16 v2, 0x1e

    goto/16 :goto_2

    :pswitch_5
    const-string v2, "3922"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/16 v2, 0x1d

    goto/16 :goto_2

    :pswitch_6
    const-string v2, "3921"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/16 v2, 0x1c

    goto/16 :goto_2

    :pswitch_7
    const-string v2, "3920"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/16 v2, 0x1b

    goto/16 :goto_2

    :pswitch_8
    const-string v2, "3209"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/16 v2, 0x1a

    goto/16 :goto_2

    :pswitch_9
    const-string v2, "3208"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/16 v2, 0x19

    goto/16 :goto_2

    :pswitch_a
    const-string v2, "3207"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/16 v2, 0x18

    goto/16 :goto_2

    :pswitch_b
    const-string v2, "3206"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/16 v2, 0x17

    goto/16 :goto_2

    :pswitch_c
    const-string v2, "3205"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/16 v2, 0x16

    goto/16 :goto_2

    :pswitch_d
    const-string v2, "3204"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/16 v2, 0x15

    goto/16 :goto_2

    :pswitch_e
    const-string v2, "3203"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/16 v2, 0x14

    goto/16 :goto_2

    :pswitch_f
    const-string v2, "3202"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/16 v2, 0x13

    goto/16 :goto_2

    :pswitch_10
    const-string v2, "3201"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/16 v2, 0x12

    goto/16 :goto_2

    :pswitch_11
    const-string v2, "3200"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/16 v2, 0x11

    goto/16 :goto_2

    :pswitch_12
    const-string v2, "3109"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/16 v2, 0x10

    goto/16 :goto_2

    :pswitch_13
    const-string v2, "3108"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/16 v2, 0xf

    goto/16 :goto_2

    :pswitch_14
    const-string v2, "3107"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/16 v2, 0xe

    goto/16 :goto_2

    :pswitch_15
    const-string v2, "3106"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/16 v2, 0xd

    goto/16 :goto_2

    :pswitch_16
    const-string v2, "3105"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/16 v2, 0xc

    goto/16 :goto_2

    :pswitch_17
    const-string v2, "3104"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/16 v2, 0xb

    goto/16 :goto_2

    :pswitch_18
    const-string v2, "3103"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/16 v2, 0xa

    goto/16 :goto_2

    :pswitch_19
    const-string v2, "3102"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/16 v2, 0x9

    goto :goto_2

    :pswitch_1a
    const-string v2, "3101"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/16 v2, 0x8

    goto :goto_2

    :pswitch_1b
    const-string v2, "3100"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x7

    goto :goto_2

    :pswitch_1c
    const-string v2, "11"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x3

    goto :goto_2

    :pswitch_1d
    const-string v2, "10"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x2

    goto :goto_2

    :pswitch_1e
    const-string v2, "01"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x1

    goto :goto_2

    :pswitch_1f
    const-string v2, "00"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x0

    goto :goto_2

    :cond_2
    const-string v2, "17"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x6

    goto :goto_2

    :cond_3
    const-string v2, "15"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x5

    goto :goto_2

    :cond_4
    const-string v2, "13"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x4

    goto :goto_2

    :cond_5
    :goto_1
    const/4 v2, -0x1

    :goto_2
    packed-switch v2, :pswitch_data_6

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 153
    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    move-object v3, v2

    move/from16 v2, v21

    move-object/from16 v15, v22

    goto/16 :goto_0

    .line 141
    :pswitch_20
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x4

    if-ge v2, v3, :cond_6

    const/4 v2, 0x0

    return-object v2

    :cond_6
    const/4 v2, 0x0

    .line 147
    invoke-virtual {v1, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v16

    const/4 v3, 0x0

    .line 148
    invoke-virtual {v1, v3, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    .line 149
    invoke-virtual {v4, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v17

    goto :goto_3

    :pswitch_21
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 135
    invoke-virtual {v4, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v16, v1

    goto :goto_3

    :pswitch_22
    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v14, "LB"

    .line 128
    invoke-virtual {v4, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    goto :goto_4

    :pswitch_23
    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v14, "KG"

    .line 114
    invoke-virtual {v4, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    :goto_4
    move-object v13, v1

    move-object v3, v2

    move/from16 v2, v21

    goto/16 :goto_0

    :pswitch_24
    move-object v12, v1

    goto :goto_5

    :pswitch_25
    move-object v11, v1

    goto :goto_5

    :pswitch_26
    move-object v10, v1

    goto :goto_5

    :pswitch_27
    move-object v9, v1

    goto :goto_5

    :pswitch_28
    move-object v8, v1

    goto :goto_5

    :pswitch_29
    move-object v6, v1

    goto :goto_5

    :pswitch_2a
    move-object v7, v1

    :goto_5
    move/from16 v2, v21

    move-object/from16 v15, v22

    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_7
    move-object/from16 v22, v15

    .line 158
    new-instance v1, Lcom/google/a/b/a/k;

    move-object v4, v1

    move-object/from16 v19, v0

    invoke-direct/range {v4 .. v19}, Lcom/google/a/b/a/k;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x600
        :pswitch_1f
        :pswitch_1e
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x61f
        :pswitch_1d
        :pswitch_1c
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x17ecde
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x17f09f
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x180b24
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x180b43
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x0
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
    .end packed-switch
.end method


# virtual methods
.method public final synthetic a(Lcom/google/a/r;)Lcom/google/a/b/a/q;
    .locals 24

    move-object/from16 v0, p1

    .line 3103
    iget-object v1, v0, Lcom/google/a/r;->e:Lcom/google/a/a;

    .line 2046
    sget-object v2, Lcom/google/a/a;->n:Lcom/google/a/a;

    const/4 v3, 0x0

    if-eq v1, v2, :cond_0

    return-object v3

    .line 2050
    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/google/a/b/a/l;->b(Lcom/google/a/r;)Ljava/lang/String;

    move-result-object v5

    .line 2065
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v6, v3

    move-object v7, v6

    move-object v8, v7

    move-object v9, v8

    move-object v10, v9

    move-object v11, v10

    move-object v12, v11

    move-object v13, v12

    move-object v14, v13

    move-object v15, v14

    move-object/from16 v16, v15

    move-object/from16 v17, v16

    move-object/from16 v18, v17

    const/4 v2, 0x0

    .line 2069
    :goto_0
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_7

    .line 2070
    invoke-static {v2, v5}, Lcom/google/a/b/a/l;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    return-object v3

    .line 2076
    :cond_1
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v19

    const/16 v20, 0x2

    add-int/lit8 v19, v19, 0x2

    add-int v2, v2, v19

    .line 2077
    invoke-static {v2, v5}, Lcom/google/a/b/a/l;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2078
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v19

    add-int v2, v2, v19

    const/16 v19, -0x1

    .line 2080
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v3

    move/from16 v21, v2

    const/16 v2, 0x622

    move-object/from16 v22, v15

    const/4 v15, 0x3

    if-eq v3, v2, :cond_4

    const/16 v2, 0x624

    if-eq v3, v2, :cond_3

    const/16 v2, 0x626

    if-eq v3, v2, :cond_2

    packed-switch v3, :pswitch_data_0

    packed-switch v3, :pswitch_data_1

    packed-switch v3, :pswitch_data_2

    packed-switch v3, :pswitch_data_3

    packed-switch v3, :pswitch_data_4

    packed-switch v3, :pswitch_data_5

    goto/16 :goto_1

    :pswitch_0
    const-string v2, "3933"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/16 v2, 0x22

    goto/16 :goto_2

    :pswitch_1
    const-string v2, "3932"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/16 v2, 0x21

    goto/16 :goto_2

    :pswitch_2
    const-string v2, "3931"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/16 v2, 0x20

    goto/16 :goto_2

    :pswitch_3
    const-string v2, "3930"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/16 v2, 0x1f

    goto/16 :goto_2

    :pswitch_4
    const-string v2, "3923"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/16 v2, 0x1e

    goto/16 :goto_2

    :pswitch_5
    const-string v2, "3922"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/16 v2, 0x1d

    goto/16 :goto_2

    :pswitch_6
    const-string v2, "3921"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/16 v2, 0x1c

    goto/16 :goto_2

    :pswitch_7
    const-string v2, "3920"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/16 v2, 0x1b

    goto/16 :goto_2

    :pswitch_8
    const-string v2, "3209"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/16 v2, 0x1a

    goto/16 :goto_2

    :pswitch_9
    const-string v2, "3208"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/16 v2, 0x19

    goto/16 :goto_2

    :pswitch_a
    const-string v2, "3207"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/16 v2, 0x18

    goto/16 :goto_2

    :pswitch_b
    const-string v2, "3206"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/16 v2, 0x17

    goto/16 :goto_2

    :pswitch_c
    const-string v2, "3205"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/16 v2, 0x16

    goto/16 :goto_2

    :pswitch_d
    const-string v2, "3204"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/16 v2, 0x15

    goto/16 :goto_2

    :pswitch_e
    const-string v2, "3203"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/16 v2, 0x14

    goto/16 :goto_2

    :pswitch_f
    const-string v2, "3202"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/16 v2, 0x13

    goto/16 :goto_2

    :pswitch_10
    const-string v2, "3201"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/16 v2, 0x12

    goto/16 :goto_2

    :pswitch_11
    const-string v2, "3200"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/16 v2, 0x11

    goto/16 :goto_2

    :pswitch_12
    const-string v2, "3109"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/16 v2, 0x10

    goto/16 :goto_2

    :pswitch_13
    const-string v2, "3108"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/16 v2, 0xf

    goto/16 :goto_2

    :pswitch_14
    const-string v2, "3107"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/16 v2, 0xe

    goto/16 :goto_2

    :pswitch_15
    const-string v2, "3106"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/16 v2, 0xd

    goto/16 :goto_2

    :pswitch_16
    const-string v2, "3105"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/16 v2, 0xc

    goto/16 :goto_2

    :pswitch_17
    const-string v2, "3104"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/16 v2, 0xb

    goto/16 :goto_2

    :pswitch_18
    const-string v2, "3103"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/16 v2, 0xa

    goto/16 :goto_2

    :pswitch_19
    const-string v2, "3102"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/16 v2, 0x9

    goto :goto_2

    :pswitch_1a
    const-string v2, "3101"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/16 v2, 0x8

    goto :goto_2

    :pswitch_1b
    const-string v2, "3100"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x7

    goto :goto_2

    :pswitch_1c
    const-string v2, "11"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x3

    goto :goto_2

    :pswitch_1d
    const-string v2, "10"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x2

    goto :goto_2

    :pswitch_1e
    const-string v2, "01"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x1

    goto :goto_2

    :pswitch_1f
    const-string v2, "00"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x0

    goto :goto_2

    :cond_2
    const-string v2, "17"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x6

    goto :goto_2

    :cond_3
    const-string v2, "15"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x5

    goto :goto_2

    :cond_4
    const-string v2, "13"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x4

    goto :goto_2

    :cond_5
    :goto_1
    const/4 v2, -0x1

    :goto_2
    packed-switch v2, :pswitch_data_6

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 2153
    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    move-object v3, v2

    move/from16 v2, v21

    move-object/from16 v15, v22

    goto/16 :goto_0

    .line 2141
    :pswitch_20
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x4

    if-ge v2, v3, :cond_6

    const/4 v2, 0x0

    return-object v2

    :cond_6
    const/4 v2, 0x0

    .line 2147
    invoke-virtual {v1, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v16

    const/4 v3, 0x0

    .line 2148
    invoke-virtual {v1, v3, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    .line 2149
    invoke-virtual {v4, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v17

    goto :goto_3

    :pswitch_21
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 2135
    invoke-virtual {v4, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v16, v1

    goto :goto_3

    :pswitch_22
    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v14, "LB"

    .line 2128
    invoke-virtual {v4, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    goto :goto_4

    :pswitch_23
    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v14, "KG"

    .line 2114
    invoke-virtual {v4, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    :goto_4
    move-object v13, v1

    move-object v3, v2

    move/from16 v2, v21

    goto/16 :goto_0

    :pswitch_24
    move-object v12, v1

    goto :goto_5

    :pswitch_25
    move-object v11, v1

    goto :goto_5

    :pswitch_26
    move-object v10, v1

    goto :goto_5

    :pswitch_27
    move-object v9, v1

    goto :goto_5

    :pswitch_28
    move-object v8, v1

    goto :goto_5

    :pswitch_29
    move-object v6, v1

    goto :goto_5

    :pswitch_2a
    move-object v7, v1

    :goto_5
    move/from16 v2, v21

    move-object/from16 v15, v22

    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_7
    move-object/from16 v22, v15

    .line 2158
    new-instance v1, Lcom/google/a/b/a/k;

    move-object v4, v1

    move-object/from16 v19, v0

    invoke-direct/range {v4 .. v19}, Lcom/google/a/b/a/k;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x600
        :pswitch_1f
        :pswitch_1e
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x61f
        :pswitch_1d
        :pswitch_1c
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x17ecde
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x17f09f
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x180b24
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x180b43
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x0
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
    .end packed-switch
.end method
