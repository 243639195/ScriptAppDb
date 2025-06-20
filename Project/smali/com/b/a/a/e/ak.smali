.class final Lcom/b/a/a/e/ak;
.super Ljava/lang/Object;
.source "PushObserver.java"

# interfaces
.implements Lcom/b/a/a/e/aj;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()Z"
        }
    .end annotation

    const/4 v0, 0x1

    return v0
.end method

.method public final a(Lcom/b/b/h;I)Z
    .locals 2

    int-to-long v0, p2

    .line 88
    invoke-interface {p1, v0, v1}, Lcom/b/b/h;->f(J)V

    const/4 p1, 0x1

    return p1
.end method

.method public final b()Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()Z"
        }
    .end annotation

    const/4 v0, 0x1

    return v0
.end method

.method public final c()V
    .locals 0

    return-void
.end method
