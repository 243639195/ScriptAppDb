.class final Lcom/cyjh/mobileanjian/ipc/utils/n$1;
.super Lcom/cyjh/mobileanjian/ipc/utils/h;
.source "RpcType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyjh/mobileanjian/ipc/utils/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 3

    .line 31
    invoke-direct {p0}, Lcom/cyjh/mobileanjian/ipc/utils/h;-><init>()V

    const-string v0, "void"

    .line 33
    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/cyjh/mobileanjian/ipc/utils/n$1;->a(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Integer;)V

    const-string v0, "boolean"

    .line 34
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/cyjh/mobileanjian/ipc/utils/n$1;->a(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Integer;)V

    const-string v0, "byte"

    .line 35
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/cyjh/mobileanjian/ipc/utils/n$1;->a(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Integer;)V

    const-string v0, "char"

    .line 36
    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/cyjh/mobileanjian/ipc/utils/n$1;->a(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Integer;)V

    const-string v0, "int"

    .line 37
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/cyjh/mobileanjian/ipc/utils/n$1;->a(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Integer;)V

    const-string v0, "long"

    .line 38
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/cyjh/mobileanjian/ipc/utils/n$1;->a(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Integer;)V

    const-string v0, "float"

    .line 39
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/cyjh/mobileanjian/ipc/utils/n$1;->a(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Integer;)V

    const-string v0, "double"

    .line 40
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/cyjh/mobileanjian/ipc/utils/n$1;->a(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Integer;)V

    const-string v0, "String"

    .line 42
    const-class v1, Ljava/lang/String;

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/cyjh/mobileanjian/ipc/utils/n$1;->a(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Integer;)V

    return-void
.end method
