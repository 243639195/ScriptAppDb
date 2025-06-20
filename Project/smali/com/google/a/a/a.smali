.class public final Lcom/google/a/a/a;
.super Lcom/google/a/c/g;
.source "AztecDetectorResult.java"


# instance fields
.field public final a:Z

.field public final b:I

.field public final c:I


# direct methods
.method public constructor <init>(Lcom/google/a/c/b;[Lcom/google/a/t;ZII)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/google/a/c/g;-><init>(Lcom/google/a/c/b;[Lcom/google/a/t;)V

    .line 41
    iput-boolean p3, p0, Lcom/google/a/a/a;->a:Z

    .line 42
    iput p4, p0, Lcom/google/a/a/a;->b:I

    .line 43
    iput p5, p0, Lcom/google/a/a/a;->c:I

    return-void
.end method

.method private a()I
    .locals 1

    .line 47
    iget v0, p0, Lcom/google/a/a/a;->c:I

    return v0
.end method

.method private b()I
    .locals 1

    .line 51
    iget v0, p0, Lcom/google/a/a/a;->b:I

    return v0
.end method

.method private c()Z
    .locals 1

    .line 55
    iget-boolean v0, p0, Lcom/google/a/a/a;->a:Z

    return v0
.end method
