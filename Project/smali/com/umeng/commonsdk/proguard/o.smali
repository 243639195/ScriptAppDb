.class public Lcom/umeng/commonsdk/proguard/o;
.super Ljava/lang/Object;
.source "ProcessUtil.java"


# static fields
.field private static final a:Ljava/lang/String; = "\n"

.field private static final b:[B

.field private static c:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "\nexit\n"

    .line 25
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/umeng/commonsdk/proguard/o;->b:[B

    const/16 v0, 0x20

    .line 26
    new-array v0, v0, [B

    sput-object v0, Lcom/umeng/commonsdk/proguard/o;->c:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs a([Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    const/4 v0, 0x0

    .line 48
    :try_start_0
    new-instance v1, Ljava/lang/ProcessBuilder;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    .line 49
    invoke-virtual {v1, p0}, Ljava/lang/ProcessBuilder;->command([Ljava/lang/String;)Ljava/lang/ProcessBuilder;

    move-result-object p0

    .line 50
    invoke-virtual {p0}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_e
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    .line 51
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_c
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 52
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v2
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_b
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_a
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 53
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v3
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_9
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_8
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 55
    :try_start_4
    sget-object v4, Lcom/umeng/commonsdk/proguard/o;->b:[B

    invoke-virtual {v1, v4}, Ljava/io/OutputStream;->write([B)V

    .line 56
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 58
    invoke-virtual {p0}, Ljava/lang/Process;->waitFor()I

    .line 60
    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 61
    :try_start_5
    new-instance v5, Ljava/io/BufferedReader;

    invoke-direct {v5, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 64
    :try_start_6
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 65
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    .line 66
    :try_start_7
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    sget-object v6, Lcom/umeng/commonsdk/proguard/o;->a:Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    :goto_0
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 69
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    sget-object v6, Lcom/umeng/commonsdk/proguard/o;->a:Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    move-object v7, v0

    .line 74
    :cond_1
    :goto_1
    sget-object v6, Lcom/umeng/commonsdk/proguard/o;->c:[B

    invoke-virtual {v3, v6}, Ljava/io/InputStream;->read([B)I

    move-result v6
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    if-lez v6, :cond_2

    goto :goto_1

    .line 81
    :cond_2
    invoke-static {v1, v3, v2, v4, v5}, Lcom/umeng/commonsdk/proguard/o;->a(Ljava/io/OutputStream;Ljava/io/InputStream;Ljava/io/InputStream;Ljava/io/InputStreamReader;Ljava/io/BufferedReader;)V

    if-eqz p0, :cond_3

    .line 84
    :goto_2
    invoke-static {p0}, Lcom/umeng/commonsdk/proguard/o;->c(Ljava/lang/Process;)V

    goto/16 :goto_f

    :catch_0
    move-exception v6

    goto/16 :goto_8

    :catch_1
    move-exception v6

    goto/16 :goto_e

    :catch_2
    move-exception v6

    move-object v7, v0

    goto/16 :goto_8

    :catch_3
    move-exception v6

    move-object v7, v0

    goto/16 :goto_e

    :catchall_0
    move-exception v5

    move-object v8, v5

    move-object v5, v0

    move-object v0, v8

    goto/16 :goto_10

    :catch_4
    move-exception v6

    move-object v5, v0

    goto/16 :goto_7

    :catch_5
    move-exception v6

    move-object v5, v0

    goto/16 :goto_d

    :catchall_1
    move-exception v4

    move-object v5, v0

    move-object v0, v4

    move-object v4, v5

    goto/16 :goto_10

    :catch_6
    move-exception v6

    move-object v4, v0

    goto/16 :goto_6

    :catch_7
    move-exception v6

    move-object v4, v0

    goto/16 :goto_c

    :catchall_2
    move-exception v3

    move-object v4, v0

    move-object v5, v4

    move-object v0, v3

    move-object v3, v5

    goto/16 :goto_10

    :catch_8
    move-exception v6

    move-object v3, v0

    goto :goto_5

    :catch_9
    move-exception v6

    move-object v3, v0

    goto/16 :goto_b

    :catchall_3
    move-exception v2

    move-object v3, v0

    move-object v4, v3

    move-object v5, v4

    move-object v0, v2

    move-object v2, v5

    goto/16 :goto_10

    :catch_a
    move-exception v6

    move-object v2, v0

    goto :goto_4

    :catch_b
    move-exception v6

    move-object v2, v0

    goto :goto_a

    :catchall_4
    move-exception v1

    move-object v2, v0

    move-object v3, v2

    move-object v4, v3

    move-object v5, v4

    move-object v0, v1

    move-object v1, v5

    goto :goto_10

    :catch_c
    move-exception v6

    move-object v1, v0

    goto :goto_3

    :catch_d
    move-exception v6

    move-object v1, v0

    goto :goto_9

    :catchall_5
    move-exception p0

    move-object v1, v0

    move-object v2, v1

    move-object v3, v2

    move-object v4, v3

    move-object v5, v4

    move-object v0, p0

    move-object p0, v5

    goto :goto_10

    :catch_e
    move-exception v6

    move-object p0, v0

    move-object v1, p0

    :goto_3
    move-object v2, v1

    :goto_4
    move-object v3, v2

    :goto_5
    move-object v4, v3

    :goto_6
    move-object v5, v4

    :goto_7
    move-object v7, v5

    .line 79
    :goto_8
    :try_start_8
    invoke-static {v6}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    .line 81
    invoke-static {v1, v3, v2, v4, v5}, Lcom/umeng/commonsdk/proguard/o;->a(Ljava/io/OutputStream;Ljava/io/InputStream;Ljava/io/InputStream;Ljava/io/InputStreamReader;Ljava/io/BufferedReader;)V

    if-eqz p0, :cond_3

    goto :goto_2

    :catch_f
    move-exception v6

    move-object p0, v0

    move-object v1, p0

    :goto_9
    move-object v2, v1

    :goto_a
    move-object v3, v2

    :goto_b
    move-object v4, v3

    :goto_c
    move-object v5, v4

    :goto_d
    move-object v7, v5

    .line 77
    :goto_e
    :try_start_9
    invoke-static {v6}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    .line 81
    invoke-static {v1, v3, v2, v4, v5}, Lcom/umeng/commonsdk/proguard/o;->a(Ljava/io/OutputStream;Ljava/io/InputStream;Ljava/io/InputStream;Ljava/io/InputStreamReader;Ljava/io/BufferedReader;)V

    if-eqz p0, :cond_3

    goto/16 :goto_2

    :cond_3
    :goto_f
    if-nez v7, :cond_4

    return-object v0

    .line 89
    :cond_4
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catchall_6
    move-exception v0

    .line 81
    :goto_10
    invoke-static {v1, v3, v2, v4, v5}, Lcom/umeng/commonsdk/proguard/o;->a(Ljava/io/OutputStream;Ljava/io/InputStream;Ljava/io/InputStream;Ljava/io/InputStreamReader;Ljava/io/BufferedReader;)V

    if-eqz p0, :cond_5

    .line 84
    invoke-static {p0}, Lcom/umeng/commonsdk/proguard/o;->c(Ljava/lang/Process;)V

    .line 85
    :cond_5
    throw v0
.end method

.method private static a(Ljava/io/OutputStream;Ljava/io/InputStream;Ljava/io/InputStream;Ljava/io/InputStreamReader;Ljava/io/BufferedReader;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 105
    :try_start_0
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 107
    invoke-static {p0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    .line 112
    :try_start_1
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    .line 114
    invoke-static {p0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    if-eqz p2, :cond_2

    .line 119
    :try_start_2
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception p0

    .line 121
    invoke-static {p0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    :cond_2
    :goto_2
    if-eqz p3, :cond_3

    .line 126
    :try_start_3
    invoke-virtual {p3}, Ljava/io/InputStreamReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception p0

    .line 128
    invoke-static {p0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    :cond_3
    :goto_3
    if-eqz p4, :cond_4

    .line 133
    :try_start_4
    invoke-virtual {p4}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_4

    :catch_4
    move-exception p0

    .line 135
    invoke-static {p0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    :cond_4
    :goto_4
    return-void
.end method

.method private static a(Ljava/lang/Process;)V
    .locals 1

    .line 146
    invoke-static {p0}, Lcom/umeng/commonsdk/proguard/o;->b(Ljava/lang/Process;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    :try_start_0
    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 153
    :catch_0
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Process;->destroy()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_0
    :goto_0
    return-void
.end method

.method private static b(Ljava/lang/Process;)I
    .locals 2

    .line 167
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    :try_start_0
    const-string v0, "="

    .line 169
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    const-string v1, "]"

    .line 170
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 171
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 172
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method private static c(Ljava/lang/Process;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 187
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Process;->exitValue()I

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    invoke-static {p0}, Lcom/umeng/commonsdk/proguard/o;->a(Ljava/lang/Process;)V
    :try_end_0
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 191
    :catch_0
    invoke-static {p0}, Lcom/umeng/commonsdk/proguard/o;->a(Ljava/lang/Process;)V

    :cond_0
    :goto_0
    return-void
.end method
