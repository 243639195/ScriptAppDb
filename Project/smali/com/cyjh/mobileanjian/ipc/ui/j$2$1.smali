.class final Lcom/cyjh/mobileanjian/ipc/ui/j$2$1;
.super Ljava/lang/Object;
.source "UiShowFloat.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyjh/mobileanjian/ipc/ui/j$2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cyjh/mobileanjian/ipc/ui/j$2;


# direct methods
.method constructor <init>(Lcom/cyjh/mobileanjian/ipc/ui/j$2;)V
    .locals 0

    .line 281
    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j$2$1;->a:Lcom/cyjh/mobileanjian/ipc/ui/j$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 284
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/j$2$1;->a:Lcom/cyjh/mobileanjian/ipc/ui/j$2;

    iget-object v0, v0, Lcom/cyjh/mobileanjian/ipc/ui/j$2;->h:Ljava/lang/String;

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Event_Type;->ON_TOUCH:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Event_Type;

    invoke-static {v0, v1}, Lcom/cyjh/mobileanjian/ipc/ui/j;->a(Ljava/lang/String;Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Event_Type;)V

    return-void
.end method
