.class Lcom/iflytek/voiceads/bridge/DSBridgeWebView$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/voiceads/bridge/DSBridgeWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;I[Ljava/lang/Object;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p3, :cond_0

    const/4 v0, 0x0

    new-array p3, v0, [Ljava/lang/Object;

    :cond_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/voiceads/bridge/DSBridgeWebView$a;->a:Ljava/lang/String;

    iput p2, p0, Lcom/iflytek/voiceads/bridge/DSBridgeWebView$a;->b:I

    iput-object p1, p0, Lcom/iflytek/voiceads/bridge/DSBridgeWebView$a;->c:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/iflytek/voiceads/bridge/DSBridgeWebView$a;)I
    .locals 1

    iget v0, p0, Lcom/iflytek/voiceads/bridge/DSBridgeWebView$a;->b:I

    return v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v0, "method"

    iget-object v2, p0, Lcom/iflytek/voiceads/bridge/DSBridgeWebView$a;->c:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "callbackId"

    iget v2, p0, Lcom/iflytek/voiceads/bridge/DSBridgeWebView$a;->b:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "data"

    iget-object v2, p0, Lcom/iflytek/voiceads/bridge/DSBridgeWebView$a;->a:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
