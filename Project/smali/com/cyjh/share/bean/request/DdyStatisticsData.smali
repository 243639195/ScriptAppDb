.class public Lcom/cyjh/share/bean/request/DdyStatisticsData;
.super Ljava/lang/Object;
.source "DdyStatisticsData.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/cyjh/share/bean/request/DdyStatisticsData;",
            ">;"
        }
    .end annotation
.end field

.field public static final DAILY_STATISTICS:Ljava/lang/String; = "Statistics/Daily"


# instance fields
.field public data:Lcom/cyjh/share/bean/request/DdyStatisticsRequestParamsInfo;

.field public type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    new-instance v0, Lcom/cyjh/share/bean/request/DdyStatisticsData$1;

    invoke-direct {v0}, Lcom/cyjh/share/bean/request/DdyStatisticsData$1;-><init>()V

    sput-object v0, Lcom/cyjh/share/bean/request/DdyStatisticsData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/share/bean/request/DdyStatisticsData;->type:Ljava/lang/String;

    .line 25
    const-class v0, Lcom/cyjh/share/bean/request/DdyStatisticsRequestParamsInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/cyjh/share/bean/request/DdyStatisticsRequestParamsInfo;

    iput-object p1, p0, Lcom/cyjh/share/bean/request/DdyStatisticsData;->data:Lcom/cyjh/share/bean/request/DdyStatisticsRequestParamsInfo;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/cyjh/share/bean/request/DdyStatisticsRequestParamsInfo;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/cyjh/share/bean/request/DdyStatisticsData;->type:Ljava/lang/String;

    .line 20
    iput-object p2, p0, Lcom/cyjh/share/bean/request/DdyStatisticsData;->data:Lcom/cyjh/share/bean/request/DdyStatisticsRequestParamsInfo;

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

    .line 30
    iget-object v0, p0, Lcom/cyjh/share/bean/request/DdyStatisticsData;->type:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 31
    iget-object v0, p0, Lcom/cyjh/share/bean/request/DdyStatisticsData;->data:Lcom/cyjh/share/bean/request/DdyStatisticsRequestParamsInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
