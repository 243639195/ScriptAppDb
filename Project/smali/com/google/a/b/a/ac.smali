.class public final Lcom/google/a/b/a/ac;
.super Lcom/google/a/b/a/q;
.source "URIParsedResult.java"


# static fields
.field private static final a:Ljava/util/regex/Pattern;


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, ":/*([^/@]+)@[^/]+"

    .line 28
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/a/b/a/ac;->a:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 34
    sget v0, Lcom/google/a/b/a/r;->d:I

    invoke-direct {p0, v0}, Lcom/google/a/b/a/q;-><init>(I)V

    .line 1072
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x3a

    .line 1073
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_1

    add-int/lit8 v0, v0, 0x1

    const/16 v1, 0x2f

    .line 1084
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    if-gez v1, :cond_0

    .line 1086
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    :cond_0
    sub-int/2addr v1, v0

    .line 1088
    invoke-static {p1, v0, v1}, Lcom/google/a/b/a/u;->a(Ljava/lang/CharSequence;II)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const-string v0, "http://"

    .line 1077
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 35
    :cond_2
    iput-object p1, p0, Lcom/google/a/b/a/ac;->b:Ljava/lang/String;

    .line 36
    iput-object p2, p0, Lcom/google/a/b/a/ac;->c:Ljava/lang/String;

    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 72
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x3a

    .line 73
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_1

    add-int/lit8 v0, v0, 0x1

    const/16 v1, 0x2f

    .line 2084
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    if-gez v1, :cond_0

    .line 2086
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    :cond_0
    sub-int/2addr v1, v0

    .line 2088
    invoke-static {p0, v0, v1}, Lcom/google/a/b/a/u;->a(Ljava/lang/CharSequence;II)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const-string v0, "http://"

    .line 77
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_2
    return-object p0
.end method

.method private static a(Ljava/lang/String;I)Z
    .locals 1

    add-int/lit8 p1, p1, 0x1

    const/16 v0, 0x2f

    .line 84
    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    if-gez v0, :cond_0

    .line 86
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    :cond_0
    sub-int/2addr v0, p1

    .line 88
    invoke-static {p0, p1, v0}, Lcom/google/a/b/a/u;->a(Ljava/lang/CharSequence;II)Z

    move-result p0

    return p0
.end method

.method private b()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/google/a/b/a/ac;->b:Ljava/lang/String;

    return-object v0
.end method

.method private c()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/google/a/b/a/ac;->c:Ljava/lang/String;

    return-object v0
.end method

.method private d()Z
    .locals 2

    .line 56
    sget-object v0, Lcom/google/a/b/a/ac;->a:Ljava/util/regex/Pattern;

    iget-object v1, p0, Lcom/google/a/b/a/ac;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 2

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x1e

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 62
    iget-object v1, p0, Lcom/google/a/b/a/ac;->c:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/google/a/b/a/ac;->a(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 63
    iget-object v1, p0, Lcom/google/a/b/a/ac;->b:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/google/a/b/a/ac;->a(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 64
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
