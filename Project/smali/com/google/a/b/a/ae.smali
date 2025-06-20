.class public final Lcom/google/a/b/a/ae;
.super Lcom/google/a/b/a/u;
.source "URLTOResultParser.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/google/a/b/a/u;-><init>()V

    return-void
.end method

.method private static c(Lcom/google/a/r;)Lcom/google/a/b/a/ac;
    .locals 3

    .line 32
    invoke-static {p0}, Lcom/google/a/b/a/ae;->b(Lcom/google/a/r;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "urlto:"

    .line 33
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "URLTO:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/16 v0, 0x3a

    const/4 v2, 0x6

    .line 36
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    if-gez v0, :cond_1

    return-object v1

    :cond_1
    if-gt v0, v2, :cond_2

    goto :goto_0

    .line 40
    :cond_2
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :goto_0
    add-int/lit8 v0, v0, 0x1

    .line 41
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 42
    new-instance v0, Lcom/google/a/b/a/ac;

    invoke-direct {v0, p0, v1}, Lcom/google/a/b/a/ac;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic a(Lcom/google/a/r;)Lcom/google/a/b/a/q;
    .locals 3

    .line 1032
    invoke-static {p1}, Lcom/google/a/b/a/ae;->b(Lcom/google/a/r;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "urlto:"

    .line 1033
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "URLTO:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/16 v0, 0x3a

    const/4 v2, 0x6

    .line 1036
    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    if-gez v0, :cond_1

    return-object v1

    :cond_1
    if-gt v0, v2, :cond_2

    goto :goto_0

    .line 1040
    :cond_2
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :goto_0
    add-int/lit8 v0, v0, 0x1

    .line 1041
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 1042
    new-instance v0, Lcom/google/a/b/a/ac;

    invoke-direct {v0, p1, v1}, Lcom/google/a/b/a/ac;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
