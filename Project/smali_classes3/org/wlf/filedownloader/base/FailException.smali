.class public abstract Lorg/wlf/filedownloader/base/FailException;
.super Lorg/wlf/filedownloader/base/FailReason;
.source "FailException.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lorg/wlf/filedownloader/base/FailReason;-><init>(Ljava/lang/String;)V

    .line 15
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "detailMessage"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Lorg/wlf/filedownloader/base/FailReason;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "detailMessage"    # Ljava/lang/String;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lorg/wlf/filedownloader/base/FailReason;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 0
    .param p1, "detailMessage"    # Ljava/lang/String;
    .param p2, "throwable"    # Ljava/lang/Throwable;
    .param p3, "type"    # Ljava/lang/String;

    .prologue
    .line 22
    invoke-direct {p0, p1, p2, p3}, Lorg/wlf/filedownloader/base/FailReason;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lorg/wlf/filedownloader/base/FailReason;-><init>(Ljava/lang/Throwable;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 0
    .param p1, "throwable"    # Ljava/lang/Throwable;
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lorg/wlf/filedownloader/base/FailReason;-><init>(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 27
    return-void
.end method
