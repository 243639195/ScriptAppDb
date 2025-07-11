.class public Lorg/apache/commons/io/input/TaggedInputStream;
.super Lorg/apache/commons/io/input/ProxyInputStream;
.source "TaggedInputStream.java"


# instance fields
.field private final tag:Ljava/io/Serializable;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    .line 77
    invoke-direct {p0, p1}, Lorg/apache/commons/io/input/ProxyInputStream;-><init>(Ljava/io/InputStream;)V

    .line 69
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/io/input/TaggedInputStream;->tag:Ljava/io/Serializable;

    return-void
.end method


# virtual methods
.method protected handleIOException(Ljava/io/IOException;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 113
    new-instance v0, Lorg/apache/commons/io/TaggedIOException;

    iget-object v1, p0, Lorg/apache/commons/io/input/TaggedInputStream;->tag:Ljava/io/Serializable;

    invoke-direct {v0, p1, v1}, Lorg/apache/commons/io/TaggedIOException;-><init>(Ljava/io/IOException;Ljava/io/Serializable;)V

    throw v0
.end method

.method public isCauseOf(Ljava/lang/Throwable;)Z
    .locals 1

    .line 88
    iget-object v0, p0, Lorg/apache/commons/io/input/TaggedInputStream;->tag:Ljava/io/Serializable;

    invoke-static {p1, v0}, Lorg/apache/commons/io/TaggedIOException;->isTaggedWith(Ljava/lang/Throwable;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public throwIfCauseOf(Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 102
    iget-object v0, p0, Lorg/apache/commons/io/input/TaggedInputStream;->tag:Ljava/io/Serializable;

    invoke-static {p1, v0}, Lorg/apache/commons/io/TaggedIOException;->throwCauseIfTaggedWith(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
