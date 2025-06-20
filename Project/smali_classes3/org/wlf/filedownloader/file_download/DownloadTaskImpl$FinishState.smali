.class Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;
.super Ljava/lang/Object;
.source "DownloadTaskImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wlf/filedownloader/file_download/DownloadTaskImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FinishState"
.end annotation


# instance fields
.field public final failReason:Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;

.field public final increaseSize:I

.field public final status:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "status"    # I

    .prologue
    .line 916
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 917
    iput p1, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;->status:I

    .line 918
    const/4 v0, 0x0

    iput v0, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;->increaseSize:I

    .line 919
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;->failReason:Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;

    .line 920
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .param p1, "status"    # I
    .param p2, "increaseSize"    # I

    .prologue
    .line 922
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 923
    iput p1, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;->status:I

    .line 924
    iput p2, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;->increaseSize:I

    .line 925
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;->failReason:Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;

    .line 926
    return-void
.end method

.method public constructor <init>(IILorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;)V
    .locals 0
    .param p1, "status"    # I
    .param p2, "increaseSize"    # I
    .param p3, "failReason"    # Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;

    .prologue
    .line 934
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 935
    iput p1, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;->status:I

    .line 936
    iput p2, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;->increaseSize:I

    .line 937
    iput-object p3, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;->failReason:Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;

    .line 938
    return-void
.end method

.method public constructor <init>(ILorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;)V
    .locals 1
    .param p1, "status"    # I
    .param p2, "failReason"    # Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;

    .prologue
    .line 928
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 929
    iput p1, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;->status:I

    .line 930
    const/4 v0, 0x0

    iput v0, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;->increaseSize:I

    .line 931
    iput-object p2, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;->failReason:Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;

    .line 932
    return-void
.end method


# virtual methods
.method public getFailReason()Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;
    .locals 1

    .prologue
    .line 949
    iget-object v0, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;->failReason:Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;

    return-object v0
.end method

.method public getIncreaseSize()I
    .locals 1

    .prologue
    .line 945
    iget v0, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;->increaseSize:I

    return v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 941
    iget v0, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskImpl$FinishState;->status:I

    return v0
.end method
