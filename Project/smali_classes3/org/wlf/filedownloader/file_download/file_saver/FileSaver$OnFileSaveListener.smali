.class public interface abstract Lorg/wlf/filedownloader/file_download/file_saver/FileSaver$OnFileSaveListener;
.super Ljava/lang/Object;
.source "FileSaver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wlf/filedownloader/file_download/file_saver/FileSaver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnFileSaveListener"
.end annotation


# virtual methods
.method public abstract onSaveDataEnd(IZ)V
.end method

.method public abstract onSaveDataStart()V
.end method

.method public abstract onSavingData(IJ)V
.end method
