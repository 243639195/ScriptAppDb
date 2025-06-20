.class public interface abstract Lcom/cyjh/share/util/DownloadUtil$OnDownloadListener;
.super Ljava/lang/Object;
.source "DownloadUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyjh/share/util/DownloadUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnDownloadListener"
.end annotation


# virtual methods
.method public abstract onDownloadFailed(Ljava/lang/Exception;)V
.end method

.method public abstract onDownloadSuccess(Ljava/io/File;)V
.end method

.method public abstract onDownloading(JJI)V
.end method
