.class Lcom/iflytek/voiceads/view/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/iflytek/voiceads/request/a$a;


# instance fields
.field final synthetic a:Lcom/iflytek/voiceads/view/AdView;


# direct methods
.method constructor <init>(Lcom/iflytek/voiceads/view/AdView;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/voiceads/view/c;->a:Lcom/iflytek/voiceads/view/AdView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;I)V
    .locals 2

    iget-object v0, p0, Lcom/iflytek/voiceads/view/c;->a:Lcom/iflytek/voiceads/view/AdView;

    iget-object v0, v0, Lcom/iflytek/voiceads/view/AdView;->l:Lcom/iflytek/voiceads/view/b;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p2}, Lcom/iflytek/voiceads/view/b;->a(II)V

    return-void
.end method

.method public a([B)V
    .locals 4

    const/4 v3, 0x5

    if-eqz p1, :cond_0

    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string v1, "utf-8"

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iget-object v1, p0, Lcom/iflytek/voiceads/view/c;->a:Lcom/iflytek/voiceads/view/AdView;

    invoke-static {v1, v0}, Lcom/iflytek/voiceads/view/AdView;->a(Lcom/iflytek/voiceads/view/AdView;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "IFLY_AD_SDK"

    const-string v1, "Invalid response data!"

    invoke-static {v0, v1}, Lcom/iflytek/voiceads/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/iflytek/voiceads/config/AdError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/iflytek/voiceads/view/c;->a:Lcom/iflytek/voiceads/view/AdView;

    iget-object v1, v1, Lcom/iflytek/voiceads/view/AdView;->l:Lcom/iflytek/voiceads/view/b;

    invoke-virtual {v0}, Lcom/iflytek/voiceads/config/AdError;->getErrorCode()I

    move-result v0

    invoke-virtual {v1, v3, v0}, Lcom/iflytek/voiceads/view/b;->a(II)V

    goto :goto_0

    :catch_1
    move-exception v0

    iget-object v1, p0, Lcom/iflytek/voiceads/view/c;->a:Lcom/iflytek/voiceads/view/AdView;

    iget-object v1, v1, Lcom/iflytek/voiceads/view/AdView;->l:Lcom/iflytek/voiceads/view/b;

    const v2, 0x1155b

    invoke-virtual {v1, v3, v2}, Lcom/iflytek/voiceads/view/b;->a(II)V

    const-string v1, "IFLY_AD_SDK"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "html parse1:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/iflytek/voiceads/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
