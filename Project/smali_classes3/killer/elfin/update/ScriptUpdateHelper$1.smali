.class Lkiller/elfin/update/ScriptUpdateHelper$1;
.super Ljava/lang/Object;
.source "ScriptUpdateHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkiller/elfin/update/ScriptUpdateHelper;->updateScript(Ljava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lkiller/elfin/update/ScriptUpdateHelper;

.field final synthetic val$url:Ljava/lang/String;

.field final synthetic val$version:J


# direct methods
.method constructor <init>(Lkiller/elfin/update/ScriptUpdateHelper;Ljava/lang/String;J)V
    .locals 1
    .param p1, "this$0"    # Lkiller/elfin/update/ScriptUpdateHelper;

    .prologue
    .line 17
    iput-object p1, p0, Lkiller/elfin/update/ScriptUpdateHelper$1;->this$0:Lkiller/elfin/update/ScriptUpdateHelper;

    iput-object p2, p0, Lkiller/elfin/update/ScriptUpdateHelper$1;->val$url:Ljava/lang/String;

    iput-wide p3, p0, Lkiller/elfin/update/ScriptUpdateHelper$1;->val$version:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 21
    :try_start_0
    iget-object v3, p0, Lkiller/elfin/update/ScriptUpdateHelper$1;->val$url:Ljava/lang/String;

    invoke-static {v3}, Lorg/jsoup/Jsoup;->connect(Ljava/lang/String;)Lorg/jsoup/Connection;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Lorg/jsoup/Connection;->ignoreHttpErrors(Z)Lorg/jsoup/Connection;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Lorg/jsoup/Connection;->ignoreContentType(Z)Lorg/jsoup/Connection;

    move-result-object v3

    invoke-interface {v3}, Lorg/jsoup/Connection;->execute()Lorg/jsoup/Connection$Response;

    move-result-object v3

    invoke-interface {v3}, Lorg/jsoup/Connection$Response;->body()Ljava/lang/String;

    move-result-object v0

    .line 22
    .local v0, "body":Ljava/lang/String;
    const-class v3, Lkiller/core/entity/ScriptVersionInfo;

    invoke-static {v0, v3}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkiller/core/entity/ScriptVersionInfo;

    .line 23
    .local v2, "scriptVersionInfo":Lkiller/core/entity/ScriptVersionInfo;
    iget-wide v4, v2, Lkiller/core/entity/ScriptVersionInfo;->version:J

    iget-wide v6, p0, Lkiller/elfin/update/ScriptUpdateHelper$1;->val$version:J

    cmp-long v3, v4, v6

    if-lez v3, :cond_0

    .line 24
    const-string v3, "\u68c0\u6d4b\u5230\u66f4\u65b0"

    const/16 v4, 0x7d0

    const/16 v5, 0xa

    const/16 v6, 0xa

    invoke-static {v3, v4, v5, v6}, Lkiller/elfin/util/ToastUtil;->toast(Ljava/lang/String;III)V

    .line 25
    invoke-static {}, Lkiller/elfin/update/ScriptDownload;->get()Lkiller/elfin/update/ScriptDownload;

    move-result-object v3

    invoke-virtual {v3, v2}, Lkiller/elfin/update/ScriptDownload;->download(Lkiller/core/entity/ScriptVersionInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    .end local v0    # "body":Ljava/lang/String;
    .end local v2    # "scriptVersionInfo":Lkiller/core/entity/ScriptVersionInfo;
    :cond_0
    :goto_0
    return-void

    .line 27
    :catch_0
    move-exception v1

    .line 28
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "ScriptUpdateHelper"

    const-string v4, "updateScript"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
