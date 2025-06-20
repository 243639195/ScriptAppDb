.class public final Lcom/google/a/b/a/ag;
.super Lcom/google/a/b/a/u;
.source "VEventResultParser.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/google/a/b/a/u;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 95
    invoke-static {p0, p1, v1, v0}, Lcom/google/a/b/a/af;->b(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 96
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_1

    const-string v0, "mailto:"

    .line 113
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "MAILTO:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x7

    .line 114
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method private static b(Ljava/lang/CharSequence;Ljava/lang/String;)[Ljava/lang/String;
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 100
    invoke-static {p0, p1, v0, v1}, Lcom/google/a/b/a/af;->a(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 101
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_1

    .line 104
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    .line 105
    new-array v0, p1, [Ljava/lang/String;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_1

    .line 107
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static c(Lcom/google/a/r;)Lcom/google/a/b/a/g;
    .locals 17

    .line 33
    invoke-static/range {p0 .. p0}, Lcom/google/a/b/a/ag;->b(Lcom/google/a/r;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "BEGIN:VEVENT"

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    if-gez v1, :cond_0

    return-object v2

    :cond_0
    const-string v1, "SUMMARY"

    .line 39
    invoke-static {v1, v0}, Lcom/google/a/b/a/ag;->a(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v1, "DTSTART"

    .line 40
    invoke-static {v1, v0}, Lcom/google/a/b/a/ag;->a(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_1

    return-object v2

    :cond_1
    const-string v1, "DTEND"

    .line 44
    invoke-static {v1, v0}, Lcom/google/a/b/a/ag;->a(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v1, "DURATION"

    .line 45
    invoke-static {v1, v0}, Lcom/google/a/b/a/ag;->a(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v1, "LOCATION"

    .line 46
    invoke-static {v1, v0}, Lcom/google/a/b/a/ag;->a(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v1, "ORGANIZER"

    .line 47
    invoke-static {v1, v0}, Lcom/google/a/b/a/ag;->a(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/a/b/a/ag;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v1, "ATTENDEE"

    const/4 v3, 0x1

    const/4 v10, 0x0

    .line 1100
    invoke-static {v1, v0, v3, v10}, Lcom/google/a/b/a/af;->a(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1101
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_2

    goto :goto_1

    .line 1104
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v11

    .line 1105
    new-array v12, v11, [Ljava/lang/String;

    const/4 v13, 0x0

    :goto_0
    if-ge v13, v11, :cond_4

    .line 1107
    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/List;

    invoke-interface {v14, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    aput-object v14, v12, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    move-object v12, v2

    :cond_4
    if-eqz v12, :cond_5

    const/4 v1, 0x0

    .line 51
    :goto_2
    array-length v11, v12

    if-ge v1, v11, :cond_5

    .line 52
    aget-object v11, v12, v1

    invoke-static {v11}, Lcom/google/a/b/a/ag;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v12, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    const-string v1, "DESCRIPTION"

    .line 55
    invoke-static {v1, v0}, Lcom/google/a/b/a/ag;->a(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v1, "GEO"

    .line 57
    invoke-static {v1, v0}, Lcom/google/a/b/a/ag;->a(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-wide/high16 v13, 0x7ff8000000000000L    # Double.NaN

    if-nez v0, :cond_6

    move-wide v0, v13

    goto :goto_3

    :cond_6
    const/16 v1, 0x3b

    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_7

    return-object v2

    .line 69
    :cond_7
    :try_start_0
    invoke-virtual {v0, v10, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v13

    add-int/2addr v1, v3

    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    .line 77
    :goto_3
    :try_start_1
    new-instance v16, Lcom/google/a/b/a/g;

    move-object/from16 v3, v16

    move-object v10, v12

    move-wide v12, v13

    move-wide v14, v0

    invoke-direct/range {v3 .. v15}, Lcom/google/a/b/a/g;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;DD)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v16

    :catch_0
    return-object v2

    :catch_1
    return-object v2
.end method


# virtual methods
.method public final synthetic a(Lcom/google/a/r;)Lcom/google/a/b/a/q;
    .locals 0

    .line 29
    invoke-static {p1}, Lcom/google/a/b/a/ag;->c(Lcom/google/a/r;)Lcom/google/a/b/a/g;

    move-result-object p1

    return-object p1
.end method
