.class public final Lcom/google/a/b/a/ab;
.super Lcom/google/a/b/a/q;
.source "TextParsedResult.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 31
    sget v0, Lcom/google/a/b/a/r;->e:I

    invoke-direct {p0, v0}, Lcom/google/a/b/a/q;-><init>(I)V

    .line 32
    iput-object p1, p0, Lcom/google/a/b/a/ab;->a:Ljava/lang/String;

    const/4 p1, 0x0

    .line 33
    iput-object p1, p0, Lcom/google/a/b/a/ab;->b:Ljava/lang/String;

    return-void
.end method

.method private b()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/google/a/b/a/ab;->a:Ljava/lang/String;

    return-object v0
.end method

.method private c()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/google/a/b/a/ab;->b:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/google/a/b/a/ab;->a:Ljava/lang/String;

    return-object v0
.end method
