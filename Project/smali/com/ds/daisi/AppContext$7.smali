.class Lcom/ds/daisi/AppContext$7;
.super Ljava/lang/Object;
.source "AppContext.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ds/daisi/AppContext;->onKeyEvent(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ds/daisi/AppContext;


# direct methods
.method constructor <init>(Lcom/ds/daisi/AppContext;)V
    .locals 0

    .line 883
    iput-object p1, p0, Lcom/ds/daisi/AppContext$7;->this$0:Lcom/ds/daisi/AppContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 886
    iget-object v0, p0, Lcom/ds/daisi/AppContext$7;->this$0:Lcom/ds/daisi/AppContext;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ds/daisi/AppContext;->access$602(Lcom/ds/daisi/AppContext;Z)Z

    return-void
.end method
