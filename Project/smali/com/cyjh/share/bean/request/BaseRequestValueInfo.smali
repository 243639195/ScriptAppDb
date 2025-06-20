.class public Lcom/cyjh/share/bean/request/BaseRequestValueInfo;
.super Ljava/lang/Object;
.source "BaseRequestValueInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/cyjh/share/bean/request/BaseRequestValueInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public AppId:J

.field public AppInfo:Ljava/lang/String;

.field public AppVersion:Ljava/lang/String;

.field public ClientTimestamp:J

.field public DeviceCode:Ljava/lang/String;

.field public DeviceId:Ljava/lang/String;

.field public IsRedFinger:I

.field public TemplateFileId:J

.field public TemplateVersion:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 57
    new-instance v0, Lcom/cyjh/share/bean/request/BaseRequestValueInfo$1;

    invoke-direct {v0}, Lcom/cyjh/share/bean/request/BaseRequestValueInfo$1;-><init>()V

    sput-object v0, Lcom/cyjh/share/bean/request/BaseRequestValueInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/cyjh/share/bean/request/BaseRequestValueInfo;->TemplateFileId:J

    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/share/bean/request/BaseRequestValueInfo;->TemplateVersion:Ljava/lang/String;

    .line 105
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/cyjh/share/bean/request/BaseRequestValueInfo;->AppId:J

    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/share/bean/request/BaseRequestValueInfo;->AppVersion:Ljava/lang/String;

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/share/bean/request/BaseRequestValueInfo;->DeviceId:Ljava/lang/String;

    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/cyjh/share/bean/request/BaseRequestValueInfo;->ClientTimestamp:J

    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/cyjh/share/bean/request/BaseRequestValueInfo;->IsRedFinger:I

    .line 110
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/share/bean/request/BaseRequestValueInfo;->DeviceCode:Ljava/lang/String;

    .line 111
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/cyjh/share/bean/request/BaseRequestValueInfo;->AppInfo:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/cyjh/share/bean/request/BaseRequestValueInfo;)V
    .locals 2

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iget-wide v0, p1, Lcom/cyjh/share/bean/request/BaseRequestValueInfo;->AppId:J

    iput-wide v0, p0, Lcom/cyjh/share/bean/request/BaseRequestValueInfo;->AppId:J

    .line 47
    iget-object v0, p1, Lcom/cyjh/share/bean/request/BaseRequestValueInfo;->AppVersion:Ljava/lang/String;

    iput-object v0, p0, Lcom/cyjh/share/bean/request/BaseRequestValueInfo;->AppVersion:Ljava/lang/String;

    .line 48
    iget-wide v0, p1, Lcom/cyjh/share/bean/request/BaseRequestValueInfo;->ClientTimestamp:J

    iput-wide v0, p0, Lcom/cyjh/share/bean/request/BaseRequestValueInfo;->ClientTimestamp:J

    .line 49
    iget-object v0, p1, Lcom/cyjh/share/bean/request/BaseRequestValueInfo;->DeviceId:Ljava/lang/String;

    iput-object v0, p0, Lcom/cyjh/share/bean/request/BaseRequestValueInfo;->DeviceId:Ljava/lang/String;

    .line 50
    iget-wide v0, p1, Lcom/cyjh/share/bean/request/BaseRequestValueInfo;->TemplateFileId:J

    iput-wide v0, p0, Lcom/cyjh/share/bean/request/BaseRequestValueInfo;->TemplateFileId:J

    .line 51
    iget-object v0, p1, Lcom/cyjh/share/bean/request/BaseRequestValueInfo;->TemplateVersion:Ljava/lang/String;

    iput-object v0, p0, Lcom/cyjh/share/bean/request/BaseRequestValueInfo;->TemplateVersion:Ljava/lang/String;

    .line 52
    iget v0, p1, Lcom/cyjh/share/bean/request/BaseRequestValueInfo;->IsRedFinger:I

    iput v0, p0, Lcom/cyjh/share/bean/request/BaseRequestValueInfo;->IsRedFinger:I

    .line 53
    iget-object v0, p1, Lcom/cyjh/share/bean/request/BaseRequestValueInfo;->DeviceCode:Ljava/lang/String;

    iput-object v0, p0, Lcom/cyjh/share/bean/request/BaseRequestValueInfo;->DeviceCode:Ljava/lang/String;

    .line 54
    iget-object p1, p1, Lcom/cyjh/share/bean/request/BaseRequestValueInfo;->AppInfo:Ljava/lang/String;

    iput-object p1, p0, Lcom/cyjh/share/bean/request/BaseRequestValueInfo;->AppInfo:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BaseRequestValueInfo{TemplateFileId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/cyjh/share/bean/request/BaseRequestValueInfo;->TemplateFileId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", TemplateVersion=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cyjh/share/bean/request/BaseRequestValueInfo;->TemplateVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", AppId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/cyjh/share/bean/request/BaseRequestValueInfo;->AppId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", AppVersion=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/cyjh/share/bean/request/BaseRequestValueInfo;->AppVersion:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", DeviceId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/cyjh/share/bean/request/BaseRequestValueInfo;->DeviceId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", ClientTimestamp="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/cyjh/share/bean/request/BaseRequestValueInfo;->ClientTimestamp:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", IsRedFinger="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/cyjh/share/bean/request/BaseRequestValueInfo;->IsRedFinger:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", DeviceCode=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/cyjh/share/bean/request/BaseRequestValueInfo;->DeviceCode:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", AppInfo=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/cyjh/share/bean/request/BaseRequestValueInfo;->AppInfo:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 91
    iget-wide v0, p0, Lcom/cyjh/share/bean/request/BaseRequestValueInfo;->TemplateFileId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 92
    iget-object p2, p0, Lcom/cyjh/share/bean/request/BaseRequestValueInfo;->TemplateVersion:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 93
    iget-wide v0, p0, Lcom/cyjh/share/bean/request/BaseRequestValueInfo;->AppId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 94
    iget-object p2, p0, Lcom/cyjh/share/bean/request/BaseRequestValueInfo;->AppVersion:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 95
    iget-object p2, p0, Lcom/cyjh/share/bean/request/BaseRequestValueInfo;->DeviceId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 96
    iget-wide v0, p0, Lcom/cyjh/share/bean/request/BaseRequestValueInfo;->ClientTimestamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 97
    iget p2, p0, Lcom/cyjh/share/bean/request/BaseRequestValueInfo;->IsRedFinger:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 98
    iget-object p2, p0, Lcom/cyjh/share/bean/request/BaseRequestValueInfo;->DeviceCode:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 99
    iget-object p2, p0, Lcom/cyjh/share/bean/request/BaseRequestValueInfo;->AppInfo:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
