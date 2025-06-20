.class public Lcom/ds/daisi/util/GPSUtils;
.super Ljava/lang/Object;
.source "GPSUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ds/daisi/util/GPSUtils$OnLocationResultListener;
    }
.end annotation


# static fields
.field public static final PERMISSIONS:[Ljava/lang/String;

.field private static instance:Lcom/ds/daisi/util/GPSUtils;


# instance fields
.field public locationListener:Landroid/location/LocationListener;

.field private locationManager:Landroid/location/LocationManager;

.field private mContext:Landroid/content/Context;

.field private mOnLocationListener:Lcom/ds/daisi/util/GPSUtils$OnLocationResultListener;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    .line 23
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/ds/daisi/util/GPSUtils;->PERMISSIONS:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    new-instance v0, Lcom/ds/daisi/util/GPSUtils$1;

    invoke-direct {v0, p0}, Lcom/ds/daisi/util/GPSUtils$1;-><init>(Lcom/ds/daisi/util/GPSUtils;)V

    iput-object v0, p0, Lcom/ds/daisi/util/GPSUtils;->locationListener:Landroid/location/LocationListener;

    .line 26
    iput-object p1, p0, Lcom/ds/daisi/util/GPSUtils;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/ds/daisi/util/GPSUtils;)Lcom/ds/daisi/util/GPSUtils$OnLocationResultListener;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/ds/daisi/util/GPSUtils;->mOnLocationListener:Lcom/ds/daisi/util/GPSUtils$OnLocationResultListener;

    return-object p0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/ds/daisi/util/GPSUtils;
    .locals 1

    .line 30
    sget-object v0, Lcom/ds/daisi/util/GPSUtils;->instance:Lcom/ds/daisi/util/GPSUtils;

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Lcom/ds/daisi/util/GPSUtils;

    invoke-direct {v0, p0}, Lcom/ds/daisi/util/GPSUtils;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/ds/daisi/util/GPSUtils;->instance:Lcom/ds/daisi/util/GPSUtils;

    .line 33
    :cond_0
    sget-object p0, Lcom/ds/daisi/util/GPSUtils;->instance:Lcom/ds/daisi/util/GPSUtils;

    return-object p0
.end method

.method private lackPermission()Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 124
    :goto_0
    sget-object v2, Lcom/ds/daisi/util/GPSUtils;->PERMISSIONS:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 125
    iget-object v2, p0, Lcom/ds/daisi/util/GPSUtils;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/ds/daisi/util/GPSUtils;->PERMISSIONS:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v0
.end method


# virtual methods
.method public getLngAndLat()[Ljava/lang/String;
    .locals 11
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    const/4 v0, 0x2

    .line 59
    new-array v0, v0, [Ljava/lang/String;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v0, v4

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 62
    iget-object v1, p0, Lcom/ds/daisi/util/GPSUtils;->mContext:Landroid/content/Context;

    const-string v3, "location"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager;

    iput-object v1, p0, Lcom/ds/daisi/util/GPSUtils;->locationManager:Landroid/location/LocationManager;

    .line 64
    iget-object v1, p0, Lcom/ds/daisi/util/GPSUtils;->locationManager:Landroid/location/LocationManager;

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->getProviders(Z)Ljava/util/List;

    move-result-object v1

    const-string v3, "gps"

    .line 66
    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v1, "gps"

    :goto_0
    move-object v6, v1

    goto :goto_1

    :cond_0
    const-string v3, "network"

    .line 69
    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "network"

    goto :goto_0

    .line 79
    :goto_1
    iget-object v1, p0, Lcom/ds/daisi/util/GPSUtils;->locationManager:Landroid/location/LocationManager;

    invoke-virtual {v1, v6}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 82
    iget-object v3, p0, Lcom/ds/daisi/util/GPSUtils;->mOnLocationListener:Lcom/ds/daisi/util/GPSUtils$OnLocationResultListener;

    if-eqz v3, :cond_1

    .line 83
    iget-object v3, p0, Lcom/ds/daisi/util/GPSUtils;->mOnLocationListener:Lcom/ds/daisi/util/GPSUtils$OnLocationResultListener;

    invoke-interface {v3, v1}, Lcom/ds/daisi/util/GPSUtils$OnLocationResultListener;->onLocationResult(Landroid/location/Location;)V

    .line 85
    :cond_1
    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v4

    .line 86
    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    .line 89
    :cond_2
    iget-object v5, p0, Lcom/ds/daisi/util/GPSUtils;->locationManager:Landroid/location/LocationManager;

    const-wide/16 v7, 0xbb8

    const/high16 v9, 0x3f800000    # 1.0f

    iget-object v10, p0, Lcom/ds/daisi/util/GPSUtils;->locationListener:Landroid/location/LocationListener;

    invoke-virtual/range {v5 .. v10}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    return-object v0

    :cond_3
    return-object v0
.end method

.method public getLngAndLatJudgeOperate(Lcom/ds/daisi/util/GPSUtils$OnLocationResultListener;)[Ljava/lang/String;
    .locals 4

    .line 37
    iput-object p1, p0, Lcom/ds/daisi/util/GPSUtils;->mOnLocationListener:Lcom/ds/daisi/util/GPSUtils$OnLocationResultListener;

    const/4 p1, 0x2

    .line 40
    new-array p1, p1, [Ljava/lang/String;

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, p1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, p1, v1

    .line 41
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 42
    invoke-direct {p0}, Lcom/ds/daisi/util/GPSUtils;->lackPermission()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 45
    :cond_0
    invoke-virtual {p0}, Lcom/ds/daisi/util/GPSUtils;->getLngAndLat()[Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 47
    :cond_1
    invoke-virtual {p0}, Lcom/ds/daisi/util/GPSUtils;->getLngAndLat()[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public removeListener()V
    .locals 2

    .line 135
    iget-object v0, p0, Lcom/ds/daisi/util/GPSUtils;->locationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/ds/daisi/util/GPSUtils;->locationListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    return-void
.end method
