.class public Lcom/ds/daisi/AppContext$ShakeListener;
.super Ljava/lang/Object;
.source "AppContext.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ds/daisi/AppContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ShakeListener"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ds/daisi/AppContext$ShakeListener$OnShakeListener;
    }
.end annotation


# static fields
.field private static final SPEED_SHRESHOLD:I = 0xbb8

.field private static final UPTATE_INTERVAL_TIME:I = 0x64


# instance fields
.field private lastUpdateTime:J

.field private lastX:F

.field private lastY:F

.field private lastZ:F

.field private mContext:Landroid/content/Context;

.field private onShakeListener:Lcom/ds/daisi/AppContext$ShakeListener$OnShakeListener;

.field private sensor:Landroid/hardware/Sensor;

.field private sensorManager:Landroid/hardware/SensorManager;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 934
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 935
    iput-object p1, p0, Lcom/ds/daisi/AppContext$ShakeListener;->mContext:Landroid/content/Context;

    .line 936
    invoke-virtual {p0}, Lcom/ds/daisi/AppContext$ShakeListener;->start()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/ds/daisi/AppContext$1;)V
    .locals 0

    .line 901
    invoke-direct {p0, p1}, Lcom/ds/daisi/AppContext$ShakeListener;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$200(Lcom/ds/daisi/AppContext$ShakeListener;)V
    .locals 0

    .line 901
    invoke-direct {p0}, Lcom/ds/daisi/AppContext$ShakeListener;->stop()V

    return-void
.end method

.method static synthetic access$300(Lcom/ds/daisi/AppContext$ShakeListener;Lcom/ds/daisi/AppContext$ShakeListener$OnShakeListener;)V
    .locals 0

    .line 901
    invoke-direct {p0, p1}, Lcom/ds/daisi/AppContext$ShakeListener;->setOnShakeListener(Lcom/ds/daisi/AppContext$ShakeListener$OnShakeListener;)V

    return-void
.end method

.method private setOnShakeListener(Lcom/ds/daisi/AppContext$ShakeListener$OnShakeListener;)V
    .locals 0

    .line 966
    iput-object p1, p0, Lcom/ds/daisi/AppContext$ShakeListener;->onShakeListener:Lcom/ds/daisi/AppContext$ShakeListener$OnShakeListener;

    return-void
.end method

.method private stop()V
    .locals 1

    .line 958
    iget-object v0, p0, Lcom/ds/daisi/AppContext$ShakeListener;->sensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 7

    .line 977
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 979
    iget-wide v2, p0, Lcom/ds/daisi/AppContext$ShakeListener;->lastUpdateTime:J

    sub-long v4, v0, v2

    const-wide/16 v2, 0x64

    cmp-long v6, v4, v2

    if-gez v6, :cond_0

    return-void

    .line 985
    :cond_0
    iput-wide v0, p0, Lcom/ds/daisi/AppContext$ShakeListener;->lastUpdateTime:J

    .line 988
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    .line 989
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    .line 990
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x2

    aget p1, p1, v2

    .line 993
    iget v2, p0, Lcom/ds/daisi/AppContext$ShakeListener;->lastX:F

    sub-float v2, v0, v2

    .line 994
    iget v3, p0, Lcom/ds/daisi/AppContext$ShakeListener;->lastY:F

    sub-float v3, v1, v3

    .line 995
    iget v6, p0, Lcom/ds/daisi/AppContext$ShakeListener;->lastZ:F

    sub-float v6, p1, v6

    .line 997
    iput v0, p0, Lcom/ds/daisi/AppContext$ShakeListener;->lastX:F

    .line 998
    iput v1, p0, Lcom/ds/daisi/AppContext$ShakeListener;->lastY:F

    .line 999
    iput p1, p0, Lcom/ds/daisi/AppContext$ShakeListener;->lastZ:F

    mul-float v2, v2, v2

    mul-float v3, v3, v3

    add-float/2addr v2, v3

    mul-float v6, v6, v6

    add-float/2addr v2, v6

    float-to-double v0, v2

    .line 1001
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    long-to-double v2, v4

    div-double/2addr v0, v2

    const-wide v2, 0x40c3880000000000L    # 10000.0

    mul-double v0, v0, v2

    const-wide v2, 0x40a7700000000000L    # 3000.0

    cmpl-double p1, v0, v2

    if-ltz p1, :cond_1

    .line 1004
    iget-object p1, p0, Lcom/ds/daisi/AppContext$ShakeListener;->onShakeListener:Lcom/ds/daisi/AppContext$ShakeListener$OnShakeListener;

    invoke-interface {p1}, Lcom/ds/daisi/AppContext$ShakeListener$OnShakeListener;->onShake()V

    :cond_1
    return-void
.end method

.method public start()V
    .locals 3

    .line 941
    iget-object v0, p0, Lcom/ds/daisi/AppContext$ShakeListener;->mContext:Landroid/content/Context;

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/ds/daisi/AppContext$ShakeListener;->sensorManager:Landroid/hardware/SensorManager;

    .line 942
    iget-object v0, p0, Lcom/ds/daisi/AppContext$ShakeListener;->sensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    .line 944
    iget-object v0, p0, Lcom/ds/daisi/AppContext$ShakeListener;->sensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/ds/daisi/AppContext$ShakeListener;->sensor:Landroid/hardware/Sensor;

    .line 946
    iget-object v0, p0, Lcom/ds/daisi/AppContext$ShakeListener;->sensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    .line 947
    iget-object v0, p0, Lcom/ds/daisi/AppContext$ShakeListener;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/ds/daisi/AppContext$ShakeListener;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, p0, v2, v1}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    :cond_0
    return-void
.end method
