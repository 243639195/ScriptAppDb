.class Lcom/iflytek/voiceads/download/o;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/iflytek/voiceads/download/d;


# direct methods
.method constructor <init>(Lcom/iflytek/voiceads/download/d;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/voiceads/download/o;->a:Lcom/iflytek/voiceads/download/d;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    const-string v0, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "IFLY_AD_SDK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "app add"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/voiceads/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/voiceads/download/o;->a:Lcom/iflytek/voiceads/download/d;

    invoke-static {v0}, Lcom/iflytek/voiceads/download/d;->e(Lcom/iflytek/voiceads/download/d;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iflytek/voiceads/download/d$b;

    iget v1, v1, Lcom/iflytek/voiceads/download/d$b;->h:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    const-string v3, "IFLY_AD_SDK"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iflytek/voiceads/download/d$b;

    iget-object v1, v1, Lcom/iflytek/voiceads/download/d$b;->c:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "//"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/iflytek/voiceads/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iflytek/voiceads/download/d$b;

    iget-object v1, v1, Lcom/iflytek/voiceads/download/d$b;->c:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v3, "noPackage"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iflytek/voiceads/download/d$b;

    iget-object v1, v1, Lcom/iflytek/voiceads/download/d$b;->c:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iflytek/voiceads/download/d$b;

    const/4 v3, 0x2

    iput v3, v1, Lcom/iflytek/voiceads/download/d$b;->h:I

    iget-object v3, p0, Lcom/iflytek/voiceads/download/o;->a:Lcom/iflytek/voiceads/download/d;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iflytek/voiceads/download/d$b;

    iget-object v1, v1, Lcom/iflytek/voiceads/download/d$b;->g:Lorg/json/JSONArray;

    invoke-static {v3, v1}, Lcom/iflytek/voiceads/download/d;->a(Lcom/iflytek/voiceads/download/d;Lorg/json/JSONArray;)V

    :cond_2
    iget-object v1, p0, Lcom/iflytek/voiceads/download/o;->a:Lcom/iflytek/voiceads/download/d;

    invoke-static {v1}, Lcom/iflytek/voiceads/download/d;->e(Lcom/iflytek/voiceads/download/d;)Ljava/util/HashMap;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/voiceads/download/d$b;

    iget-object v0, v0, Lcom/iflytek/voiceads/download/d$b;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "IFLY_AD_SDK"

    const-string v1, "\u5b89\u88c5\u5b8c\u6210\u76d1\u63a7"

    invoke-static {v0, v1}, Lcom/iflytek/voiceads/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcom/iflytek/voiceads/download/o;->a:Lcom/iflytek/voiceads/download/d;

    invoke-static {v0}, Lcom/iflytek/voiceads/download/d;->a(Lcom/iflytek/voiceads/download/d;)V

    :cond_4
    return-void
.end method
