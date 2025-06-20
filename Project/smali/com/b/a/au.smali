.class public abstract Lcom/b/a/au;
.super Ljava/lang/Object;
.source "ResponseBody.java"

# interfaces
.implements Ljava/io/Closeable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a([B)Lcom/b/a/au;
    .locals 3

    .line 208
    new-instance v0, Lcom/b/b/f;

    invoke-direct {v0}, Lcom/b/b/f;-><init>()V

    invoke-virtual {v0, p0}, Lcom/b/b/f;->a([B)Lcom/b/b/f;

    move-result-object v0

    .line 209
    array-length p0, p0

    int-to-long v1, p0

    if-nez v0, :cond_0

    .line 1215
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "source == null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1216
    :cond_0
    new-instance p0, Lcom/b/a/av;

    invoke-direct {p0, v1, v2, v0}, Lcom/b/a/av;-><init>(JLcom/b/b/h;)V

    return-object p0
.end method


# virtual methods
.method public abstract a()Lcom/b/a/ah;
.end method

.method public abstract b()J
.end method

.method public abstract c()Lcom/b/b/h;
.end method

.method public close()V
    .locals 1

    .line 186
    invoke-virtual {p0}, Lcom/b/a/au;->c()Lcom/b/b/h;

    move-result-object v0

    invoke-static {v0}, Lcom/b/a/a/c;->a(Ljava/io/Closeable;)V

    return-void
.end method

.method public final d()Ljava/lang/String;
    .locals 3

    .line 171
    invoke-virtual {p0}, Lcom/b/a/au;->c()Lcom/b/b/h;

    move-result-object v0

    .line 1181
    :try_start_0
    invoke-virtual {p0}, Lcom/b/a/au;->a()Lcom/b/a/ah;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1182
    sget-object v2, Lcom/b/a/a/c;->e:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Lcom/b/a/ah;->a(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v1

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/b/a/a/c;->e:Ljava/nio/charset/Charset;

    .line 173
    :goto_0
    invoke-static {v0, v1}, Lcom/b/a/a/c;->a(Lcom/b/b/h;Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v1

    .line 174
    invoke-interface {v0, v1}, Lcom/b/b/h;->a(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 176
    invoke-static {v0}, Lcom/b/a/a/c;->a(Ljava/io/Closeable;)V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-static {v0}, Lcom/b/a/a/c;->a(Ljava/io/Closeable;)V

    throw v1
.end method
