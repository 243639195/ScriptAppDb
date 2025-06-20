.class public final Lcom/google/a/b/a/aj;
.super Lcom/google/a/b/a/q;
.source "WifiParsedResult.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Z

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;

.field private final h:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 36
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/a/b/a/aj;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;B)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;B)V
    .locals 9

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 40
    invoke-direct/range {v0 .. v8}, Lcom/google/a/b/a/aj;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 44
    sget v0, Lcom/google/a/b/a/r;->j:I

    invoke-direct {p0, v0}, Lcom/google/a/b/a/q;-><init>(I)V

    .line 45
    iput-object p2, p0, Lcom/google/a/b/a/aj;->a:Ljava/lang/String;

    .line 46
    iput-object p1, p0, Lcom/google/a/b/a/aj;->b:Ljava/lang/String;

    .line 47
    iput-object p3, p0, Lcom/google/a/b/a/aj;->c:Ljava/lang/String;

    .line 48
    iput-boolean p4, p0, Lcom/google/a/b/a/aj;->d:Z

    .line 49
    iput-object p5, p0, Lcom/google/a/b/a/aj;->e:Ljava/lang/String;

    .line 50
    iput-object p6, p0, Lcom/google/a/b/a/aj;->f:Ljava/lang/String;

    .line 51
    iput-object p7, p0, Lcom/google/a/b/a/aj;->g:Ljava/lang/String;

    .line 52
    iput-object p8, p0, Lcom/google/a/b/a/aj;->h:Ljava/lang/String;

    return-void
.end method

.method private b()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/google/a/b/a/aj;->a:Ljava/lang/String;

    return-object v0
.end method

.method private c()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/google/a/b/a/aj;->b:Ljava/lang/String;

    return-object v0
.end method

.method private d()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/google/a/b/a/aj;->c:Ljava/lang/String;

    return-object v0
.end method

.method private e()Z
    .locals 1

    .line 68
    iget-boolean v0, p0, Lcom/google/a/b/a/aj;->d:Z

    return v0
.end method

.method private f()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/google/a/b/a/aj;->e:Ljava/lang/String;

    return-object v0
.end method

.method private g()Ljava/lang/String;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/google/a/b/a/aj;->f:Ljava/lang/String;

    return-object v0
.end method

.method private h()Ljava/lang/String;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/google/a/b/a/aj;->g:Ljava/lang/String;

    return-object v0
.end method

.method private i()Ljava/lang/String;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/google/a/b/a/aj;->h:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 2

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 90
    iget-object v1, p0, Lcom/google/a/b/a/aj;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/google/a/b/a/aj;->a(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 91
    iget-object v1, p0, Lcom/google/a/b/a/aj;->b:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/google/a/b/a/aj;->a(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 92
    iget-object v1, p0, Lcom/google/a/b/a/aj;->c:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/google/a/b/a/aj;->a(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 93
    iget-boolean v1, p0, Lcom/google/a/b/a/aj;->d:Z

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/a/b/a/aj;->a(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 94
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
