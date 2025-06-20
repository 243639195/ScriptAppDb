.class final Lorg/wlf/filedownloader/listener/OnDetectBigUrlFileListener$MainThreadHelper$3;
.super Ljava/lang/Object;
.source "OnDetectBigUrlFileListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/wlf/filedownloader/listener/OnDetectBigUrlFileListener$MainThreadHelper;->onDetectUrlFileFailed(Ljava/lang/String;Lorg/wlf/filedownloader/listener/OnDetectBigUrlFileListener$DetectBigUrlFileFailReason;Lorg/wlf/filedownloader/listener/OnDetectBigUrlFileListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$failReason:Lorg/wlf/filedownloader/listener/OnDetectBigUrlFileListener$DetectBigUrlFileFailReason;

.field final synthetic val$nnDetectBigUrlFileListener:Lorg/wlf/filedownloader/listener/OnDetectBigUrlFileListener;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/wlf/filedownloader/listener/OnDetectBigUrlFileListener;Ljava/lang/String;Lorg/wlf/filedownloader/listener/OnDetectBigUrlFileListener$DetectBigUrlFileFailReason;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lorg/wlf/filedownloader/listener/OnDetectBigUrlFileListener$MainThreadHelper$3;->val$nnDetectBigUrlFileListener:Lorg/wlf/filedownloader/listener/OnDetectBigUrlFileListener;

    iput-object p2, p0, Lorg/wlf/filedownloader/listener/OnDetectBigUrlFileListener$MainThreadHelper$3;->val$url:Ljava/lang/String;

    iput-object p3, p0, Lorg/wlf/filedownloader/listener/OnDetectBigUrlFileListener$MainThreadHelper$3;->val$failReason:Lorg/wlf/filedownloader/listener/OnDetectBigUrlFileListener$DetectBigUrlFileFailReason;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 111
    iget-object v0, p0, Lorg/wlf/filedownloader/listener/OnDetectBigUrlFileListener$MainThreadHelper$3;->val$nnDetectBigUrlFileListener:Lorg/wlf/filedownloader/listener/OnDetectBigUrlFileListener;

    if-nez v0, :cond_0

    .line 115
    :goto_0
    return-void

    .line 114
    :cond_0
    iget-object v0, p0, Lorg/wlf/filedownloader/listener/OnDetectBigUrlFileListener$MainThreadHelper$3;->val$nnDetectBigUrlFileListener:Lorg/wlf/filedownloader/listener/OnDetectBigUrlFileListener;

    iget-object v1, p0, Lorg/wlf/filedownloader/listener/OnDetectBigUrlFileListener$MainThreadHelper$3;->val$url:Ljava/lang/String;

    iget-object v2, p0, Lorg/wlf/filedownloader/listener/OnDetectBigUrlFileListener$MainThreadHelper$3;->val$failReason:Lorg/wlf/filedownloader/listener/OnDetectBigUrlFileListener$DetectBigUrlFileFailReason;

    invoke-interface {v0, v1, v2}, Lorg/wlf/filedownloader/listener/OnDetectBigUrlFileListener;->onDetectUrlFileFailed(Ljava/lang/String;Lorg/wlf/filedownloader/listener/OnDetectBigUrlFileListener$DetectBigUrlFileFailReason;)V

    goto :goto_0
.end method
