.class final Lcom/cyjh/share/bean/request/EditProjectNumberRequestInfo$1;
.super Ljava/lang/Object;
.source "EditProjectNumberRequestInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyjh/share/bean/request/EditProjectNumberRequestInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/cyjh/share/bean/request/EditProjectNumberRequestInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/cyjh/share/bean/request/EditProjectNumberRequestInfo;
    .locals 1

    .line 45
    new-instance v0, Lcom/cyjh/share/bean/request/EditProjectNumberRequestInfo;

    invoke-direct {v0, p1}, Lcom/cyjh/share/bean/request/EditProjectNumberRequestInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 42
    invoke-virtual {p0, p1}, Lcom/cyjh/share/bean/request/EditProjectNumberRequestInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/cyjh/share/bean/request/EditProjectNumberRequestInfo;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/cyjh/share/bean/request/EditProjectNumberRequestInfo;
    .locals 0

    .line 50
    new-array p1, p1, [Lcom/cyjh/share/bean/request/EditProjectNumberRequestInfo;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 42
    invoke-virtual {p0, p1}, Lcom/cyjh/share/bean/request/EditProjectNumberRequestInfo$1;->newArray(I)[Lcom/cyjh/share/bean/request/EditProjectNumberRequestInfo;

    move-result-object p1

    return-object p1
.end method
