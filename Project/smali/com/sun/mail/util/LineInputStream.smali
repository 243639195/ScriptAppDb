.class public Lcom/sun/mail/util/LineInputStream;
.super Ljava/io/FilterInputStream;
.source "LineInputStream.java"


# instance fields
.field private lineBuffer:[C


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    .line 63
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 p1, 0x0

    .line 60
    iput-object p1, p0, Lcom/sun/mail/util/LineInputStream;->lineBuffer:[C

    return-void
.end method


# virtual methods
.method public readLine()Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lcom/sun/mail/util/LineInputStream;->in:Ljava/io/InputStream;

    .line 79
    iget-object v1, p0, Lcom/sun/mail/util/LineInputStream;->lineBuffer:[C

    if-nez v1, :cond_0

    const/16 v1, 0x80

    .line 82
    new-array v1, v1, [C

    iput-object v1, p0, Lcom/sun/mail/util/LineInputStream;->lineBuffer:[C

    .line 85
    :cond_0
    array-length v2, v1

    const/4 v3, 0x0

    move-object v4, v1

    const/4 v1, 0x0

    .line 88
    :goto_0
    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_1

    goto :goto_1

    :cond_1
    const/16 v7, 0xa

    if-eq v5, v7, :cond_6

    const/16 v8, 0xd

    if-ne v5, v8, :cond_4

    .line 93
    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v2

    if-ne v2, v8, :cond_2

    .line 95
    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v2

    :cond_2
    if-eq v2, v7, :cond_6

    .line 98
    instance-of v7, v0, Ljava/io/PushbackInputStream;

    if-nez v7, :cond_3

    .line 99
    new-instance v7, Ljava/io/PushbackInputStream;

    invoke-direct {v7, v0}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v7, p0, Lcom/sun/mail/util/LineInputStream;->in:Ljava/io/InputStream;

    move-object v0, v7

    .line 100
    :cond_3
    check-cast v0, Ljava/io/PushbackInputStream;

    invoke-virtual {v0, v2}, Ljava/io/PushbackInputStream;->unread(I)V

    goto :goto_1

    :cond_4
    add-int/2addr v2, v6

    if-gez v2, :cond_5

    add-int/lit16 v2, v1, 0x80

    .line 108
    new-array v2, v2, [C

    .line 109
    array-length v4, v2

    sub-int/2addr v4, v1

    add-int/lit8 v4, v4, -0x1

    .line 110
    iget-object v6, p0, Lcom/sun/mail/util/LineInputStream;->lineBuffer:[C

    invoke-static {v6, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 111
    iput-object v2, p0, Lcom/sun/mail/util/LineInputStream;->lineBuffer:[C

    move v9, v4

    move-object v4, v2

    move v2, v9

    :cond_5
    add-int/lit8 v6, v1, 0x1

    int-to-char v5, v5

    .line 113
    aput-char v5, v4, v1

    move v1, v6

    goto :goto_0

    :cond_6
    :goto_1
    if-ne v5, v6, :cond_7

    if-nez v1, :cond_7

    const/4 v0, 0x0

    return-object v0

    .line 119
    :cond_7
    invoke-static {v4, v3, v1}, Ljava/lang/String;->copyValueOf([CII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
