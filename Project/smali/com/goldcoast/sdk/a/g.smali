.class public final Lcom/goldcoast/sdk/a/g;
.super Lcom/goldcoast/sdk/a/c;
.source "Refer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/goldcoast/sdk/a/c<",
        "Lcom/goldcoast/sdk/a/g;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:Ljava/lang/String;

.field private d:J

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:I

.field private l:Lcom/goldcoast/sdk/a/f;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/goldcoast/sdk/a/c;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lorg/json/JSONObject;
    .locals 4

    .line 1165
    iget-object v0, p0, Lcom/goldcoast/sdk/a/g;->l:Lcom/goldcoast/sdk/a/f;

    if-eqz v0, :cond_0

    .line 2165
    iget-object v0, p0, Lcom/goldcoast/sdk/a/g;->l:Lcom/goldcoast/sdk/a/f;

    .line 52
    invoke-virtual {v0}, Lcom/goldcoast/sdk/a/f;->b()Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_0

    .line 54
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :goto_0
    :try_start_0
    const-string v1, "rf_md5"

    .line 57
    iget-object v2, p0, Lcom/goldcoast/sdk/a/g;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "status"

    .line 58
    iget v2, p0, Lcom/goldcoast/sdk/a/g;->b:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "msg"

    .line 59
    iget-object v2, p0, Lcom/goldcoast/sdk/a/g;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "runTime"

    .line 60
    iget-wide v2, p0, Lcom/goldcoast/sdk/a/g;->d:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "androidId"

    .line 61
    iget-object v2, p0, Lcom/goldcoast/sdk/a/g;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "netOperator"

    .line 62
    iget-object v2, p0, Lcom/goldcoast/sdk/a/g;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "simOperatorName"

    .line 63
    iget-object v2, p0, Lcom/goldcoast/sdk/a/g;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "displayLanguage"

    .line 64
    iget-object v2, p0, Lcom/goldcoast/sdk/a/g;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "displayCountry"

    .line 65
    iget-object v2, p0, Lcom/goldcoast/sdk/a/g;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "token"

    .line 66
    iget-object v2, p0, Lcom/goldcoast/sdk/a/g;->j:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "category"

    .line 67
    iget v2, p0, Lcom/goldcoast/sdk/a/g;->k:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "sdkV"

    .line 68
    iget-object v2, p0, Lcom/goldcoast/sdk/a/g;->m:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "package_name"

    .line 69
    iget-object v2, p0, Lcom/goldcoast/sdk/a/g;->n:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "signature"

    .line 70
    iget-object v2, p0, Lcom/goldcoast/sdk/a/g;->o:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v0
.end method

.method public final a(I)V
    .locals 0

    .line 89
    iput p1, p0, Lcom/goldcoast/sdk/a/g;->b:I

    return-void
.end method

.method public final a(J)V
    .locals 0

    .line 105
    iput-wide p1, p0, Lcom/goldcoast/sdk/a/g;->d:J

    return-void
.end method

.method public final a(Lcom/goldcoast/sdk/a/f;)V
    .locals 0

    .line 169
    iput-object p1, p0, Lcom/goldcoast/sdk/a/g;->l:Lcom/goldcoast/sdk/a/f;

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/goldcoast/sdk/a/g;->a:Ljava/lang/String;

    return-void
.end method

.method public final b(I)V
    .locals 0

    .line 161
    iput p1, p0, Lcom/goldcoast/sdk/a/g;->k:I

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/goldcoast/sdk/a/g;->c:Ljava/lang/String;

    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/goldcoast/sdk/a/g;->e:Ljava/lang/String;

    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/goldcoast/sdk/a/g;->f:Ljava/lang/String;

    return-void
.end method

.method public final e(Ljava/lang/String;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/goldcoast/sdk/a/g;->g:Ljava/lang/String;

    return-void
.end method

.method public final f(Ljava/lang/String;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/goldcoast/sdk/a/g;->h:Ljava/lang/String;

    return-void
.end method

.method public final g(Ljava/lang/String;)V
    .locals 0

    .line 145
    iput-object p1, p0, Lcom/goldcoast/sdk/a/g;->i:Ljava/lang/String;

    return-void
.end method

.method public final h(Ljava/lang/String;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lcom/goldcoast/sdk/a/g;->j:Ljava/lang/String;

    return-void
.end method

.method public final i(Ljava/lang/String;)V
    .locals 0

    .line 177
    iput-object p1, p0, Lcom/goldcoast/sdk/a/g;->m:Ljava/lang/String;

    return-void
.end method

.method public final j(Ljava/lang/String;)V
    .locals 0

    .line 185
    iput-object p1, p0, Lcom/goldcoast/sdk/a/g;->n:Ljava/lang/String;

    return-void
.end method

.method public final k(Ljava/lang/String;)V
    .locals 0

    .line 193
    iput-object p1, p0, Lcom/goldcoast/sdk/a/g;->o:Ljava/lang/String;

    return-void
.end method
