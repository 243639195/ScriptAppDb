.class public Lorg/wlf/filedownloader/listener/OnDetectBigUrlFileListener$DetectBigUrlFileFailReason;
.super Lorg/wlf/filedownloader/file_download/base/HttpFailReason;
.source "OnDetectBigUrlFileListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wlf/filedownloader/listener/OnDetectBigUrlFileListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DetectBigUrlFileFailReason"
.end annotation


# static fields
.field public static final TYPE_BAD_HTTP_RESPONSE_CODE:Ljava/lang/String;

.field public static final TYPE_HTTP_FILE_NOT_EXIST:Ljava/lang/String;

.field public static final TYPE_URL_ILLEGAL:Ljava/lang/String;

.field public static final TYPE_URL_OVER_REDIRECT_COUNT:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lorg/wlf/filedownloader/listener/OnDetectBigUrlFileListener$DetectBigUrlFileFailReason;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_TYPE_URL_ILLEGAL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/wlf/filedownloader/listener/OnDetectBigUrlFileListener$DetectBigUrlFileFailReason;->TYPE_URL_ILLEGAL:Ljava/lang/String;

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lorg/wlf/filedownloader/listener/OnDetectBigUrlFileListener$DetectBigUrlFileFailReason;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_TYPE_URL_OVER_REDIRECT_COUNT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/wlf/filedownloader/listener/OnDetectBigUrlFileListener$DetectBigUrlFileFailReason;->TYPE_URL_OVER_REDIRECT_COUNT:Ljava/lang/String;

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lorg/wlf/filedownloader/listener/OnDetectBigUrlFileListener$DetectBigUrlFileFailReason;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_TYPE_BAD_HTTP_RESPONSE_CODE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/wlf/filedownloader/listener/OnDetectBigUrlFileListener$DetectBigUrlFileFailReason;->TYPE_BAD_HTTP_RESPONSE_CODE:Ljava/lang/String;

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lorg/wlf/filedownloader/listener/OnDetectBigUrlFileListener$DetectBigUrlFileFailReason;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_TYPE_HTTP_FILE_NOT_EXIST"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/wlf/filedownloader/listener/OnDetectBigUrlFileListener$DetectBigUrlFileFailReason;->TYPE_HTTP_FILE_NOT_EXIST:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "detailMessage"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;

    .prologue
    .line 145
    invoke-direct {p0, p1, p2, p3}, Lorg/wlf/filedownloader/file_download/base/HttpFailReason;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 149
    invoke-direct {p0, p1, p2}, Lorg/wlf/filedownloader/file_download/base/HttpFailReason;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 150
    return-void
.end method
