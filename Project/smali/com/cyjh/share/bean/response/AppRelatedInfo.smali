.class public Lcom/cyjh/share/bean/response/AppRelatedInfo;
.super Ljava/lang/Object;
.source "AppRelatedInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/cyjh/share/bean/response/AppRelatedInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public Active:I

.field public BuyRegCodeConfig:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/cyjh/share/bean/response/BuyRegCodeConfigInfo;",
            ">;"
        }
    .end annotation
.end field

.field public DailyTryTimes:I

.field public FeedbackTips:Ljava/lang/String;

.field public FlySetting:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/cyjh/share/bean/response/FlySettingInfo;",
            ">;"
        }
    .end annotation
.end field

.field public OnceTryMinute:I

.field public RecommendSetting:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/cyjh/share/bean/response/RecommendSettingInfo;",
            ">;"
        }
    .end annotation
.end field

.field public ScriptKey:Ljava/lang/String;

.field public UnbindDeductHours:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 70
    new-instance v0, Lcom/cyjh/share/bean/response/AppRelatedInfo$1;

    invoke-direct {v0}, Lcom/cyjh/share/bean/response/AppRelatedInfo$1;-><init>()V

    sput-object v0, Lcom/cyjh/share/bean/response/AppRelatedInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/cyjh/share/bean/response/AppRelatedInfo;->Active:I

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/cyjh/share/bean/response/AppRelatedInfo;->DailyTryTimes:I

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/cyjh/share/bean/response/AppRelatedInfo;->OnceTryMinute:I

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/share/bean/response/AppRelatedInfo;->FeedbackTips:Ljava/lang/String;

    .line 63
    sget-object v0, Lcom/cyjh/share/bean/response/BuyRegCodeConfigInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/share/bean/response/AppRelatedInfo;->BuyRegCodeConfig:Ljava/util/List;

    .line 64
    sget-object v0, Lcom/cyjh/share/bean/response/FlySettingInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/share/bean/response/AppRelatedInfo;->FlySetting:Ljava/util/List;

    .line 65
    sget-object v0, Lcom/cyjh/share/bean/response/RecommendSettingInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/share/bean/response/AppRelatedInfo;->RecommendSetting:Ljava/util/List;

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/share/bean/response/AppRelatedInfo;->ScriptKey:Ljava/lang/String;

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/cyjh/share/bean/response/AppRelatedInfo;->UnbindDeductHours:I

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

    .line 44
    iget p2, p0, Lcom/cyjh/share/bean/response/AppRelatedInfo;->Active:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 45
    iget p2, p0, Lcom/cyjh/share/bean/response/AppRelatedInfo;->DailyTryTimes:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 46
    iget p2, p0, Lcom/cyjh/share/bean/response/AppRelatedInfo;->OnceTryMinute:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 47
    iget-object p2, p0, Lcom/cyjh/share/bean/response/AppRelatedInfo;->FeedbackTips:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    iget-object p2, p0, Lcom/cyjh/share/bean/response/AppRelatedInfo;->BuyRegCodeConfig:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 49
    iget-object p2, p0, Lcom/cyjh/share/bean/response/AppRelatedInfo;->FlySetting:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 50
    iget-object p2, p0, Lcom/cyjh/share/bean/response/AppRelatedInfo;->RecommendSetting:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 51
    iget-object p2, p0, Lcom/cyjh/share/bean/response/AppRelatedInfo;->ScriptKey:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 52
    iget p2, p0, Lcom/cyjh/share/bean/response/AppRelatedInfo;->UnbindDeductHours:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
