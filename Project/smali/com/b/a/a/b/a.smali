.class public final Lcom/b/a/a/b/a;
.super Ljava/lang/Object;
.source "ConnectInterceptor.java"

# interfaces
.implements Lcom/b/a/af;


# instance fields
.field public final a:Lcom/b/a/ai;


# direct methods
.method public constructor <init>(Lcom/b/a/ai;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/b/a/a/b/a;->a:Lcom/b/a/ai;

    return-void
.end method


# virtual methods
.method public final a(Lcom/b/a/ag;)Lcom/b/a/as;
    .locals 4

    .line 36
    check-cast p1, Lcom/b/a/a/c/h;

    .line 37
    invoke-virtual {p1}, Lcom/b/a/a/c/h;->a()Lcom/b/a/ao;

    move-result-object v0

    .line 38
    invoke-virtual {p1}, Lcom/b/a/a/c/h;->b()Lcom/b/a/a/b/g;

    move-result-object v1

    .line 41
    invoke-virtual {v0}, Lcom/b/a/ao;->b()Ljava/lang/String;

    move-result-object v2

    const-string v3, "GET"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    .line 42
    iget-object v3, p0, Lcom/b/a/a/b/a;->a:Lcom/b/a/ai;

    invoke-virtual {v1, v3, v2}, Lcom/b/a/a/b/g;->a(Lcom/b/a/ai;Z)Lcom/b/a/a/c/c;

    move-result-object v2

    .line 43
    invoke-virtual {v1}, Lcom/b/a/a/b/g;->b()Lcom/b/a/a/b/c;

    move-result-object v3

    .line 45
    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/b/a/a/c/h;->a(Lcom/b/a/ao;Lcom/b/a/a/b/g;Lcom/b/a/a/c/c;Lcom/b/a/m;)Lcom/b/a/as;

    move-result-object p1

    return-object p1
.end method
