.class public final Lcom/a/a/a/b;
.super Ljava/lang/Object;
.source "Shell.java"


# static fields
.field static final a:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    .line 52
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "echo -BOC-"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "id"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/a/a/a/b;->a:[Ljava/lang/String;

    return-void
.end method

.method public static varargs a(Ljava/lang/String;[Ljava/lang/String;)Lcom/a/a/a/a;
    .locals 0
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 72
    invoke-static {p0, p1}, Lcom/a/a/a/b;->b(Ljava/lang/String;[Ljava/lang/String;)Lcom/a/a/a/a;

    move-result-object p0

    return-object p0
.end method

.method private static b(Ljava/lang/String;[Ljava/lang/String;)Lcom/a/a/a/a;
    .locals 9
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 96
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 1185
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p0, v3}, Ljava/lang/Runtime;->exec(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Process;

    move-result-object p0

    .line 102
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-virtual {p0}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 103
    new-instance v3, Lcom/a/a/a/c;

    invoke-virtual {p0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Lcom/a/a/a/c;-><init>(Ljava/io/InputStream;Ljava/util/List;)V

    .line 104
    new-instance v4, Lcom/a/a/a/c;

    invoke-virtual {p0}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Lcom/a/a/a/c;-><init>(Ljava/io/InputStream;Ljava/util/List;)V

    .line 107
    invoke-virtual {v3}, Lcom/a/a/a/c;->start()V

    .line 108
    invoke-virtual {v4}, Lcom/a/a/a/c;->start()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 110
    :try_start_1
    array-length v5, p1

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_0

    aget-object v7, p1, v6

    .line 111
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\n"

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "UTF-8"

    invoke-virtual {v7, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/io/DataOutputStream;->write([B)V

    .line 112
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    const-string p1, "exit\n"

    const-string v5, "UTF-8"

    .line 114
    invoke-virtual {p1, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/io/DataOutputStream;->write([B)V

    .line 115
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_1

    :catch_0
    move-exception p1

    .line 118
    :try_start_2
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    const-string v6, "EPIPE"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 124
    throw p1

    .line 129
    :cond_1
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Process;->waitFor()I

    move-result p1
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 135
    :try_start_3
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_3

    .line 139
    :catch_1
    :try_start_4
    invoke-virtual {v3}, Lcom/a/a/a/c;->join()V

    .line 140
    invoke-virtual {v4}, Lcom/a/a/a/c;->join()V

    .line 141
    invoke-virtual {p0}, Ljava/lang/Process;->destroy()V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    :catch_2
    const/4 p1, -0x4

    goto :goto_2

    :catch_3
    const/4 p1, -0x1

    .line 148
    :goto_2
    new-instance p0, Lcom/a/a/a/a;

    invoke-direct {p0, v0, v1, p1}, Lcom/a/a/a/a;-><init>(Ljava/util/List;Ljava/util/List;I)V

    return-object p0
.end method
