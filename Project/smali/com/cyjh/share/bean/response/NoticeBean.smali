.class public Lcom/cyjh/share/bean/response/NoticeBean;
.super Ljava/lang/Object;
.source "NoticeBean.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/cyjh/share/bean/response/NoticeBean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public ClientTimestamp:J

.field public DescriptionType:I

.field public IsShowNoticeBar:I

.field public NoticeContent:Ljava/lang/String;

.field public NoticeDescription:Ljava/lang/String;

.field public NoticeId:J

.field public NoticeTime:J

.field public NoticeTitle:Ljava/lang/String;

.field public ServerTimestamp:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 82
    new-instance v0, Lcom/cyjh/share/bean/response/NoticeBean$1;

    invoke-direct {v0}, Lcom/cyjh/share/bean/response/NoticeBean$1;-><init>()V

    sput-object v0, Lcom/cyjh/share/bean/response/NoticeBean;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/share/bean/response/NoticeBean;->NoticeTitle:Ljava/lang/String;

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/share/bean/response/NoticeBean;->NoticeDescription:Ljava/lang/String;

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/cyjh/share/bean/response/NoticeBean;->NoticeId:J

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/cyjh/share/bean/response/NoticeBean;->DescriptionType:I

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/cyjh/share/bean/response/NoticeBean;->NoticeTime:J

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/share/bean/response/NoticeBean;->NoticeContent:Ljava/lang/String;

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/cyjh/share/bean/response/NoticeBean;->IsShowNoticeBar:I

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/cyjh/share/bean/response/NoticeBean;->ClientTimestamp:J

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/cyjh/share/bean/response/NoticeBean;->ServerTimestamp:J

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

    .line 56
    iget-object p2, p0, Lcom/cyjh/share/bean/response/NoticeBean;->NoticeTitle:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 57
    iget-object p2, p0, Lcom/cyjh/share/bean/response/NoticeBean;->NoticeDescription:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 58
    iget-wide v0, p0, Lcom/cyjh/share/bean/response/NoticeBean;->NoticeId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 59
    iget p2, p0, Lcom/cyjh/share/bean/response/NoticeBean;->DescriptionType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 60
    iget-wide v0, p0, Lcom/cyjh/share/bean/response/NoticeBean;->NoticeTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 61
    iget-object p2, p0, Lcom/cyjh/share/bean/response/NoticeBean;->NoticeContent:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 62
    iget p2, p0, Lcom/cyjh/share/bean/response/NoticeBean;->IsShowNoticeBar:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 63
    iget-wide v0, p0, Lcom/cyjh/share/bean/response/NoticeBean;->ClientTimestamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 64
    iget-wide v0, p0, Lcom/cyjh/share/bean/response/NoticeBean;->ServerTimestamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
