.class Lcom/cyjh/share/counttimer/SimpleTimer$1;
.super Ljava/lang/Object;
.source "SimpleTimer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyjh/share/counttimer/SimpleTimer;->onTick(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cyjh/share/counttimer/SimpleTimer;


# direct methods
.method constructor <init>(Lcom/cyjh/share/counttimer/SimpleTimer;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/cyjh/share/counttimer/SimpleTimer$1;->this$0:Lcom/cyjh/share/counttimer/SimpleTimer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 31
    iget-object v0, p0, Lcom/cyjh/share/counttimer/SimpleTimer$1;->this$0:Lcom/cyjh/share/counttimer/SimpleTimer;

    iget-object v1, p0, Lcom/cyjh/share/counttimer/SimpleTimer$1;->this$0:Lcom/cyjh/share/counttimer/SimpleTimer;

    invoke-static {v1}, Lcom/cyjh/share/counttimer/SimpleTimer;->access$000(Lcom/cyjh/share/counttimer/SimpleTimer;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/cyjh/share/counttimer/SimpleTimer;->onTick(I)V

    return-void
.end method
