.class public final Lcom/b/a/a/c/h;
.super Ljava/lang/Object;
.source "RealInterceptorChain.java"

# interfaces
.implements Lcom/b/a/ag;


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/b/a/af;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/b/a/a/b/g;

.field private final c:Lcom/b/a/a/c/c;

.field private final d:Lcom/b/a/m;

.field private final e:I

.field private final f:Lcom/b/a/ao;

.field private g:I


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/b/a/a/b/g;Lcom/b/a/a/c/c;Lcom/b/a/m;ILcom/b/a/ao;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/b/a/af;",
            ">;",
            "Lcom/b/a/a/b/g;",
            "Lcom/b/a/a/c/c;",
            "Lcom/b/a/m;",
            "I",
            "Lcom/b/a/ao;",
            ")V"
        }
    .end annotation

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/b/a/a/c/h;->a:Ljava/util/List;

    .line 43
    iput-object p4, p0, Lcom/b/a/a/c/h;->d:Lcom/b/a/m;

    .line 44
    iput-object p2, p0, Lcom/b/a/a/c/h;->b:Lcom/b/a/a/b/g;

    .line 45
    iput-object p3, p0, Lcom/b/a/a/c/h;->c:Lcom/b/a/a/c/c;

    .line 46
    iput p5, p0, Lcom/b/a/a/c/h;->e:I

    .line 47
    iput-object p6, p0, Lcom/b/a/a/c/h;->f:Lcom/b/a/ao;

    return-void
.end method


# virtual methods
.method public final a()Lcom/b/a/ao;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/b/a/a/c/h;->f:Lcom/b/a/ao;

    return-object v0
.end method

.method public final a(Lcom/b/a/ao;)Lcom/b/a/as;
    .locals 3

    .line 67
    iget-object v0, p0, Lcom/b/a/a/c/h;->b:Lcom/b/a/a/b/g;

    iget-object v1, p0, Lcom/b/a/a/c/h;->c:Lcom/b/a/a/c/c;

    iget-object v2, p0, Lcom/b/a/a/c/h;->d:Lcom/b/a/m;

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/b/a/a/c/h;->a(Lcom/b/a/ao;Lcom/b/a/a/b/g;Lcom/b/a/a/c/c;Lcom/b/a/m;)Lcom/b/a/as;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/b/a/ao;Lcom/b/a/a/b/g;Lcom/b/a/a/c/c;Lcom/b/a/m;)Lcom/b/a/as;
    .locals 9

    .line 72
    iget v0, p0, Lcom/b/a/a/c/h;->e:I

    iget-object v1, p0, Lcom/b/a/a/c/h;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 74
    :cond_0
    iget v0, p0, Lcom/b/a/a/c/h;->g:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/b/a/a/c/h;->g:I

    .line 77
    iget-object v0, p0, Lcom/b/a/a/c/h;->c:Lcom/b/a/a/c/c;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/b/a/ao;->a()Lcom/b/a/ac;

    move-result-object v0

    .line 1109
    invoke-virtual {v0}, Lcom/b/a/ac;->f()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/b/a/a/c/h;->d:Lcom/b/a/m;

    invoke-interface {v3}, Lcom/b/a/m;->a()Lcom/b/a/aw;

    move-result-object v3

    invoke-virtual {v3}, Lcom/b/a/aw;->a()Lcom/b/a/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/b/a/a;->a()Lcom/b/a/ac;

    move-result-object v3

    invoke-virtual {v3}, Lcom/b/a/ac;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1110
    invoke-virtual {v0}, Lcom/b/a/ac;->g()I

    move-result v0

    iget-object v2, p0, Lcom/b/a/a/c/h;->d:Lcom/b/a/m;

    invoke-interface {v2}, Lcom/b/a/m;->a()Lcom/b/a/aw;

    move-result-object v2

    invoke-virtual {v2}, Lcom/b/a/aw;->a()Lcom/b/a/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/b/a/a;->a()Lcom/b/a/ac;

    move-result-object v2

    invoke-virtual {v2}, Lcom/b/a/ac;->g()I

    move-result v2

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    .line 78
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "network interceptor "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/b/a/a/c/h;->a:Ljava/util/List;

    iget p4, p0, Lcom/b/a/a/c/h;->e:I

    sub-int/2addr p4, v1

    invoke-interface {p3, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " must retain the same host and port"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 83
    :cond_2
    iget-object v0, p0, Lcom/b/a/a/c/h;->c:Lcom/b/a/a/c/c;

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/b/a/a/c/h;->g:I

    if-le v0, v1, :cond_3

    .line 84
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "network interceptor "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/b/a/a/c/h;->a:Ljava/util/List;

    iget p4, p0, Lcom/b/a/a/c/h;->e:I

    sub-int/2addr p4, v1

    invoke-interface {p3, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " must call proceed() exactly once"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 89
    :cond_3
    new-instance v0, Lcom/b/a/a/c/h;

    iget-object v3, p0, Lcom/b/a/a/c/h;->a:Ljava/util/List;

    iget v2, p0, Lcom/b/a/a/c/h;->e:I

    add-int/lit8 v7, v2, 0x1

    move-object v2, v0

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v8, p1

    invoke-direct/range {v2 .. v8}, Lcom/b/a/a/c/h;-><init>(Ljava/util/List;Lcom/b/a/a/b/g;Lcom/b/a/a/c/c;Lcom/b/a/m;ILcom/b/a/ao;)V

    .line 91
    iget-object p1, p0, Lcom/b/a/a/c/h;->a:Ljava/util/List;

    iget p2, p0, Lcom/b/a/a/c/h;->e:I

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/b/a/af;

    .line 92
    invoke-interface {p1, v0}, Lcom/b/a/af;->a(Lcom/b/a/ag;)Lcom/b/a/as;

    move-result-object p2

    if-eqz p3, :cond_4

    .line 95
    iget p3, p0, Lcom/b/a/a/c/h;->e:I

    add-int/2addr p3, v1

    iget-object p4, p0, Lcom/b/a/a/c/h;->a:Ljava/util/List;

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p4

    if-ge p3, p4, :cond_4

    iget p3, v0, Lcom/b/a/a/c/h;->g:I

    if-eq p3, v1, :cond_4

    .line 96
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "network interceptor "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " must call proceed() exactly once"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_4
    if-nez p2, :cond_5

    .line 102
    new-instance p2, Ljava/lang/NullPointerException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "interceptor "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " returned null"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_5
    return-object p2
.end method

.method public final b()Lcom/b/a/a/b/g;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/b/a/a/c/h;->b:Lcom/b/a/a/b/g;

    return-object v0
.end method

.method public final c()Lcom/b/a/a/c/c;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/b/a/a/c/h;->c:Lcom/b/a/a/c/c;

    return-object v0
.end method
