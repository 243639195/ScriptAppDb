.class public interface abstract Lorg/wlf/filedownloader/listener/OnDetectUrlFileListener;
.super Ljava/lang/Object;
.source "OnDetectUrlFileListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/wlf/filedownloader/listener/OnDetectUrlFileListener$DetectUrlFileFailReason;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# virtual methods
.method public abstract onDetectNewDownloadFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
.end method

.method public abstract onDetectUrlFileExist(Ljava/lang/String;)V
.end method

.method public abstract onDetectUrlFileFailed(Ljava/lang/String;Lorg/wlf/filedownloader/listener/OnDetectUrlFileListener$DetectUrlFileFailReason;)V
.end method
