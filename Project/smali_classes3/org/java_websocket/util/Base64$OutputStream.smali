.class public Lorg/java_websocket/util/Base64$OutputStream;
.super Ljava/io/FilterOutputStream;
.source "Base64.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/java_websocket/util/Base64;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OutputStream"
.end annotation


# instance fields
.field private b4:[B

.field private breakLines:Z

.field private buffer:[B

.field private bufferLength:I

.field private decodabet:[B

.field private encode:Z

.field private lineLength:I

.field private options:I

.field private position:I

.field private suspendEncoding:Z


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;

    .prologue
    .line 902
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/java_websocket/util/Base64$OutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 903
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;I)V
    .locals 4
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "options"    # I

    .prologue
    const/4 v3, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 924
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 925
    and-int/lit8 v0, p2, 0x8

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lorg/java_websocket/util/Base64$OutputStream;->breakLines:Z

    .line 926
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_1

    :goto_1
    iput-boolean v1, p0, Lorg/java_websocket/util/Base64$OutputStream;->encode:Z

    .line 927
    iget-boolean v0, p0, Lorg/java_websocket/util/Base64$OutputStream;->encode:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    :goto_2
    iput v0, p0, Lorg/java_websocket/util/Base64$OutputStream;->bufferLength:I

    .line 928
    iget v0, p0, Lorg/java_websocket/util/Base64$OutputStream;->bufferLength:I

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/java_websocket/util/Base64$OutputStream;->buffer:[B

    .line 929
    iput v2, p0, Lorg/java_websocket/util/Base64$OutputStream;->position:I

    .line 930
    iput v2, p0, Lorg/java_websocket/util/Base64$OutputStream;->lineLength:I

    .line 931
    iput-boolean v2, p0, Lorg/java_websocket/util/Base64$OutputStream;->suspendEncoding:Z

    .line 932
    new-array v0, v3, [B

    iput-object v0, p0, Lorg/java_websocket/util/Base64$OutputStream;->b4:[B

    .line 933
    iput p2, p0, Lorg/java_websocket/util/Base64$OutputStream;->options:I

    .line 934
    invoke-static {p2}, Lorg/java_websocket/util/Base64;->access$000(I)[B

    move-result-object v0

    iput-object v0, p0, Lorg/java_websocket/util/Base64$OutputStream;->decodabet:[B

    .line 935
    return-void

    :cond_0
    move v0, v2

    .line 925
    goto :goto_0

    :cond_1
    move v1, v2

    .line 926
    goto :goto_1

    :cond_2
    move v0, v3

    .line 927
    goto :goto_2
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1039
    invoke-virtual {p0}, Lorg/java_websocket/util/Base64$OutputStream;->flushBase64()V

    .line 1043
    invoke-super {p0}, Ljava/io/FilterOutputStream;->close()V

    .line 1045
    iput-object v0, p0, Lorg/java_websocket/util/Base64$OutputStream;->buffer:[B

    .line 1046
    iput-object v0, p0, Lorg/java_websocket/util/Base64$OutputStream;->out:Ljava/io/OutputStream;

    .line 1047
    return-void
.end method

.method public flushBase64()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1019
    iget v0, p0, Lorg/java_websocket/util/Base64$OutputStream;->position:I

    if-lez v0, :cond_0

    .line 1020
    iget-boolean v0, p0, Lorg/java_websocket/util/Base64$OutputStream;->encode:Z

    if-eqz v0, :cond_1

    .line 1021
    iget-object v0, p0, Lorg/java_websocket/util/Base64$OutputStream;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Lorg/java_websocket/util/Base64$OutputStream;->b4:[B

    iget-object v2, p0, Lorg/java_websocket/util/Base64$OutputStream;->buffer:[B

    iget v3, p0, Lorg/java_websocket/util/Base64$OutputStream;->position:I

    iget v4, p0, Lorg/java_websocket/util/Base64$OutputStream;->options:I

    invoke-static {v1, v2, v3, v4}, Lorg/java_websocket/util/Base64;->access$100([B[BII)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 1022
    const/4 v0, 0x0

    iput v0, p0, Lorg/java_websocket/util/Base64$OutputStream;->position:I

    .line 1029
    :cond_0
    return-void

    .line 1025
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Base64 input not properly padded."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public write(I)V
    .locals 7
    .param p1, "theByte"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, -0x5

    const/4 v6, 0x0

    .line 950
    iget-boolean v1, p0, Lorg/java_websocket/util/Base64$OutputStream;->suspendEncoding:Z

    if-eqz v1, :cond_1

    .line 951
    iget-object v1, p0, Lorg/java_websocket/util/Base64$OutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write(I)V

    .line 988
    :cond_0
    :goto_0
    return-void

    .line 956
    :cond_1
    iget-boolean v1, p0, Lorg/java_websocket/util/Base64$OutputStream;->encode:Z

    if-eqz v1, :cond_3

    .line 957
    iget-object v1, p0, Lorg/java_websocket/util/Base64$OutputStream;->buffer:[B

    iget v2, p0, Lorg/java_websocket/util/Base64$OutputStream;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/java_websocket/util/Base64$OutputStream;->position:I

    int-to-byte v3, p1

    aput-byte v3, v1, v2

    .line 958
    iget v1, p0, Lorg/java_websocket/util/Base64$OutputStream;->position:I

    iget v2, p0, Lorg/java_websocket/util/Base64$OutputStream;->bufferLength:I

    if-lt v1, v2, :cond_0

    .line 960
    iget-object v1, p0, Lorg/java_websocket/util/Base64$OutputStream;->out:Ljava/io/OutputStream;

    iget-object v2, p0, Lorg/java_websocket/util/Base64$OutputStream;->b4:[B

    iget-object v3, p0, Lorg/java_websocket/util/Base64$OutputStream;->buffer:[B

    iget v4, p0, Lorg/java_websocket/util/Base64$OutputStream;->bufferLength:I

    iget v5, p0, Lorg/java_websocket/util/Base64$OutputStream;->options:I

    invoke-static {v2, v3, v4, v5}, Lorg/java_websocket/util/Base64;->access$100([B[BII)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 962
    iget v1, p0, Lorg/java_websocket/util/Base64$OutputStream;->lineLength:I

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Lorg/java_websocket/util/Base64$OutputStream;->lineLength:I

    .line 963
    iget-boolean v1, p0, Lorg/java_websocket/util/Base64$OutputStream;->breakLines:Z

    if-eqz v1, :cond_2

    iget v1, p0, Lorg/java_websocket/util/Base64$OutputStream;->lineLength:I

    const/16 v2, 0x4c

    if-lt v1, v2, :cond_2

    .line 964
    iget-object v1, p0, Lorg/java_websocket/util/Base64$OutputStream;->out:Ljava/io/OutputStream;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write(I)V

    .line 965
    iput v6, p0, Lorg/java_websocket/util/Base64$OutputStream;->lineLength:I

    .line 968
    :cond_2
    iput v6, p0, Lorg/java_websocket/util/Base64$OutputStream;->position:I

    goto :goto_0

    .line 975
    :cond_3
    iget-object v1, p0, Lorg/java_websocket/util/Base64$OutputStream;->decodabet:[B

    and-int/lit8 v2, p1, 0x7f

    aget-byte v1, v1, v2

    if-le v1, v3, :cond_4

    .line 976
    iget-object v1, p0, Lorg/java_websocket/util/Base64$OutputStream;->buffer:[B

    iget v2, p0, Lorg/java_websocket/util/Base64$OutputStream;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/java_websocket/util/Base64$OutputStream;->position:I

    int-to-byte v3, p1

    aput-byte v3, v1, v2

    .line 977
    iget v1, p0, Lorg/java_websocket/util/Base64$OutputStream;->position:I

    iget v2, p0, Lorg/java_websocket/util/Base64$OutputStream;->bufferLength:I

    if-lt v1, v2, :cond_0

    .line 979
    iget-object v1, p0, Lorg/java_websocket/util/Base64$OutputStream;->buffer:[B

    iget-object v2, p0, Lorg/java_websocket/util/Base64$OutputStream;->b4:[B

    iget v3, p0, Lorg/java_websocket/util/Base64$OutputStream;->options:I

    invoke-static {v1, v6, v2, v6, v3}, Lorg/java_websocket/util/Base64;->access$200([BI[BII)I

    move-result v0

    .line 980
    .local v0, "len":I
    iget-object v1, p0, Lorg/java_websocket/util/Base64$OutputStream;->out:Ljava/io/OutputStream;

    iget-object v2, p0, Lorg/java_websocket/util/Base64$OutputStream;->b4:[B

    invoke-virtual {v1, v2, v6, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 981
    iput v6, p0, Lorg/java_websocket/util/Base64$OutputStream;->position:I

    goto :goto_0

    .line 984
    .end local v0    # "len":I
    :cond_4
    iget-object v1, p0, Lorg/java_websocket/util/Base64$OutputStream;->decodabet:[B

    and-int/lit8 v2, p1, 0x7f

    aget-byte v1, v1, v2

    if-eq v1, v3, :cond_0

    .line 985
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Invalid character in Base64 data."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public write([BII)V
    .locals 2
    .param p1, "theBytes"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1002
    iget-boolean v1, p0, Lorg/java_websocket/util/Base64$OutputStream;->suspendEncoding:Z

    if-eqz v1, :cond_1

    .line 1003
    iget-object v1, p0, Lorg/java_websocket/util/Base64$OutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 1011
    :cond_0
    return-void

    .line 1007
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_0

    .line 1008
    add-int v1, p2, v0

    aget-byte v1, p1, v1

    invoke-virtual {p0, v1}, Lorg/java_websocket/util/Base64$OutputStream;->write(I)V

    .line 1007
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
