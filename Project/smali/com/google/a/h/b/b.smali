.class public final Lcom/google/a/h/b/b;
.super Ljava/lang/Object;
.source "PDF417DetectorResult.java"


# instance fields
.field public final a:Lcom/google/a/c/b;

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[",
            "Lcom/google/a/t;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/a/c/b;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/a/c/b;",
            "Ljava/util/List<",
            "[",
            "Lcom/google/a/t;",
            ">;)V"
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/google/a/h/b/b;->a:Lcom/google/a/c/b;

    .line 34
    iput-object p2, p0, Lcom/google/a/h/b/b;->b:Ljava/util/List;

    return-void
.end method

.method private a()Lcom/google/a/c/b;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/google/a/h/b/b;->a:Lcom/google/a/c/b;

    return-object v0
.end method

.method private b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "[",
            "Lcom/google/a/t;",
            ">;"
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lcom/google/a/h/b/b;->b:Ljava/util/List;

    return-object v0
.end method
