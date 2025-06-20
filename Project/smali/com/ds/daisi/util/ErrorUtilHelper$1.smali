.class Lcom/ds/daisi/util/ErrorUtilHelper$1;
.super Ljava/lang/Object;
.source "ErrorUtilHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ds/daisi/util/ErrorUtilHelper;->writeProcessedStringToFile(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ds/daisi/util/ErrorUtilHelper;

.field final synthetic val$content:Ljava/lang/String;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/ds/daisi/util/ErrorUtilHelper;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/ds/daisi/util/ErrorUtilHelper$1;->this$0:Lcom/ds/daisi/util/ErrorUtilHelper;

    iput-object p2, p0, Lcom/ds/daisi/util/ErrorUtilHelper$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/ds/daisi/util/ErrorUtilHelper$1;->val$content:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 36
    iget-object v0, p0, Lcom/ds/daisi/util/ErrorUtilHelper$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/cyjh/share/util/ErrorUtil;->getErrorFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 37
    invoke-static {v0}, Lcom/cyjh/share/util/ErrorUtil;->isFileMoreThan1M(Ljava/io/File;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/ds/daisi/util/ErrorUtilHelper$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/cyjh/share/util/ErrorUtil;->getErrorFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    const-string v2, ""

    const/4 v3, 0x0

    invoke-static {v0, v2, v1, v3}, Lcom/cyjh/share/util/ErrorUtil;->writeProcessedStringToFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/ds/daisi/util/ErrorUtilHelper$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/cyjh/share/util/ErrorUtil;->getErrorFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    iget-object v2, p0, Lcom/ds/daisi/util/ErrorUtilHelper$1;->val$content:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {v0, v2, v1, v3}, Lcom/cyjh/share/util/ErrorUtil;->writeProcessedStringToFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Z)Z

    return-void
.end method
