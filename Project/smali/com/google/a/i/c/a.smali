.class final Lcom/google/a/i/c/a;
.super Ljava/lang/Object;
.source "BlockPair.java"


# instance fields
.field final a:[B

.field final b:[B


# direct methods
.method constructor <init>([B[B)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/google/a/i/c/a;->a:[B

    .line 26
    iput-object p2, p0, Lcom/google/a/i/c/a;->b:[B

    return-void
.end method

.method private a()[B
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/google/a/i/c/a;->a:[B

    return-object v0
.end method

.method private b()[B
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/google/a/i/c/a;->b:[B

    return-object v0
.end method
