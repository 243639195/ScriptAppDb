.class final Lcom/cyjh/share/bean/request/ScriptStopRunParams$1;
.super Ljava/lang/Object;
.source "ScriptStopRunParams.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyjh/share/bean/request/ScriptStopRunParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/cyjh/share/bean/request/ScriptStopRunParams;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/cyjh/share/bean/request/ScriptStopRunParams;
    .locals 1

    .line 53
    new-instance v0, Lcom/cyjh/share/bean/request/ScriptStopRunParams;

    invoke-direct {v0, p1}, Lcom/cyjh/share/bean/request/ScriptStopRunParams;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 50
    invoke-virtual {p0, p1}, Lcom/cyjh/share/bean/request/ScriptStopRunParams$1;->createFromParcel(Landroid/os/Parcel;)Lcom/cyjh/share/bean/request/ScriptStopRunParams;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/cyjh/share/bean/request/ScriptStopRunParams;
    .locals 0

    .line 58
    new-array p1, p1, [Lcom/cyjh/share/bean/request/ScriptStopRunParams;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 50
    invoke-virtual {p0, p1}, Lcom/cyjh/share/bean/request/ScriptStopRunParams$1;->newArray(I)[Lcom/cyjh/share/bean/request/ScriptStopRunParams;

    move-result-object p1

    return-object p1
.end method
