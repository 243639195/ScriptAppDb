.class public final Lcom/cyjh/mq/b/a;
.super Ljava/lang/Object;
.source "ClientInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cyjh/mq/b/a$a;
    }
.end annotation


# instance fields
.field public final a:I

.field private final b:I

.field private final c:Z


# direct methods
.method private constructor <init>(Lcom/cyjh/mq/b/a$a;)V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1026
    iget v0, p1, Lcom/cyjh/mq/b/a$a;->a:I

    .line 9
    iput v0, p0, Lcom/cyjh/mq/b/a;->a:I

    .line 2026
    iget v0, p1, Lcom/cyjh/mq/b/a$a;->b:I

    .line 10
    iput v0, p0, Lcom/cyjh/mq/b/a;->b:I

    .line 3026
    iget-boolean p1, p1, Lcom/cyjh/mq/b/a$a;->c:Z

    .line 11
    iput-boolean p1, p0, Lcom/cyjh/mq/b/a;->c:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/cyjh/mq/b/a$a;B)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/cyjh/mq/b/a;-><init>(Lcom/cyjh/mq/b/a$a;)V

    return-void
.end method

.method private a()I
    .locals 1

    .line 15
    iget v0, p0, Lcom/cyjh/mq/b/a;->a:I

    return v0
.end method

.method private b()I
    .locals 1

    .line 19
    iget v0, p0, Lcom/cyjh/mq/b/a;->b:I

    return v0
.end method

.method private c()Z
    .locals 1

    .line 23
    iget-boolean v0, p0, Lcom/cyjh/mq/b/a;->c:Z

    return v0
.end method
