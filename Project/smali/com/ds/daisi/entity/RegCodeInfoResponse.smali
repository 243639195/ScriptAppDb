.class public Lcom/ds/daisi/entity/RegCodeInfoResponse;
.super Ljava/lang/Object;
.source "RegCodeInfoResponse.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/ds/daisi/entity/RegCodeInfoResponse;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public Code:I

.field public Data:Lcom/ds/daisi/entity/QueryRegCodeInfo;

.field public Message:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    new-instance v0, Lcom/ds/daisi/entity/RegCodeInfoResponse$1;

    invoke-direct {v0}, Lcom/ds/daisi/entity/RegCodeInfoResponse$1;-><init>()V

    sput-object v0, Lcom/ds/daisi/entity/RegCodeInfoResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ds/daisi/entity/RegCodeInfoResponse;->Code:I

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ds/daisi/entity/RegCodeInfoResponse;->Message:Ljava/lang/String;

    .line 36
    const-class v0, Lcom/ds/daisi/entity/QueryRegCodeInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/ds/daisi/entity/QueryRegCodeInfo;

    iput-object p1, p0, Lcom/ds/daisi/entity/RegCodeInfoResponse;->Data:Lcom/ds/daisi/entity/QueryRegCodeInfo;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 28
    iget v0, p0, Lcom/ds/daisi/entity/RegCodeInfoResponse;->Code:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 29
    iget-object v0, p0, Lcom/ds/daisi/entity/RegCodeInfoResponse;->Message:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 30
    iget-object v0, p0, Lcom/ds/daisi/entity/RegCodeInfoResponse;->Data:Lcom/ds/daisi/entity/QueryRegCodeInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
