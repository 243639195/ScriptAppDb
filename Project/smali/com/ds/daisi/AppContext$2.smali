.class Lcom/ds/daisi/AppContext$2;
.super Ljava/lang/Object;
.source "AppContext.java"

# interfaces
.implements Lcom/ds/daisi/AppContext$ShakeListener$OnShakeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ds/daisi/AppContext;->initShake()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ds/daisi/AppContext;

.field final synthetic val$mShakeListener:Lcom/ds/daisi/AppContext$ShakeListener;

.field final synthetic val$vibrator:Landroid/os/Vibrator;


# direct methods
.method constructor <init>(Lcom/ds/daisi/AppContext;Lcom/ds/daisi/AppContext$ShakeListener;Landroid/os/Vibrator;)V
    .locals 0

    .line 381
    iput-object p1, p0, Lcom/ds/daisi/AppContext$2;->this$0:Lcom/ds/daisi/AppContext;

    iput-object p2, p0, Lcom/ds/daisi/AppContext$2;->val$mShakeListener:Lcom/ds/daisi/AppContext$ShakeListener;

    iput-object p3, p0, Lcom/ds/daisi/AppContext$2;->val$vibrator:Landroid/os/Vibrator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShake()V
    .locals 4

    .line 384
    iget-object v0, p0, Lcom/ds/daisi/AppContext$2;->this$0:Lcom/ds/daisi/AppContext;

    iget-object v0, v0, Lcom/ds/daisi/AppContext;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "com.cyjh.elfin.activity.SettingActivity.swtWaggleStop"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 385
    iget-object v0, p0, Lcom/ds/daisi/AppContext$2;->this$0:Lcom/ds/daisi/AppContext;

    invoke-static {v0}, Lcom/ds/daisi/AppContext;->access$100(Lcom/ds/daisi/AppContext;)Lcom/cyjh/mq/sdk/MqRunner;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cyjh/mq/sdk/MqRunner;->stop()V

    .line 386
    iget-object v0, p0, Lcom/ds/daisi/AppContext$2;->val$mShakeListener:Lcom/ds/daisi/AppContext$ShakeListener;

    invoke-static {v0}, Lcom/ds/daisi/AppContext$ShakeListener;->access$200(Lcom/ds/daisi/AppContext$ShakeListener;)V

    .line 387
    iget-object v0, p0, Lcom/ds/daisi/AppContext$2;->this$0:Lcom/ds/daisi/AppContext;

    invoke-static {v0}, Lcom/ds/daisi/AppContext;->access$100(Lcom/ds/daisi/AppContext;)Lcom/cyjh/mq/sdk/MqRunner;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cyjh/mq/sdk/MqRunner;->isScriptStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ds/daisi/AppContext$2;->val$vibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_0

    .line 388
    iget-object v0, p0, Lcom/ds/daisi/AppContext$2;->val$vibrator:Landroid/os/Vibrator;

    const/4 v1, 0x4

    new-array v1, v1, [J

    fill-array-data v1, :array_0

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate([JI)V

    .line 389
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/ds/daisi/AppContext$2$1;

    invoke-direct {v1, p0}, Lcom/ds/daisi/AppContext$2$1;-><init>(Lcom/ds/daisi/AppContext$2;)V

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void

    nop

    :array_0
    .array-data 8
        0x1f4
        0xc8
        0x1f4
        0xc8
    .end array-data
.end method
