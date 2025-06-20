.class public final Lcom/google/a/b/a/af;
.super Lcom/google/a/b/a/u;
.source "VCardResultParser.java"


# static fields
.field private static final a:Ljava/util/regex/Pattern;

.field private static final b:Ljava/util/regex/Pattern;

.field private static final c:Ljava/util/regex/Pattern;

.field private static final d:Ljava/util/regex/Pattern;

.field private static final e:Ljava/util/regex/Pattern;

.field private static final f:Ljava/util/regex/Pattern;

.field private static final g:Ljava/util/regex/Pattern;

.field private static final h:Ljava/util/regex/Pattern;

.field private static final i:Ljava/util/regex/Pattern;

.field private static final j:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "BEGIN:VCARD"

    const/4 v1, 0x2

    .line 39
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/a/b/a/af;->a:Ljava/util/regex/Pattern;

    const-string v0, "\\d{4}-?\\d{2}-?\\d{2}"

    .line 40
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/a/b/a/af;->b:Ljava/util/regex/Pattern;

    const-string v0, "\r\n[ \t]"

    .line 41
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/a/b/a/af;->c:Ljava/util/regex/Pattern;

    const-string v0, "\\\\[nN]"

    .line 42
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/a/b/a/af;->d:Ljava/util/regex/Pattern;

    const-string v0, "\\\\([,;\\\\])"

    .line 43
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/a/b/a/af;->e:Ljava/util/regex/Pattern;

    const-string v0, "="

    .line 44
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/a/b/a/af;->f:Ljava/util/regex/Pattern;

    const-string v0, ";"

    .line 45
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/a/b/a/af;->g:Ljava/util/regex/Pattern;

    const-string v0, "(?<!\\\\);+"

    .line 46
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/a/b/a/af;->h:Ljava/util/regex/Pattern;

    const-string v0, ","

    .line 47
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/a/b/a/af;->i:Ljava/util/regex/Pattern;

    const-string v0, "[;,]"

    .line 48
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/a/b/a/af;->j:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/google/a/b/a/u;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .line 224
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 225
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 226
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    .line 228
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    const/16 v5, 0xa

    if-eq v4, v5, :cond_1

    const/16 v6, 0xd

    if-eq v4, v6, :cond_1

    const/16 v7, 0x3d

    if-eq v4, v7, :cond_0

    .line 248
    invoke-static {v2, p1, v1}, Lcom/google/a/b/a/af;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 249
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v0, -0x2

    if-ge v3, v4, :cond_1

    add-int/lit8 v4, v3, 0x1

    .line 235
    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    if-eq v4, v6, :cond_1

    if-eq v4, v5, :cond_1

    add-int/lit8 v3, v3, 0x2

    .line 237
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    .line 238
    invoke-static {v4}, Lcom/google/a/b/a/af;->a(C)I

    move-result v4

    .line 239
    invoke-static {v5}, Lcom/google/a/b/a/af;->a(C)I

    move-result v5

    if-ltz v4, :cond_1

    if-ltz v5, :cond_1

    shl-int/lit8 v4, v4, 0x4

    add-int/2addr v4, v5

    .line 241
    invoke-virtual {v2, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 252
    :cond_2
    invoke-static {v2, p1, v1}, Lcom/google/a/b/a/af;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 253
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/util/List;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 285
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method static a(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/String;",
            "ZZ)",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    move-object/from16 v0, p1

    .line 109
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v4, v1, :cond_16

    .line 115
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "(?:^|\n)"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v7, p0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, "(?:;([^:]*))?:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x2

    invoke-static {v6, v8}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v6

    .line 116
    invoke-virtual {v6, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    if-lez v4, :cond_0

    add-int/lit8 v4, v4, -0x1

    .line 120
    :cond_0
    invoke-virtual {v6, v4}, Ljava/util/regex/Matcher;->find(I)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 123
    invoke-virtual {v6, v3}, Ljava/util/regex/Matcher;->end(I)I

    move-result v4

    const/4 v9, 0x1

    .line 125
    invoke-virtual {v6, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_6

    .line 131
    sget-object v10, Lcom/google/a/b/a/af;->g:Ljava/util/regex/Pattern;

    invoke-virtual {v10, v6}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v6

    array-length v10, v6

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_1
    if-ge v11, v10, :cond_5

    aget-object v2, v6, v11

    if-nez v12, :cond_1

    .line 133
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 135
    :cond_1
    invoke-interface {v12, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    sget-object v3, Lcom/google/a/b/a/af;->f:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v2, v8}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;I)[Ljava/lang/String;

    move-result-object v2

    .line 137
    array-length v3, v2

    if-le v3, v9, :cond_4

    const/4 v3, 0x0

    .line 138
    aget-object v8, v2, v3

    .line 139
    aget-object v2, v2, v9

    const-string v3, "ENCODING"

    .line 140
    invoke-virtual {v3, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "QUOTED-PRINTABLE"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v13, 0x1

    goto :goto_2

    :cond_2
    const-string v3, "CHARSET"

    .line 142
    invoke-virtual {v3, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    move-object v14, v2

    goto :goto_2

    :cond_3
    const-string v3, "VALUE"

    .line 144
    invoke-virtual {v3, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    move-object v15, v2

    :cond_4
    :goto_2
    add-int/lit8 v11, v11, 0x1

    const/4 v3, 0x0

    const/4 v8, 0x2

    goto :goto_1

    :cond_5
    move-object v2, v15

    goto :goto_3

    :cond_6
    const/4 v2, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_3
    move v3, v4

    :goto_4
    const/16 v6, 0xa

    .line 153
    invoke-virtual {v0, v6, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    if-ltz v3, :cond_b

    .line 154
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v6, v9

    if-ge v3, v6, :cond_8

    add-int/lit8 v6, v3, 0x1

    .line 155
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v10, 0x20

    if-eq v8, v10, :cond_7

    .line 156
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v8, 0x9

    if-ne v6, v8, :cond_8

    :cond_7
    add-int/lit8 v3, v3, 0x2

    goto :goto_4

    :cond_8
    if-eqz v13, :cond_b

    const/16 v6, 0x3d

    if-lez v3, :cond_a

    add-int/lit8 v8, v3, -0x1

    .line 159
    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-eq v8, v6, :cond_9

    goto :goto_5

    :cond_9
    const/4 v8, 0x2

    goto :goto_6

    :cond_a
    :goto_5
    const/4 v8, 0x2

    if-lt v3, v8, :cond_b

    add-int/lit8 v10, v3, -0x2

    .line 160
    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-ne v10, v6, :cond_b

    :goto_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_b
    if-gez v3, :cond_c

    move v4, v1

    :goto_7
    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_c
    if-le v3, v4, :cond_15

    if-nez v5, :cond_d

    .line 173
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v9}, Ljava/util/ArrayList;-><init>(I)V

    :cond_d
    if-lez v3, :cond_e

    add-int/lit8 v6, v3, -0x1

    .line 175
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v8, 0xd

    if-ne v6, v8, :cond_e

    add-int/lit8 v3, v3, -0x1

    .line 178
    :cond_e
    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    if-eqz p2, :cond_f

    .line 180
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    :cond_f
    if-eqz v13, :cond_10

    .line 183
    invoke-static {v4, v14}, Lcom/google/a/b/a/af;->a(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz p3, :cond_12

    .line 185
    sget-object v8, Lcom/google/a/b/a/af;->h:Ljava/util/regex/Pattern;

    invoke-virtual {v8, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    const-string v8, "\n"

    invoke-virtual {v4, v8}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    goto :goto_8

    :cond_10
    if-eqz p3, :cond_11

    .line 189
    sget-object v8, Lcom/google/a/b/a/af;->h:Ljava/util/regex/Pattern;

    invoke-virtual {v8, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    const-string v8, "\n"

    invoke-virtual {v4, v8}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 191
    :cond_11
    sget-object v8, Lcom/google/a/b/a/af;->c:Ljava/util/regex/Pattern;

    invoke-virtual {v8, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    const-string v8, ""

    invoke-virtual {v4, v8}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 192
    sget-object v8, Lcom/google/a/b/a/af;->d:Ljava/util/regex/Pattern;

    invoke-virtual {v8, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    const-string v8, "\n"

    invoke-virtual {v4, v8}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 193
    sget-object v8, Lcom/google/a/b/a/af;->e:Ljava/util/regex/Pattern;

    invoke-virtual {v8, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    const-string v8, "$1"

    invoke-virtual {v4, v8}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :cond_12
    :goto_8
    const-string v8, "uri"

    .line 196
    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 200
    :try_start_0
    invoke-static {v4}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URI;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_9

    :catch_0
    :cond_13
    move-object v2, v4

    :goto_9
    if-nez v12, :cond_14

    .line 206
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 207
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x0

    goto :goto_a

    :cond_14
    const/4 v4, 0x0

    .line 210
    invoke-interface {v12, v4, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 211
    invoke-interface {v5, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_a
    add-int/lit8 v2, v3, 0x1

    goto :goto_b

    :cond_15
    const/4 v4, 0x0

    add-int/lit8 v2, v3, 0x1

    :goto_b
    move v4, v2

    goto/16 :goto_7

    :cond_16
    return-object v5
.end method

.method private static a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;Ljava/lang/StringBuilder;)V
    .locals 2

    .line 259
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 260
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    if-nez p1, :cond_0

    .line 263
    new-instance p1, Ljava/lang/String;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p1, v0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    goto :goto_0

    .line 266
    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v1

    goto :goto_0

    .line 268
    :catch_0
    new-instance p1, Ljava/lang/String;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p1, v0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 271
    :goto_0
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 272
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    return-void
.end method

.method private static a(Ljava/lang/Iterable;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 342
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v1, 0x0

    .line 343
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x5

    .line 344
    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_1
    const/4 v6, 0x4

    if-ge v4, v6, :cond_0

    const/16 v7, 0x3b

    .line 348
    invoke-virtual {v2, v7, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v7

    if-ltz v7, :cond_0

    .line 349
    invoke-virtual {v2, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v5, v7, 0x1

    goto :goto_1

    .line 353
    :cond_0
    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v4

    .line 354
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v4, 0x64

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v4, 0x3

    .line 355
    invoke-static {v3, v4, v2}, Lcom/google/a/b/a/af;->a([Ljava/lang/String;ILjava/lang/StringBuilder;)V

    const/4 v4, 0x1

    .line 356
    invoke-static {v3, v4, v2}, Lcom/google/a/b/a/af;->a([Ljava/lang/String;ILjava/lang/StringBuilder;)V

    const/4 v4, 0x2

    .line 357
    invoke-static {v3, v4, v2}, Lcom/google/a/b/a/af;->a([Ljava/lang/String;ILjava/lang/StringBuilder;)V

    .line 358
    invoke-static {v3, v1, v2}, Lcom/google/a/b/a/af;->a([Ljava/lang/String;ILjava/lang/StringBuilder;)V

    .line 359
    invoke-static {v3, v6, v2}, Lcom/google/a/b/a/af;->a([Ljava/lang/String;ILjava/lang/StringBuilder;)V

    .line 360
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static a([Ljava/lang/String;ILjava/lang/StringBuilder;)V
    .locals 1

    .line 366
    aget-object v0, p0, p1

    if-eqz v0, :cond_1

    aget-object v0, p0, p1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 367
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/16 v0, 0x20

    .line 368
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 370
    :cond_0
    aget-object p0, p0, p1

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    return-void
.end method

.method private static a(Ljava/lang/CharSequence;)Z
    .locals 1

    if-eqz p0, :cond_1

    .line 331
    sget-object v0, Lcom/google/a/b/a/af;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private static a(Ljava/util/Collection;)[Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p0, :cond_3

    .line 289
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 292
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 293
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    const/4 v2, 0x0

    .line 294
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 295
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 296
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 299
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    invoke-interface {v0, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0

    :cond_3
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method static b(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/String;",
            "ZZ)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 280
    invoke-static {p0, p1, p2, p3}, Lcom/google/a/b/a/af;->a(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 281
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static b(Ljava/util/Collection;)[Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_6

    .line 303
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_3

    .line 306
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 307
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    const/4 v3, 0x0

    .line 308
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 309
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    const/4 v4, 0x1

    .line 311
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_4

    .line 312
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const/16 v6, 0x3d

    .line 313
    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-gez v6, :cond_2

    move-object v2, v5

    goto :goto_2

    :cond_2
    const-string v7, "TYPE"

    .line 319
    invoke-virtual {v5, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    add-int/lit8 v6, v6, 0x1

    .line 320
    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    move-object v2, v0

    .line 324
    :goto_2
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 327
    :cond_5
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    invoke-interface {v1, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0

    :cond_6
    :goto_3
    return-object v0
.end method

.method private static c(Lcom/google/a/r;)Lcom/google/a/b/a/d;
    .locals 25

    .line 55
    invoke-static/range {p0 .. p0}, Lcom/google/a/b/a/af;->b(Lcom/google/a/r;)Ljava/lang/String;

    move-result-object v0

    .line 56
    sget-object v1, Lcom/google/a/b/a/af;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 57
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_7

    :cond_0
    const-string v1, "FN"

    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 60
    invoke-static {v1, v0, v2, v4}, Lcom/google/a/b/a/af;->a(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v1

    const/4 v5, 0x2

    if-nez v1, :cond_2

    const-string v1, "N"

    .line 63
    invoke-static {v1, v0, v2, v4}, Lcom/google/a/b/a/af;->a(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1342
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 1343
    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const/4 v9, 0x5

    .line 1344
    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_1
    const/4 v12, 0x4

    if-ge v10, v12, :cond_1

    const/16 v13, 0x3b

    .line 1348
    invoke-virtual {v8, v13, v11}, Ljava/lang/String;->indexOf(II)I

    move-result v13

    if-ltz v13, :cond_1

    .line 1349
    invoke-virtual {v8, v11, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v11, v13, 0x1

    goto :goto_1

    .line 1353
    :cond_1
    invoke-virtual {v8, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v9, v10

    .line 1354
    new-instance v8, Ljava/lang/StringBuilder;

    const/16 v10, 0x64

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v10, 0x3

    .line 1355
    invoke-static {v9, v10, v8}, Lcom/google/a/b/a/af;->a([Ljava/lang/String;ILjava/lang/StringBuilder;)V

    .line 1356
    invoke-static {v9, v2, v8}, Lcom/google/a/b/a/af;->a([Ljava/lang/String;ILjava/lang/StringBuilder;)V

    .line 1357
    invoke-static {v9, v5, v8}, Lcom/google/a/b/a/af;->a([Ljava/lang/String;ILjava/lang/StringBuilder;)V

    .line 1358
    invoke-static {v9, v4, v8}, Lcom/google/a/b/a/af;->a([Ljava/lang/String;ILjava/lang/StringBuilder;)V

    .line 1359
    invoke-static {v9, v12, v8}, Lcom/google/a/b/a/af;->a([Ljava/lang/String;ILjava/lang/StringBuilder;)V

    .line 1360
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v4, v8}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    const-string v6, "NICKNAME"

    .line 66
    invoke-static {v6, v0, v2, v4}, Lcom/google/a/b/a/af;->b(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v6

    if-nez v6, :cond_3

    const/4 v9, 0x0

    goto :goto_2

    .line 67
    :cond_3
    sget-object v7, Lcom/google/a/b/a/af;->i:Ljava/util/regex/Pattern;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v7, v6}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v6

    move-object v9, v6

    :goto_2
    const-string v6, "TEL"

    .line 68
    invoke-static {v6, v0, v2, v4}, Lcom/google/a/b/a/af;->a(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v6

    const-string v7, "EMAIL"

    .line 69
    invoke-static {v7, v0, v2, v4}, Lcom/google/a/b/a/af;->a(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v7

    const-string v8, "NOTE"

    .line 70
    invoke-static {v8, v0, v4, v4}, Lcom/google/a/b/a/af;->b(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v8

    const-string v10, "ADR"

    .line 71
    invoke-static {v10, v0, v2, v2}, Lcom/google/a/b/a/af;->a(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v10

    const-string v11, "ORG"

    .line 72
    invoke-static {v11, v0, v2, v2}, Lcom/google/a/b/a/af;->b(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v11

    const-string v12, "BDAY"

    .line 73
    invoke-static {v12, v0, v2, v4}, Lcom/google/a/b/a/af;->b(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v12

    if-eqz v12, :cond_6

    .line 74
    invoke-interface {v12, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/CharSequence;

    if-eqz v13, :cond_5

    .line 2331
    sget-object v14, Lcom/google/a/b/a/af;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v14, v13}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/regex/Matcher;->matches()Z

    move-result v13

    if-eqz v13, :cond_4

    goto :goto_3

    :cond_4
    const/4 v13, 0x0

    goto :goto_4

    :cond_5
    :goto_3
    const/4 v13, 0x1

    :goto_4
    if-nez v13, :cond_6

    const/4 v12, 0x0

    :cond_6
    const-string v13, "TITLE"

    .line 77
    invoke-static {v13, v0, v2, v4}, Lcom/google/a/b/a/af;->b(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v13

    const-string v14, "URL"

    .line 78
    invoke-static {v14, v0, v2, v4}, Lcom/google/a/b/a/af;->a(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v14

    const-string v15, "IMPP"

    .line 79
    invoke-static {v15, v0, v2, v4}, Lcom/google/a/b/a/af;->b(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v15

    const-string v3, "GEO"

    .line 80
    invoke-static {v3, v0, v2, v4}, Lcom/google/a/b/a/af;->b(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_7

    const/4 v3, 0x0

    goto :goto_5

    .line 81
    :cond_7
    sget-object v2, Lcom/google/a/b/a/af;->j:Ljava/util/regex/Pattern;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v3

    :goto_5
    if-eqz v3, :cond_8

    .line 82
    array-length v0, v3

    if-eq v0, v5, :cond_8

    const/16 v23, 0x0

    goto :goto_6

    :cond_8
    move-object/from16 v23, v3

    .line 85
    :goto_6
    new-instance v0, Lcom/google/a/b/a/d;

    invoke-static {v1}, Lcom/google/a/b/a/af;->a(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 88
    invoke-static {v6}, Lcom/google/a/b/a/af;->a(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v3

    .line 89
    invoke-static {v6}, Lcom/google/a/b/a/af;->b(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v4

    .line 90
    invoke-static {v7}, Lcom/google/a/b/a/af;->a(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v5

    .line 91
    invoke-static {v7}, Lcom/google/a/b/a/af;->b(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v6

    .line 92
    invoke-static {v15}, Lcom/google/a/b/a/af;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v15

    .line 93
    invoke-static {v8}, Lcom/google/a/b/a/af;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v16

    .line 94
    invoke-static {v10}, Lcom/google/a/b/a/af;->a(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v17

    .line 95
    invoke-static {v10}, Lcom/google/a/b/a/af;->b(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v18

    .line 96
    invoke-static {v11}, Lcom/google/a/b/a/af;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v19

    .line 97
    invoke-static {v12}, Lcom/google/a/b/a/af;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v20

    .line 98
    invoke-static {v13}, Lcom/google/a/b/a/af;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v21

    .line 99
    invoke-static {v14}, Lcom/google/a/b/a/af;->a(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v22

    move-object v7, v0

    move-object v8, v1

    move-object v10, v2

    move-object v11, v3

    move-object v12, v4

    move-object v13, v5

    move-object v14, v6

    invoke-direct/range {v7 .. v23}, Lcom/google/a/b/a/d;-><init>([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-object v0

    :cond_9
    :goto_7
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public final synthetic a(Lcom/google/a/r;)Lcom/google/a/b/a/q;
    .locals 25

    .line 3055
    invoke-static/range {p1 .. p1}, Lcom/google/a/b/a/af;->b(Lcom/google/a/r;)Ljava/lang/String;

    move-result-object v0

    .line 3056
    sget-object v1, Lcom/google/a/b/a/af;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 3057
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_7

    :cond_0
    const-string v1, "FN"

    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 3060
    invoke-static {v1, v0, v2, v4}, Lcom/google/a/b/a/af;->a(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v1

    const/4 v5, 0x2

    if-nez v1, :cond_2

    const-string v1, "N"

    .line 3063
    invoke-static {v1, v0, v2, v4}, Lcom/google/a/b/a/af;->a(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 3342
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 3343
    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const/4 v9, 0x5

    .line 3344
    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_1
    const/4 v12, 0x4

    if-ge v10, v12, :cond_1

    const/16 v13, 0x3b

    .line 3348
    invoke-virtual {v8, v13, v11}, Ljava/lang/String;->indexOf(II)I

    move-result v13

    if-ltz v13, :cond_1

    .line 3349
    invoke-virtual {v8, v11, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v11, v13, 0x1

    goto :goto_1

    .line 3353
    :cond_1
    invoke-virtual {v8, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v9, v10

    .line 3354
    new-instance v8, Ljava/lang/StringBuilder;

    const/16 v10, 0x64

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v10, 0x3

    .line 3355
    invoke-static {v9, v10, v8}, Lcom/google/a/b/a/af;->a([Ljava/lang/String;ILjava/lang/StringBuilder;)V

    .line 3356
    invoke-static {v9, v2, v8}, Lcom/google/a/b/a/af;->a([Ljava/lang/String;ILjava/lang/StringBuilder;)V

    .line 3357
    invoke-static {v9, v5, v8}, Lcom/google/a/b/a/af;->a([Ljava/lang/String;ILjava/lang/StringBuilder;)V

    .line 3358
    invoke-static {v9, v4, v8}, Lcom/google/a/b/a/af;->a([Ljava/lang/String;ILjava/lang/StringBuilder;)V

    .line 3359
    invoke-static {v9, v12, v8}, Lcom/google/a/b/a/af;->a([Ljava/lang/String;ILjava/lang/StringBuilder;)V

    .line 3360
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v4, v8}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    const-string v6, "NICKNAME"

    .line 3066
    invoke-static {v6, v0, v2, v4}, Lcom/google/a/b/a/af;->b(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v6

    if-nez v6, :cond_3

    const/4 v9, 0x0

    goto :goto_2

    .line 3067
    :cond_3
    sget-object v7, Lcom/google/a/b/a/af;->i:Ljava/util/regex/Pattern;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v7, v6}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v6

    move-object v9, v6

    :goto_2
    const-string v6, "TEL"

    .line 3068
    invoke-static {v6, v0, v2, v4}, Lcom/google/a/b/a/af;->a(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v6

    const-string v7, "EMAIL"

    .line 3069
    invoke-static {v7, v0, v2, v4}, Lcom/google/a/b/a/af;->a(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v7

    const-string v8, "NOTE"

    .line 3070
    invoke-static {v8, v0, v4, v4}, Lcom/google/a/b/a/af;->b(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v8

    const-string v10, "ADR"

    .line 3071
    invoke-static {v10, v0, v2, v2}, Lcom/google/a/b/a/af;->a(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v10

    const-string v11, "ORG"

    .line 3072
    invoke-static {v11, v0, v2, v2}, Lcom/google/a/b/a/af;->b(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v11

    const-string v12, "BDAY"

    .line 3073
    invoke-static {v12, v0, v2, v4}, Lcom/google/a/b/a/af;->b(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v12

    if-eqz v12, :cond_6

    .line 3074
    invoke-interface {v12, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/CharSequence;

    if-eqz v13, :cond_5

    .line 4331
    sget-object v14, Lcom/google/a/b/a/af;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v14, v13}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/regex/Matcher;->matches()Z

    move-result v13

    if-eqz v13, :cond_4

    goto :goto_3

    :cond_4
    const/4 v13, 0x0

    goto :goto_4

    :cond_5
    :goto_3
    const/4 v13, 0x1

    :goto_4
    if-nez v13, :cond_6

    const/4 v12, 0x0

    :cond_6
    const-string v13, "TITLE"

    .line 3077
    invoke-static {v13, v0, v2, v4}, Lcom/google/a/b/a/af;->b(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v13

    const-string v14, "URL"

    .line 3078
    invoke-static {v14, v0, v2, v4}, Lcom/google/a/b/a/af;->a(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v14

    const-string v15, "IMPP"

    .line 3079
    invoke-static {v15, v0, v2, v4}, Lcom/google/a/b/a/af;->b(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v15

    const-string v3, "GEO"

    .line 3080
    invoke-static {v3, v0, v2, v4}, Lcom/google/a/b/a/af;->b(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_7

    const/4 v3, 0x0

    goto :goto_5

    .line 3081
    :cond_7
    sget-object v2, Lcom/google/a/b/a/af;->j:Ljava/util/regex/Pattern;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v3

    :goto_5
    if-eqz v3, :cond_8

    .line 3082
    array-length v0, v3

    if-eq v0, v5, :cond_8

    const/16 v23, 0x0

    goto :goto_6

    :cond_8
    move-object/from16 v23, v3

    .line 3085
    :goto_6
    new-instance v0, Lcom/google/a/b/a/d;

    invoke-static {v1}, Lcom/google/a/b/a/af;->a(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 3088
    invoke-static {v6}, Lcom/google/a/b/a/af;->a(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v3

    .line 3089
    invoke-static {v6}, Lcom/google/a/b/a/af;->b(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v4

    .line 3090
    invoke-static {v7}, Lcom/google/a/b/a/af;->a(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v5

    .line 3091
    invoke-static {v7}, Lcom/google/a/b/a/af;->b(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v6

    .line 3092
    invoke-static {v15}, Lcom/google/a/b/a/af;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v15

    .line 3093
    invoke-static {v8}, Lcom/google/a/b/a/af;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v16

    .line 3094
    invoke-static {v10}, Lcom/google/a/b/a/af;->a(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v17

    .line 3095
    invoke-static {v10}, Lcom/google/a/b/a/af;->b(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v18

    .line 3096
    invoke-static {v11}, Lcom/google/a/b/a/af;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v19

    .line 3097
    invoke-static {v12}, Lcom/google/a/b/a/af;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v20

    .line 3098
    invoke-static {v13}, Lcom/google/a/b/a/af;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v21

    .line 3099
    invoke-static {v14}, Lcom/google/a/b/a/af;->a(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v22

    move-object v7, v0

    move-object v8, v1

    move-object v10, v2

    move-object v11, v3

    move-object v12, v4

    move-object v13, v5

    move-object v14, v6

    invoke-direct/range {v7 .. v23}, Lcom/google/a/b/a/d;-><init>([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-object v0

    :cond_9
    :goto_7
    const/4 v0, 0x0

    return-object v0
.end method
