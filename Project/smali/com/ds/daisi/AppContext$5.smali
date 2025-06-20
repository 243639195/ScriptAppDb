.class Lcom/ds/daisi/AppContext$5;
.super Ljava/lang/Object;
.source "AppContext.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ds/daisi/AppContext;->onStopScript(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ds/daisi/AppContext;

.field final synthetic val$sb:Ljava/lang/StringBuilder;


# direct methods
.method constructor <init>(Lcom/ds/daisi/AppContext;Ljava/lang/StringBuilder;)V
    .locals 0

    .line 765
    iput-object p1, p0, Lcom/ds/daisi/AppContext$5;->this$0:Lcom/ds/daisi/AppContext;

    iput-object p2, p0, Lcom/ds/daisi/AppContext$5;->val$sb:Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-string v0, "scriptStopPay.txt"

    .line 768
    invoke-static {}, Lcom/ds/daisi/AppContext;->getInstance()Lcom/ds/daisi/AppContext;

    move-result-object v1

    iget-object v2, p0, Lcom/ds/daisi/AppContext$5;->val$sb:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/cyjh/share/util/AppUtils;->writeDateToFile(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method
