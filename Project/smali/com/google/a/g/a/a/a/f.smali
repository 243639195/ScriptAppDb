.class abstract Lcom/google/a/g/a/a/a/f;
.super Lcom/google/a/g/a/a/a/i;
.source "AI013x0xDecoder.java"


# static fields
.field private static final d:I = 0x5

.field private static final e:I = 0xf


# direct methods
.method constructor <init>(Lcom/google/a/c/a;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/google/a/g/a/a/a/i;-><init>(Lcom/google/a/c/a;)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/m;
        }
    .end annotation

    .line 1048
    iget-object v0, p0, Lcom/google/a/g/a/a/a/j;->b:Lcom/google/a/c/a;

    .line 2048
    iget v0, v0, Lcom/google/a/c/a;->b:I

    const/16 v1, 0x3c

    if-eq v0, v1, :cond_0

    .line 47
    invoke-static {}, Lcom/google/a/m;->a()Lcom/google/a/m;

    move-result-object v0

    throw v0

    .line 50
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x5

    .line 52
    invoke-virtual {p0, v0, v1}, Lcom/google/a/g/a/a/a/f;->b(Ljava/lang/StringBuilder;I)V

    const/16 v1, 0x2d

    const/16 v2, 0xf

    .line 53
    invoke-virtual {p0, v0, v1, v2}, Lcom/google/a/g/a/a/a/f;->b(Ljava/lang/StringBuilder;II)V

    .line 55
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
