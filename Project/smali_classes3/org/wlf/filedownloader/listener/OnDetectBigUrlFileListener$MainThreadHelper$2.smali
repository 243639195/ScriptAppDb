.class final Lorg/wlf/filedownloader/listener/OnDetectBigUrlFileListener$MainThreadHelper$2;
.super Ljava/lang/Object;
.source "OnDetectBigUrlFileListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/wlf/filedownloader/listener/OnDetectBigUrlFileListener$MainThreadHelper;->onDetectUrlFileExist(Ljava/lang/String;Lorg/wlf/filedownloader/listener/OnDetectBigUrlFileListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$nnDetectBigUrlFileListener:Lorg/wlf/filedownloader/listener/OnDetectBigUrlFileListener;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/wlf/filedownloader/listener/OnDetectBigUrlFileListener;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lorg/wlf/filedownloader/listener/OnDetectBigUrlFileListener$MainThreadHelper$2;->val$nnDetectBigUrlFileListener:Lorg/wlf/filedownloader/listener/OnDetectBigUrlFileListener;

    iput-object p2, p0, Lorg/wlf/filedownloader/listener/OnDetectBigUrlFileListener$MainThreadHelper$2;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 88
    iget-object v0, p0, Lorg/wlf/filedownloader/listener/OnDetectBigUrlFileListener$MainThreadHelper$2;->val$nnDetectBigUrlFileListener:Lorg/wlf/filedownloader/listener/OnDetectBigUrlFileListener;

    if-nez v0, :cond_0

    .line 92
    :goto_0
    return-void

    .line 91
    :cond_0
    iget-object v0, p0, Lorg/wlf/filedownloader/listener/OnDetectBigUrlFileListener$MainThreadHelper$2;->val$nnDetectBigUrlFileListener:Lorg/wlf/filedownloader/listener/OnDetectBigUrlFileListener;

    iget-object v1, p0, Lorg/wlf/filedownloader/listener/OnDetectBigUrlFileListener$MainThreadHelper$2;->val$url:Ljava/lang/String;

    invoke-interface {v0, v1}, Lorg/wlf/filedownloader/listener/OnDetectBigUrlFileListener;->onDetectUrlFileExist(Ljava/lang/String;)V

    goto :goto_0
.end method
