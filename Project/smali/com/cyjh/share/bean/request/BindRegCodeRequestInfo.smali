.class public Lcom/cyjh/share/bean/request/BindRegCodeRequestInfo;
.super Lcom/cyjh/share/bean/request/BaseRequestValueInfo;
.source "BindRegCodeRequestInfo.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/cyjh/share/bean/request/BindRegCodeRequestInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public IsSuperpose:I

.field public OldRegCode:Ljava/lang/String;

.field public RegCode:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    new-instance v0, Lcom/cyjh/share/bean/request/BindRegCodeRequestInfo$1;

    invoke-direct {v0}, Lcom/cyjh/share/bean/request/BindRegCodeRequestInfo$1;-><init>()V

    sput-object v0, Lcom/cyjh/share/bean/request/BindRegCodeRequestInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 38
    invoke-direct {p0, p1}, Lcom/cyjh/share/bean/request/BaseRequestValueInfo;-><init>(Landroid/os/Parcel;)V

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/share/bean/request/BindRegCodeRequestInfo;->RegCode:Ljava/lang/String;

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/share/bean/request/BindRegCodeRequestInfo;->OldRegCode:Ljava/lang/String;

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/cyjh/share/bean/request/BindRegCodeRequestInfo;->IsSuperpose:I

    return-void
.end method

.method public constructor <init>(Lcom/cyjh/share/bean/request/BaseRequestValueInfo;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lcom/cyjh/share/bean/request/BaseRequestValueInfo;-><init>(Lcom/cyjh/share/bean/request/BaseRequestValueInfo;)V

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

    .line 31
    invoke-super {p0, p1, p2}, Lcom/cyjh/share/bean/request/BaseRequestValueInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 32
    iget-object p2, p0, Lcom/cyjh/share/bean/request/BindRegCodeRequestInfo;->RegCode:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 33
    iget-object p2, p0, Lcom/cyjh/share/bean/request/BindRegCodeRequestInfo;->OldRegCode:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 34
    iget p2, p0, Lcom/cyjh/share/bean/request/BindRegCodeRequestInfo;->IsSuperpose:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
