.class Lcom/ds/daisi/AppContext$8;
.super Ljava/lang/Object;
.source "AppContext.java"

# interfaces
.implements Lcom/cyjh/mobileanjian/ipc/interfaces/OnEngineStartCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ds/daisi/AppContext;->initEngine()V
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

    .line 1048
    iput-object p1, p0, Lcom/ds/daisi/AppContext$8;->this$0:Lcom/ds/daisi/AppContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEngineStart(I)V
    .locals 1

    .line 1051
    iget-object p1, p0, Lcom/ds/daisi/AppContext$8;->this$0:Lcom/ds/daisi/AppContext;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/ds/daisi/AppContext;->isInitEngineComplete:Z

    return-void
.end method
