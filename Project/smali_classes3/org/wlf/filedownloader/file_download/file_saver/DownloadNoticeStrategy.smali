.class public final enum Lorg/wlf/filedownloader/file_download/file_saver/DownloadNoticeStrategy;
.super Ljava/lang/Enum;
.source "DownloadNoticeStrategy.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/wlf/filedownloader/file_download/file_saver/DownloadNoticeStrategy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/wlf/filedownloader/file_download/file_saver/DownloadNoticeStrategy;

.field public static final enum NOTICE_AUTO:Lorg/wlf/filedownloader/file_download/file_saver/DownloadNoticeStrategy;

.field public static final enum NOTICE_BY_SIZE:Lorg/wlf/filedownloader/file_download/file_saver/DownloadNoticeStrategy;

.field public static final enum NOTICE_BY_TIME:Lorg/wlf/filedownloader/file_download/file_saver/DownloadNoticeStrategy;


# instance fields
.field private mValue:J


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 14
    new-instance v0, Lorg/wlf/filedownloader/file_download/file_saver/DownloadNoticeStrategy;

    const-string v1, "NOTICE_AUTO"

    const-wide/16 v2, -0x1

    invoke-direct {v0, v1, v4, v2, v3}, Lorg/wlf/filedownloader/file_download/file_saver/DownloadNoticeStrategy;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lorg/wlf/filedownloader/file_download/file_saver/DownloadNoticeStrategy;->NOTICE_AUTO:Lorg/wlf/filedownloader/file_download/file_saver/DownloadNoticeStrategy;

    .line 15
    new-instance v0, Lorg/wlf/filedownloader/file_download/file_saver/DownloadNoticeStrategy;

    const-string v1, "NOTICE_BY_SIZE"

    const-wide/32 v2, 0x100000

    invoke-direct {v0, v1, v5, v2, v3}, Lorg/wlf/filedownloader/file_download/file_saver/DownloadNoticeStrategy;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lorg/wlf/filedownloader/file_download/file_saver/DownloadNoticeStrategy;->NOTICE_BY_SIZE:Lorg/wlf/filedownloader/file_download/file_saver/DownloadNoticeStrategy;

    .line 16
    new-instance v0, Lorg/wlf/filedownloader/file_download/file_saver/DownloadNoticeStrategy;

    const-string v1, "NOTICE_BY_TIME"

    const-wide/16 v2, 0x7d0

    invoke-direct {v0, v1, v6, v2, v3}, Lorg/wlf/filedownloader/file_download/file_saver/DownloadNoticeStrategy;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lorg/wlf/filedownloader/file_download/file_saver/DownloadNoticeStrategy;->NOTICE_BY_TIME:Lorg/wlf/filedownloader/file_download/file_saver/DownloadNoticeStrategy;

    .line 12
    const/4 v0, 0x3

    new-array v0, v0, [Lorg/wlf/filedownloader/file_download/file_saver/DownloadNoticeStrategy;

    sget-object v1, Lorg/wlf/filedownloader/file_download/file_saver/DownloadNoticeStrategy;->NOTICE_AUTO:Lorg/wlf/filedownloader/file_download/file_saver/DownloadNoticeStrategy;

    aput-object v1, v0, v4

    sget-object v1, Lorg/wlf/filedownloader/file_download/file_saver/DownloadNoticeStrategy;->NOTICE_BY_SIZE:Lorg/wlf/filedownloader/file_download/file_saver/DownloadNoticeStrategy;

    aput-object v1, v0, v5

    sget-object v1, Lorg/wlf/filedownloader/file_download/file_saver/DownloadNoticeStrategy;->NOTICE_BY_TIME:Lorg/wlf/filedownloader/file_download/file_saver/DownloadNoticeStrategy;

    aput-object v1, v0, v6

    sput-object v0, Lorg/wlf/filedownloader/file_download/file_saver/DownloadNoticeStrategy;->$VALUES:[Lorg/wlf/filedownloader/file_download/file_saver/DownloadNoticeStrategy;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IJ)V
    .locals 1
    .param p3, "value"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)V"
        }
    .end annotation

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 21
    iput-wide p3, p0, Lorg/wlf/filedownloader/file_download/file_saver/DownloadNoticeStrategy;->mValue:J

    .line 22
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/wlf/filedownloader/file_download/file_saver/DownloadNoticeStrategy;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 12
    const-class v0, Lorg/wlf/filedownloader/file_download/file_saver/DownloadNoticeStrategy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/wlf/filedownloader/file_download/file_saver/DownloadNoticeStrategy;

    return-object v0
.end method

.method public static values()[Lorg/wlf/filedownloader/file_download/file_saver/DownloadNoticeStrategy;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lorg/wlf/filedownloader/file_download/file_saver/DownloadNoticeStrategy;->$VALUES:[Lorg/wlf/filedownloader/file_download/file_saver/DownloadNoticeStrategy;

    invoke-virtual {v0}, [Lorg/wlf/filedownloader/file_download/file_saver/DownloadNoticeStrategy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/wlf/filedownloader/file_download/file_saver/DownloadNoticeStrategy;

    return-object v0
.end method


# virtual methods
.method public getValue()J
    .locals 2

    .prologue
    .line 25
    iget-wide v0, p0, Lorg/wlf/filedownloader/file_download/file_saver/DownloadNoticeStrategy;->mValue:J

    return-wide v0
.end method
