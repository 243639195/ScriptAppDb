.class abstract Lcom/b/a/a/d/b;
.super Ljava/lang/Object;
.source "Http1Codec.java"

# interfaces
.implements Lcom/b/b/x;


# instance fields
.field protected final a:Lcom/b/b/k;

.field protected b:Z

.field final synthetic c:Lcom/b/a/a/d/a;


# direct methods
.method private constructor <init>(Lcom/b/a/a/d/a;)V
    .locals 1

    .line 343
    iput-object p1, p0, Lcom/b/a/a/d/b;->c:Lcom/b/a/a/d/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 344
    new-instance p1, Lcom/b/b/k;

    iget-object v0, p0, Lcom/b/a/a/d/b;->c:Lcom/b/a/a/d/a;

    iget-object v0, v0, Lcom/b/a/a/d/a;->c:Lcom/b/b/h;

    invoke-interface {v0}, Lcom/b/b/h;->a()Lcom/b/b/y;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/b/b/k;-><init>(Lcom/b/b/y;)V

    iput-object p1, p0, Lcom/b/a/a/d/b;->a:Lcom/b/b/k;

    return-void
.end method

.method synthetic constructor <init>(Lcom/b/a/a/d/a;B)V
    .locals 0

    .line 343
    invoke-direct {p0, p1}, Lcom/b/a/a/d/b;-><init>(Lcom/b/a/a/d/a;)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/b/b/y;
    .locals 1

    .line 348
    iget-object v0, p0, Lcom/b/a/a/d/b;->a:Lcom/b/b/k;

    return-object v0
.end method

.method protected final a(Z)V
    .locals 3

    .line 356
    iget-object v0, p0, Lcom/b/a/a/d/b;->c:Lcom/b/a/a/d/a;

    iget v0, v0, Lcom/b/a/a/d/a;->e:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    return-void

    .line 357
    :cond_0
    iget-object v0, p0, Lcom/b/a/a/d/b;->c:Lcom/b/a/a/d/a;

    iget v0, v0, Lcom/b/a/a/d/a;->e:I

    const/4 v2, 0x5

    if-eq v0, v2, :cond_1

    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "state: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/b/a/a/d/b;->c:Lcom/b/a/a/d/a;

    iget v1, v1, Lcom/b/a/a/d/a;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 359
    :cond_1
    iget-object v0, p0, Lcom/b/a/a/d/b;->a:Lcom/b/b/k;

    invoke-static {v0}, Lcom/b/a/a/d/a;->a(Lcom/b/b/k;)V

    .line 361
    iget-object v0, p0, Lcom/b/a/a/d/b;->c:Lcom/b/a/a/d/a;

    iput v1, v0, Lcom/b/a/a/d/a;->e:I

    .line 362
    iget-object v0, p0, Lcom/b/a/a/d/b;->c:Lcom/b/a/a/d/a;

    iget-object v0, v0, Lcom/b/a/a/d/a;->b:Lcom/b/a/a/b/g;

    if-eqz v0, :cond_2

    .line 363
    iget-object v0, p0, Lcom/b/a/a/d/b;->c:Lcom/b/a/a/d/a;

    iget-object v0, v0, Lcom/b/a/a/d/a;->b:Lcom/b/a/a/b/g;

    xor-int/lit8 p1, p1, 0x1

    iget-object v1, p0, Lcom/b/a/a/d/b;->c:Lcom/b/a/a/d/a;

    invoke-virtual {v0, p1, v1}, Lcom/b/a/a/b/g;->a(ZLcom/b/a/a/c/c;)V

    :cond_2
    return-void
.end method
