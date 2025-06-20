.class public Lcom/google/a/c/g;
.super Ljava/lang/Object;
.source "DetectorResult.java"


# instance fields
.field public final d:Lcom/google/a/c/b;

.field public final e:[Lcom/google/a/t;


# direct methods
.method public constructor <init>(Lcom/google/a/c/b;[Lcom/google/a/t;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/google/a/c/g;->d:Lcom/google/a/c/b;

    .line 35
    iput-object p2, p0, Lcom/google/a/c/g;->e:[Lcom/google/a/t;

    return-void
.end method

.method private a()Lcom/google/a/c/b;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/google/a/c/g;->d:Lcom/google/a/c/b;

    return-object v0
.end method

.method private b()[Lcom/google/a/t;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/google/a/c/g;->e:[Lcom/google/a/t;

    return-object v0
.end method
