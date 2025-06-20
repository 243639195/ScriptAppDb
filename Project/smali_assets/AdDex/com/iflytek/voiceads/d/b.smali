.class public Lcom/iflytek/voiceads/d/b;
.super Ljava/lang/Object;


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Lcom/iflytek/voiceads/d/a;

.field public g:Z

.field public h:Lorg/json/JSONObject;

.field public i:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/iflytek/voiceads/d/b;->i:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, -0x1

    iput v0, p0, Lcom/iflytek/voiceads/d/b;->a:I

    const-string v0, ""

    iput-object v0, p0, Lcom/iflytek/voiceads/d/b;->b:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/iflytek/voiceads/d/b;->c:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/iflytek/voiceads/d/b;->d:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/iflytek/voiceads/d/b;->e:Ljava/lang/String;

    iput-object v1, p0, Lcom/iflytek/voiceads/d/b;->f:Lcom/iflytek/voiceads/d/a;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iflytek/voiceads/d/b;->g:Z

    iput-object v1, p0, Lcom/iflytek/voiceads/d/b;->h:Lorg/json/JSONObject;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/iflytek/voiceads/config/AdError;
        }
    .end annotation

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "IFLY_AD_SDK"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "response:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/iflytek/voiceads/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/iflytek/voiceads/d/b;->a()V

    const-string v1, "rc"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/iflytek/voiceads/d/b;->a:I

    const-string v1, "id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/voiceads/d/b;->b:Ljava/lang/String;

    const-string v1, "bid_id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/voiceads/d/b;->c:Ljava/lang/String;

    const-string v1, "info"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/voiceads/d/b;->d:Ljava/lang/String;

    const-string v1, "cur"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/voiceads/d/b;->e:Ljava/lang/String;

    iget v1, p0, Lcom/iflytek/voiceads/d/b;->a:I

    const v2, 0x11238

    if-ne v1, v2, :cond_0

    new-instance v1, Lcom/iflytek/voiceads/d/a;

    invoke-direct {v1}, Lcom/iflytek/voiceads/d/a;-><init>()V

    iput-object v1, p0, Lcom/iflytek/voiceads/d/b;->f:Lcom/iflytek/voiceads/d/a;

    const-string v1, "ads"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/voiceads/d/b;->f:Lcom/iflytek/voiceads/d/a;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/iflytek/voiceads/d/a;->a(Lorg/json/JSONObject;)V

    :cond_0
    const-string v1, "extra_data_toggle"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "extra_data_toggle"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/iflytek/voiceads/d/b;->g:Z

    iget-object v1, p0, Lcom/iflytek/voiceads/d/b;->i:Landroid/content/Context;

    const-string v2, "dataToggle"

    iget-boolean v3, p0, Lcom/iflytek/voiceads/d/b;->g:Z

    invoke-static {v1, v2, v3}, Lcom/iflytek/voiceads/utils/c;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_1
    const-string v1, "ext"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "ext"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/voiceads/d/b;->h:Lorg/json/JSONObject;

    :cond_2
    iget-object v0, p0, Lcom/iflytek/voiceads/d/b;->i:Landroid/content/Context;

    const-string v1, "sessionID"

    iget-object v2, p0, Lcom/iflytek/voiceads/d/b;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/iflytek/voiceads/utils/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v0, "IFLY_AD_SDK"

    const-string v1, "Invalid response data!"

    invoke-static {v0, v1}, Lcom/iflytek/voiceads/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/iflytek/voiceads/config/AdError;

    const v1, 0x11364

    invoke-direct {v0, v1}, Lcom/iflytek/voiceads/config/AdError;-><init>(I)V

    throw v0
.end method
