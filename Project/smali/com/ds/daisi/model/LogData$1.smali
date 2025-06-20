.class Lcom/ds/daisi/model/LogData$1;
.super Lcom/lidroid/xutils/http/callback/RequestCallBack;
.source "LogData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ds/daisi/model/LogData;->sendLog(Landroid/content/Context;Lcom/lidroid/xutils/http/callback/RequestCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/lidroid/xutils/http/callback/RequestCallBack<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ds/daisi/model/LogData;

.field final synthetic val$commonLog:Lcom/ds/daisi/log/CommonLog;


# direct methods
.method constructor <init>(Lcom/ds/daisi/model/LogData;Lcom/ds/daisi/log/CommonLog;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/ds/daisi/model/LogData$1;->this$0:Lcom/ds/daisi/model/LogData;

    iput-object p2, p0, Lcom/ds/daisi/model/LogData$1;->val$commonLog:Lcom/ds/daisi/log/CommonLog;

    invoke-direct {p0}, Lcom/lidroid/xutils/http/callback/RequestCallBack;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/lidroid/xutils/exception/HttpException;Ljava/lang/String;)V
    .locals 3

    .line 82
    iget-object v0, p0, Lcom/ds/daisi/model/LogData$1;->val$commonLog:Lcom/ds/daisi/log/CommonLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "url"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/ds/daisi/net/URL/URLConstant;->LOGURL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ds/daisi/log/CommonLog;->e(Ljava/lang/Object;)V

    .line 83
    iget-object v0, p0, Lcom/ds/daisi/model/LogData$1;->val$commonLog:Lcom/ds/daisi/log/CommonLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u8bbf\u95ee\u5931\u8d25"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/lidroid/xutils/exception/HttpException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ds/daisi/log/CommonLog;->e(Ljava/lang/Object;)V

    return-void
.end method

.method public onSuccess(Lcom/lidroid/xutils/http/ResponseInfo;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lidroid/xutils/http/ResponseInfo<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 77
    iget-object p1, p0, Lcom/ds/daisi/model/LogData$1;->val$commonLog:Lcom/ds/daisi/log/CommonLog;

    const-string v0, "\u8bbf\u95ee\u6210\u529f"

    invoke-virtual {p1, v0}, Lcom/ds/daisi/log/CommonLog;->e(Ljava/lang/Object;)V

    return-void
.end method
