.class Lcom/ds/daisi/fragment/SplashFragment$1$1;
.super Ljava/lang/Object;
.source "SplashFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ds/daisi/fragment/SplashFragment$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ds/daisi/fragment/SplashFragment$1;


# direct methods
.method constructor <init>(Lcom/ds/daisi/fragment/SplashFragment$1;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/ds/daisi/fragment/SplashFragment$1$1;->this$1:Lcom/ds/daisi/fragment/SplashFragment$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/ds/daisi/fragment/SplashFragment$1$1;->this$1:Lcom/ds/daisi/fragment/SplashFragment$1;

    iget-object v0, v0, Lcom/ds/daisi/fragment/SplashFragment$1;->this$0:Lcom/ds/daisi/fragment/SplashFragment;

    invoke-static {v0}, Lcom/ds/daisi/fragment/SplashFragment;->access$300(Lcom/ds/daisi/fragment/SplashFragment;)V

    return-void
.end method
