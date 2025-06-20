.class public final Lcom/google/a/g/a/a/a/k;
.super Lcom/google/a/g/a/a/a/j;
.source "AnyAIDecoder.java"


# static fields
.field private static final a:I = 0x5


# direct methods
.method public constructor <init>(Lcom/google/a/c/a;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/google/a/g/a/a/a/j;-><init>(Lcom/google/a/c/a;)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/m;,
            Lcom/google/a/h;
        }
    .end annotation

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1052
    iget-object v1, p0, Lcom/google/a/g/a/a/a/j;->c:Lcom/google/a/g/a/a/a/s;

    const/4 v2, 0x5

    .line 48
    invoke-virtual {v1, v0, v2}, Lcom/google/a/g/a/a/a/s;->a(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
