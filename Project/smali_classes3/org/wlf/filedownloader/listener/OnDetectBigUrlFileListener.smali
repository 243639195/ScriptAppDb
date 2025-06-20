.class public interface abstract Lorg/wlf/filedownloader/listener/OnDetectBigUrlFileListener;
.super Ljava/lang/Object;
.source "OnDetectBigUrlFileListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/wlf/filedownloader/listener/OnDetectBigUrlFileListener$DetectBigUrlFileFailReason;,
        Lorg/wlf/filedownloader/listener/OnDetectBigUrlFileListener$MainThreadHelper;
    }
.end annotation


# virtual methods
.method public abstract onDetectNewDownloadFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
.end method

.method public abstract onDetectUrlFileExist(Ljava/lang/String;)V
.end method

.method public abstract onDetectUrlFileFailed(Ljava/lang/String;Lorg/wlf/filedownloader/listener/OnDetectBigUrlFileListener$DetectBigUrlFileFailReason;)V
.end method
