.class final Lcom/b/b/t;
.super Ljava/lang/Object;
.source "Segment.java"


# instance fields
.field final a:[B

.field b:I

.field c:I

.field d:Z

.field e:Z

.field f:Lcom/b/b/t;

.field g:Lcom/b/b/t;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x2000

    .line 61
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/b/b/t;->a:[B

    const/4 v0, 0x1

    .line 62
    iput-boolean v0, p0, Lcom/b/b/t;->e:Z

    const/4 v0, 0x0

    .line 63
    iput-boolean v0, p0, Lcom/b/b/t;->d:Z

    return-void
.end method

.method constructor <init>(Lcom/b/b/t;)V
    .locals 3

    .line 67
    iget-object v0, p1, Lcom/b/b/t;->a:[B

    iget v1, p1, Lcom/b/b/t;->b:I

    iget v2, p1, Lcom/b/b/t;->c:I

    invoke-direct {p0, v0, v1, v2}, Lcom/b/b/t;-><init>([BII)V

    const/4 v0, 0x1

    .line 68
    iput-boolean v0, p1, Lcom/b/b/t;->d:Z

    return-void
.end method

.method constructor <init>([BII)V
    .locals 0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lcom/b/b/t;->a:[B

    .line 73
    iput p2, p0, Lcom/b/b/t;->b:I

    .line 74
    iput p3, p0, Lcom/b/b/t;->c:I

    const/4 p1, 0x0

    .line 75
    iput-boolean p1, p0, Lcom/b/b/t;->e:Z

    const/4 p1, 0x1

    .line 76
    iput-boolean p1, p0, Lcom/b/b/t;->d:Z

    return-void
.end method


# virtual methods
.method public final a()Lcom/b/b/t;
    .locals 4

    .line 84
    iget-object v0, p0, Lcom/b/b/t;->f:Lcom/b/b/t;

    const/4 v1, 0x0

    if-eq v0, p0, :cond_0

    iget-object v0, p0, Lcom/b/b/t;->f:Lcom/b/b/t;

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 85
    :goto_0
    iget-object v2, p0, Lcom/b/b/t;->g:Lcom/b/b/t;

    iget-object v3, p0, Lcom/b/b/t;->f:Lcom/b/b/t;

    iput-object v3, v2, Lcom/b/b/t;->f:Lcom/b/b/t;

    .line 86
    iget-object v2, p0, Lcom/b/b/t;->f:Lcom/b/b/t;

    iget-object v3, p0, Lcom/b/b/t;->g:Lcom/b/b/t;

    iput-object v3, v2, Lcom/b/b/t;->g:Lcom/b/b/t;

    .line 87
    iput-object v1, p0, Lcom/b/b/t;->f:Lcom/b/b/t;

    .line 88
    iput-object v1, p0, Lcom/b/b/t;->g:Lcom/b/b/t;

    return-object v0
.end method

.method public final a(Lcom/b/b/t;)Lcom/b/b/t;
    .locals 1

    .line 97
    iput-object p0, p1, Lcom/b/b/t;->g:Lcom/b/b/t;

    .line 98
    iget-object v0, p0, Lcom/b/b/t;->f:Lcom/b/b/t;

    iput-object v0, p1, Lcom/b/b/t;->f:Lcom/b/b/t;

    .line 99
    iget-object v0, p0, Lcom/b/b/t;->f:Lcom/b/b/t;

    iput-object p1, v0, Lcom/b/b/t;->g:Lcom/b/b/t;

    .line 100
    iput-object p1, p0, Lcom/b/b/t;->f:Lcom/b/b/t;

    return-object p1
.end method

.method public final a(Lcom/b/b/t;I)V
    .locals 5

    .line 151
    iget-boolean v0, p1, Lcom/b/b/t;->e:Z

    if-nez v0, :cond_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 152
    :cond_0
    iget v0, p1, Lcom/b/b/t;->c:I

    add-int/2addr v0, p2

    const/16 v1, 0x2000

    if-le v0, v1, :cond_3

    .line 154
    iget-boolean v0, p1, Lcom/b/b/t;->d:Z

    if-eqz v0, :cond_1

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 155
    :cond_1
    iget v0, p1, Lcom/b/b/t;->c:I

    add-int/2addr v0, p2

    iget v2, p1, Lcom/b/b/t;->b:I

    sub-int/2addr v0, v2

    if-le v0, v1, :cond_2

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 156
    :cond_2
    iget-object v0, p1, Lcom/b/b/t;->a:[B

    iget v1, p1, Lcom/b/b/t;->b:I

    iget-object v2, p1, Lcom/b/b/t;->a:[B

    iget v3, p1, Lcom/b/b/t;->c:I

    iget v4, p1, Lcom/b/b/t;->b:I

    sub-int/2addr v3, v4

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 157
    iget v0, p1, Lcom/b/b/t;->c:I

    iget v1, p1, Lcom/b/b/t;->b:I

    sub-int/2addr v0, v1

    iput v0, p1, Lcom/b/b/t;->c:I

    .line 158
    iput v4, p1, Lcom/b/b/t;->b:I

    .line 161
    :cond_3
    iget-object v0, p0, Lcom/b/b/t;->a:[B

    iget v1, p0, Lcom/b/b/t;->b:I

    iget-object v2, p1, Lcom/b/b/t;->a:[B

    iget v3, p1, Lcom/b/b/t;->c:I

    invoke-static {v0, v1, v2, v3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 162
    iget v0, p1, Lcom/b/b/t;->c:I

    add-int/2addr v0, p2

    iput v0, p1, Lcom/b/b/t;->c:I

    .line 163
    iget p1, p0, Lcom/b/b/t;->b:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/b/b/t;->b:I

    return-void
.end method
