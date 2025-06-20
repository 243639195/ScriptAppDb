.class public Lcom/cyjh/share/bean/response/TemplateResponse;
.super Ljava/lang/Object;
.source "TemplateResponse.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/cyjh/share/bean/response/TemplateResponse;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public ClientTimestamp:J

.field public HeartbeatIntervalSecond:I

.field public HeartbeatInvalidTimes:I

.field public Remark:Ljava/lang/String;

.field public ServerTimestamp:J

.field public Status:I

.field public TemplateType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 71
    new-instance v0, Lcom/cyjh/share/bean/response/TemplateResponse$1;

    invoke-direct {v0}, Lcom/cyjh/share/bean/response/TemplateResponse$1;-><init>()V

    sput-object v0, Lcom/cyjh/share/bean/response/TemplateResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/cyjh/share/bean/response/TemplateResponse;->TemplateType:I

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/cyjh/share/bean/response/TemplateResponse;->Status:I

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/share/bean/response/TemplateResponse;->Remark:Ljava/lang/String;

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/cyjh/share/bean/response/TemplateResponse;->HeartbeatIntervalSecond:I

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/cyjh/share/bean/response/TemplateResponse;->HeartbeatInvalidTimes:I

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/cyjh/share/bean/response/TemplateResponse;->ClientTimestamp:J

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/cyjh/share/bean/response/TemplateResponse;->ServerTimestamp:J

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 49
    iget p2, p0, Lcom/cyjh/share/bean/response/TemplateResponse;->TemplateType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 50
    iget p2, p0, Lcom/cyjh/share/bean/response/TemplateResponse;->Status:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 51
    iget-object p2, p0, Lcom/cyjh/share/bean/response/TemplateResponse;->Remark:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 52
    iget p2, p0, Lcom/cyjh/share/bean/response/TemplateResponse;->HeartbeatIntervalSecond:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 53
    iget p2, p0, Lcom/cyjh/share/bean/response/TemplateResponse;->HeartbeatInvalidTimes:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 54
    iget-wide v0, p0, Lcom/cyjh/share/bean/response/TemplateResponse;->ClientTimestamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 55
    iget-wide v0, p0, Lcom/cyjh/share/bean/response/TemplateResponse;->ServerTimestamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
