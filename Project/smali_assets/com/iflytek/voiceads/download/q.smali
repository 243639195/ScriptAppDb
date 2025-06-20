.class final Lcom/iflytek/voiceads/download/q;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/iflytek/voiceads/download/a/a;


# instance fields
.field final synthetic a:Lcom/iflytek/voiceads/download/p$a;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/iflytek/voiceads/download/p$a;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/voiceads/download/q;->a:Lcom/iflytek/voiceads/download/p$a;

    iput-object p2, p0, Lcom/iflytek/voiceads/download/q;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    return-void
.end method

.method public a(JJI)V
    .locals 0

    return-void
.end method

.method public a(Lcom/iflytek/voiceads/download/e/a;I)V
    .locals 2

    const-string v0, "IFLY_AD_SDK"

    const-string v1, "video cache failed"

    invoke-static {v0, v1}, Lcom/iflytek/voiceads/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/voiceads/download/q;->a:Lcom/iflytek/voiceads/download/p$a;

    invoke-interface {v0}, Lcom/iflytek/voiceads/download/p$a;->a()V

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/iflytek/voiceads/download/q;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    return-void
.end method

.method public b(I)V
    .locals 2

    const-string v0, "IFLY_AD_SDK"

    const-string v1, "video cache success"

    invoke-static {v0, v1}, Lcom/iflytek/voiceads/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/voiceads/download/q;->a:Lcom/iflytek/voiceads/download/p$a;

    iget-object v1, p0, Lcom/iflytek/voiceads/download/q;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/iflytek/voiceads/download/p$a;->a(Ljava/lang/String;)V

    return-void
.end method
