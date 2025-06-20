.class public final Lcom/cyjh/mq/b/a$a;
.super Ljava/lang/Object;
.source "ClientInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyjh/mq/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static synthetic a(Lcom/cyjh/mq/b/a$a;)I
    .locals 0

    .line 26
    iget p0, p0, Lcom/cyjh/mq/b/a$a;->a:I

    return p0
.end method

.method private a(I)Lcom/cyjh/mq/b/a$a;
    .locals 0

    .line 32
    iput p1, p0, Lcom/cyjh/mq/b/a$a;->a:I

    return-object p0
.end method

.method private a(Z)Lcom/cyjh/mq/b/a$a;
    .locals 0

    .line 42
    iput-boolean p1, p0, Lcom/cyjh/mq/b/a$a;->c:Z

    return-object p0
.end method

.method private a()Lcom/cyjh/mq/b/a;
    .locals 2

    .line 47
    new-instance v0, Lcom/cyjh/mq/b/a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/cyjh/mq/b/a;-><init>(Lcom/cyjh/mq/b/a$a;B)V

    return-object v0
.end method

.method private static synthetic b(Lcom/cyjh/mq/b/a$a;)I
    .locals 0

    .line 26
    iget p0, p0, Lcom/cyjh/mq/b/a$a;->b:I

    return p0
.end method

.method private b(I)Lcom/cyjh/mq/b/a$a;
    .locals 0

    .line 37
    iput p1, p0, Lcom/cyjh/mq/b/a$a;->b:I

    return-object p0
.end method

.method private static synthetic c(Lcom/cyjh/mq/b/a$a;)Z
    .locals 0

    .line 26
    iget-boolean p0, p0, Lcom/cyjh/mq/b/a$a;->c:Z

    return p0
.end method
