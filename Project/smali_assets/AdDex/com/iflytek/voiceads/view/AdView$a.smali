.class Lcom/iflytek/voiceads/view/AdView$a;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/voiceads/view/AdView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/voiceads/view/AdView;


# direct methods
.method private constructor <init>(Lcom/iflytek/voiceads/view/AdView;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/voiceads/view/AdView$a;->a:Lcom/iflytek/voiceads/view/AdView;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/iflytek/voiceads/view/AdView;Landroid/os/Looper;Lcom/iflytek/voiceads/view/c;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/iflytek/voiceads/view/AdView$a;-><init>(Lcom/iflytek/voiceads/view/AdView;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8

    const v7, 0x1155f

    const v2, 0x1155a

    const/4 v3, 0x0

    const/4 v6, 0x5

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    const-string v0, "IFLY_AD_SDK"

    const-string v1, "procMsgShow"

    invoke-static {v0, v1}, Lcom/iflytek/voiceads/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/voiceads/view/AdView$a;->a:Lcom/iflytek/voiceads/view/AdView;

    invoke-virtual {v0, v3}, Lcom/iflytek/voiceads/view/AdView;->a(I)V

    iget-object v0, p0, Lcom/iflytek/voiceads/view/AdView$a;->a:Lcom/iflytek/voiceads/view/AdView;

    invoke-virtual {v0}, Lcom/iflytek/voiceads/view/AdView;->d()V

    iget-object v0, p0, Lcom/iflytek/voiceads/view/AdView$a;->a:Lcom/iflytek/voiceads/view/AdView;

    invoke-virtual {v0}, Lcom/iflytek/voiceads/view/AdView;->j()V

    iget-object v0, p0, Lcom/iflytek/voiceads/view/AdView$a;->a:Lcom/iflytek/voiceads/view/AdView;

    iget-object v0, v0, Lcom/iflytek/voiceads/view/AdView;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/iflytek/voiceads/view/AdView$a;->a:Lcom/iflytek/voiceads/view/AdView;

    iget-object v0, v0, Lcom/iflytek/voiceads/view/AdView;->e:Lcom/iflytek/voiceads/param/a;

    const-string v1, "banner_recycle"

    invoke-virtual {v0, v1}, Lcom/iflytek/voiceads/param/a;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/iflytek/voiceads/view/AdView$a;->a:Lcom/iflytek/voiceads/view/AdView;

    invoke-virtual {v0}, Lcom/iflytek/voiceads/view/AdView;->h()V

    :cond_1
    iget-object v0, p0, Lcom/iflytek/voiceads/view/AdView$a;->a:Lcom/iflytek/voiceads/view/AdView;

    iget-object v0, v0, Lcom/iflytek/voiceads/view/AdView;->j:Lcom/iflytek/voiceads/listener/IFLYAdListener;

    invoke-interface {v0}, Lcom/iflytek/voiceads/listener/IFLYAdListener;->onAdExposure()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/iflytek/voiceads/view/AdView$a;->a:Lcom/iflytek/voiceads/view/AdView;

    iget-object v0, v0, Lcom/iflytek/voiceads/view/AdView;->j:Lcom/iflytek/voiceads/listener/IFLYAdListener;

    new-instance v1, Lcom/iflytek/voiceads/config/AdError;

    invoke-direct {v1, v2}, Lcom/iflytek/voiceads/config/AdError;-><init>(I)V

    invoke-interface {v0, v1}, Lcom/iflytek/voiceads/listener/IFLYAdListener;->onAdFailed(Lcom/iflytek/voiceads/config/AdError;)V

    const-string v0, "IFLY_AD_SDK"

    const-string v1, "Ad is invisible, invalid exposure!"

    invoke-static {v0, v1}, Lcom/iflytek/voiceads/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    const-string v0, "IFLY_AD_SDK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "procMsgTimeout:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/voiceads/view/AdView$a;->a:Lcom/iflytek/voiceads/view/AdView;

    invoke-virtual {v2}, Lcom/iflytek/voiceads/view/AdView;->getProgress()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "% , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/voiceads/view/AdView$a;->a:Lcom/iflytek/voiceads/view/AdView;

    invoke-virtual {v2}, Lcom/iflytek/voiceads/view/AdView;->getContentHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/voiceads/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/voiceads/view/AdView$a;->a:Lcom/iflytek/voiceads/view/AdView;

    invoke-virtual {v0}, Lcom/iflytek/voiceads/view/AdView;->getContentHeight()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/voiceads/view/AdView$a;->a:Lcom/iflytek/voiceads/view/AdView;

    invoke-static {v0}, Lcom/iflytek/voiceads/view/AdView;->a(Lcom/iflytek/voiceads/view/AdView;)Lcom/iflytek/voiceads/utils/a$b;

    move-result-object v0

    sget-object v1, Lcom/iflytek/voiceads/utils/a$b;->d:Lcom/iflytek/voiceads/utils/a$b;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/iflytek/voiceads/view/AdView$a;->a:Lcom/iflytek/voiceads/view/AdView;

    invoke-static {v0}, Lcom/iflytek/voiceads/view/AdView;->b(Lcom/iflytek/voiceads/view/AdView;)I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_3

    iget-object v0, p0, Lcom/iflytek/voiceads/view/AdView$a;->a:Lcom/iflytek/voiceads/view/AdView;

    invoke-static {v0}, Lcom/iflytek/voiceads/view/AdView;->c(Lcom/iflytek/voiceads/view/AdView;)I

    iget-object v0, p0, Lcom/iflytek/voiceads/view/AdView$a;->a:Lcom/iflytek/voiceads/view/AdView;

    invoke-static {v0}, Lcom/iflytek/voiceads/view/AdView;->d(Lcom/iflytek/voiceads/view/AdView;)V

    const-string v0, "IFLY_AD_SDK"

    const-string v1, "Loading ad timeout, reload again!"

    invoke-static {v0, v1}, Lcom/iflytek/voiceads/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcom/iflytek/voiceads/view/AdView$a;->a:Lcom/iflytek/voiceads/view/AdView;

    invoke-static {v0, v3}, Lcom/iflytek/voiceads/view/AdView;->a(Lcom/iflytek/voiceads/view/AdView;I)I

    iget-object v0, p0, Lcom/iflytek/voiceads/view/AdView$a;->a:Lcom/iflytek/voiceads/view/AdView;

    iget-object v0, v0, Lcom/iflytek/voiceads/view/AdView;->l:Lcom/iflytek/voiceads/view/b;

    const v1, 0x1155e

    invoke-virtual {v0, v6, v1}, Lcom/iflytek/voiceads/view/b;->a(II)V

    goto/16 :goto_0

    :pswitch_2
    :try_start_0
    iget-object v0, p0, Lcom/iflytek/voiceads/view/AdView$a;->a:Lcom/iflytek/voiceads/view/AdView;

    iget-object v0, v0, Lcom/iflytek/voiceads/view/AdView;->g:Lcom/iflytek/voiceads/d/a;

    iget-object v0, v0, Lcom/iflytek/voiceads/d/a;->e:Lorg/json/JSONObject;

    const-string v1, "adm"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_4

    :try_start_1
    iget-object v0, p0, Lcom/iflytek/voiceads/view/AdView$a;->a:Lcom/iflytek/voiceads/view/AdView;

    const/4 v1, 0x0

    const-string v3, "text/html"

    const-string v4, "utf-8"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/iflytek/voiceads/view/AdView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    iget-object v0, p0, Lcom/iflytek/voiceads/view/AdView$a;->a:Lcom/iflytek/voiceads/view/AdView;

    invoke-virtual {v0}, Lcom/iflytek/voiceads/view/AdView;->k()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/iflytek/voiceads/view/AdView$a;->a:Lcom/iflytek/voiceads/view/AdView;

    iget-object v1, v1, Lcom/iflytek/voiceads/view/AdView;->l:Lcom/iflytek/voiceads/view/b;

    invoke-virtual {v1, v6, v7}, Lcom/iflytek/voiceads/view/b;->a(II)V

    const-string v1, "IFLY_AD_SDK"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "html load:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/iflytek/voiceads/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_1
    move-exception v0

    :try_start_3
    iget-object v0, p0, Lcom/iflytek/voiceads/view/AdView$a;->a:Lcom/iflytek/voiceads/view/AdView;

    iget-object v0, v0, Lcom/iflytek/voiceads/view/AdView;->l:Lcom/iflytek/voiceads/view/b;

    const/4 v1, 0x5

    const v2, 0x1155f

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/voiceads/view/b;->a(II)V

    iget-object v0, p0, Lcom/iflytek/voiceads/view/AdView$a;->a:Lcom/iflytek/voiceads/view/AdView;

    iget-object v0, v0, Lcom/iflytek/voiceads/view/AdView;->k:Lcom/iflytek/voiceads/listener/InternalListener;

    invoke-interface {v0}, Lcom/iflytek/voiceads/listener/InternalListener;->onAdDestroy()Z

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/iflytek/voiceads/view/AdView$a;->a:Lcom/iflytek/voiceads/view/AdView;

    iget-object v0, v0, Lcom/iflytek/voiceads/view/AdView;->l:Lcom/iflytek/voiceads/view/b;

    const/4 v1, 0x5

    const v2, 0x1155a

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/voiceads/view/b;->a(II)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
