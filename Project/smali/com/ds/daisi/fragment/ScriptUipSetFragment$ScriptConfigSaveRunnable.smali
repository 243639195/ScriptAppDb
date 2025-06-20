.class Lcom/ds/daisi/fragment/ScriptUipSetFragment$ScriptConfigSaveRunnable;
.super Ljava/lang/Object;
.source "ScriptUipSetFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ds/daisi/fragment/ScriptUipSetFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScriptConfigSaveRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ds/daisi/fragment/ScriptUipSetFragment;


# direct methods
.method private constructor <init>(Lcom/ds/daisi/fragment/ScriptUipSetFragment;)V
    .locals 0

    .line 1033
    iput-object p1, p0, Lcom/ds/daisi/fragment/ScriptUipSetFragment$ScriptConfigSaveRunnable;->this$0:Lcom/ds/daisi/fragment/ScriptUipSetFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ds/daisi/fragment/ScriptUipSetFragment;Lcom/ds/daisi/fragment/ScriptUipSetFragment$1;)V
    .locals 0

    .line 1033
    invoke-direct {p0, p1}, Lcom/ds/daisi/fragment/ScriptUipSetFragment$ScriptConfigSaveRunnable;-><init>(Lcom/ds/daisi/fragment/ScriptUipSetFragment;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1037
    :try_start_0
    iget-object v0, p0, Lcom/ds/daisi/fragment/ScriptUipSetFragment$ScriptConfigSaveRunnable;->this$0:Lcom/ds/daisi/fragment/ScriptUipSetFragment;

    invoke-virtual {v0}, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->generateOptionJson()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1039
    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
