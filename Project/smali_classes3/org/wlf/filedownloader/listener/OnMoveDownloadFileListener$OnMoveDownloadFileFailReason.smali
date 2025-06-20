.class public Lorg/wlf/filedownloader/listener/OnMoveDownloadFileListener$OnMoveDownloadFileFailReason;
.super Lorg/wlf/filedownloader/listener/OnMoveDownloadFileListener$MoveDownloadFileFailReason;
.source "OnMoveDownloadFileListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wlf/filedownloader/listener/OnMoveDownloadFileListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OnMoveDownloadFileFailReason"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "detailMessage"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;

    .prologue
    .line 123
    invoke-direct {p0, p1, p2, p3}, Lorg/wlf/filedownloader/listener/OnMoveDownloadFileListener$MoveDownloadFileFailReason;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 127
    invoke-direct {p0, p1, p2}, Lorg/wlf/filedownloader/listener/OnMoveDownloadFileListener$MoveDownloadFileFailReason;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 128
    return-void
.end method
