.class public Lmobi/oneway/export/g/l;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/oneway/export/g/l$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lmobi/oneway/export/g/l$a;->a:Lmobi/oneway/export/g/l$a;

    invoke-static {v0}, Lmobi/oneway/export/g/l;->a(Lmobi/oneway/export/g/l$a;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lmobi/oneway/export/g/l$a;)Ljava/lang/String;
    .locals 2

    :try_start_0
    invoke-static {}, Lmobi/oneway/export/a/b;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lmobi/oneway/export/g/l$1;->a:[I

    invoke-virtual {p0}, Lmobi/oneway/export/g/l$a;->ordinal()I

    move-result p0

    aget p0, v1, p0

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :goto_0
    const-string p0, ""

    return-object p0

    :cond_0
    invoke-static {p0}, Lmobi/oneway/export/g/l;->b(Lmobi/oneway/export/g/l$a;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-static {p0}, Lmobi/oneway/export/g/l;->b(Lmobi/oneway/export/g/l$a;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const-string p0, ""

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static b()Ljava/lang/String;
    .locals 1

    sget-object v0, Lmobi/oneway/export/g/l$a;->b:Lmobi/oneway/export/g/l$a;

    invoke-static {v0}, Lmobi/oneway/export/g/l;->a(Lmobi/oneway/export/g/l$a;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static b(Lmobi/oneway/export/g/l$a;)Ljava/lang/String;
    .locals 2

    invoke-static {}, Lmobi/oneway/export/a/b;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lmobi/oneway/export/g/l$1;->a:[I

    invoke-virtual {p0}, Lmobi/oneway/export/g/l$a;->ordinal()I

    move-result p0

    aget p0, v1, p0

    packed-switch p0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    goto :goto_0

    :cond_0
    :goto_1
    const-string p0, ""

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
