.class final Lcom/goldcoast/sdk/domain/j;
.super Ljava/lang/Object;
.source "EntryPoint.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/goldcoast/sdk/a/d;

.field final synthetic b:Lcom/goldcoast/sdk/domain/EntryPoint;


# direct methods
.method constructor <init>(Lcom/goldcoast/sdk/domain/EntryPoint;Lcom/goldcoast/sdk/a/d;)V
    .locals 0

    .line 1218
    iput-object p1, p0, Lcom/goldcoast/sdk/domain/j;->b:Lcom/goldcoast/sdk/domain/EntryPoint;

    iput-object p2, p0, Lcom/goldcoast/sdk/domain/j;->a:Lcom/goldcoast/sdk/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9
    .annotation build Landroid/annotation/TargetApi;
        value = 0x5
    .end annotation

    .line 1222
    iget-object v0, p0, Lcom/goldcoast/sdk/domain/j;->b:Lcom/goldcoast/sdk/domain/EntryPoint;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/goldcoast/sdk/domain/EntryPoint;->a(Lcom/goldcoast/sdk/domain/EntryPoint;Z)Z

    .line 1223
    iget-object v0, p0, Lcom/goldcoast/sdk/domain/j;->b:Lcom/goldcoast/sdk/domain/EntryPoint;

    invoke-static {v0}, Lcom/goldcoast/sdk/domain/EntryPoint;->e(Lcom/goldcoast/sdk/domain/EntryPoint;)Landroid/util/Pair;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1224
    iget-object v0, p0, Lcom/goldcoast/sdk/domain/j;->b:Lcom/goldcoast/sdk/domain/EntryPoint;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/goldcoast/sdk/domain/EntryPoint;->a(Lcom/goldcoast/sdk/domain/EntryPoint;Landroid/util/Pair;)Landroid/util/Pair;

    .line 1226
    :cond_0
    iget-object v0, p0, Lcom/goldcoast/sdk/domain/j;->b:Lcom/goldcoast/sdk/domain/EntryPoint;

    invoke-static {v0}, Lcom/goldcoast/sdk/domain/EntryPoint;->f(Lcom/goldcoast/sdk/domain/EntryPoint;)I

    .line 1227
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "######\n"

    .line 1228
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "In <<<<<< %d  >>>>>> \n"

    .line 1229
    new-array v3, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/goldcoast/sdk/domain/j;->b:Lcom/goldcoast/sdk/domain/EntryPoint;

    invoke-static {v4}, Lcom/goldcoast/sdk/domain/EntryPoint;->g(Lcom/goldcoast/sdk/domain/EntryPoint;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1230
    invoke-static {}, Lcom/goldcoast/sdk/c/g;->a()Lcom/goldcoast/sdk/c/g;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/goldcoast/sdk/c/g;->b(Ljava/lang/String;)V

    .line 1231
    iget-object v0, p0, Lcom/goldcoast/sdk/domain/j;->b:Lcom/goldcoast/sdk/domain/EntryPoint;

    const-string v2, "\u6b63\u5728\u8ba1\u7b97\u7b2c  <%d>  \u4e2a$$$\u65b9\u6848 \u8bf7\u7b49\u5f85..."

    new-array v3, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/goldcoast/sdk/domain/j;->b:Lcom/goldcoast/sdk/domain/EntryPoint;

    invoke-static {v4}, Lcom/goldcoast/sdk/domain/EntryPoint;->g(Lcom/goldcoast/sdk/domain/EntryPoint;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v0, v2, v3}, Lcom/goldcoast/sdk/domain/EntryPoint;->a(Lcom/goldcoast/sdk/domain/EntryPoint;Ljava/lang/String;I)V

    .line 1232
    iget-object v0, p0, Lcom/goldcoast/sdk/domain/j;->b:Lcom/goldcoast/sdk/domain/EntryPoint;

    const-string v2, "key:%s\norder:%d name: %s"

    const/4 v4, 0x3

    new-array v6, v4, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/goldcoast/sdk/domain/j;->a:Lcom/goldcoast/sdk/a/d;

    invoke-virtual {v7}, Lcom/goldcoast/sdk/a/d;->e()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v5

    iget-object v7, p0, Lcom/goldcoast/sdk/domain/j;->a:Lcom/goldcoast/sdk/a/d;

    invoke-virtual {v7}, Lcom/goldcoast/sdk/a/d;->d()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v1

    iget-object v7, p0, Lcom/goldcoast/sdk/domain/j;->a:Lcom/goldcoast/sdk/a/d;

    invoke-virtual {v7}, Lcom/goldcoast/sdk/a/d;->a()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-static {v2, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v3}, Lcom/goldcoast/sdk/domain/EntryPoint;->a(Lcom/goldcoast/sdk/domain/EntryPoint;Ljava/lang/String;I)V

    .line 1233
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1234
    iget-object v2, p0, Lcom/goldcoast/sdk/domain/j;->a:Lcom/goldcoast/sdk/a/d;

    iget-object v6, p0, Lcom/goldcoast/sdk/domain/j;->a:Lcom/goldcoast/sdk/a/d;

    invoke-virtual {v6}, Lcom/goldcoast/sdk/a/d;->b()Ljava/lang/String;

    move-result-object v6

    const-string v7, "\n"

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/goldcoast/sdk/a/d;->b(Ljava/lang/String;)V

    const-string v2, "no"

    .line 1236
    iget-object v6, p0, Lcom/goldcoast/sdk/domain/j;->a:Lcom/goldcoast/sdk/a/d;

    invoke-virtual {v6}, Lcom/goldcoast/sdk/a/d;->a()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/goldcoast/sdk/domain/j;->a:Lcom/goldcoast/sdk/a/d;

    invoke-virtual {v7}, Lcom/goldcoast/sdk/a/d;->c()I

    move-result v7

    invoke-static {v6, v7}, Lcom/goldcoast/sdk/domain/EntryPoint;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "%s %d %s\n"

    .line 1238
    new-array v4, v4, [Ljava/lang/Object;

    aput-object v6, v4, v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v1

    iget-object v6, p0, Lcom/goldcoast/sdk/domain/j;->a:Lcom/goldcoast/sdk/a/d;

    invoke-virtual {v6}, Lcom/goldcoast/sdk/a/d;->b()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v3

    invoke-static {v7, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 1241
    :try_start_0
    new-array v6, v1, [Ljava/lang/String;

    aput-object v4, v6, v5

    const-string v4, "sh"

    .line 1308
    invoke-static {v4, v6}, Lcom/a/a/a/b;->a(Ljava/lang/String;[Ljava/lang/String;)Lcom/a/a/a/a;

    move-result-object v4

    .line 1242
    invoke-static {}, Lcom/goldcoast/sdk/c/g;->a()Lcom/goldcoast/sdk/c/g;

    invoke-virtual {v4}, Lcom/a/a/a/a;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/goldcoast/sdk/c/g;->a(Ljava/lang/String;)V

    const-wide/16 v6, 0x1770

    .line 1243
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    .line 1248
    iget-object v6, p0, Lcom/goldcoast/sdk/domain/j;->b:Lcom/goldcoast/sdk/domain/EntryPoint;

    const-string v7, "A9DDDF2A4F7D94594EC2EA98407A410E1 exception: %s"

    new-array v1, v1, [Ljava/lang/Object;

    .line 1250
    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v5

    .line 1248
    invoke-static {v7, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1, v3}, Lcom/goldcoast/sdk/domain/EntryPoint;->a(Lcom/goldcoast/sdk/domain/EntryPoint;Ljava/lang/String;I)V

    .line 1253
    :goto_0
    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/goldcoast/sdk/domain/EntryPoint;->extractDir:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/goldcoast/sdk/domain/j;->a:Lcom/goldcoast/sdk/a/d;

    .line 1254
    invoke-virtual {v4}, Lcom/goldcoast/sdk/a/d;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1255
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1256
    invoke-static {}, Lcom/goldcoast/sdk/c/g;->a()Lcom/goldcoast/sdk/c/g;

    const-string v1, "delete file"

    invoke-static {v1}, Lcom/goldcoast/sdk/c/g;->a(Ljava/lang/String;)V

    .line 1258
    :cond_1
    iget-object v1, p0, Lcom/goldcoast/sdk/domain/j;->b:Lcom/goldcoast/sdk/domain/EntryPoint;

    new-instance v3, Landroid/util/Pair;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v2, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v1, v3}, Lcom/goldcoast/sdk/domain/EntryPoint;->a(Lcom/goldcoast/sdk/domain/EntryPoint;Landroid/util/Pair;)Landroid/util/Pair;

    .line 1259
    iget-object v0, p0, Lcom/goldcoast/sdk/domain/j;->b:Lcom/goldcoast/sdk/domain/EntryPoint;

    invoke-static {v0, v5}, Lcom/goldcoast/sdk/domain/EntryPoint;->a(Lcom/goldcoast/sdk/domain/EntryPoint;Z)Z

    .line 1260
    iget-object v0, p0, Lcom/goldcoast/sdk/domain/j;->b:Lcom/goldcoast/sdk/domain/EntryPoint;

    invoke-static {v0}, Lcom/goldcoast/sdk/domain/EntryPoint;->h(Lcom/goldcoast/sdk/domain/EntryPoint;)Z

    return-void
.end method
