.class public interface abstract Lkiller/core/httpserver/NanoHTTPD$TempFileManager;
.super Ljava/lang/Object;
.source "NanoHTTPD.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkiller/core/httpserver/NanoHTTPD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TempFileManager"
.end annotation


# virtual methods
.method public abstract clear()V
.end method

.method public abstract createTempFile(Ljava/lang/String;)Lkiller/core/httpserver/NanoHTTPD$TempFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
