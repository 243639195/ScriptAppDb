.class public final Lcom/google/a/b/a/p;
.super Lcom/google/a/b/a/u;
.source "ISBNResultParser.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/google/a/b/a/u;-><init>()V

    return-void
.end method

.method private static c(Lcom/google/a/r;)Lcom/google/a/b/a/o;
    .locals 3

    .line 1103
    iget-object v0, p0, Lcom/google/a/r;->e:Lcom/google/a/a;

    .line 35
    sget-object v1, Lcom/google/a/a;->h:Lcom/google/a/a;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return-object v2

    .line 38
    :cond_0
    invoke-static {p0}, Lcom/google/a/b/a/p;->b(Lcom/google/a/r;)Ljava/lang/String;

    move-result-object p0

    .line 39
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xd

    if-eq v0, v1, :cond_1

    return-object v2

    :cond_1
    const-string v0, "978"

    .line 43
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "979"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    return-object v2

    .line 47
    :cond_2
    new-instance v0, Lcom/google/a/b/a/o;

    invoke-direct {v0, p0}, Lcom/google/a/b/a/o;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic a(Lcom/google/a/r;)Lcom/google/a/b/a/q;
    .locals 3

    .line 2103
    iget-object v0, p1, Lcom/google/a/r;->e:Lcom/google/a/a;

    .line 2035
    sget-object v1, Lcom/google/a/a;->h:Lcom/google/a/a;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return-object v2

    .line 2038
    :cond_0
    invoke-static {p1}, Lcom/google/a/b/a/p;->b(Lcom/google/a/r;)Ljava/lang/String;

    move-result-object p1

    .line 2039
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xd

    if-eq v0, v1, :cond_1

    return-object v2

    :cond_1
    const-string v0, "978"

    .line 2043
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "979"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    return-object v2

    .line 2047
    :cond_2
    new-instance v0, Lcom/google/a/b/a/o;

    invoke-direct {v0, p1}, Lcom/google/a/b/a/o;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
