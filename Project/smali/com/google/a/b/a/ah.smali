.class public final Lcom/google/a/b/a/ah;
.super Lcom/google/a/b/a/q;
.source "VINParsedResult.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private final g:I

.field private final h:C

.field private final i:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ICLjava/lang/String;)V
    .locals 1

    .line 44
    sget v0, Lcom/google/a/b/a/r;->l:I

    invoke-direct {p0, v0}, Lcom/google/a/b/a/q;-><init>(I)V

    .line 45
    iput-object p1, p0, Lcom/google/a/b/a/ah;->a:Ljava/lang/String;

    .line 46
    iput-object p2, p0, Lcom/google/a/b/a/ah;->b:Ljava/lang/String;

    .line 47
    iput-object p3, p0, Lcom/google/a/b/a/ah;->c:Ljava/lang/String;

    .line 48
    iput-object p4, p0, Lcom/google/a/b/a/ah;->d:Ljava/lang/String;

    .line 49
    iput-object p5, p0, Lcom/google/a/b/a/ah;->e:Ljava/lang/String;

    .line 50
    iput-object p6, p0, Lcom/google/a/b/a/ah;->f:Ljava/lang/String;

    .line 51
    iput p7, p0, Lcom/google/a/b/a/ah;->g:I

    .line 52
    iput-char p8, p0, Lcom/google/a/b/a/ah;->h:C

    .line 53
    iput-object p9, p0, Lcom/google/a/b/a/ah;->i:Ljava/lang/String;

    return-void
.end method

.method private b()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/google/a/b/a/ah;->a:Ljava/lang/String;

    return-object v0
.end method

.method private c()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/google/a/b/a/ah;->b:Ljava/lang/String;

    return-object v0
.end method

.method private d()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/google/a/b/a/ah;->c:Ljava/lang/String;

    return-object v0
.end method

.method private e()Ljava/lang/String;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/google/a/b/a/ah;->d:Ljava/lang/String;

    return-object v0
.end method

.method private f()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/google/a/b/a/ah;->e:Ljava/lang/String;

    return-object v0
.end method

.method private g()Ljava/lang/String;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/google/a/b/a/ah;->f:Ljava/lang/String;

    return-object v0
.end method

.method private h()I
    .locals 1

    .line 81
    iget v0, p0, Lcom/google/a/b/a/ah;->g:I

    return v0
.end method

.method private i()C
    .locals 1

    .line 85
    iget-char v0, p0, Lcom/google/a/b/a/ah;->h:C

    return v0
.end method

.method private j()Ljava/lang/String;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/google/a/b/a/ah;->i:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 4

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 95
    iget-object v1, p0, Lcom/google/a/b/a/ah;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 96
    iget-object v2, p0, Lcom/google/a/b/a/ah;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 97
    iget-object v2, p0, Lcom/google/a/b/a/ah;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 98
    iget-object v3, p0, Lcom/google/a/b/a/ah;->e:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 99
    iget-object v3, p0, Lcom/google/a/b/a/ah;->e:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 101
    :cond_0
    iget v3, p0, Lcom/google/a/b/a/ah;->g:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 102
    iget-char v3, p0, Lcom/google/a/b/a/ah;->h:C

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 103
    iget-object v1, p0, Lcom/google/a/b/a/ah;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 104
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
