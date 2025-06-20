.class public Lcom/iflytek/voiceads/e/g;
.super Ljava/lang/Object;


# instance fields
.field public a:Ljava/lang/String;

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:J

.field public h:Lorg/json/JSONObject;

.field public i:Lorg/json/JSONArray;

.field public j:Lorg/json/JSONArray;

.field public k:Lorg/json/JSONArray;

.field public l:Lorg/json/JSONArray;

.field public m:Lorg/json/JSONArray;

.field public n:Lorg/json/JSONArray;

.field public o:Lorg/json/JSONArray;

.field public p:Lorg/json/JSONArray;

.field public q:Lorg/json/JSONArray;

.field public r:Lorg/json/JSONArray;

.field public s:Lorg/json/JSONArray;

.field public t:Lorg/json/JSONArray;

.field public u:Lorg/json/JSONArray;

.field public v:Lorg/json/JSONArray;

.field public w:Lorg/json/JSONArray;

.field public x:Lorg/json/JSONArray;


# direct methods
.method public constructor <init>(Lcom/iflytek/voiceads/d/a;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    iget-object v0, p1, Lcom/iflytek/voiceads/d/a;->j:Lorg/json/JSONObject;

    const-string v1, "url"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/voiceads/e/g;->a:Ljava/lang/String;

    iget-object v0, p1, Lcom/iflytek/voiceads/d/a;->j:Lorg/json/JSONObject;

    const-string v1, "duration"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/iflytek/voiceads/e/g;->b:I

    iget-object v0, p1, Lcom/iflytek/voiceads/d/a;->j:Lorg/json/JSONObject;

    const-string v1, "width"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/iflytek/voiceads/e/g;->c:I

    iget-object v0, p1, Lcom/iflytek/voiceads/d/a;->j:Lorg/json/JSONObject;

    const-string v1, "height"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/iflytek/voiceads/e/g;->d:I

    iget-object v0, p1, Lcom/iflytek/voiceads/d/a;->j:Lorg/json/JSONObject;

    const-string v1, "format"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/iflytek/voiceads/e/g;->e:I

    iget-object v0, p1, Lcom/iflytek/voiceads/d/a;->j:Lorg/json/JSONObject;

    const-string v1, "bitrate"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/iflytek/voiceads/e/g;->f:I

    iget-object v0, p1, Lcom/iflytek/voiceads/d/a;->j:Lorg/json/JSONObject;

    const-string v1, "end_time"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/iflytek/voiceads/e/g;->g:J

    iget-object v0, p1, Lcom/iflytek/voiceads/d/a;->f:Lorg/json/JSONObject;

    iput-object v0, p0, Lcom/iflytek/voiceads/e/g;->h:Lorg/json/JSONObject;

    iget-object v0, p1, Lcom/iflytek/voiceads/d/a;->J:Lorg/json/JSONObject;

    const-string v1, "start_urls"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/voiceads/e/g;->i:Lorg/json/JSONArray;

    const-string v1, "first_quartile_urls"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/voiceads/e/g;->j:Lorg/json/JSONArray;

    const-string v1, "mid_point_urls"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/voiceads/e/g;->k:Lorg/json/JSONArray;

    const-string v1, "third_quartile_urls"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/voiceads/e/g;->l:Lorg/json/JSONArray;

    const-string v1, "complete_urls"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/voiceads/e/g;->m:Lorg/json/JSONArray;

    const-string v1, "pause_urls"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/voiceads/e/g;->n:Lorg/json/JSONArray;

    const-string v1, "resume_urls"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/voiceads/e/g;->o:Lorg/json/JSONArray;

    const-string v1, "skip_urls"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/voiceads/e/g;->p:Lorg/json/JSONArray;

    const-string v1, "mute_urls"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/voiceads/e/g;->q:Lorg/json/JSONArray;

    const-string v1, "unmute_urls"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/voiceads/e/g;->r:Lorg/json/JSONArray;

    const-string v1, "replay_urls"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/voiceads/e/g;->s:Lorg/json/JSONArray;

    const-string v1, "close_linear_urls"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/voiceads/e/g;->t:Lorg/json/JSONArray;

    const-string v1, "fullscreen_urls"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/voiceads/e/g;->u:Lorg/json/JSONArray;

    const-string v1, "exit_fullscreen_urls"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/voiceads/e/g;->v:Lorg/json/JSONArray;

    const-string v1, "up_scroll_urls"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/voiceads/e/g;->w:Lorg/json/JSONArray;

    const-string v1, "down_scroll_urls"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/voiceads/e/g;->x:Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "IFLY_AD_SDK"

    const-string v1, "VideoAdSelected Invalid response data!"

    invoke-static {v0, v1}, Lcom/iflytek/voiceads/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
