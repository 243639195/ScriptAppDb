.class public Lcom/cyjh/share/util/ShellUtils;
.super Ljava/lang/Object;
.source "ShellUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cyjh/share/util/ShellUtils$CommandTimeoutThread;,
        Lcom/cyjh/share/util/ShellUtils$CommandResult;
    }
.end annotation


# static fields
.field public static final COMMAND_EXIT:Ljava/lang/String; = "exit\n"

.field public static final COMMAND_LINE_END:Ljava/lang/String; = "\n"

.field public static final COMMAND_SH:Ljava/lang/String; = "sh"

.field public static final COMMAND_SU:Ljava/lang/String; = "su"

.field private static mCommandFinished:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method static synthetic access$000()Z
    .locals 1

    .line 29
    sget-boolean v0, Lcom/cyjh/share/util/ShellUtils;->mCommandFinished:Z

    return v0
.end method

.method public static checkRootPermission()Z
    .locals 3

    const-string v0, "echo root"

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 46
    invoke-static {v0, v1, v2, v2}, Lcom/cyjh/share/util/ShellUtils;->execCommand(Ljava/lang/String;ZZI)Lcom/cyjh/share/util/ShellUtils$CommandResult;

    move-result-object v0

    iget v0, v0, Lcom/cyjh/share/util/ShellUtils$CommandResult;->result:I

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static execCommand(Ljava/lang/String;ZI)Lcom/cyjh/share/util/ShellUtils$CommandResult;
    .locals 3

    const/4 v0, 0x1

    .line 58
    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v1, p1, v0, p2}, Lcom/cyjh/share/util/ShellUtils;->execCommand([Ljava/lang/String;ZZI)Lcom/cyjh/share/util/ShellUtils$CommandResult;

    move-result-object p0

    return-object p0
.end method

.method public static execCommand(Ljava/lang/String;ZZI)Lcom/cyjh/share/util/ShellUtils$CommandResult;
    .locals 2

    const/4 v0, 0x1

    .line 95
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {v0, p1, p2, p3}, Lcom/cyjh/share/util/ShellUtils;->execCommand([Ljava/lang/String;ZZI)Lcom/cyjh/share/util/ShellUtils$CommandResult;

    move-result-object p0

    return-object p0
.end method

.method public static execCommand(Ljava/util/List;ZI)Lcom/cyjh/share/util/ShellUtils$CommandResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;ZI)",
            "Lcom/cyjh/share/util/ShellUtils$CommandResult;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 70
    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    :goto_0
    const/4 v0, 0x1

    invoke-static {p0, p1, v0, p2}, Lcom/cyjh/share/util/ShellUtils;->execCommand([Ljava/lang/String;ZZI)Lcom/cyjh/share/util/ShellUtils$CommandResult;

    move-result-object p0

    return-object p0
.end method

.method public static execCommand(Ljava/util/List;ZZI)Lcom/cyjh/share/util/ShellUtils$CommandResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;ZZI)",
            "Lcom/cyjh/share/util/ShellUtils$CommandResult;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 108
    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    :goto_0
    invoke-static {p0, p1, p2, p3}, Lcom/cyjh/share/util/ShellUtils;->execCommand([Ljava/lang/String;ZZI)Lcom/cyjh/share/util/ShellUtils$CommandResult;

    move-result-object p0

    return-object p0
.end method

.method public static execCommand([Ljava/lang/String;ZI)Lcom/cyjh/share/util/ShellUtils$CommandResult;
    .locals 1

    const/4 v0, 0x1

    .line 82
    invoke-static {p0, p1, v0, p2}, Lcom/cyjh/share/util/ShellUtils;->execCommand([Ljava/lang/String;ZZI)Lcom/cyjh/share/util/ShellUtils$CommandResult;

    move-result-object p0

    return-object p0
.end method

.method public static execCommand([Ljava/lang/String;ZZI)Lcom/cyjh/share/util/ShellUtils$CommandResult;
    .locals 7

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-eqz p0, :cond_1c

    .line 125
    array-length v2, p0

    if-nez v2, :cond_0

    goto/16 :goto_27

    :cond_0
    const/4 v2, 0x0

    .line 137
    sput-boolean v2, Lcom/cyjh/share/util/ShellUtils;->mCommandFinished:Z

    .line 139
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    if-eqz p1, :cond_1

    const-string p1, "su"

    goto :goto_0

    :cond_1
    const-string p1, "sh"

    :goto_0
    invoke-virtual {v3, p1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_18
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_16
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 140
    :try_start_1
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-virtual {p1}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_15
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_14
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_13
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 141
    :try_start_2
    array-length v4, p0

    :goto_1
    if-ge v2, v4, :cond_3

    aget-object v5, p0, v2

    if-nez v5, :cond_2

    goto :goto_2

    .line 147
    :cond_2
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/DataOutputStream;->write([B)V

    const-string v5, "\n"

    .line 148
    invoke-virtual {v3, v5}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 149
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->flush()V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    const-string p0, "exit\n"

    .line 151
    invoke-virtual {v3, p0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 152
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->flush()V

    if-lez p3, :cond_4

    .line 155
    new-instance p0, Lcom/cyjh/share/util/ShellUtils$CommandTimeoutThread;

    invoke-direct {p0, p1, p3}, Lcom/cyjh/share/util/ShellUtils$CommandTimeoutThread;-><init>(Ljava/lang/Process;I)V

    invoke-virtual {p0}, Lcom/cyjh/share/util/ShellUtils$CommandTimeoutThread;->start()V

    .line 157
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Process;->waitFor()I

    move-result p0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_12
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_11
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_10
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    const-string p3, "SYS"

    const-string v1, "command finished."

    .line 158
    invoke-static {p3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p3, 0x1

    .line 159
    sput-boolean p3, Lcom/cyjh/share/util/ShellUtils;->mCommandFinished:Z

    if-eqz p2, :cond_6

    .line 162
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_f
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_e
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_d
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 163
    :try_start_4
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_b
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_a
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_9
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 164
    :try_start_5
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {p1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_8
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_6
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 165
    :try_start_6
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-virtual {p1}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 167
    :goto_3
    :try_start_7
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 168
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 170
    :cond_5
    :goto_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 171
    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    goto :goto_4

    :catch_0
    move-exception v4

    move-object v6, p2

    move p2, p0

    move-object p0, v4

    move-object v4, p3

    goto/16 :goto_5

    :catch_1
    move-exception v4

    move-object v6, p2

    move p2, p0

    move-object p0, v4

    move-object v4, p3

    goto/16 :goto_6

    :catch_2
    move-exception v4

    move-object v6, p2

    move p2, p0

    move-object p0, v4

    move-object v4, p3

    goto/16 :goto_7

    :catchall_0
    move-exception p0

    move-object v2, v0

    goto/16 :goto_22

    :catch_3
    move-exception v2

    move-object v4, p3

    move-object p3, p2

    move p2, p0

    move-object p0, v2

    move-object v2, v0

    goto/16 :goto_e

    :catch_4
    move-exception v2

    move-object v4, p3

    move-object p3, p2

    move p2, p0

    move-object p0, v2

    move-object v2, v0

    goto/16 :goto_15

    :catch_5
    move-exception v2

    move-object v4, p3

    move-object p3, p2

    move p2, p0

    move-object p0, v2

    move-object v2, v0

    goto/16 :goto_1b

    :catch_6
    move-exception v1

    move-object v4, p3

    move-object v2, v0

    move-object p3, p2

    move p2, p0

    move-object p0, v1

    move-object v1, v2

    goto/16 :goto_e

    :catch_7
    move-exception v1

    move-object v4, p3

    move-object v2, v0

    move-object p3, p2

    move p2, p0

    move-object p0, v1

    move-object v1, v2

    goto/16 :goto_15

    :catch_8
    move-exception v1

    move-object v4, p3

    move-object v2, v0

    move-object p3, p2

    move p2, p0

    move-object p0, v1

    move-object v1, v2

    goto/16 :goto_1b

    :catch_9
    move-exception p3

    move-object v1, v0

    move-object v2, v1

    move-object v4, v2

    move-object v6, p2

    move p2, p0

    move-object p0, p3

    :goto_5
    move-object p3, v6

    goto/16 :goto_e

    :catch_a
    move-exception p3

    move-object v1, v0

    move-object v2, v1

    move-object v4, v2

    move-object v6, p2

    move p2, p0

    move-object p0, p3

    :goto_6
    move-object p3, v6

    goto/16 :goto_15

    :catch_b
    move-exception p3

    move-object v1, v0

    move-object v2, v1

    move-object v4, v2

    move-object v6, p2

    move p2, p0

    move-object p0, p3

    :goto_7
    move-object p3, v6

    goto/16 :goto_1b

    :cond_6
    move-object p2, v0

    move-object p3, p2

    move-object v1, p3

    move-object v2, v1

    :cond_7
    if-eqz v3, :cond_8

    .line 185
    :try_start_8
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V

    goto :goto_8

    :catch_c
    move-exception v1

    goto :goto_9

    :cond_8
    :goto_8
    if-eqz v1, :cond_9

    .line 188
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    :cond_9
    if-eqz v2, :cond_a

    .line 191
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_c

    goto :goto_a

    .line 194
    :goto_9
    invoke-static {v1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    :cond_a
    :goto_a
    if-eqz p1, :cond_b

    .line 198
    invoke-virtual {p1}, Ljava/lang/Process;->destroy()V

    :cond_b
    move-object v4, p3

    move-object p3, p2

    move p2, p0

    goto/16 :goto_1f

    :catch_d
    move-exception p2

    move-object p3, v0

    move-object v1, p3

    move-object v2, v1

    move-object v4, v2

    move-object v6, p2

    move p2, p0

    move-object p0, v6

    goto/16 :goto_e

    :catch_e
    move-exception p2

    move-object p3, v0

    move-object v1, p3

    move-object v2, v1

    move-object v4, v2

    move-object v6, p2

    move p2, p0

    move-object p0, v6

    goto/16 :goto_15

    :catch_f
    move-exception p2

    move-object p3, v0

    move-object v1, p3

    move-object v2, v1

    move-object v4, v2

    move-object v6, p2

    move p2, p0

    move-object p0, v6

    goto/16 :goto_1b

    :catchall_1
    move-exception p0

    move-object v2, v0

    goto/16 :goto_23

    :catch_10
    move-exception p0

    move-object p3, v0

    move-object v1, p3

    move-object v2, v1

    move-object v4, v2

    goto :goto_d

    :catch_11
    move-exception p0

    move-object p3, v0

    move-object v1, p3

    move-object v2, v1

    move-object v4, v2

    goto/16 :goto_14

    :catch_12
    move-exception p0

    move-object p3, v0

    move-object v1, p3

    move-object v2, v1

    move-object v4, v2

    goto/16 :goto_1a

    :catchall_2
    move-exception p0

    move-object v2, v0

    goto :goto_b

    :catch_13
    move-exception p0

    move-object p3, v0

    goto :goto_c

    :catch_14
    move-exception p0

    move-object p3, v0

    goto :goto_13

    :catch_15
    move-exception p0

    move-object p3, v0

    goto/16 :goto_19

    :catchall_3
    move-exception p0

    move-object p1, v0

    move-object v2, p1

    :goto_b
    move-object v3, v2

    goto/16 :goto_23

    :catch_16
    move-exception p0

    move-object p1, v0

    move-object p3, p1

    :goto_c
    move-object v1, p3

    move-object v2, v1

    move-object v3, v2

    move-object v4, v3

    :goto_d
    const/4 p2, -0x1

    .line 180
    :goto_e
    :try_start_9
    invoke-static {p0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    if-eqz v3, :cond_c

    .line 185
    :try_start_a
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V

    goto :goto_f

    :catch_17
    move-exception p0

    goto :goto_10

    :cond_c
    :goto_f
    if-eqz v1, :cond_d

    .line 188
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    :cond_d
    if-eqz v2, :cond_e

    .line 191
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_17

    goto :goto_11

    .line 194
    :goto_10
    invoke-static {p0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    :cond_e
    :goto_11
    if-eqz p1, :cond_15

    .line 198
    :goto_12
    invoke-virtual {p1}, Ljava/lang/Process;->destroy()V

    goto :goto_1f

    :catch_18
    move-exception p0

    move-object p1, v0

    move-object p3, p1

    :goto_13
    move-object v1, p3

    move-object v2, v1

    move-object v3, v2

    move-object v4, v3

    :goto_14
    const/4 p2, -0x1

    .line 177
    :goto_15
    :try_start_b
    invoke-static {p0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    if-eqz v3, :cond_f

    .line 185
    :try_start_c
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V

    goto :goto_16

    :catch_19
    move-exception p0

    goto :goto_17

    :cond_f
    :goto_16
    if-eqz v1, :cond_10

    .line 188
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    :cond_10
    if-eqz v2, :cond_11

    .line 191
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_19

    goto :goto_18

    .line 194
    :goto_17
    invoke-static {p0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    :cond_11
    :goto_18
    if-eqz p1, :cond_15

    goto :goto_12

    :catch_1a
    move-exception p0

    move-object p1, v0

    move-object p3, p1

    :goto_19
    move-object v1, p3

    move-object v2, v1

    move-object v3, v2

    move-object v4, v3

    :goto_1a
    const/4 p2, -0x1

    .line 175
    :goto_1b
    :try_start_d
    invoke-static {p0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    if-eqz v3, :cond_12

    .line 185
    :try_start_e
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V

    goto :goto_1c

    :catch_1b
    move-exception p0

    goto :goto_1d

    :cond_12
    :goto_1c
    if-eqz v1, :cond_13

    .line 188
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    :cond_13
    if-eqz v2, :cond_14

    .line 191
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_1b

    goto :goto_1e

    .line 194
    :goto_1d
    invoke-static {p0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    :cond_14
    :goto_1e
    if-eqz p1, :cond_15

    goto :goto_12

    .line 201
    :cond_15
    :goto_1f
    new-instance p0, Lcom/cyjh/share/util/ShellUtils$CommandResult;

    if-nez p3, :cond_16

    move-object p1, v0

    goto :goto_20

    :cond_16
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_20
    if-nez v4, :cond_17

    goto :goto_21

    .line 202
    :cond_17
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_21
    invoke-direct {p0, p2, p1, v0}, Lcom/cyjh/share/util/ShellUtils$CommandResult;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-object p0

    :catchall_4
    move-exception p0

    :goto_22
    move-object v0, v1

    :goto_23
    if-eqz v3, :cond_18

    .line 185
    :try_start_f
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V

    goto :goto_24

    :catch_1c
    move-exception p2

    goto :goto_25

    :cond_18
    :goto_24
    if-eqz v0, :cond_19

    .line 188
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    :cond_19
    if-eqz v2, :cond_1a

    .line 191
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_1c

    goto :goto_26

    .line 194
    :goto_25
    invoke-static {p2}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    :cond_1a
    :goto_26
    if-eqz p1, :cond_1b

    .line 198
    invoke-virtual {p1}, Ljava/lang/Process;->destroy()V

    .line 200
    :cond_1b
    throw p0

    .line 126
    :cond_1c
    :goto_27
    new-instance p0, Lcom/cyjh/share/util/ShellUtils$CommandResult;

    invoke-direct {p0, v1, v0, v0}, Lcom/cyjh/share/util/ShellUtils$CommandResult;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method
