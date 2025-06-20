.class public final Lcom/cyjh/mobileanjian/ipc/share/proto/b;
.super Lcom/cyjh/mobileanjian/ipc/share/proto/c;
.source "IpcRaw.java"


# instance fields
.field private a:Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;


# direct methods
.method public constructor <init>(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;)V
    .locals 1

    .line 8
    invoke-direct {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/c;-><init>()V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/b;->a:Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;

    .line 9
    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/b;->a:Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;

    return-void
.end method

.method public static final a(I)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;
    .locals 1

    .line 23
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->setCmd(I)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a()[B
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/b;->a:Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/b;->a:Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;

    invoke-virtual {v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method
