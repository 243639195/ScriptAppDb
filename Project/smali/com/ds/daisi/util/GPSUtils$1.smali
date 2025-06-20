.class Lcom/ds/daisi/util/GPSUtils$1;
.super Ljava/lang/Object;
.source "GPSUtils.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ds/daisi/util/GPSUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ds/daisi/util/GPSUtils;


# direct methods
.method constructor <init>(Lcom/ds/daisi/util/GPSUtils;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/ds/daisi/util/GPSUtils$1;->this$0:Lcom/ds/daisi/util/GPSUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/ds/daisi/util/GPSUtils$1;->this$0:Lcom/ds/daisi/util/GPSUtils;

    invoke-static {v0}, Lcom/ds/daisi/util/GPSUtils;->access$000(Lcom/ds/daisi/util/GPSUtils;)Lcom/ds/daisi/util/GPSUtils$OnLocationResultListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/ds/daisi/util/GPSUtils$1;->this$0:Lcom/ds/daisi/util/GPSUtils;

    invoke-static {v0}, Lcom/ds/daisi/util/GPSUtils;->access$000(Lcom/ds/daisi/util/GPSUtils;)Lcom/ds/daisi/util/GPSUtils$OnLocationResultListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/ds/daisi/util/GPSUtils$OnLocationResultListener;->OnLocationChange(Landroid/location/Location;)V

    :cond_0
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method
