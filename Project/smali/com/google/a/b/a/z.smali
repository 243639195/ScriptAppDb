.class public final Lcom/google/a/b/a/z;
.super Lcom/google/a/b/a/q;
.source "TelParsedResult.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 31
    sget v0, Lcom/google/a/b/a/r;->g:I

    invoke-direct {p0, v0}, Lcom/google/a/b/a/q;-><init>(I)V

    .line 32
    iput-object p1, p0, Lcom/google/a/b/a/z;->a:Ljava/lang/String;

    .line 33
    iput-object p2, p0, Lcom/google/a/b/a/z;->b:Ljava/lang/String;

    const/4 p1, 0x0

    .line 34
    iput-object p1, p0, Lcom/google/a/b/a/z;->c:Ljava/lang/String;

    return-void
.end method

.method private b()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/google/a/b/a/z;->a:Ljava/lang/String;

    return-object v0
.end method

.method private c()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/google/a/b/a/z;->b:Ljava/lang/String;

    return-object v0
.end method

.method private d()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/google/a/b/a/z;->c:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 2

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 52
    iget-object v1, p0, Lcom/google/a/b/a/z;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/google/a/b/a/z;->a(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 53
    iget-object v1, p0, Lcom/google/a/b/a/z;->c:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/google/a/b/a/z;->a(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 54
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
