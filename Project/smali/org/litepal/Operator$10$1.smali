.class Lorg/litepal/Operator$10$1;
.super Ljava/lang/Object;
.source "Operator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/litepal/Operator$10;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/litepal/Operator$10;

.field final synthetic val$rowsAffected:I


# direct methods
.method constructor <init>(Lorg/litepal/Operator$10;I)V
    .locals 0

    .line 1240
    iput-object p1, p0, Lorg/litepal/Operator$10$1;->this$0:Lorg/litepal/Operator$10;

    iput p2, p0, Lorg/litepal/Operator$10$1;->val$rowsAffected:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1243
    iget-object v0, p0, Lorg/litepal/Operator$10$1;->this$0:Lorg/litepal/Operator$10;

    iget-object v0, v0, Lorg/litepal/Operator$10;->val$executor:Lorg/litepal/crud/async/UpdateOrDeleteExecutor;

    invoke-virtual {v0}, Lorg/litepal/crud/async/UpdateOrDeleteExecutor;->getListener()Lorg/litepal/crud/callback/UpdateOrDeleteCallback;

    move-result-object v0

    iget v1, p0, Lorg/litepal/Operator$10$1;->val$rowsAffected:I

    invoke-interface {v0, v1}, Lorg/litepal/crud/callback/UpdateOrDeleteCallback;->onFinish(I)V

    return-void
.end method
