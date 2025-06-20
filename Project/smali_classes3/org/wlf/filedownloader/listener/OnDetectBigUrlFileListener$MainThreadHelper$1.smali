.class final Lorg/wlf/filedownloader/listener/OnDetectBigUrlFileListener$MainThreadHelper$1;
.super Ljava/lang/Object;
.source "OnDetectBigUrlFileListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/wlf/filedownloader/listener/OnDetectBigUrlFileListener$MainThreadHelper;->onDetectNewDownloadFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLorg/wlf/filedownloader/listener/OnDetectBigUrlFileListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$fileName:Ljava/lang/String;

.field final synthetic val$fileSize:J

.field final synthetic val$nnDetectBigUrlFileListener:Lorg/wlf/filedownloader/listener/OnDetectBigUrlFileListener;

.field final synthetic val$saveDir:Ljava/lang/String;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/wlf/filedownloader/listener/OnDetectBigUrlFileListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1

    .prologue
    .line 63
    iput-object p1, p0, Lorg/wlf/filedownloader/listener/OnDetectBigUrlFileListener$MainThreadHelper$1;->val$nnDetectBigUrlFileListener:Lorg/wlf/filedownloader/listener/OnDetectBigUrlFileListener;

    iput-object p2, p0, Lorg/wlf/filedownloader/listener/OnDetectBigUrlFileListener$MainThreadHelper$1;->val$url:Ljava/lang/String;

    iput-object p3, p0, Lorg/wlf/filedownloader/listener/OnDetectBigUrlFileListener$MainThreadHelper$1;->val$fileName:Ljava/lang/String;

    iput-object p4, p0, Lorg/wlf/filedownloader/listener/OnDetectBigUrlFileListener$MainThreadHelper$1;->val$saveDir:Ljava/lang/String;

    iput-wide p5, p0, Lorg/wlf/filedownloader/listener/OnDetectBigUrlFileListener$MainThreadHelper$1;->val$fileSize:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 66
    iget-object v0, p0, Lorg/wlf/filedownloader/listener/OnDetectBigUrlFileListener$MainThreadHelper$1;->val$nnDetectBigUrlFileListener:Lorg/wlf/filedownloader/listener/OnDetectBigUrlFileListener;

    if-nez v0, :cond_0

    .line 70
    :goto_0
    return-void

    .line 69
    :cond_0
    iget-object v0, p0, Lorg/wlf/filedownloader/listener/OnDetectBigUrlFileListener$MainThreadHelper$1;->val$nnDetectBigUrlFileListener:Lorg/wlf/filedownloader/listener/OnDetectBigUrlFileListener;

    iget-object v1, p0, Lorg/wlf/filedownloader/listener/OnDetectBigUrlFileListener$MainThreadHelper$1;->val$url:Ljava/lang/String;

    iget-object v2, p0, Lorg/wlf/filedownloader/listener/OnDetectBigUrlFileListener$MainThreadHelper$1;->val$fileName:Ljava/lang/String;

    iget-object v3, p0, Lorg/wlf/filedownloader/listener/OnDetectBigUrlFileListener$MainThreadHelper$1;->val$saveDir:Ljava/lang/String;

    iget-wide v4, p0, Lorg/wlf/filedownloader/listener/OnDetectBigUrlFileListener$MainThreadHelper$1;->val$fileSize:J

    invoke-interface/range {v0 .. v5}, Lorg/wlf/filedownloader/listener/OnDetectBigUrlFileListener;->onDetectNewDownloadFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_0
.end method
