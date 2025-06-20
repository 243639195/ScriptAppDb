.class public abstract Lcom/ds/daisi/net/volley/VolleyStrRequestManager;
.super Ljava/lang/Object;
.source "VolleyStrRequestManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ds/daisi/net/volley/VolleyStrRequestManager$OnRequestErrorListener;,
        Lcom/ds/daisi/net/volley/VolleyStrRequestManager$OnStrReqSuccessListener;
    }
.end annotation


# instance fields
.field public mVolleyErrorListener:Lcom/ds/daisi/net/volley/VolleyStrRequestManager$OnRequestErrorListener;

.field public mVolleySuccessListener:Lcom/ds/daisi/net/volley/VolleyStrRequestManager$OnStrReqSuccessListener;

.field public networkTime:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Lcom/ds/daisi/net/volley/VolleyStrRequestManager$OnRequestErrorListener;

    invoke-direct {v0, p0, p1}, Lcom/ds/daisi/net/volley/VolleyStrRequestManager$OnRequestErrorListener;-><init>(Lcom/ds/daisi/net/volley/VolleyStrRequestManager;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ds/daisi/net/volley/VolleyStrRequestManager;->mVolleyErrorListener:Lcom/ds/daisi/net/volley/VolleyStrRequestManager$OnRequestErrorListener;

    .line 43
    new-instance v0, Lcom/ds/daisi/net/volley/VolleyStrRequestManager$OnStrReqSuccessListener;

    invoke-direct {v0, p0, p1}, Lcom/ds/daisi/net/volley/VolleyStrRequestManager$OnStrReqSuccessListener;-><init>(Lcom/ds/daisi/net/volley/VolleyStrRequestManager;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ds/daisi/net/volley/VolleyStrRequestManager;->mVolleySuccessListener:Lcom/ds/daisi/net/volley/VolleyStrRequestManager$OnStrReqSuccessListener;

    .line 44
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd-HH-mm-ss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v1, Ljava/util/Date;

    .line 45
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\t\trequest begin"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ds/daisi/net/volley/VolleyStrRequestManager;->networkTime:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract onRequestErrorRes(Ljava/lang/String;)V
.end method

.method public abstract onRequestSuccessRes(Ljava/lang/String;)V
.end method
