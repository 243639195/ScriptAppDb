.class public Lcom/cyjh/share/bean/response/FengLingAdResult;
.super Ljava/lang/Object;
.source "FengLingAdResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/cyjh/share/bean/response/FengLingAdResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field ads:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/cyjh/share/bean/response/FengLingAdInfo;",
            ">;"
        }
    .end annotation
.end field

.field private callRequestId:Ljava/lang/String;

.field private code:I

.field private msg:Ljava/lang/String;

.field private requestId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 87
    new-instance v0, Lcom/cyjh/share/bean/response/FengLingAdResult$1;

    invoke-direct {v0}, Lcom/cyjh/share/bean/response/FengLingAdResult$1;-><init>()V

    sput-object v0, Lcom/cyjh/share/bean/response/FengLingAdResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/cyjh/share/bean/response/FengLingAdResult;->code:I

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/share/bean/response/FengLingAdResult;->msg:Ljava/lang/String;

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/share/bean/response/FengLingAdResult;->requestId:Ljava/lang/String;

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/share/bean/response/FengLingAdResult;->callRequestId:Ljava/lang/String;

    .line 70
    sget-object v0, Lcom/cyjh/share/bean/response/FengLingAdInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/cyjh/share/bean/response/FengLingAdResult;->ads:Ljava/util/List;

    return-void
.end method

.method public static getCREATOR()Landroid/os/Parcelable$Creator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/os/Parcelable$Creator<",
            "Lcom/cyjh/share/bean/response/FengLingAdResult;",
            ">;"
        }
    .end annotation

    .line 140
    sget-object v0, Lcom/cyjh/share/bean/response/FengLingAdResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/cyjh/share/bean/response/FengLingAdInfo;",
            ">;"
        }
    .end annotation

    .line 132
    iget-object v0, p0, Lcom/cyjh/share/bean/response/FengLingAdResult;->ads:Ljava/util/List;

    return-object v0
.end method

.method public getCallRequestId()Ljava/lang/String;
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/cyjh/share/bean/response/FengLingAdResult;->callRequestId:Ljava/lang/String;

    return-object v0
.end method

.method public getCode()I
    .locals 1

    .line 100
    iget v0, p0, Lcom/cyjh/share/bean/response/FengLingAdResult;->code:I

    return v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/cyjh/share/bean/response/FengLingAdResult;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestId()Ljava/lang/String;
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/cyjh/share/bean/response/FengLingAdResult;->requestId:Ljava/lang/String;

    return-object v0
.end method

.method public setAds(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/cyjh/share/bean/response/FengLingAdInfo;",
            ">;)V"
        }
    .end annotation

    .line 136
    iput-object p1, p0, Lcom/cyjh/share/bean/response/FengLingAdResult;->ads:Ljava/util/List;

    return-void
.end method

.method public setCallRequestId(Ljava/lang/String;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lcom/cyjh/share/bean/response/FengLingAdResult;->callRequestId:Ljava/lang/String;

    return-void
.end method

.method public setCode(I)V
    .locals 0

    .line 104
    iput p1, p0, Lcom/cyjh/share/bean/response/FengLingAdResult;->code:I

    return-void
.end method

.method public setMsg(Ljava/lang/String;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/cyjh/share/bean/response/FengLingAdResult;->msg:Ljava/lang/String;

    return-void
.end method

.method public setRequestId(Ljava/lang/String;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/cyjh/share/bean/response/FengLingAdResult;->requestId:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 75
    iget p2, p0, Lcom/cyjh/share/bean/response/FengLingAdResult;->code:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 76
    iget-object p2, p0, Lcom/cyjh/share/bean/response/FengLingAdResult;->msg:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 77
    iget-object p2, p0, Lcom/cyjh/share/bean/response/FengLingAdResult;->requestId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 78
    iget-object p2, p0, Lcom/cyjh/share/bean/response/FengLingAdResult;->callRequestId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 79
    iget-object p2, p0, Lcom/cyjh/share/bean/response/FengLingAdResult;->ads:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return-void
.end method
