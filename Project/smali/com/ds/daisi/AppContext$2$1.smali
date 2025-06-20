.class Lcom/ds/daisi/AppContext$2$1;
.super Ljava/lang/Object;
.source "AppContext.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ds/daisi/AppContext$2;->onShake()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ds/daisi/AppContext$2;


# direct methods
.method constructor <init>(Lcom/ds/daisi/AppContext$2;)V
    .locals 0

    .line 389
    iput-object p1, p0, Lcom/ds/daisi/AppContext$2$1;->this$1:Lcom/ds/daisi/AppContext$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 392
    iget-object v0, p0, Lcom/ds/daisi/AppContext$2$1;->this$1:Lcom/ds/daisi/AppContext$2;

    iget-object v0, v0, Lcom/ds/daisi/AppContext$2;->val$vibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    .line 393
    iget-object v0, p0, Lcom/ds/daisi/AppContext$2$1;->this$1:Lcom/ds/daisi/AppContext$2;

    iget-object v0, v0, Lcom/ds/daisi/AppContext$2;->val$mShakeListener:Lcom/ds/daisi/AppContext$ShakeListener;

    invoke-virtual {v0}, Lcom/ds/daisi/AppContext$ShakeListener;->start()V

    return-void
.end method
