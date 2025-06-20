.class public Lcom/alibaba/sdk/android/oss/common/utils/IOUtils;
.super Ljava/lang/Object;
.source "IOUtils.java"


# static fields
.field private static final BUFFER_SIZE:I = 0x1000


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static readStreamAsBytesArray(Ljava/io/InputStream;)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 62
    new-array p0, v0, [B

    return-object p0

    .line 65
    :cond_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v2, 0x800

    .line 66
    new-array v2, v2, [B

    .line 68
    :goto_0
    invoke-virtual {p0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-le v3, v4, :cond_1

    .line 69
    invoke-virtual {v1, v2, v0, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 71
    :cond_1
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 72
    invoke-static {v1}, Lcom/alibaba/sdk/android/oss/common/utils/IOUtils;->safeClose(Ljava/io/OutputStream;)V

    .line 73
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method public static readStreamAsBytesArray(Ljava/io/InputStream;I)[B
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 79
    new-array p0, v0, [B

    return-object p0

    .line 82
    :cond_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v2, 0x800

    .line 83
    new-array v3, v2, [B

    const-wide/16 v4, 0x0

    :goto_0
    int-to-long v6, p1

    cmp-long v8, v4, v6

    if-gez v8, :cond_1

    sub-long v8, v6, v4

    long-to-int v6, v8

    .line 86
    invoke-static {v2, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-virtual {p0, v3, v0, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v6

    const/4 v7, -0x1

    if-le v6, v7, :cond_1

    .line 87
    invoke-virtual {v1, v3, v0, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    int-to-long v6, v6

    add-long v8, v4, v6

    move-wide v4, v8

    goto :goto_0

    .line 90
    :cond_1
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 91
    invoke-static {v1}, Lcom/alibaba/sdk/android/oss/common/utils/IOUtils;->safeClose(Ljava/io/OutputStream;)V

    .line 92
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method public static readStreamAsString(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    const/4 v0, 0x0

    .line 32
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    const/16 v2, 0x400

    .line 35
    new-array v2, v2, [C

    .line 37
    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, p0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 41
    :goto_0
    :try_start_1
    invoke-virtual {v3, v2}, Ljava/io/Reader;->read([C)I

    move-result p1

    if-lez p1, :cond_1

    const/4 v0, 0x0

    .line 42
    invoke-virtual {v1, v2, v0, p1}, Ljava/io/Writer;->write([CII)V

    goto :goto_0

    .line 45
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 47
    invoke-static {p0}, Lcom/alibaba/sdk/android/oss/common/utils/IOUtils;->safeClose(Ljava/io/InputStream;)V

    if-eqz v3, :cond_2

    .line 49
    invoke-virtual {v3}, Ljava/io/Reader;->close()V

    :cond_2
    if-eqz v1, :cond_3

    .line 52
    invoke-virtual {v1}, Ljava/io/Writer;->close()V

    :cond_3
    return-object p1

    :catchall_0
    move-exception p1

    move-object v0, v3

    goto :goto_1

    :catchall_1
    move-exception p1

    .line 47
    :goto_1
    invoke-static {p0}, Lcom/alibaba/sdk/android/oss/common/utils/IOUtils;->safeClose(Ljava/io/InputStream;)V

    if-eqz v0, :cond_4

    .line 49
    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    :cond_4
    if-eqz v1, :cond_5

    .line 52
    invoke-virtual {v1}, Ljava/io/Writer;->close()V

    :cond_5
    throw p1
.end method

.method public static safeClose(Ljava/io/InputStream;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 98
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public static safeClose(Ljava/io/OutputStream;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 106
    :try_start_0
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method
