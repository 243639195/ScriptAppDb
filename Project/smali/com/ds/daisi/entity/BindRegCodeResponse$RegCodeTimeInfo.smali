.class public Lcom/ds/daisi/entity/BindRegCodeResponse$RegCodeTimeInfo;
.super Ljava/lang/Object;
.source "BindRegCodeResponse.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ds/daisi/entity/BindRegCodeResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RegCodeTimeInfo"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/ds/daisi/entity/BindRegCodeResponse$RegCodeTimeInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public ClientTimestamp:J

.field public ExpireTime:J

.field public ServerTimestamp:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 70
    new-instance v0, Lcom/ds/daisi/entity/BindRegCodeResponse$RegCodeTimeInfo$1;

    invoke-direct {v0}, Lcom/ds/daisi/entity/BindRegCodeResponse$RegCodeTimeInfo$1;-><init>()V

    sput-object v0, Lcom/ds/daisi/entity/BindRegCodeResponse$RegCodeTimeInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ds/daisi/entity/BindRegCodeResponse$RegCodeTimeInfo;->ClientTimestamp:J

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ds/daisi/entity/BindRegCodeResponse$RegCodeTimeInfo;->ServerTimestamp:J

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ds/daisi/entity/BindRegCodeResponse$RegCodeTimeInfo;->ExpireTime:J

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

    .line 60
    iget-wide v0, p0, Lcom/ds/daisi/entity/BindRegCodeResponse$RegCodeTimeInfo;->ClientTimestamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 61
    iget-wide v0, p0, Lcom/ds/daisi/entity/BindRegCodeResponse$RegCodeTimeInfo;->ServerTimestamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 62
    iget-wide v0, p0, Lcom/ds/daisi/entity/BindRegCodeResponse$RegCodeTimeInfo;->ExpireTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
