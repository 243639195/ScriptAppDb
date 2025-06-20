.class public Lcom/iflytek/voiceads/download/d/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/voiceads/download/d/a$a;
    }
.end annotation


# instance fields
.field private a:Lcom/iflytek/voiceads/download/a/a;

.field private b:Lcom/iflytek/voiceads/download/e/a;

.field private c:I

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:J

.field private g:J

.field private h:I

.field private i:I

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/voiceads/download/d/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/iflytek/voiceads/download/e/a;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/voiceads/download/d/a;->b:Lcom/iflytek/voiceads/download/e/a;

    return-object v0
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/iflytek/voiceads/download/d/a;->h:I

    return-void
.end method

.method public a(J)V
    .locals 1

    iput-wide p1, p0, Lcom/iflytek/voiceads/download/d/a;->f:J

    return-void
.end method

.method public a(Lcom/iflytek/voiceads/download/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/voiceads/download/d/a;->a:Lcom/iflytek/voiceads/download/a/a;

    return-void
.end method

.method public a(Lcom/iflytek/voiceads/download/e/a;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/voiceads/download/d/a;->b:Lcom/iflytek/voiceads/download/e/a;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/voiceads/download/d/a;->d:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/voiceads/download/d/b;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/iflytek/voiceads/download/d/a;->j:Ljava/util/List;

    return-void
.end method

.method public a(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lcom/iflytek/voiceads/download/d/a;->i:I

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/voiceads/download/d/a;->d:Ljava/lang/String;

    return-object v0
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Lcom/iflytek/voiceads/download/d/a;->c:I

    return-void
.end method

.method public b(J)V
    .locals 1

    iput-wide p1, p0, Lcom/iflytek/voiceads/download/d/a;->g:J

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/voiceads/download/d/a;->e:Ljava/lang/String;

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/voiceads/download/d/a;->e:Ljava/lang/String;

    return-object v0
.end method

.method public d()J
    .locals 2

    iget-wide v0, p0, Lcom/iflytek/voiceads/download/d/a;->f:J

    return-wide v0
.end method

.method public e()J
    .locals 2

    iget-wide v0, p0, Lcom/iflytek/voiceads/download/d/a;->g:J

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    check-cast p1, Lcom/iflytek/voiceads/download/d/a;

    iget v2, p0, Lcom/iflytek/voiceads/download/d/a;->c:I

    iget v3, p1, Lcom/iflytek/voiceads/download/d/a;->c:I

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public f()Lcom/iflytek/voiceads/download/a/a;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/voiceads/download/d/a;->a:Lcom/iflytek/voiceads/download/a/a;

    return-object v0
.end method

.method public g()I
    .locals 1

    iget v0, p0, Lcom/iflytek/voiceads/download/d/a;->h:I

    return v0
.end method

.method public h()I
    .locals 1

    iget v0, p0, Lcom/iflytek/voiceads/download/d/a;->c:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lcom/iflytek/voiceads/download/d/a;->c:I

    return v0
.end method

.method public i()Z
    .locals 1

    iget v0, p0, Lcom/iflytek/voiceads/download/d/a;->i:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public j()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/voiceads/download/d/b;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/iflytek/voiceads/download/d/a;->j:Ljava/util/List;

    return-object v0
.end method

.method public k()Z
    .locals 2

    iget v0, p0, Lcom/iflytek/voiceads/download/d/a;->h:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
