.class final Lcom/umeng/commonsdk/proguard/r$2;
.super Ljava/lang/Object;
.source "SystemLayerUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/commonsdk/proguard/r;->b(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/hardware/Sensor;

.field final synthetic b:Landroid/hardware/Sensor;


# direct methods
.method constructor <init>(Landroid/hardware/Sensor;Landroid/hardware/Sensor;)V
    .locals 0

    .line 131
    iput-object p1, p0, Lcom/umeng/commonsdk/proguard/r$2;->a:Landroid/hardware/Sensor;

    iput-object p2, p0, Lcom/umeng/commonsdk/proguard/r$2;->b:Landroid/hardware/Sensor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v0, 0x0

    .line 134
    invoke-static {v0}, Lcom/umeng/commonsdk/proguard/r;->a(I)I

    .line 135
    iget-object v0, p0, Lcom/umeng/commonsdk/proguard/r$2;->a:Landroid/hardware/Sensor;

    const v1, 0xc350

    if-eqz v0, :cond_0

    .line 136
    invoke-static {}, Lcom/umeng/commonsdk/proguard/r;->k()Landroid/hardware/SensorManager;

    move-result-object v0

    invoke-static {}, Lcom/umeng/commonsdk/proguard/r;->j()Landroid/hardware/SensorEventListener;

    move-result-object v2

    iget-object v3, p0, Lcom/umeng/commonsdk/proguard/r$2;->a:Landroid/hardware/Sensor;

    invoke-virtual {v0, v2, v3, v1}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    goto :goto_0

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/umeng/commonsdk/proguard/r$2;->b:Landroid/hardware/Sensor;

    if-eqz v0, :cond_1

    .line 138
    invoke-static {}, Lcom/umeng/commonsdk/proguard/r;->k()Landroid/hardware/SensorManager;

    move-result-object v0

    invoke-static {}, Lcom/umeng/commonsdk/proguard/r;->j()Landroid/hardware/SensorEventListener;

    move-result-object v2

    iget-object v3, p0, Lcom/umeng/commonsdk/proguard/r$2;->b:Landroid/hardware/Sensor;

    invoke-virtual {v0, v2, v3, v1}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    :cond_1
    :goto_0
    return-void
.end method
