.class Lcom/didi/virtualapk/internal/LoadedPlugin$1;
.super Ljava/lang/Object;
.source "LoadedPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/virtualapk/internal/LoadedPlugin;->invokeApplication()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/virtualapk/internal/LoadedPlugin;

.field final synthetic val$temp:[Ljava/lang/Exception;


# direct methods
.method constructor <init>(Lcom/didi/virtualapk/internal/LoadedPlugin;[Ljava/lang/Exception;)V
    .locals 0

    .line 290
    iput-object p1, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$1;->this$0:Lcom/didi/virtualapk/internal/LoadedPlugin;

    iput-object p2, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$1;->val$temp:[Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 293
    iget-object v0, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$1;->this$0:Lcom/didi/virtualapk/internal/LoadedPlugin;

    iget-object v0, v0, Lcom/didi/virtualapk/internal/LoadedPlugin;->mApplication:Landroid/app/Application;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 297
    :try_start_0
    iget-object v1, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$1;->this$0:Lcom/didi/virtualapk/internal/LoadedPlugin;

    iget-object v2, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$1;->this$0:Lcom/didi/virtualapk/internal/LoadedPlugin;

    iget-object v3, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$1;->this$0:Lcom/didi/virtualapk/internal/LoadedPlugin;

    iget-object v3, v3, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPluginManager:Lcom/didi/virtualapk/PluginManager;

    invoke-virtual {v3}, Lcom/didi/virtualapk/PluginManager;->getInstrumentation()Lcom/didi/virtualapk/internal/VAInstrumentation;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/didi/virtualapk/internal/LoadedPlugin;->makeApplication(ZLandroid/app/Instrumentation;)Landroid/app/Application;

    move-result-object v2

    iput-object v2, v1, Lcom/didi/virtualapk/internal/LoadedPlugin;->mApplication:Landroid/app/Application;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 299
    iget-object v2, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$1;->val$temp:[Ljava/lang/Exception;

    aput-object v1, v2, v0

    :goto_0
    return-void
.end method
