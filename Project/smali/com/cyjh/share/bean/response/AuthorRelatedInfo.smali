.class public Lcom/cyjh/share/bean/response/AuthorRelatedInfo;
.super Ljava/lang/Object;
.source "AuthorRelatedInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/cyjh/share/bean/response/AuthorRelatedInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public AdList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/cyjh/share/bean/response/BackgroundSetAdInfo;",
            ">;"
        }
    .end annotation
.end field

.field public EngineToken:Ljava/lang/String;

.field public IsFreeAd:I

.field public ServicePackPrompt:Ljava/lang/String;

.field public ServicePackStatus:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    new-instance v0, Lcom/cyjh/share/bean/response/AuthorRelatedInfo$1;

    invoke-direct {v0}, Lcom/cyjh/share/bean/response/AuthorRelatedInfo$1;-><init>()V

    sput-object v0, Lcom/cyjh/share/bean/response/AuthorRelatedInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/cyjh/share/bean/response/AuthorRelatedInfo;->ServicePackStatus:I

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/share/bean/response/AuthorRelatedInfo;->ServicePackPrompt:Ljava/lang/String;

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/cyjh/share/bean/response/AuthorRelatedInfo;->IsFreeAd:I

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/share/bean/response/AuthorRelatedInfo;->EngineToken:Ljava/lang/String;

    .line 42
    sget-object v0, Lcom/cyjh/share/bean/response/BackgroundSetAdInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/cyjh/share/bean/response/AuthorRelatedInfo;->AdList:Ljava/util/List;

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

    .line 64
    iget p2, p0, Lcom/cyjh/share/bean/response/AuthorRelatedInfo;->ServicePackStatus:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 65
    iget-object p2, p0, Lcom/cyjh/share/bean/response/AuthorRelatedInfo;->ServicePackPrompt:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 66
    iget p2, p0, Lcom/cyjh/share/bean/response/AuthorRelatedInfo;->IsFreeAd:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 67
    iget-object p2, p0, Lcom/cyjh/share/bean/response/AuthorRelatedInfo;->EngineToken:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 68
    iget-object p2, p0, Lcom/cyjh/share/bean/response/AuthorRelatedInfo;->AdList:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return-void
.end method
