.class final Lcom/cyjh/share/bean/request/BindRegCodeRequestInfo$1;
.super Ljava/lang/Object;
.source "BindRegCodeRequestInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyjh/share/bean/request/BindRegCodeRequestInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/cyjh/share/bean/request/BindRegCodeRequestInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/cyjh/share/bean/request/BindRegCodeRequestInfo;
    .locals 1

    .line 47
    new-instance v0, Lcom/cyjh/share/bean/request/BindRegCodeRequestInfo;

    invoke-direct {v0, p1}, Lcom/cyjh/share/bean/request/BindRegCodeRequestInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 44
    invoke-virtual {p0, p1}, Lcom/cyjh/share/bean/request/BindRegCodeRequestInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/cyjh/share/bean/request/BindRegCodeRequestInfo;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/cyjh/share/bean/request/BindRegCodeRequestInfo;
    .locals 0

    .line 52
    new-array p1, p1, [Lcom/cyjh/share/bean/request/BindRegCodeRequestInfo;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 44
    invoke-virtual {p0, p1}, Lcom/cyjh/share/bean/request/BindRegCodeRequestInfo$1;->newArray(I)[Lcom/cyjh/share/bean/request/BindRegCodeRequestInfo;

    move-result-object p1

    return-object p1
.end method
