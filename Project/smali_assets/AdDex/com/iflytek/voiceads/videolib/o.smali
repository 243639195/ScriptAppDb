.class public Lcom/iflytek/voiceads/videolib/o;
.super Ljava/lang/Object;


# static fields
.field public static a:Lcom/iflytek/voiceads/videolib/JZPlayer;

.field public static b:Lcom/iflytek/voiceads/videolib/JZPlayer;


# direct methods
.method public static a()Lcom/iflytek/voiceads/videolib/JZPlayer;
    .locals 1

    sget-object v0, Lcom/iflytek/voiceads/videolib/o;->a:Lcom/iflytek/voiceads/videolib/JZPlayer;

    return-object v0
.end method

.method public static a(Lcom/iflytek/voiceads/videolib/JZPlayer;)V
    .locals 0

    sput-object p0, Lcom/iflytek/voiceads/videolib/o;->a:Lcom/iflytek/voiceads/videolib/JZPlayer;

    return-void
.end method

.method public static b()Lcom/iflytek/voiceads/videolib/JZPlayer;
    .locals 1

    sget-object v0, Lcom/iflytek/voiceads/videolib/o;->b:Lcom/iflytek/voiceads/videolib/JZPlayer;

    return-object v0
.end method

.method public static b(Lcom/iflytek/voiceads/videolib/JZPlayer;)V
    .locals 0

    sput-object p0, Lcom/iflytek/voiceads/videolib/o;->b:Lcom/iflytek/voiceads/videolib/JZPlayer;

    return-void
.end method

.method public static c()Lcom/iflytek/voiceads/videolib/JZPlayer;
    .locals 1

    invoke-static {}, Lcom/iflytek/voiceads/videolib/o;->b()Lcom/iflytek/voiceads/videolib/JZPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/iflytek/voiceads/videolib/o;->b()Lcom/iflytek/voiceads/videolib/JZPlayer;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/iflytek/voiceads/videolib/o;->a()Lcom/iflytek/voiceads/videolib/JZPlayer;

    move-result-object v0

    goto :goto_0
.end method

.method public static d()V
    .locals 2

    const/4 v1, 0x0

    sget-object v0, Lcom/iflytek/voiceads/videolib/o;->b:Lcom/iflytek/voiceads/videolib/JZPlayer;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/iflytek/voiceads/videolib/o;->b:Lcom/iflytek/voiceads/videolib/JZPlayer;

    invoke-virtual {v0}, Lcom/iflytek/voiceads/videolib/JZPlayer;->u()V

    sput-object v1, Lcom/iflytek/voiceads/videolib/o;->b:Lcom/iflytek/voiceads/videolib/JZPlayer;

    :cond_0
    sget-object v0, Lcom/iflytek/voiceads/videolib/o;->a:Lcom/iflytek/voiceads/videolib/JZPlayer;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/iflytek/voiceads/videolib/o;->a:Lcom/iflytek/voiceads/videolib/JZPlayer;

    invoke-virtual {v0}, Lcom/iflytek/voiceads/videolib/JZPlayer;->u()V

    sput-object v1, Lcom/iflytek/voiceads/videolib/o;->a:Lcom/iflytek/voiceads/videolib/JZPlayer;

    :cond_1
    return-void
.end method
