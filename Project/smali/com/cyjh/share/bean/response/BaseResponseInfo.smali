.class public Lcom/cyjh/share/bean/response/BaseResponseInfo;
.super Ljava/lang/Object;
.source "BaseResponseInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/cyjh/share/bean/response/BaseResponseInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public Code:I

.field public Message:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    new-instance v0, Lcom/cyjh/share/bean/response/BaseResponseInfo$1;

    invoke-direct {v0}, Lcom/cyjh/share/bean/response/BaseResponseInfo$1;-><init>()V

    sput-object v0, Lcom/cyjh/share/bean/response/BaseResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput p1, p0, Lcom/cyjh/share/bean/response/BaseResponseInfo;->Code:I

    .line 19
    iput-object p2, p0, Lcom/cyjh/share/bean/response/BaseResponseInfo;->Message:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/cyjh/share/bean/response/BaseResponseInfo;->Code:I

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/cyjh/share/bean/response/BaseResponseInfo;->Message:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 29
    iget p2, p0, Lcom/cyjh/share/bean/response/BaseResponseInfo;->Code:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 30
    iget-object p2, p0, Lcom/cyjh/share/bean/response/BaseResponseInfo;->Message:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
