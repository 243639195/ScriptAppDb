.class public Lcom/iflytek/voiceads/param/c;
.super Ljava/lang/Object;


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "https://mt.voiceads.cn/sdk/req"

    sput-object v0, Lcom/iflytek/voiceads/param/c;->a:Ljava/lang/String;

    const-string v0, "https://imp.voiceads.cn/monitor?"

    sput-object v0, Lcom/iflytek/voiceads/param/c;->b:Ljava/lang/String;

    return-void
.end method
