.class Lcom/cyjh/share/util/DownloadUtil$2;
.super Ljava/lang/Object;
.source "DownloadUtil.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyjh/share/util/DownloadUtil;->download(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/cyjh/share/util/DownloadUtil$OnDownloadListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cyjh/share/util/DownloadUtil;

.field final synthetic val$destFileDir:Ljava/lang/String;

.field final synthetic val$destFileName:Ljava/lang/String;

.field final synthetic val$listener:Lcom/cyjh/share/util/DownloadUtil$OnDownloadListener;


# direct methods
.method constructor <init>(Lcom/cyjh/share/util/DownloadUtil;Lcom/cyjh/share/util/DownloadUtil$OnDownloadListener;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/cyjh/share/util/DownloadUtil$2;->this$0:Lcom/cyjh/share/util/DownloadUtil;

    iput-object p2, p0, Lcom/cyjh/share/util/DownloadUtil$2;->val$listener:Lcom/cyjh/share/util/DownloadUtil$OnDownloadListener;

    iput-object p3, p0, Lcom/cyjh/share/util/DownloadUtil$2;->val$destFileDir:Ljava/lang/String;

    iput-object p4, p0, Lcom/cyjh/share/util/DownloadUtil$2;->val$destFileName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 0

    .line 136
    iget-object p1, p0, Lcom/cyjh/share/util/DownloadUtil$2;->val$listener:Lcom/cyjh/share/util/DownloadUtil$OnDownloadListener;

    invoke-interface {p1, p2}, Lcom/cyjh/share/util/DownloadUtil$OnDownloadListener;->onDownloadFailed(Ljava/lang/Exception;)V

    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 p1, 0x800

    .line 144
    new-array p1, p1, [B

    .line 149
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/cyjh/share/util/DownloadUtil$2;->val$destFileDir:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 150
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 151
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 153
    :cond_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/cyjh/share/util/DownloadUtil$2;->val$destFileName:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 157
    :try_start_0
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 158
    :try_start_1
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p2

    invoke-virtual {p2}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v9

    .line 160
    new-instance p2, Ljava/io/FileOutputStream;

    invoke-direct {p2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const-wide/16 v3, 0x0

    .line 162
    :goto_0
    :try_start_2
    invoke-virtual {v2, p1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    const/4 v5, -0x1

    const/4 v6, 0x0

    if-eq v0, v5, :cond_1

    .line 163
    invoke-virtual {p2, p1, v6, v0}, Ljava/io/FileOutputStream;->write([BII)V

    int-to-long v5, v0

    add-long v11, v3, v5

    .line 166
    iget-object v3, p0, Lcom/cyjh/share/util/DownloadUtil$2;->this$0:Lcom/cyjh/share/util/DownloadUtil;

    iget-object v4, p0, Lcom/cyjh/share/util/DownloadUtil$2;->this$0:Lcom/cyjh/share/util/DownloadUtil;

    invoke-static {v4}, Lcom/cyjh/share/util/DownloadUtil;->access$000(Lcom/cyjh/share/util/DownloadUtil;)I

    move-result v4

    add-int/2addr v4, v0

    invoke-static {v3, v4}, Lcom/cyjh/share/util/DownloadUtil;->access$002(Lcom/cyjh/share/util/DownloadUtil;I)I

    .line 167
    invoke-static {}, Lcom/cyjh/share/util/DownloadUtil;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "download 2 --> downLoadLength="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/cyjh/share/util/DownloadUtil$2;->this$0:Lcom/cyjh/share/util/DownloadUtil;

    invoke-static {v4}, Lcom/cyjh/share/util/DownloadUtil;->access$000(Lcom/cyjh/share/util/DownloadUtil;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",contentLength="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/cyjh/share/util/SlLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    long-to-float v0, v11

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float v0, v0, v3

    long-to-float v3, v9

    div-float/2addr v0, v3

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float v0, v0, v3

    float-to-int v8, v0

    .line 170
    iget-object v3, p0, Lcom/cyjh/share/util/DownloadUtil$2;->val$listener:Lcom/cyjh/share/util/DownloadUtil$OnDownloadListener;

    move-wide v4, v9

    move-wide v6, v11

    invoke-interface/range {v3 .. v8}, Lcom/cyjh/share/util/DownloadUtil$OnDownloadListener;->onDownloading(JJI)V

    move-wide v3, v11

    goto :goto_0

    .line 172
    :cond_1
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->flush()V

    .line 174
    iget-object p1, p0, Lcom/cyjh/share/util/DownloadUtil$2;->val$listener:Lcom/cyjh/share/util/DownloadUtil$OnDownloadListener;

    invoke-interface {p1, v1}, Lcom/cyjh/share/util/DownloadUtil$OnDownloadListener;->onDownloadSuccess(Ljava/io/File;)V

    .line 175
    iget-object p1, p0, Lcom/cyjh/share/util/DownloadUtil$2;->this$0:Lcom/cyjh/share/util/DownloadUtil;

    invoke-static {p1, v6}, Lcom/cyjh/share/util/DownloadUtil;->access$002(Lcom/cyjh/share/util/DownloadUtil;I)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_2

    .line 181
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_2
    if-eqz p2, :cond_3

    .line 184
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V

    .line 186
    :cond_3
    invoke-static {}, Lcom/cyjh/share/util/DownloadUtil;->access$100()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "download 3 --> downLoadLength="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/cyjh/share/util/DownloadUtil$2;->this$0:Lcom/cyjh/share/util/DownloadUtil;

    invoke-static {v0}, Lcom/cyjh/share/util/DownloadUtil;->access$000(Lcom/cyjh/share/util/DownloadUtil;)I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/cyjh/share/util/SlLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_4

    :catchall_0
    move-exception p1

    goto :goto_5

    :catch_0
    move-exception p1

    goto :goto_2

    :catchall_1
    move-exception p1

    move-object p2, v0

    goto :goto_5

    :catch_1
    move-exception p1

    move-object p2, v0

    :goto_2
    move-object v0, v2

    goto :goto_3

    :catchall_2
    move-exception p1

    move-object p2, v0

    move-object v2, p2

    goto :goto_5

    :catch_2
    move-exception p1

    move-object p2, v0

    .line 177
    :goto_3
    :try_start_4
    iget-object v1, p0, Lcom/cyjh/share/util/DownloadUtil$2;->val$listener:Lcom/cyjh/share/util/DownloadUtil$OnDownloadListener;

    invoke-interface {v1, p1}, Lcom/cyjh/share/util/DownloadUtil$OnDownloadListener;->onDownloadFailed(Ljava/lang/Exception;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-eqz v0, :cond_4

    .line 181
    :try_start_5
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_4
    if-eqz p2, :cond_5

    .line 184
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V

    .line 186
    :cond_5
    invoke-static {}, Lcom/cyjh/share/util/DownloadUtil;->access$100()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "download 3 --> downLoadLength="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/cyjh/share/util/DownloadUtil$2;->this$0:Lcom/cyjh/share/util/DownloadUtil;

    invoke-static {v0}, Lcom/cyjh/share/util/DownloadUtil;->access$000(Lcom/cyjh/share/util/DownloadUtil;)I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_1

    :catch_3
    :goto_4
    return-void

    :catchall_3
    move-exception p1

    move-object v2, v0

    :goto_5
    if-eqz v2, :cond_6

    .line 181
    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_6
    if-eqz p2, :cond_7

    .line 184
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V

    .line 186
    :cond_7
    invoke-static {}, Lcom/cyjh/share/util/DownloadUtil;->access$100()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "download 3 --> downLoadLength="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cyjh/share/util/DownloadUtil$2;->this$0:Lcom/cyjh/share/util/DownloadUtil;

    invoke-static {v1}, Lcom/cyjh/share/util/DownloadUtil;->access$000(Lcom/cyjh/share/util/DownloadUtil;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/cyjh/share/util/SlLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 190
    :catch_4
    throw p1
.end method
