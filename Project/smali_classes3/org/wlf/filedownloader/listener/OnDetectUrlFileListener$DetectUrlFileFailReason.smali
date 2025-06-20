.class public Lorg/wlf/filedownloader/listener/OnDetectUrlFileListener$DetectUrlFileFailReason;
.super Lorg/wlf/filedownloader/listener/OnDetectBigUrlFileListener$DetectBigUrlFileFailReason;
.source "OnDetectUrlFileListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wlf/filedownloader/listener/OnDetectUrlFileListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DetectUrlFileFailReason"
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
    .line 53
    invoke-direct {p0, p1, p2, p3}, Lorg/wlf/filedownloader/listener/OnDetectBigUrlFileListener$DetectBigUrlFileFailReason;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Lorg/wlf/filedownloader/listener/OnDetectBigUrlFileListener$DetectBigUrlFileFailReason;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 58
    return-void
.end method
