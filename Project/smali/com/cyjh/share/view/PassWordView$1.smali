.class Lcom/cyjh/share/view/PassWordView$1;
.super Ljava/lang/Object;
.source "PassWordView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyjh/share/view/PassWordView;->startInputState()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cyjh/share/view/PassWordView;


# direct methods
.method constructor <init>(Lcom/cyjh/share/view/PassWordView;)V
    .locals 0

    .line 293
    iput-object p1, p0, Lcom/cyjh/share/view/PassWordView$1;->this$0:Lcom/cyjh/share/view/PassWordView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 296
    iget-object v0, p0, Lcom/cyjh/share/view/PassWordView$1;->this$0:Lcom/cyjh/share/view/PassWordView;

    iget-object v1, p0, Lcom/cyjh/share/view/PassWordView$1;->this$0:Lcom/cyjh/share/view/PassWordView;

    invoke-static {v1}, Lcom/cyjh/share/view/PassWordView;->access$000(Lcom/cyjh/share/view/PassWordView;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/cyjh/share/view/PassWordView;->access$002(Lcom/cyjh/share/view/PassWordView;Z)Z

    .line 297
    iget-object v0, p0, Lcom/cyjh/share/view/PassWordView$1;->this$0:Lcom/cyjh/share/view/PassWordView;

    invoke-virtual {v0}, Lcom/cyjh/share/view/PassWordView;->invalidate()V

    .line 298
    iget-object v0, p0, Lcom/cyjh/share/view/PassWordView$1;->this$0:Lcom/cyjh/share/view/PassWordView;

    invoke-static {v0}, Lcom/cyjh/share/view/PassWordView;->access$100(Lcom/cyjh/share/view/PassWordView;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x320

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
