.class public Lkiller/core/httpserver/NanoHTTPD$DefaultTempFileManager;
.super Ljava/lang/Object;
.source "NanoHTTPD.java"

# interfaces
.implements Lkiller/core/httpserver/NanoHTTPD$TempFileManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkiller/core/httpserver/NanoHTTPD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DefaultTempFileManager"
.end annotation


# instance fields
.field private final tempFiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lkiller/core/httpserver/NanoHTTPD$TempFile;",
            ">;"
        }
    .end annotation
.end field

.field private final tmpdir:Ljava/io/File;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 387
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 388
    new-instance v0, Ljava/io/File;

    const-string v1, "java.io.tmpdir"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lkiller/core/httpserver/NanoHTTPD$DefaultTempFileManager;->tmpdir:Ljava/io/File;

    .line 389
    iget-object v0, p0, Lkiller/core/httpserver/NanoHTTPD$DefaultTempFileManager;->tmpdir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 390
    iget-object v0, p0, Lkiller/core/httpserver/NanoHTTPD$DefaultTempFileManager;->tmpdir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 392
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lkiller/core/httpserver/NanoHTTPD$DefaultTempFileManager;->tempFiles:Ljava/util/List;

    .line 393
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 6

    .prologue
    .line 397
    iget-object v2, p0, Lkiller/core/httpserver/NanoHTTPD$DefaultTempFileManager;->tempFiles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkiller/core/httpserver/NanoHTTPD$TempFile;

    .line 399
    .local v0, "file":Lkiller/core/httpserver/NanoHTTPD$TempFile;
    :try_start_0
    invoke-interface {v0}, Lkiller/core/httpserver/NanoHTTPD$TempFile;->delete()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 400
    :catch_0
    move-exception v1

    .line 401
    .local v1, "ignored":Ljava/lang/Exception;
    invoke-static {}, Lkiller/core/httpserver/NanoHTTPD;->access$200()Ljava/util/logging/Logger;

    move-result-object v3

    sget-object v4, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v5, "could not delete file "

    invoke-virtual {v3, v4, v5, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 404
    .end local v0    # "file":Lkiller/core/httpserver/NanoHTTPD$TempFile;
    .end local v1    # "ignored":Ljava/lang/Exception;
    :cond_0
    iget-object v2, p0, Lkiller/core/httpserver/NanoHTTPD$DefaultTempFileManager;->tempFiles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 405
    return-void
.end method

.method public createTempFile(Ljava/lang/String;)Lkiller/core/httpserver/NanoHTTPD$TempFile;
    .locals 2
    .param p1, "filename_hint"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 409
    new-instance v0, Lkiller/core/httpserver/NanoHTTPD$DefaultTempFile;

    iget-object v1, p0, Lkiller/core/httpserver/NanoHTTPD$DefaultTempFileManager;->tmpdir:Ljava/io/File;

    invoke-direct {v0, v1}, Lkiller/core/httpserver/NanoHTTPD$DefaultTempFile;-><init>(Ljava/io/File;)V

    .line 410
    .local v0, "tempFile":Lkiller/core/httpserver/NanoHTTPD$DefaultTempFile;
    iget-object v1, p0, Lkiller/core/httpserver/NanoHTTPD$DefaultTempFileManager;->tempFiles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 411
    return-object v0
.end method
