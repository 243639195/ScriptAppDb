.class Lcom/ds/daisi/download/ApkDownloadHelper$1;
.super Landroid/content/BroadcastReceiver;
.source "ApkDownloadHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ds/daisi/download/ApkDownloadHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ds/daisi/download/ApkDownloadHelper;


# direct methods
.method constructor <init>(Lcom/ds/daisi/download/ApkDownloadHelper;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/ds/daisi/download/ApkDownloadHelper$1;->this$0:Lcom/ds/daisi/download/ApkDownloadHelper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 83
    iget-object p1, p0, Lcom/ds/daisi/download/ApkDownloadHelper$1;->this$0:Lcom/ds/daisi/download/ApkDownloadHelper;

    invoke-static {p1}, Lcom/ds/daisi/download/ApkDownloadHelper;->access$000(Lcom/ds/daisi/download/ApkDownloadHelper;)V

    return-void
.end method
