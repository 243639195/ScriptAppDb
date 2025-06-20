.class public final Lcom/google/a/b/a/o;
.super Lcom/google/a/b/a/q;
.source "ISBNParsedResult.java"


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 29
    sget v0, Lcom/google/a/b/a/r;->k:I

    invoke-direct {p0, v0}, Lcom/google/a/b/a/q;-><init>(I)V

    .line 30
    iput-object p1, p0, Lcom/google/a/b/a/o;->a:Ljava/lang/String;

    return-void
.end method

.method private b()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/google/a/b/a/o;->a:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/google/a/b/a/o;->a:Ljava/lang/String;

    return-object v0
.end method
