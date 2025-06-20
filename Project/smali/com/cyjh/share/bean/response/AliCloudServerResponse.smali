.class public Lcom/cyjh/share/bean/response/AliCloudServerResponse;
.super Ljava/lang/Object;
.source "AliCloudServerResponse.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/cyjh/share/bean/response/AliCloudServerResponse;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public AliCloundAccessKeyId:Ljava/lang/String;

.field public AliCloundAccessKeySecret:Ljava/lang/String;

.field public AliCloundExpireTime:Ljava/lang/Long;

.field public AliCloundSecurityToken:Ljava/lang/String;

.field public ClientTimestamp:J

.field public OssBucket:Ljava/lang/String;

.field public OssEndpoint:Ljava/lang/String;

.field public OssStoragePath:Ljava/lang/String;

.field public ServerTimestamp:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    new-instance v0, Lcom/cyjh/share/bean/response/AliCloudServerResponse$1;

    invoke-direct {v0}, Lcom/cyjh/share/bean/response/AliCloudServerResponse$1;-><init>()V

    sput-object v0, Lcom/cyjh/share/bean/response/AliCloudServerResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/share/bean/response/AliCloudServerResponse;->AliCloundAccessKeyId:Ljava/lang/String;

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/share/bean/response/AliCloudServerResponse;->AliCloundAccessKeySecret:Ljava/lang/String;

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/share/bean/response/AliCloudServerResponse;->AliCloundSecurityToken:Ljava/lang/String;

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 36
    iput-object v0, p0, Lcom/cyjh/share/bean/response/AliCloudServerResponse;->AliCloundExpireTime:Ljava/lang/Long;

    goto :goto_0

    .line 38
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/share/bean/response/AliCloudServerResponse;->AliCloundExpireTime:Ljava/lang/Long;

    .line 40
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/share/bean/response/AliCloudServerResponse;->OssEndpoint:Ljava/lang/String;

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/share/bean/response/AliCloudServerResponse;->OssBucket:Ljava/lang/String;

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/share/bean/response/AliCloudServerResponse;->OssStoragePath:Ljava/lang/String;

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/cyjh/share/bean/response/AliCloudServerResponse;->ClientTimestamp:J

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/cyjh/share/bean/response/AliCloudServerResponse;->ServerTimestamp:J

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

    .line 66
    iget-object p2, p0, Lcom/cyjh/share/bean/response/AliCloudServerResponse;->AliCloundAccessKeyId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 67
    iget-object p2, p0, Lcom/cyjh/share/bean/response/AliCloudServerResponse;->AliCloundAccessKeySecret:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 68
    iget-object p2, p0, Lcom/cyjh/share/bean/response/AliCloudServerResponse;->AliCloundSecurityToken:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 69
    iget-object p2, p0, Lcom/cyjh/share/bean/response/AliCloudServerResponse;->AliCloundExpireTime:Ljava/lang/Long;

    if-nez p2, :cond_0

    const/4 p2, 0x0

    .line 70
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    .line 72
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 73
    iget-object p2, p0, Lcom/cyjh/share/bean/response/AliCloudServerResponse;->AliCloundExpireTime:Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 75
    :goto_0
    iget-object p2, p0, Lcom/cyjh/share/bean/response/AliCloudServerResponse;->OssEndpoint:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 76
    iget-object p2, p0, Lcom/cyjh/share/bean/response/AliCloudServerResponse;->OssBucket:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 77
    iget-object p2, p0, Lcom/cyjh/share/bean/response/AliCloudServerResponse;->OssStoragePath:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 78
    iget-wide v0, p0, Lcom/cyjh/share/bean/response/AliCloudServerResponse;->ClientTimestamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 79
    iget-wide v0, p0, Lcom/cyjh/share/bean/response/AliCloudServerResponse;->ServerTimestamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
