.class public Lorg/wlf/filedownloader/listener/OnRenameDownloadFileListener$OnRenameDownloadFileFailReason;
.super Lorg/wlf/filedownloader/listener/OnRenameDownloadFileListener$RenameDownloadFileFailReason;
.source "OnRenameDownloadFileListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wlf/filedownloader/listener/OnRenameDownloadFileListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OnRenameDownloadFileFailReason"
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
    .line 125
    invoke-direct {p0, p1, p2, p3}, Lorg/wlf/filedownloader/listener/OnRenameDownloadFileListener$RenameDownloadFileFailReason;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 129
    invoke-direct {p0, p1, p2}, Lorg/wlf/filedownloader/listener/OnRenameDownloadFileListener$RenameDownloadFileFailReason;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 130
    return-void
.end method
