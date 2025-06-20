.class final Lcom/cyjh/share/bean/response/FengLingAdInfo$1;
.super Ljava/lang/Object;
.source "FengLingAdInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyjh/share/bean/response/FengLingAdInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/cyjh/share/bean/response/FengLingAdInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/cyjh/share/bean/response/FengLingAdInfo;
    .locals 1

    .line 112
    new-instance v0, Lcom/cyjh/share/bean/response/FengLingAdInfo;

    invoke-direct {v0, p1}, Lcom/cyjh/share/bean/response/FengLingAdInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 109
    invoke-virtual {p0, p1}, Lcom/cyjh/share/bean/response/FengLingAdInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/cyjh/share/bean/response/FengLingAdInfo;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/cyjh/share/bean/response/FengLingAdInfo;
    .locals 0

    .line 117
    new-array p1, p1, [Lcom/cyjh/share/bean/response/FengLingAdInfo;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 109
    invoke-virtual {p0, p1}, Lcom/cyjh/share/bean/response/FengLingAdInfo$1;->newArray(I)[Lcom/cyjh/share/bean/response/FengLingAdInfo;

    move-result-object p1

    return-object p1
.end method
