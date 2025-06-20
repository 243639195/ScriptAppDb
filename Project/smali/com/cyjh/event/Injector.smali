.class public final Lcom/cyjh/event/Injector;
.super Ljava/lang/Object;
.source "Injector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cyjh/event/Injector$a;,
        Lcom/cyjh/event/Injector$b;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "Injector"

.field private static b:Landroid/app/Instrumentation; = null

.field private static c:Landroid/content/Context; = null

.field private static d:Lcom/cyjh/mobileanjian/ipc/view/ExToast; = null

.field private static e:Lcom/cyjh/mobileanjian/ipc/a; = null

.field private static f:Lcom/cyjh/mobileanjian/ipc/ui/i; = null

.field private static g:Lcom/googlecode/tesseract/android/TessBaseAPI; = null

.field private static h:Z = false

.field private static i:Landroid/os/Handler; = null

.field private static final j:F = 0.0f

.field private static final k:F = -1.5707964f

.field private static final l:F = -3.1415927f

.field private static final m:F = 1.5707964f

.field private static n:Z = false

.field private static o:I = 0x0

.field private static p:Ljava/lang/String; = null

.field private static final q:I = 0x1

.field private static final r:I = 0x2

.field private static final s:Ljava/lang/String; = "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.11 (KHTML, like Gecko) Chrome/23.0.1271.64 Safari/537.11"

.field private static final t:I = 0x5

.field private static final u:I = 0x1

.field private static final v:I = 0x2

.field private static final w:I = 0x3

.field private static x:[Lcom/cyjh/event/Injector$a;

.field private static y:[Landroid/view/MotionEvent$PointerProperties;

.field private static z:[Landroid/view/MotionEvent$PointerCoords;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 175
    new-instance v0, Lcom/cyjh/event/Injector$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/cyjh/event/Injector$1;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/cyjh/event/Injector;->i:Landroid/os/Handler;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static AddContact(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1413
    sget-object v0, Lcom/cyjh/event/Injector;->c:Landroid/content/Context;

    invoke-static {v0, p0, p1, p2}, Lcom/cyjh/mobileanjian/ipc/utils/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public static ClearAllPhotos()V
    .locals 4

    .line 826
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/DCIM/anjian/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 828
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 829
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    .line 831
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 832
    aget-object v3, v1, v2

    .line 833
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 836
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "_data like \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "%\""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 837
    sget-object v1, Lcom/cyjh/event/Injector;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 838
    sget-object v1, Lcom/cyjh/event/Injector;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public static ClearCaches(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public static ClearContacts()V
    .locals 1

    .line 1429
    sget-object v0, Lcom/cyjh/event/Injector;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/cyjh/mobileanjian/ipc/utils/d;->a(Landroid/content/Context;)V

    return-void
.end method

.method public static DeleteContact(Ljava/lang/String;)V
    .locals 1

    .line 1424
    sget-object v0, Lcom/cyjh/event/Injector;->c:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/cyjh/mobileanjian/ipc/utils/d;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static FloatEventThreadExit()V
    .locals 2

    .line 1699
    invoke-static {}, Lcom/cyjh/event/c;->e()V

    const-string v0, "Injector"

    const-string v1, "FloatEventThreadExit: "

    .line 1700
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static FreeupMemory()V
    .locals 1

    .line 1492
    sget-object v0, Lcom/cyjh/event/Injector;->e:Lcom/cyjh/mobileanjian/ipc/a;

    invoke-virtual {v0}, Lcom/cyjh/mobileanjian/ipc/a;->e()V

    return-void
.end method

.method public static GetAndroidVersion()Ljava/lang/String;
    .locals 1

    .line 1781
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    return-object v0
.end method

.method public static GetAppPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1231
    :try_start_0
    sget-object v0, Lcom/cyjh/event/Injector;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 1234
    invoke-static {p0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    const-string p0, ""

    return-object p0
.end method

.method public static GetDeviceID()Ljava/lang/String;
    .locals 3

    .line 24061
    sget-object v0, Lcom/cyjh/mq/a/a;->g:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    .line 25011
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 25012
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, ""

    .line 25013
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    invoke-static {v0}, Lcom/cyjh/mq/d/f;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 1359
    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 25061
    sget-object v0, Lcom/cyjh/mq/a/a;->g:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 1360
    invoke-static {v0}, Lcom/cyjh/mq/d/f;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    return-object v1
.end method

.method public static GetDeviceName()Ljava/lang/String;
    .locals 2

    .line 1543
    :try_start_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1544
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1545
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1549
    :catch_0
    :cond_0
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method public static GetDisplayDpi()I
    .locals 1

    .line 1497
    sget-object v0, Lcom/cyjh/event/Injector;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 1498
    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    return v0
.end method

.method public static GetFloatEvent()[B
    .locals 2

    const-string v0, "Injector"

    const-string v1, "GetFloatEvent: "

    .line 1690
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1691
    invoke-static {}, Lcom/cyjh/event/c;->d()Lcom/google/protobuf/ByteString;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 1694
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public static GetForegroundPackage()Ljava/lang/String;
    .locals 1

    .line 1509
    invoke-static {}, Lcom/cyjh/mq/sdk/MqRunnerLite;->getInstance()Lcom/cyjh/mq/sdk/MqRunnerLite;

    move-result-object v0

    .line 32075
    iget-object v0, v0, Lcom/cyjh/mq/sdk/MqRunnerLite;->e:Lcom/cyjh/mobileanjian/ipc/interfaces/OnSpecialMqCmdCallback;

    if-eqz v0, :cond_0

    .line 1510
    invoke-static {}, Lcom/cyjh/mq/sdk/MqRunnerLite;->getInstance()Lcom/cyjh/mq/sdk/MqRunnerLite;

    move-result-object v0

    .line 33075
    iget-object v0, v0, Lcom/cyjh/mq/sdk/MqRunnerLite;->e:Lcom/cyjh/mobileanjian/ipc/interfaces/OnSpecialMqCmdCallback;

    .line 1510
    invoke-interface {v0}, Lcom/cyjh/mobileanjian/ipc/interfaces/OnSpecialMqCmdCallback;->getForegroundPackage()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public static GetFullUiElement()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public static GetNetType()Ljava/lang/String;
    .locals 1

    .line 911
    sget-object v0, Lcom/cyjh/event/Injector;->e:Lcom/cyjh/mobileanjian/ipc/a;

    invoke-virtual {v0}, Lcom/cyjh/mobileanjian/ipc/a;->i()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static GetRunningApp()Ljava/lang/String;
    .locals 1

    .line 1504
    invoke-static {}, Lcom/cyjh/mq/sdk/MqRunnerLite;->getInstance()Lcom/cyjh/mq/sdk/MqRunnerLite;

    move-result-object v0

    .line 31075
    iget-object v0, v0, Lcom/cyjh/mq/sdk/MqRunnerLite;->e:Lcom/cyjh/mobileanjian/ipc/interfaces/OnSpecialMqCmdCallback;

    .line 1504
    invoke-interface {v0}, Lcom/cyjh/mobileanjian/ipc/interfaces/OnSpecialMqCmdCallback;->getRunningPackages()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static GetScreenRotation()I
    .locals 2

    .line 34056
    sget-object v0, Lcom/cyjh/mq/a/a;->g:Landroid/app/Application;

    const-string v1, "window"

    .line 1652
    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 1653
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    return v0
.end method

.method public static GetSdcardDir()Ljava/lang/String;
    .locals 1

    .line 1366
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static GetTapRotation()F
    .locals 3

    .line 1657
    invoke-static {}, Lcom/cyjh/event/Injector;->GetScreenRotation()I

    move-result v0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1671
    :pswitch_0
    sget-object v0, Lcom/cyjh/event/Injector;->a:Ljava/lang/String;

    const-string v1, "Tap Tap ROTATION_270"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const v1, 0x3fc90fdb

    goto :goto_0

    .line 1667
    :pswitch_1
    sget-object v0, Lcom/cyjh/event/Injector;->a:Ljava/lang/String;

    const-string v1, "Tap Tap ROTATION_180"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const v1, -0x3fb6f025

    goto :goto_0

    .line 1663
    :pswitch_2
    sget-object v0, Lcom/cyjh/event/Injector;->a:Ljava/lang/String;

    const-string v1, "Tap Tap ROTATION_90"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const v1, -0x4036f025

    goto :goto_0

    .line 1659
    :pswitch_3
    sget-object v0, Lcom/cyjh/event/Injector;->a:Ljava/lang/String;

    const-string v2, "Tap Tap ROTATION_0"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static GetUiElement()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public static GetUiEvent()[B
    .locals 1

    .line 1685
    invoke-static {}, Lcom/cyjh/event/c;->b()[B

    move-result-object v0

    return-object v0
.end method

.method public static GetVPNStatus()Z
    .locals 6

    .line 1273
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/NetworkInterface;

    .line 1274
    invoke-virtual {v1}, Ljava/net/NetworkInterface;->isUp()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1275
    invoke-virtual {v1}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "GetVPNStatus"

    .line 1276
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "GetVPNStatus name:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "tun"

    .line 1277
    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "ppp"

    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "pptp"

    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    :cond_1
    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    .line 1283
    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public static GetVersion()I
    .locals 1

    const/4 v0, 0x6

    return v0
.end method

.method public static GetWebViewElement(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public static ImageQRDeCode(Ljava/lang/String;)Ljava/lang/String;
    .locals 12

    .line 645
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 646
    sget-object v1, Lcom/google/a/e;->e:Lcom/google/a/e;

    const-string v2, "utf-8"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    .line 649
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 650
    :try_start_1
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 656
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 658
    invoke-static {v2}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    :goto_0
    move-object v2, p0

    goto :goto_3

    :catch_1
    move-exception p0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto/16 :goto_5

    :catch_2
    move-exception p0

    move-object v2, v1

    .line 652
    :goto_1
    :try_start_3
    invoke-static {p0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v2, :cond_0

    .line 656
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_2

    :catch_3
    move-exception p0

    .line 658
    invoke-static {p0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    :cond_0
    :goto_2
    move-object v2, v1

    .line 664
    :goto_3
    :try_start_5
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p0

    .line 665
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    mul-int v3, p0, v10

    .line 666
    new-array v11, v3, [I

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, v11

    move v5, p0

    move v8, p0

    move v9, v10

    .line 667
    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 668
    new-instance v2, Lcom/google/a/o;

    invoke-direct {v2, p0, v10, v11}, Lcom/google/a/o;-><init>(II[I)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 669
    :try_start_6
    new-instance p0, Lcom/google/a/k;

    invoke-direct {p0}, Lcom/google/a/k;-><init>()V

    new-instance v3, Lcom/google/a/c;

    new-instance v4, Lcom/google/a/c/j;

    invoke-direct {v4, v2}, Lcom/google/a/c/j;-><init>(Lcom/google/a/j;)V

    invoke-direct {v3, v4}, Lcom/google/a/c;-><init>(Lcom/google/a/b;)V

    invoke-virtual {p0, v3, v0}, Lcom/google/a/k;->a(Lcom/google/a/c;Ljava/util/Map;)Lcom/google/a/r;

    move-result-object p0

    const-string v3, "RootIpcFramework"

    .line 670
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "syncDecodeQRCode: result is:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21072
    iget-object v5, p0, Lcom/google/a/r;->a:Ljava/lang/String;

    .line 670
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 22072
    iget-object p0, p0, Lcom/google/a/r;->a:Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    return-object p0

    :catch_4
    move-exception p0

    goto :goto_4

    :catch_5
    move-exception p0

    move-object v2, v1

    .line 674
    :goto_4
    invoke-static {p0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    if-eqz v2, :cond_1

    .line 677
    :try_start_7
    new-instance p0, Lcom/google/a/k;

    invoke-direct {p0}, Lcom/google/a/k;-><init>()V

    new-instance v3, Lcom/google/a/c;

    new-instance v4, Lcom/google/a/c/h;

    invoke-direct {v4, v2}, Lcom/google/a/c/h;-><init>(Lcom/google/a/j;)V

    invoke-direct {v3, v4}, Lcom/google/a/c;-><init>(Lcom/google/a/b;)V

    invoke-virtual {p0, v3, v0}, Lcom/google/a/k;->a(Lcom/google/a/c;Ljava/util/Map;)Lcom/google/a/r;

    move-result-object p0

    .line 23072
    iget-object p0, p0, Lcom/google/a/r;->a:Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_6

    return-object p0

    :catch_6
    move-exception p0

    .line 680
    invoke-static {p0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    :cond_1
    return-object v1

    :catchall_1
    move-exception p0

    move-object v1, v2

    :goto_5
    if-eqz v1, :cond_2

    .line 656
    :try_start_8
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    goto :goto_6

    :catch_7
    move-exception v0

    .line 658
    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 661
    :cond_2
    :goto_6
    throw p0
.end method

.method public static ImageQREnCode(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6

    .line 587
    new-instance v0, Lcom/google/a/i/b;

    invoke-direct {v0}, Lcom/google/a/i/b;-><init>()V

    .line 588
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 589
    sget-object p2, Lcom/google/a/g;->b:Lcom/google/a/g;

    const-string v1, "utf-8"

    invoke-virtual {v5, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 591
    sget-object p2, Lcom/google/a/g;->a:Lcom/google/a/g;

    sget-object v1, Lcom/google/a/i/a/f;->b:Lcom/google/a/i/a/f;

    invoke-virtual {v5, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 593
    sget-object p2, Lcom/google/a/g;->f:Lcom/google/a/g;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 596
    :try_start_0
    sget-object v2, Lcom/google/a/a;->l:Lcom/google/a/a;

    const/16 v3, 0x190

    const/16 v4, 0x190

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/a/i/b;->a(Ljava/lang/String;Lcom/google/a/a;IILjava/util/Map;)Lcom/google/a/c/b;

    move-result-object p1
    :try_end_0
    .catch Lcom/google/a/w; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 598
    invoke-static {p1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    :goto_0
    const p2, 0x27100

    .line 600
    new-array p2, p2, [I

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_1
    const/16 v2, 0x190

    if-ge v1, v2, :cond_2

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v2, :cond_1

    .line 604
    invoke-virtual {p1, v1, v3}, Lcom/google/a/c/b;->a(II)Z

    move-result v4

    if-eqz v4, :cond_0

    mul-int/lit16 v4, v1, 0x190

    add-int/2addr v4, v3

    const/high16 v5, -0x1000000

    .line 605
    aput v5, p2, v4

    goto :goto_3

    :cond_0
    mul-int/lit16 v4, v1, 0x190

    add-int/2addr v4, v3

    const/4 v5, -0x1

    .line 607
    aput v5, p2, v4

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 612
    :cond_2
    sget-object p1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, v2, v2, p1}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_3

    return-void

    .line 619
    :cond_3
    :try_start_1
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 620
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_4

    .line 621
    invoke-virtual {p2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 622
    invoke-virtual {p2}, Ljava/io/File;->createNewFile()Z

    .line 624
    :cond_4
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const-string p2, ".png"

    .line 625
    invoke-virtual {p0, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    const/16 p2, 0x64

    if-eqz p0, :cond_5

    .line 626
    sget-object p0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p1, p0, p2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    goto :goto_4

    .line 628
    :cond_5
    sget-object p0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p1, p0, p2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 629
    :goto_4
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    .line 630
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception p0

    const-string p1, "RootIpcFramework"

    .line 632
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "ImageQREnCode IOException"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static InjectWebViewElement(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public static InsertImageToGallery(Ljava/lang/String;I)V
    .locals 7

    .line 689
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 691
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 p0, 0x1

    if-ne p1, p0, :cond_3

    .line 697
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/DCIM/anjian/"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 698
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 699
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 701
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 704
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 706
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 707
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 709
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 712
    :cond_2
    :try_start_0
    invoke-static {v0, v1}, Lorg/apache/commons/io/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 716
    invoke-static {p1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    :goto_0
    move-object v0, v1

    .line 724
    :cond_3
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-ge p1, v1, :cond_4

    .line 726
    :try_start_1
    sget-object p1, Lcom/cyjh/event/Injector;->c:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 727
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    .line 726
    invoke-static {p1, v1, v4, v3}, Landroid/provider/MediaStore$Images$Media;->insertImage(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception p1

    .line 729
    invoke-static {p1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_3

    .line 732
    :cond_4
    new-instance p1, Landroid/content/ContentValues;

    invoke-direct {p1}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "description"

    const-string v4, "This is an qr image"

    .line 733
    invoke-virtual {p1, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "_display_name"

    .line 734
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "mime_type"

    const-string v4, "image/jpeg"

    .line 735
    invoke-virtual {p1, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "title"

    const-string v4, "Image.jpg"

    .line 736
    invoke-virtual {p1, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "relative_path"

    .line 737
    sget-object v4, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    invoke-virtual {p1, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 739
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 740
    sget-object v4, Lcom/cyjh/event/Injector;->c:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 741
    invoke-virtual {v4, v1, p1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p1

    .line 745
    :try_start_2
    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    if-eqz p1, :cond_5

    .line 747
    invoke-virtual {v4, p1}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object p1

    goto :goto_1

    :cond_5
    move-object p1, v3

    :goto_1
    if-eqz p1, :cond_7

    const/16 v4, 0x1000

    .line 750
    new-array v4, v4, [B

    .line 752
    :goto_2
    invoke-virtual {v1, v4}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_6

    .line 753
    invoke-virtual {p1, v4, v2, v5}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_2

    .line 755
    :cond_6
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p0

    goto :goto_4

    :catch_2
    move-exception p1

    .line 758
    :try_start_3
    invoke-static {p1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 765
    :cond_7
    :goto_3
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt p1, v1, :cond_8

    .line 766
    new-array p0, p0, [Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p0, v2

    .line 767
    sget-object p1, Lcom/cyjh/event/Injector;->c:Landroid/content/Context;

    invoke-static {p1, p0, v3, v3}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    return-void

    .line 772
    :cond_8
    new-instance p0, Landroid/content/Intent;

    const-string p1, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {p0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 773
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 775
    sget-object p1, Lcom/cyjh/event/Injector;->c:Landroid/content/Context;

    invoke-virtual {p1, p0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void

    .line 761
    :goto_4
    throw p0
.end method

.method public static InsertVideoToGallery(Ljava/lang/String;)V
    .locals 6

    .line 781
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 782
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 786
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/DCIM/anjian/"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 787
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 788
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 790
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 793
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 795
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 796
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 798
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 801
    :cond_2
    :try_start_0
    invoke-static {v0, v1}, Lorg/apache/commons/io/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 805
    invoke-static {p0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 809
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 810
    sget-object p0, Lcom/cyjh/event/Injector;->c:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 811
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "title"

    .line 812
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "_display_name"

    .line 813
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "mime_type"

    const-string v5, "video/3gp"

    .line 814
    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "datetaken"

    .line 815
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v4, "date_modified"

    .line 816
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v4, "date_added"

    .line 817
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "_data"

    .line 818
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "_size"

    .line 819
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 820
    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p0

    .line 821
    sget-object v0, Lcom/cyjh/event/Injector;->c:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v1, v2, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static Is64Bit()Z
    .locals 5

    const/4 v0, 0x0

    .line 1309
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-ge v1, v2, :cond_0

    return v0

    :cond_0
    const-string v1, "dalvik.system.VMRuntime"

    .line 1314
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    if-nez v1, :cond_1

    return v0

    :cond_1
    const-string v2, "getRuntime"

    .line 1318
    new-array v3, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    if-nez v2, :cond_2

    return v0

    :cond_2
    const/4 v3, 0x0

    .line 1322
    new-array v4, v0, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_3

    return v0

    :cond_3
    const-string v3, "is64Bit"

    .line 1326
    new-array v4, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    if-nez v1, :cond_4

    return v0

    .line 1330
    :cond_4
    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1331
    instance-of v2, v1, Ljava/lang/Boolean;

    if-eqz v2, :cond_5

    .line 1332
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    .line 1335
    invoke-static {v1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    :cond_5
    return v0
.end method

.method public static IsRoot()Z
    .locals 7

    const-string v0, "PATH"

    .line 1294
    invoke-static {v0}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1295
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v1, ":"

    .line 1296
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1297
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 1299
    new-instance v5, Ljava/io/File;

    const-string v6, "su"

    invoke-direct {v5, v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1300
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v5}, Ljava/io/File;->canExecute()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public static KeepScreen(Z)V
    .locals 1

    if-eqz p0, :cond_0

    const/16 p0, 0xa

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 1401
    :goto_0
    sget-object v0, Lcom/cyjh/event/Injector;->e:Lcom/cyjh/mobileanjian/ipc/a;

    invoke-virtual {v0, p0}, Lcom/cyjh/mobileanjian/ipc/a;->b(I)V

    return-void
.end method

.method public static KeyDown(I)V
    .locals 3

    .line 396
    :try_start_0
    invoke-static {}, Lcom/cyjh/event/Injector;->e()Landroid/app/Instrumentation;

    move-result-object v0

    new-instance v1, Landroid/view/KeyEvent;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/app/Instrumentation;->sendKeySync(Landroid/view/KeyEvent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 398
    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    return-void
.end method

.method public static KeyPress(I)V
    .locals 1

    .line 345
    invoke-static {}, Lcom/cyjh/mq/sdk/MqRunnerLite;->getInstance()Lcom/cyjh/mq/sdk/MqRunnerLite;

    move-result-object v0

    .line 12075
    iget-object v0, v0, Lcom/cyjh/mq/sdk/MqRunnerLite;->e:Lcom/cyjh/mobileanjian/ipc/interfaces/OnSpecialMqCmdCallback;

    if-eqz v0, :cond_0

    .line 346
    invoke-static {}, Lcom/cyjh/mq/sdk/MqRunnerLite;->getInstance()Lcom/cyjh/mq/sdk/MqRunnerLite;

    move-result-object v0

    .line 13075
    iget-object v0, v0, Lcom/cyjh/mq/sdk/MqRunnerLite;->e:Lcom/cyjh/mobileanjian/ipc/interfaces/OnSpecialMqCmdCallback;

    .line 346
    invoke-interface {v0, p0}, Lcom/cyjh/mobileanjian/ipc/interfaces/OnSpecialMqCmdCallback;->keyPress(I)V

    :cond_0
    return-void
.end method

.method public static KeyUp(I)V
    .locals 3

    .line 409
    :try_start_0
    invoke-static {}, Lcom/cyjh/event/Injector;->e()Landroid/app/Instrumentation;

    move-result-object v0

    new-instance v1, Landroid/view/KeyEvent;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p0}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/app/Instrumentation;->sendKeySync(Landroid/view/KeyEvent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 411
    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    return-void
.end method

.method public static KillApp(Ljava/lang/String;)V
    .locals 1

    .line 1447
    invoke-static {}, Lcom/cyjh/mq/sdk/MqRunnerLite;->getInstance()Lcom/cyjh/mq/sdk/MqRunnerLite;

    move-result-object v0

    .line 27075
    iget-object v0, v0, Lcom/cyjh/mq/sdk/MqRunnerLite;->e:Lcom/cyjh/mobileanjian/ipc/interfaces/OnSpecialMqCmdCallback;

    if-eqz v0, :cond_0

    .line 1448
    invoke-static {}, Lcom/cyjh/mq/sdk/MqRunnerLite;->getInstance()Lcom/cyjh/mq/sdk/MqRunnerLite;

    move-result-object v0

    .line 28075
    iget-object v0, v0, Lcom/cyjh/mq/sdk/MqRunnerLite;->e:Lcom/cyjh/mobileanjian/ipc/interfaces/OnSpecialMqCmdCallback;

    .line 1448
    invoke-interface {v0, p0}, Lcom/cyjh/mobileanjian/ipc/interfaces/OnSpecialMqCmdCallback;->killApp(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static LockScreen()V
    .locals 1

    .line 1527
    sget-object v0, Lcom/cyjh/event/Injector;->e:Lcom/cyjh/mobileanjian/ipc/a;

    invoke-virtual {v0}, Lcom/cyjh/mobileanjian/ipc/a;->g()V

    return-void
.end method

.method public static MoveZoomIn(FFFFI)V
    .locals 11

    const-string v0, "RootIpcFramework"

    const-string v1, "MoveZoomIn"

    .line 1097
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    add-float v0, p0, p2

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    add-float v2, p1, p3

    div-float/2addr v2, v1

    const/16 v1, 0x278b

    .line 1116
    invoke-static {v1, v0, v2}, Lcom/cyjh/event/Injector;->TouchDown(IFF)V

    const/16 v3, 0x278c

    .line 1117
    invoke-static {v3, v0, v2}, Lcom/cyjh/event/Injector;->TouchDown(IFF)V

    const/16 v4, 0xb

    .line 1121
    div-int/2addr p4, v4

    const/16 v5, 0xa

    if-ge p4, v5, :cond_0

    const/16 p4, 0xa

    :cond_0
    sub-float/2addr p0, v0

    const/high16 v5, 0x41300000    # 11.0f

    div-float/2addr p0, v5

    sub-float/2addr p1, v2

    div-float/2addr p1, v5

    sub-float/2addr p2, v0

    div-float/2addr p2, v5

    sub-float/2addr p3, v2

    div-float/2addr p3, v5

    const-wide/16 v5, 0x14

    .line 1135
    :try_start_0
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v5

    .line 1139
    invoke-static {v5}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    :goto_0
    const/4 v5, 0x0

    move v7, v0

    move v6, v2

    move v8, v6

    move v2, v7

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v4, :cond_1

    add-float/2addr v2, p0

    add-float/2addr v6, p1

    add-float/2addr v7, p2

    add-float/2addr v8, p3

    .line 1149
    invoke-static {v1, v2, v6, v5}, Lcom/cyjh/event/Injector;->TouchMoveEvent(IFFI)V

    .line 1150
    invoke-static {v3, v7, v8, v5}, Lcom/cyjh/event/Injector;->TouchMoveEvent(IFFI)V

    int-to-long v9, p4

    .line 1152
    :try_start_1
    invoke-static {v9, v10}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v9

    .line 1156
    invoke-static {v9}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1159
    :cond_1
    invoke-static {v1}, Lcom/cyjh/event/Injector;->TouchUp(I)V

    .line 1160
    invoke-static {v3}, Lcom/cyjh/event/Injector;->TouchUp(I)V

    return-void
.end method

.method public static MoveZoomOut(FFFFI)V
    .locals 11

    const-string v0, "RootIpcFramework"

    const-string v1, "MoveZoomOut"

    .line 1164
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    add-float v0, p0, p2

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    add-float v2, p1, p3

    div-float/2addr v2, v1

    const/16 v1, 0x278d

    .line 1183
    invoke-static {v1, p0, p1}, Lcom/cyjh/event/Injector;->TouchDown(IFF)V

    const/16 v3, 0x278e

    .line 1184
    invoke-static {v3, p2, p3}, Lcom/cyjh/event/Injector;->TouchDown(IFF)V

    const/16 v4, 0xb

    .line 1188
    div-int/2addr p4, v4

    const/16 v5, 0xa

    if-ge p4, v5, :cond_0

    const/16 p4, 0xa

    :cond_0
    sub-float v5, v0, p0

    const/high16 v6, 0x41300000    # 11.0f

    div-float/2addr v5, v6

    sub-float v7, v2, p1

    div-float/2addr v7, v6

    sub-float/2addr v0, p2

    div-float/2addr v0, v6

    sub-float/2addr v2, p3

    div-float/2addr v2, v6

    const-wide/16 v8, 0x14

    .line 1202
    :try_start_0
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v6

    .line 1206
    invoke-static {v6}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    :goto_0
    const/4 v6, 0x0

    move v8, p3

    move p3, p2

    move p2, p1

    move p1, p0

    const/4 p0, 0x0

    :goto_1
    if-ge p0, v4, :cond_1

    add-float/2addr p1, v5

    add-float/2addr p2, v7

    add-float/2addr p3, v0

    add-float/2addr v8, v2

    .line 1216
    invoke-static {v1, p1, p2, v6}, Lcom/cyjh/event/Injector;->TouchMoveEvent(IFFI)V

    .line 1217
    invoke-static {v3, p3, v8, v6}, Lcom/cyjh/event/Injector;->TouchMoveEvent(IFFI)V

    int-to-long v9, p4

    .line 1219
    :try_start_1
    invoke-static {v9, v10}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v9

    .line 1223
    invoke-static {v9}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    :goto_2
    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    .line 1226
    :cond_1
    invoke-static {v1}, Lcom/cyjh/event/Injector;->TouchUp(I)V

    .line 1227
    invoke-static {v3}, Lcom/cyjh/event/Injector;->TouchUp(I)V

    return-void
.end method

.method public static NotifyApp(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public static OcrText([BIII)Ljava/lang/String;
    .locals 8

    const-string v0, "TAG"

    .line 1246
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "GetOrcText: width="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " hight="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1248
    sget-boolean v0, Lcom/cyjh/event/Injector;->h:Z

    if-nez v0, :cond_0

    .line 1249
    invoke-static {}, Lcom/cyjh/event/Injector;->initTessBass()Z

    move-result v0

    sput-boolean v0, Lcom/cyjh/event/Injector;->h:Z

    .line 1250
    :cond_0
    sget-boolean v0, Lcom/cyjh/event/Injector;->h:Z

    if-nez v0, :cond_1

    const-string p0, ""

    return-object p0

    :cond_1
    const/4 v0, 0x4

    .line 1253
    div-int/2addr p1, v0

    new-array v1, p1, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, p1, :cond_3

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v0, :cond_2

    rsub-int/lit8 v5, v4, 0x3

    mul-int/lit8 v5, v5, 0x8

    .line 1258
    aget v6, v1, v3

    mul-int/lit8 v7, v3, 0x4

    add-int/2addr v7, v4

    aget-byte v7, p0, v7

    and-int/lit16 v7, v7, 0xff

    shl-int v5, v7, v5

    add-int/2addr v6, v5

    aput v6, v1, v3

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1262
    :cond_3
    sget-object p0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, p2, p3, p0}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 1263
    sget-object p1, Lcom/cyjh/event/Injector;->g:Lcom/googlecode/tesseract/android/TessBaseAPI;

    invoke-virtual {p1, p0}, Lcom/googlecode/tesseract/android/TessBaseAPI;->a(Landroid/graphics/Bitmap;)V

    .line 1265
    sget-object p0, Lcom/cyjh/event/Injector;->g:Lcom/googlecode/tesseract/android/TessBaseAPI;

    invoke-virtual {p0}, Lcom/googlecode/tesseract/android/TessBaseAPI;->a()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static OnElfCallback(ILjava/lang/String;)V
    .locals 1

    .line 1764
    new-instance v0, Lcom/cyjh/event/b;

    invoke-direct {v0}, Lcom/cyjh/event/b;-><init>()V

    .line 1765
    iput p0, v0, Lcom/cyjh/event/b;->a:I

    .line 1766
    iput-object p1, v0, Lcom/cyjh/event/b;->d:Ljava/lang/String;

    const/16 p0, 0x8

    .line 1767
    invoke-static {p0, v0}, Lcom/cyjh/event/Injector;->a(ILcom/cyjh/event/b;)V

    return-void
.end method

.method public static OnPause()V
    .locals 2

    .line 1516
    sget-object v0, Lcom/cyjh/event/Injector;->i:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public static OnResponse(ILjava/lang/String;)V
    .locals 1

    .line 1751
    new-instance v0, Lcom/cyjh/event/b;

    invoke-direct {v0}, Lcom/cyjh/event/b;-><init>()V

    .line 1752
    iput p0, v0, Lcom/cyjh/event/b;->a:I

    .line 1753
    iput-object p1, v0, Lcom/cyjh/event/b;->d:Ljava/lang/String;

    const/16 p0, 0x8

    .line 1754
    invoke-static {p0, v0}, Lcom/cyjh/event/Injector;->a(ILcom/cyjh/event/b;)V

    return-void
.end method

.method public static OnResume()V
    .locals 2

    .line 1520
    sget-object v0, Lcom/cyjh/event/Injector;->i:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public static PlaySound(Ljava/lang/String;)V
    .locals 0

    .line 1476
    invoke-static {p0}, Lcom/cyjh/mobileanjian/ipc/a;->c(Ljava/lang/String;)V

    return-void
.end method

.method public static RandomTap(FFILjava/lang/String;)V
    .locals 25

    move/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    .line 1023
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    .line 1025
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "RandomTap\uff1ax="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, ",y = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, ",random = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1027
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    int-to-double v6, v3

    mul-double v4, v4, v6

    div-int/lit8 v8, v3, 0x2

    int-to-double v8, v8

    sub-double/2addr v4, v8

    double-to-int v4, v4

    int-to-float v4, v4

    add-float v15, v1, v4

    .line 1029
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    mul-double v4, v4, v6

    div-int/lit8 v1, v3, 0x2

    int-to-double v6, v1

    sub-double/2addr v4, v6

    double-to-int v1, v4

    int-to-float v1, v1

    add-float v14, v2, v1

    .line 1032
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "RandomTap\uff1arealX="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ",realY = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 1034
    new-instance v13, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v13}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    .line 1035
    iput v15, v13, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 1036
    iput v14, v13, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 1037
    invoke-static {}, Lcom/cyjh/event/Injector;->GetTapRotation()F

    move-result v1

    iput v1, v13, Landroid/view/MotionEvent$PointerCoords;->orientation:F

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v12, 0x1

    .line 1039
    new-array v7, v12, [I

    const/16 v18, 0x0

    aput v18, v7, v18

    new-array v8, v12, [Landroid/view/MotionEvent$PointerCoords;

    aput-object v13, v8, v18

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-wide/from16 v1, v16

    move-wide/from16 v3, v16

    move/from16 v12, v19

    move-object/from16 v19, v13

    move/from16 v13, v20

    move/from16 v23, v14

    move/from16 v14, v21

    move/from16 v24, v15

    move/from16 v15, v22

    invoke-static/range {v1 .. v15}, Landroid/view/MotionEvent;->obtain(JJII[I[Landroid/view/MotionEvent$PointerCoords;IFFIIII)Landroid/view/MotionEvent;

    move-result-object v1

    .line 1042
    invoke-static {}, Lcom/cyjh/event/Injector;->e()Landroid/app/Instrumentation;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/Instrumentation;->sendPointerSync(Landroid/view/MotionEvent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    const-wide/16 v1, 0x32

    .line 1044
    :try_start_1
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :catch_0
    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v1, 0x1

    .line 1047
    :try_start_2
    new-array v7, v1, [I

    aput v18, v7, v18

    new-array v8, v1, [Landroid/view/MotionEvent$PointerCoords;

    aput-object v19, v8, v18

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-wide/from16 v1, v16

    move-wide/from16 v3, v16

    invoke-static/range {v1 .. v15}, Landroid/view/MotionEvent;->obtain(JJII[I[Landroid/view/MotionEvent$PointerCoords;IFFIIII)Landroid/view/MotionEvent;

    move-result-object v1

    .line 1050
    invoke-static {}, Lcom/cyjh/event/Injector;->e()Landroid/app/Instrumentation;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/Instrumentation;->sendPointerSync(Landroid/view/MotionEvent;)V

    .line 1053
    new-instance v1, Lcom/cyjh/mobileanjian/ipc/view/b;

    sget-object v2, Lcom/cyjh/event/Injector;->c:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/cyjh/mobileanjian/ipc/view/b;-><init>(Landroid/content/Context;)V

    move/from16 v2, v24

    float-to-int v2, v2

    move/from16 v3, v23

    float-to-int v3, v3

    move-object/from16 v4, p3

    .line 1054
    invoke-virtual {v1, v2, v3, v4}, Lcom/cyjh/mobileanjian/ipc/view/b;->a(IILjava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    return-void

    :catch_1
    move-exception v0

    move-object v1, v0

    .line 1057
    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    return-void
.end method

.method public static RandomsTap(FFILjava/lang/String;)V
    .locals 18

    move/from16 v6, p0

    move/from16 v7, p1

    move/from16 v1, p2

    .line 1064
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "RandomsTap\uff1ax="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ",y = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ",random = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1065
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    int-to-double v4, v1

    mul-double v2, v2, v4

    div-int/lit8 v1, v1, 0x2

    int-to-double v8, v1

    sub-double/2addr v2, v8

    double-to-int v1, v2

    int-to-float v1, v1

    add-float v15, v6, v1

    .line 1067
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    mul-double v1, v1, v4

    sub-double/2addr v1, v8

    double-to-int v1, v1

    int-to-float v1, v1

    add-float v9, v7, v1

    .line 1070
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "RandomTap\uff1ax2="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ",y2 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 1071
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const/4 v5, 0x0

    const/4 v8, 0x0

    move-wide v1, v3

    .line 1072
    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v1

    .line 1073
    invoke-static {}, Lcom/cyjh/event/Injector;->e()Landroid/app/Instrumentation;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/Instrumentation;->sendPointerSync(Landroid/view/MotionEvent;)V

    .line 1076
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v14, 0x2

    const/16 v17, 0x0

    move-wide v10, v12

    move v1, v15

    move/from16 v16, v9

    .line 1077
    :try_start_1
    invoke-static/range {v10 .. v17}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v2

    .line 1078
    invoke-static {}, Lcom/cyjh/event/Injector;->e()Landroid/app/Instrumentation;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/Instrumentation;->sendPointerSync(Landroid/view/MotionEvent;)V

    const-wide/16 v2, 0x14

    .line 1079
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    move v1, v15

    :goto_0
    move-object v2, v0

    .line 1083
    invoke-static {v2}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 1085
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    const/4 v14, 0x1

    const/16 v17, 0x0

    move-wide v10, v12

    move v15, v1

    move/from16 v16, v9

    .line 1086
    invoke-static/range {v10 .. v17}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v2

    .line 1087
    invoke-static {}, Lcom/cyjh/event/Injector;->e()Landroid/app/Instrumentation;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/Instrumentation;->sendPointerSync(Landroid/view/MotionEvent;)V

    .line 1089
    new-instance v2, Lcom/cyjh/mobileanjian/ipc/view/b;

    sget-object v3, Lcom/cyjh/event/Injector;->c:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/cyjh/mobileanjian/ipc/view/b;-><init>(Landroid/content/Context;)V

    float-to-int v1, v1

    float-to-int v3, v9

    move-object/from16 v4, p3

    .line 1090
    invoke-virtual {v2, v1, v3, v4}, Lcom/cyjh/mobileanjian/ipc/view/b;->a(IILjava/lang/String;)V

    return-void
.end method

.method public static RunApp(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1437
    invoke-static {}, Lcom/cyjh/mq/sdk/MqRunnerLite;->getInstance()Lcom/cyjh/mq/sdk/MqRunnerLite;

    move-result-object p1

    .line 25075
    iget-object p1, p1, Lcom/cyjh/mq/sdk/MqRunnerLite;->e:Lcom/cyjh/mobileanjian/ipc/interfaces/OnSpecialMqCmdCallback;

    if-eqz p1, :cond_0

    .line 1438
    invoke-static {}, Lcom/cyjh/mq/sdk/MqRunnerLite;->getInstance()Lcom/cyjh/mq/sdk/MqRunnerLite;

    move-result-object p1

    .line 26075
    iget-object p1, p1, Lcom/cyjh/mq/sdk/MqRunnerLite;->e:Lcom/cyjh/mobileanjian/ipc/interfaces/OnSpecialMqCmdCallback;

    .line 1438
    invoke-interface {p1, p0}, Lcom/cyjh/mobileanjian/ipc/interfaces/OnSpecialMqCmdCallback;->launchApp(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static SaveSnapShot([IIIILjava/lang/String;I)V
    .locals 0

    .line 845
    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p0, p2, p3, p1}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    .line 852
    :cond_0
    :try_start_0
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 853
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p2

    if-nez p2, :cond_1

    .line 854
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p2

    invoke-virtual {p2}, Ljava/io/File;->mkdirs()Z

    .line 855
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    .line 857
    :cond_1
    new-instance p2, Ljava/io/FileOutputStream;

    invoke-direct {p2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 859
    sget-object p1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p0, p1, p5, p2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 861
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->flush()V

    .line 862
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "RootIpcFramework"

    .line 864
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "SaveSnapShot IOException"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static SendSimpleEmail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 1613
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 1616
    :cond_0
    new-instance v0, Lorg/apache/commons/mail/SimpleEmail;

    invoke-direct {v0}, Lorg/apache/commons/mail/SimpleEmail;-><init>()V

    .line 1617
    invoke-virtual {v0, p0}, Lorg/apache/commons/mail/Email;->setHostName(Ljava/lang/String;)V

    const/16 p0, 0x1d1

    .line 1618
    invoke-virtual {v0, p0}, Lorg/apache/commons/mail/Email;->setSmtpPort(I)V

    .line 1619
    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/mail/Email;->setAuthentication(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    .line 1620
    invoke-virtual {v0, p0}, Lorg/apache/commons/mail/Email;->setSSLOnConnect(Z)Lorg/apache/commons/mail/Email;

    .line 1622
    :try_start_0
    invoke-virtual {v0, p1}, Lorg/apache/commons/mail/Email;->setFrom(Ljava/lang/String;)Lorg/apache/commons/mail/Email;

    .line 1623
    invoke-virtual {v0, p3}, Lorg/apache/commons/mail/Email;->setSubject(Ljava/lang/String;)Lorg/apache/commons/mail/Email;

    .line 1624
    invoke-virtual {v0, p4}, Lorg/apache/commons/mail/Email;->setMsg(Ljava/lang/String;)Lorg/apache/commons/mail/Email;

    const-string p1, ";"

    .line 1626
    invoke-virtual {p5, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 1627
    array-length p2, p1

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p2, :cond_1

    aget-object p4, p1, p3

    .line 1628
    invoke-virtual {p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v0, p4}, Lorg/apache/commons/mail/Email;->addTo(Ljava/lang/String;)Lorg/apache/commons/mail/Email;

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 1630
    :cond_1
    invoke-virtual {v0}, Lorg/apache/commons/mail/Email;->send()Ljava/lang/String;
    :try_end_0
    .catch Lorg/apache/commons/mail/EmailException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 1632
    invoke-static {p0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    return v1

    :cond_2
    :goto_1
    return v1
.end method

.method public static SendUiRequest([B)[B
    .locals 2

    .line 1679
    sget-object v0, Lcom/cyjh/event/Injector;->i:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 1680
    invoke-static {}, Lcom/cyjh/event/c;->a()[B

    move-result-object p0

    return-object p0
.end method

.method public static SetAirplaneMode(Z)I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public static SetAutoLockTime(I)V
    .locals 1

    .line 1537
    sget-object v0, Lcom/cyjh/event/Injector;->e:Lcom/cyjh/mobileanjian/ipc/a;

    invoke-virtual {v0, p0}, Lcom/cyjh/mobileanjian/ipc/a;->c(I)V

    return-void
.end method

.method public static SetBTEnable(Z)V
    .locals 1

    .line 898
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz p0, :cond_0

    .line 900
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    return-void

    .line 902
    :cond_0
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    return-void
.end method

.method public static SetBacklightLevel(I)V
    .locals 1

    const/16 v0, 0x64

    if-le p0, v0, :cond_0

    const/16 p0, 0x64

    .line 1555
    :cond_0
    sget-object v0, Lcom/cyjh/event/Injector;->e:Lcom/cyjh/mobileanjian/ipc/a;

    invoke-virtual {v0, p0}, Lcom/cyjh/mobileanjian/ipc/a;->d(I)V

    return-void
.end method

.method public static SetCellularDataEnable(Z)V
    .locals 6

    .line 872
    sget-object v0, Lcom/cyjh/event/Injector;->c:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 873
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x1

    .line 874
    new-array v3, v2, [Ljava/lang/Class;

    .line 875
    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    :try_start_0
    const-string v4, "setMobileDataEnabled"

    .line 879
    invoke-virtual {v1, v4, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 880
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    aput-object p0, v2, v5

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 883
    invoke-static {p0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static SetControlBarPos(FII)V
    .locals 1

    .line 1346
    new-instance v0, Lcom/cyjh/event/b;

    invoke-direct {v0}, Lcom/cyjh/event/b;-><init>()V

    .line 1347
    iput p0, v0, Lcom/cyjh/event/b;->e:F

    .line 1348
    iput p1, v0, Lcom/cyjh/event/b;->a:I

    .line 1349
    iput p2, v0, Lcom/cyjh/event/b;->b:I

    const/4 p0, 0x4

    .line 1350
    invoke-static {p0, v0}, Lcom/cyjh/event/Injector;->a(ILcom/cyjh/event/b;)V

    return-void
.end method

.method public static SetRotationLockEnable(Z)V
    .locals 2

    xor-int/lit8 p0, p0, 0x1

    .line 907
    sget-object v0, Lcom/cyjh/event/Injector;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accelerometer_rotation"

    invoke-static {v0, v1, p0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public static SetVPNEnable(Z)V
    .locals 0

    .line 1289
    sget-object p0, Lcom/cyjh/event/Injector;->e:Lcom/cyjh/mobileanjian/ipc/a;

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/a;->k()V

    return-void
.end method

.method public static SetVolumeLevel(I)V
    .locals 1

    const/16 v0, 0x64

    if-le p0, v0, :cond_0

    const/16 p0, 0x64

    .line 1561
    :cond_0
    sget-object v0, Lcom/cyjh/event/Injector;->e:Lcom/cyjh/mobileanjian/ipc/a;

    invoke-virtual {v0, p0}, Lcom/cyjh/mobileanjian/ipc/a;->e(I)V

    return-void
.end method

.method public static SetWifiEnable(Z)V
    .locals 2

    .line 892
    sget-object v0, Lcom/cyjh/event/Injector;->c:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 893
    invoke-virtual {v0, p0}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    return-void
.end method

.method public static ShowInputDialog(Ljava/lang/String;II)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 1595
    sput-boolean v0, Lcom/cyjh/event/Injector;->n:Z

    .line 1596
    new-instance v0, Lcom/cyjh/event/b;

    invoke-direct {v0}, Lcom/cyjh/event/b;-><init>()V

    .line 1597
    iput p1, v0, Lcom/cyjh/event/b;->a:I

    .line 1598
    iput p2, v0, Lcom/cyjh/event/b;->b:I

    .line 1599
    iput-object p0, v0, Lcom/cyjh/event/b;->d:Ljava/lang/String;

    const/4 p0, 0x3

    .line 1600
    invoke-static {p0, v0}, Lcom/cyjh/event/Injector;->a(ILcom/cyjh/event/b;)V

    .line 1601
    :goto_0
    sget-boolean p0, Lcom/cyjh/event/Injector;->n:Z

    if-nez p0, :cond_0

    .line 1603
    :try_start_0
    sget-object p0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 p1, 0x64

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/TimeUnit;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1605
    invoke-static {p0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1608
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "InputDialog typed text: "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object p1, Lcom/cyjh/event/Injector;->p:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1609
    sget-object p0, Lcom/cyjh/event/Injector;->p:Ljava/lang/String;

    return-object p0
.end method

.method public static ShowMessage(Ljava/lang/String;III)V
    .locals 1

    .line 1376
    new-instance v0, Lcom/cyjh/event/b;

    invoke-direct {v0}, Lcom/cyjh/event/b;-><init>()V

    .line 1377
    iput p2, v0, Lcom/cyjh/event/b;->a:I

    .line 1378
    iput p3, v0, Lcom/cyjh/event/b;->b:I

    .line 1379
    iput p1, v0, Lcom/cyjh/event/b;->c:I

    .line 1380
    iput-object p0, v0, Lcom/cyjh/event/b;->d:Ljava/lang/String;

    const/4 p0, 0x1

    .line 1381
    invoke-static {p0, v0}, Lcom/cyjh/event/Injector;->a(ILcom/cyjh/event/b;)V

    return-void
.end method

.method public static ShowMsgBox(Ljava/lang/String;III)I
    .locals 1

    const/4 v0, 0x0

    .line 1576
    sput-boolean v0, Lcom/cyjh/event/Injector;->n:Z

    .line 1577
    new-instance v0, Lcom/cyjh/event/b;

    invoke-direct {v0}, Lcom/cyjh/event/b;-><init>()V

    .line 1578
    iput p1, v0, Lcom/cyjh/event/b;->a:I

    .line 1579
    iput p2, v0, Lcom/cyjh/event/b;->b:I

    .line 1580
    iput p3, v0, Lcom/cyjh/event/b;->c:I

    .line 1581
    iput-object p0, v0, Lcom/cyjh/event/b;->d:Ljava/lang/String;

    const/4 p0, 0x2

    .line 1582
    invoke-static {p0, v0}, Lcom/cyjh/event/Injector;->a(ILcom/cyjh/event/b;)V

    .line 1583
    :goto_0
    sget-boolean p0, Lcom/cyjh/event/Injector;->n:Z

    if-nez p0, :cond_0

    .line 1585
    :try_start_0
    sget-object p0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 p1, 0x64

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/TimeUnit;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1587
    invoke-static {p0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1590
    :cond_0
    sget p0, Lcom/cyjh/event/Injector;->o:I

    return p0
.end method

.method public static SpecialFunction(ILjava/lang/String;)V
    .locals 2

    .line 1456
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SpecialFunction   "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1457
    invoke-static {}, Lcom/cyjh/mq/sdk/MqRunnerLite;->getInstance()Lcom/cyjh/mq/sdk/MqRunnerLite;

    move-result-object v0

    .line 29075
    iget-object v0, v0, Lcom/cyjh/mq/sdk/MqRunnerLite;->e:Lcom/cyjh/mobileanjian/ipc/interfaces/OnSpecialMqCmdCallback;

    if-eqz v0, :cond_0

    .line 1458
    invoke-static {}, Lcom/cyjh/mq/sdk/MqRunnerLite;->getInstance()Lcom/cyjh/mq/sdk/MqRunnerLite;

    move-result-object v0

    .line 30075
    iget-object v0, v0, Lcom/cyjh/mq/sdk/MqRunnerLite;->e:Lcom/cyjh/mobileanjian/ipc/interfaces/OnSpecialMqCmdCallback;

    .line 1458
    invoke-interface {v0, p0, p1}, Lcom/cyjh/mobileanjian/ipc/interfaces/OnSpecialMqCmdCallback;->doSpecialFuction(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static StopPlay()V
    .locals 0

    .line 1483
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/a;->f()V

    return-void
.end method

.method public static StopScript()V
    .locals 0

    return-void
.end method

.method public static Swipe(FFFFI)V
    .locals 10

    .line 363
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v4, 0x0

    const/4 v7, 0x0

    move-wide v0, v2

    move v5, p0

    move v6, p1

    .line 364
    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    .line 365
    invoke-static {}, Lcom/cyjh/event/Injector;->e()Landroid/app/Instrumentation;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Instrumentation;->sendPointerSync(Landroid/view/MotionEvent;)V

    const/16 v0, 0xb

    .line 366
    div-int/2addr p4, v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v1, 0x1

    :goto_0
    if-gt v1, v0, :cond_1

    .line 370
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    int-to-float v2, v1

    const/high16 v3, 0x41300000    # 11.0f

    div-float/2addr v2, v3

    const/4 v6, 0x2

    sub-float v3, p2, p0

    mul-float v3, v3, v2

    add-float v7, v3, p0

    sub-float v3, p3, p1

    mul-float v3, v3, v2

    add-float v8, v3, p1

    const/4 v9, 0x0

    move-wide v2, v4

    .line 372
    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v2

    .line 374
    invoke-static {}, Lcom/cyjh/event/Injector;->e()Landroid/app/Instrumentation;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/Instrumentation;->sendPointerSync(Landroid/view/MotionEvent;)V

    if-eqz p4, :cond_0

    int-to-long v2, p4

    .line 376
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 380
    :try_start_2
    invoke-static {p0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 382
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v4, 0x1

    const/4 v7, 0x0

    move-wide v0, v2

    move v5, p2

    move v6, p3

    .line 383
    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object p0

    .line 384
    invoke-static {}, Lcom/cyjh/event/Injector;->e()Landroid/app/Instrumentation;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/app/Instrumentation;->sendPointerSync(Landroid/view/MotionEvent;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    return-void

    :catch_1
    move-exception p0

    .line 386
    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    return-void
.end method

.method public static Tap(FFI)V
    .locals 25

    move/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    .line 310
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Tap1\uff1ax="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, ",y = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, ",delay = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 312
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 313
    new-instance v15, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v15}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    .line 314
    iput v1, v15, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 315
    iput v2, v15, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 316
    invoke-static {}, Lcom/cyjh/event/Injector;->GetTapRotation()F

    move-result v6

    iput v6, v15, Landroid/view/MotionEvent$PointerCoords;->orientation:F

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v14, 0x1

    .line 318
    new-array v12, v14, [I

    const/16 v21, 0x0

    aput v21, v12, v21

    new-array v13, v14, [Landroid/view/MotionEvent$PointerCoords;

    aput-object v15, v13, v21

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-wide v6, v4

    move-wide v8, v4

    move/from16 v14, v16

    move-object/from16 v24, v15

    move/from16 v15, v17

    move/from16 v16, v18

    move/from16 v17, v19

    move/from16 v18, v20

    move/from16 v19, v22

    move/from16 v20, v23

    invoke-static/range {v6 .. v20}, Landroid/view/MotionEvent;->obtain(JJII[I[Landroid/view/MotionEvent$PointerCoords;IFFIIII)Landroid/view/MotionEvent;

    move-result-object v6

    .line 321
    invoke-static {}, Lcom/cyjh/event/Injector;->e()Landroid/app/Instrumentation;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/app/Instrumentation;->sendPointerSync(Landroid/view/MotionEvent;)V

    .line 322
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Tap2 \uff1ax="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v7, ",y = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v7, ",delay = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v3, :cond_0

    int-to-long v6, v3

    .line 325
    :try_start_1
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :catch_0
    :cond_0
    const/4 v10, 0x1

    const/4 v11, 0x1

    const/4 v6, 0x1

    .line 329
    :try_start_2
    new-array v12, v6, [I

    aput v21, v12, v21

    new-array v13, v6, [Landroid/view/MotionEvent$PointerCoords;

    aput-object v24, v13, v21

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-wide v6, v4

    move-wide v8, v4

    invoke-static/range {v6 .. v20}, Landroid/view/MotionEvent;->obtain(JJII[I[Landroid/view/MotionEvent$PointerCoords;IFFIIII)Landroid/view/MotionEvent;

    move-result-object v4

    .line 332
    invoke-static {}, Lcom/cyjh/event/Injector;->e()Landroid/app/Instrumentation;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/app/Instrumentation;->sendPointerSync(Landroid/view/MotionEvent;)V

    .line 333
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Tap3 \uff1ax="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ",y = "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ",delay = "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    return-void

    :catch_1
    move-exception v0

    move-object v1, v0

    .line 335
    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    return-void
.end method

.method public static TouchDown(IFF)V
    .locals 20

    .line 16808
    :try_start_0
    sget-object v1, Lcom/cyjh/event/Injector;->x:[Lcom/cyjh/event/Injector$a;

    const/4 v2, 0x1

    const/4 v3, 0x5

    if-nez v1, :cond_0

    .line 16809
    new-array v1, v3, [Lcom/cyjh/event/Injector$a;

    sput-object v1, Lcom/cyjh/event/Injector;->x:[Lcom/cyjh/event/Injector$a;

    const/4 v1, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    .line 16811
    new-instance v5, Lcom/cyjh/event/Injector$a;

    invoke-direct {v5, v1}, Lcom/cyjh/event/Injector$a;-><init>(B)V

    .line 16812
    iput-boolean v2, v5, Lcom/cyjh/event/Injector$a;->a:Z

    .line 16813
    iput v1, v5, Lcom/cyjh/event/Injector$a;->b:I

    const/4 v6, 0x0

    .line 16814
    iput v6, v5, Lcom/cyjh/event/Injector$a;->c:F

    .line 16815
    iput v6, v5, Lcom/cyjh/event/Injector$a;->d:F

    .line 16816
    sget-object v6, Lcom/cyjh/event/Injector;->x:[Lcom/cyjh/event/Injector$a;

    aput-object v5, v6, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 435
    :cond_0
    invoke-static {}, Lcom/cyjh/event/Injector;->g()I

    move-result v1

    if-lt v1, v3, :cond_1

    return-void

    .line 439
    :cond_1
    invoke-static/range {p0 .. p2}, Lcom/cyjh/event/Injector;->a(IFF)V

    .line 441
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    move/from16 v1, p0

    .line 442
    invoke-static {v1, v2}, Lcom/cyjh/event/Injector;->a(II)I

    move-result v8

    .line 443
    invoke-static {}, Lcom/cyjh/event/Injector;->g()I

    move-result v9

    .line 444
    invoke-static {}, Lcom/cyjh/event/Injector;->h()V

    .line 445
    sget-object v10, Lcom/cyjh/event/Injector;->y:[Landroid/view/MotionEvent$PointerProperties;

    sget-object v11, Lcom/cyjh/event/Injector;->z:[Landroid/view/MotionEvent$PointerCoords;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-wide v4, v6

    invoke-static/range {v4 .. v19}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v1

    .line 447
    invoke-static {}, Lcom/cyjh/event/Injector;->e()Landroid/app/Instrumentation;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/Instrumentation;->sendPointerSync(Landroid/view/MotionEvent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 449
    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    return-void
.end method

.method public static TouchMove(IFFI)V
    .locals 26

    move/from16 v1, p0

    move/from16 v2, p3

    .line 460
    :try_start_0
    sget-object v3, Lcom/cyjh/event/Injector;->x:[Lcom/cyjh/event/Injector$a;

    if-nez v3, :cond_0

    return-void

    .line 464
    :cond_0
    invoke-static/range {p0 .. p0}, Lcom/cyjh/event/Injector;->b(I)Lcom/cyjh/event/Injector$a;

    move-result-object v3

    if-nez v3, :cond_1

    return-void

    .line 468
    :cond_1
    iget v4, v3, Lcom/cyjh/event/Injector$a;->c:F

    .line 469
    iget v3, v3, Lcom/cyjh/event/Injector$a;->d:F

    const/16 v5, 0xc8

    const/16 v6, 0xb

    const/4 v7, 0x1

    if-le v2, v5, :cond_2

    goto :goto_1

    :cond_2
    sub-float v5, v4, p1

    mul-float v5, v5, v5

    sub-float v8, v3, p2

    mul-float v8, v8, v8

    add-float/2addr v5, v8

    float-to-double v8, v5

    .line 475
    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    .line 17061
    sget-object v5, Lcom/cyjh/mq/a/a;->g:Landroid/app/Application;

    invoke-virtual {v5}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    .line 18008
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 18061
    sget-object v10, Lcom/cyjh/mq/a/a;->g:Landroid/app/Application;

    invoke-virtual {v10}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    .line 19012
    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    iget v10, v10, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 477
    invoke-static {v5, v10}, Ljava/lang/Math;->min(II)I

    move-result v5

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    mul-double v10, v10, v8

    int-to-double v12, v5

    cmpl-double v5, v10, v12

    if-lez v5, :cond_3

    const/4 v5, 0x1

    goto :goto_0

    :cond_3
    const/4 v5, 0x0

    :goto_0
    if-eqz v5, :cond_4

    goto :goto_1

    :cond_4
    const-wide/high16 v5, 0x4034000000000000L    # 20.0

    mul-double v8, v8, v5

    div-double/2addr v8, v12

    double-to-int v5, v8

    add-int/lit8 v6, v5, 0x1

    .line 488
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    :goto_2
    if-gt v7, v6, :cond_6

    .line 490
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    int-to-float v5, v7

    int-to-float v10, v6

    div-float/2addr v5, v10

    sub-float v10, p1, v4

    mul-float v10, v10, v5

    add-float/2addr v10, v4

    sub-float v11, p2, v3

    mul-float v11, v11, v5

    add-float/2addr v11, v3

    .line 495
    invoke-static {v1, v10, v11}, Lcom/cyjh/event/Injector;->a(IFF)V

    const/4 v5, 0x2

    .line 496
    invoke-static {v1, v5}, Lcom/cyjh/event/Injector;->a(II)I

    move-result v14

    .line 497
    invoke-static {}, Lcom/cyjh/event/Injector;->g()I

    move-result v15

    .line 498
    invoke-static {}, Lcom/cyjh/event/Injector;->h()V

    .line 500
    sget-object v16, Lcom/cyjh/event/Injector;->y:[Landroid/view/MotionEvent$PointerProperties;

    sget-object v17, Lcom/cyjh/event/Injector;->z:[Landroid/view/MotionEvent$PointerCoords;

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-wide v10, v12

    invoke-static/range {v10 .. v25}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v5

    .line 502
    invoke-static {}, Lcom/cyjh/event/Injector;->e()Landroid/app/Instrumentation;

    move-result-object v10

    invoke-virtual {v10, v5}, Landroid/app/Instrumentation;->sendPointerSync(Landroid/view/MotionEvent;)V

    if-eqz v2, :cond_5

    int-to-long v10, v2

    .line 505
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    const/4 v5, 0x0

    sub-long v14, v12, v8

    sub-long v12, v10, v14

    add-int/lit8 v5, v6, 0x1

    sub-int/2addr v5, v7

    int-to-long v10, v5

    .line 506
    div-long/2addr v12, v10

    const-wide/16 v10, 0xa

    cmp-long v5, v12, v10

    if-ltz v5, :cond_5

    .line 510
    invoke-static {v12, v13}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_6
    return-void

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 515
    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    return-void
.end method

.method public static TouchMoveEvent(IFFI)V
    .locals 19

    move/from16 v1, p3

    .line 526
    :try_start_0
    sget-object v2, Lcom/cyjh/event/Injector;->x:[Lcom/cyjh/event/Injector$a;

    if-nez v2, :cond_0

    return-void

    .line 530
    :cond_0
    invoke-static/range {p0 .. p0}, Lcom/cyjh/event/Injector;->b(I)Lcom/cyjh/event/Injector$a;

    move-result-object v2

    if-nez v2, :cond_1

    return-void

    .line 534
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 538
    invoke-static/range {p0 .. p2}, Lcom/cyjh/event/Injector;->a(IFF)V

    const/4 v2, 0x2

    move/from16 v3, p0

    .line 539
    invoke-static {v3, v2}, Lcom/cyjh/event/Injector;->a(II)I

    move-result v7

    .line 540
    invoke-static {}, Lcom/cyjh/event/Injector;->g()I

    move-result v8

    .line 541
    invoke-static {}, Lcom/cyjh/event/Injector;->h()V

    const/16 v2, 0xa

    if-le v1, v2, :cond_2

    add-int/lit8 v1, v1, -0xf

    int-to-long v1, v1

    .line 544
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 545
    :cond_2
    sget-object v9, Lcom/cyjh/event/Injector;->y:[Landroid/view/MotionEvent$PointerProperties;

    sget-object v10, Lcom/cyjh/event/Injector;->z:[Landroid/view/MotionEvent$PointerCoords;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-wide v3, v5

    invoke-static/range {v3 .. v18}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v1

    .line 547
    invoke-static {}, Lcom/cyjh/event/Injector;->e()Landroid/app/Instrumentation;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/Instrumentation;->sendPointerSync(Landroid/view/MotionEvent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 549
    invoke-static {v1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static TouchUp(I)V
    .locals 19

    move/from16 v1, p0

    .line 558
    :try_start_0
    sget-object v2, Lcom/cyjh/event/Injector;->x:[Lcom/cyjh/event/Injector$a;

    if-nez v2, :cond_0

    return-void

    .line 562
    :cond_0
    invoke-static/range {p0 .. p0}, Lcom/cyjh/event/Injector;->b(I)Lcom/cyjh/event/Injector$a;

    move-result-object v2

    if-nez v2, :cond_1

    return-void

    .line 566
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    const/4 v2, 0x3

    .line 567
    invoke-static {v1, v2}, Lcom/cyjh/event/Injector;->a(II)I

    move-result v7

    .line 568
    invoke-static {}, Lcom/cyjh/event/Injector;->g()I

    move-result v8

    .line 569
    invoke-static {}, Lcom/cyjh/event/Injector;->h()V

    .line 571
    sget-object v9, Lcom/cyjh/event/Injector;->y:[Landroid/view/MotionEvent$PointerProperties;

    sget-object v10, Lcom/cyjh/event/Injector;->z:[Landroid/view/MotionEvent$PointerCoords;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-wide v3, v5

    invoke-static/range {v3 .. v18}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v2

    .line 573
    invoke-static {}, Lcom/cyjh/event/Injector;->e()Landroid/app/Instrumentation;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/Instrumentation;->sendPointerSync(Landroid/view/MotionEvent;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x5

    if-ge v3, v4, :cond_3

    .line 20829
    sget-object v4, Lcom/cyjh/event/Injector;->x:[Lcom/cyjh/event/Injector$a;

    aget-object v4, v4, v3

    iget v4, v4, Lcom/cyjh/event/Injector$a;->b:I

    if-ne v1, v4, :cond_2

    .line 20830
    sget-object v4, Lcom/cyjh/event/Injector;->x:[Lcom/cyjh/event/Injector$a;

    aget-object v4, v4, v3

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/cyjh/event/Injector$a;->a:Z

    .line 20831
    sget-object v4, Lcom/cyjh/event/Injector;->x:[Lcom/cyjh/event/Injector$a;

    aget-object v4, v4, v3

    iput v2, v4, Lcom/cyjh/event/Injector$a;->b:I

    .line 20832
    sget-object v4, Lcom/cyjh/event/Injector;->x:[Lcom/cyjh/event/Injector$a;

    aget-object v4, v4, v3

    const/4 v5, 0x0

    iput v5, v4, Lcom/cyjh/event/Injector$a;->c:F

    .line 20833
    sget-object v4, Lcom/cyjh/event/Injector;->x:[Lcom/cyjh/event/Injector$a;

    aget-object v4, v4, v3

    iput v5, v4, Lcom/cyjh/event/Injector$a;->d:F
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-void

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 577
    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    return-void
.end method

.method public static TracePrint(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public static UninstallApp(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public static UnlockScreen()V
    .locals 1

    .line 1532
    sget-object v0, Lcom/cyjh/event/Injector;->e:Lcom/cyjh/mobileanjian/ipc/a;

    invoke-virtual {v0}, Lcom/cyjh/mobileanjian/ipc/a;->h()V

    return-void
.end method

.method public static UrlRequest(ILjava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    if-gtz p3, :cond_0

    const/4 p3, 0x5

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, v0, :cond_2

    .line 1713
    :try_start_0
    invoke-static {p1}, Lcom/cyjh/event/Injector;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/github/kevinsawicki/http/HttpRequest;->get(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object p0

    mul-int/lit16 p3, p3, 0x3e8

    .line 1714
    invoke-virtual {p0, p3}, Lcom/github/kevinsawicki/http/HttpRequest;->connectTimeout(I)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object p0

    .line 1715
    invoke-virtual {p0, p3}, Lcom/github/kevinsawicki/http/HttpRequest;->readTimeout(I)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object p0

    .line 1716
    invoke-virtual {p0, v1}, Lcom/github/kevinsawicki/http/HttpRequest;->useCaches(Z)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object p0

    .line 1717
    invoke-virtual {p0}, Lcom/github/kevinsawicki/http/HttpRequest;->body()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    const-string p0, ""

    :cond_1
    return-object p0

    :cond_2
    const/4 v0, 0x2

    if-ne p0, v0, :cond_4

    .line 1720
    new-instance p0, Lcom/github/kevinsawicki/http/HttpRequest;

    const-string v0, "POST"

    invoke-direct {p0, p1, v0}, Lcom/github/kevinsawicki/http/HttpRequest;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    const-string p1, "User-Agent"

    const-string v0, "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.11 (KHTML, like Gecko) Chrome/23.0.1271.64 Safari/537.11"

    .line 1721
    invoke-virtual {p0, p1, v0}, Lcom/github/kevinsawicki/http/HttpRequest;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object p0

    .line 1722
    invoke-virtual {p0, v1}, Lcom/github/kevinsawicki/http/HttpRequest;->followRedirects(Z)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object p0

    mul-int/lit16 p3, p3, 0x3e8

    .line 1723
    invoke-virtual {p0, p3}, Lcom/github/kevinsawicki/http/HttpRequest;->connectTimeout(I)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object p0

    .line 1724
    invoke-virtual {p0, p3}, Lcom/github/kevinsawicki/http/HttpRequest;->readTimeout(I)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object p0

    .line 1725
    invoke-virtual {p0, v1}, Lcom/github/kevinsawicki/http/HttpRequest;->useCaches(Z)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object p0

    .line 1726
    invoke-virtual {p0, p2}, Lcom/github/kevinsawicki/http/HttpRequest;->send(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object p0

    invoke-virtual {p0}, Lcom/github/kevinsawicki/http/HttpRequest;->body()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_3

    const-string p0, ""
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    return-object p0

    :catch_0
    :cond_4
    const-string p0, ""

    return-object p0
.end method

.method public static UrlRequestEx(ILjava/lang/String;)Ljava/lang/String;
    .locals 17

    move/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "RootIpcFramework"

    .line 917
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "UrlRequestEx: type="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " postData:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, ""

    .line 924
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "url"

    .line 926
    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v6, "data"

    .line 927
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "code"

    .line 928
    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "setcookie"

    .line 929
    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "cookie"

    .line 930
    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v7, :cond_0

    .line 932
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_1

    :cond_0
    const-string v7, "UTF-8"

    :cond_1
    const-string v10, "http"

    .line 935
    invoke-virtual {v2, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 936
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "http://"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 938
    :cond_2
    new-instance v10, Ljava/net/URL;

    invoke-direct {v10, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 940
    invoke-virtual {v10}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    const/16 v10, 0x2710

    .line 942
    invoke-virtual {v2, v10}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 943
    invoke-virtual {v2, v10}, Ljava/net/URLConnection;->setReadTimeout(I)V

    const-string v10, "header"

    .line 945
    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    instance-of v10, v10, Lorg/json/JSONArray;

    const/4 v11, 0x0

    if-eqz v10, :cond_3

    const-string v10, "RootIpcFramework"

    const-string v12, "jsonObject: is JSONArray"

    .line 947
    invoke-static {v10, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v10, "header"

    .line 948
    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 949
    invoke-virtual {v5, v11}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 950
    invoke-virtual {v5}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v10

    .line 951
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 952
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 953
    invoke-virtual {v5, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "RootIpcFramework"

    .line 954
    new-instance v15, Ljava/lang/StringBuilder;

    const-string v4, "UrlRequestEx: key="

    invoke-direct {v15, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "value="

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v14, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 955
    invoke-virtual {v2, v12, v13}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 959
    :cond_3
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "Cookie"

    .line 960
    invoke-virtual {v2, v4, v9}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    const/4 v4, 0x2

    const/4 v5, 0x1

    if-ne v1, v4, :cond_5

    .line 964
    invoke-virtual {v2, v5}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 965
    invoke-virtual {v2, v5}, Ljava/net/URLConnection;->setDoInput(Z)V

    .line 968
    new-instance v4, Ljava/io/PrintWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-virtual {v2}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    invoke-direct {v1, v5, v7}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v4, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 970
    :try_start_1
    invoke-virtual {v4, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 972
    invoke-virtual {v4}, Ljava/io/PrintWriter;->flush()V

    .line 974
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-virtual {v2}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v5, v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v1, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v16, v4

    move-object v4, v1

    move-object/from16 v1, v16

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v1, v0

    const/4 v2, 0x0

    goto/16 :goto_7

    :catch_0
    move-exception v0

    move-object v1, v0

    const/4 v2, 0x0

    goto/16 :goto_4

    :cond_5
    if-ne v1, v5, :cond_6

    .line 978
    :try_start_2
    invoke-virtual {v2}, Ljava/net/URLConnection;->connect()V

    .line 980
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-virtual {v2}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v1, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object v4, v1

    const/4 v1, 0x0

    goto :goto_1

    :cond_6
    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 984
    :goto_1
    :try_start_3
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_7

    .line 985
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    goto :goto_1

    :cond_7
    const-string v5, "Set-Cookie"

    .line 989
    invoke-virtual {v2, v5}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 990
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_9

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_9

    .line 991
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 992
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_8

    .line 993
    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z

    .line 995
    :cond_8
    new-instance v6, Ljava/io/FileWriter;

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5, v11}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V

    .line 996
    invoke-virtual {v6, v2}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 997
    invoke-virtual {v6}, Ljava/io/FileWriter;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_9
    if-eqz v1, :cond_a

    .line 1006
    :try_start_4
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v1, v0

    goto :goto_3

    :cond_a
    :goto_2
    if-eqz v4, :cond_c

    .line 1009
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_5

    .line 1013
    :goto_3
    invoke-static {v1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_5

    :catchall_1
    move-exception v0

    move-object v2, v4

    move-object v4, v1

    goto :goto_6

    :catch_2
    move-exception v0

    move-object v2, v4

    move-object v4, v1

    move-object v1, v0

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object v1, v0

    const/4 v2, 0x0

    const/4 v4, 0x0

    goto :goto_7

    :catch_3
    move-exception v0

    move-object v1, v0

    const/4 v2, 0x0

    const/4 v4, 0x0

    :goto_4
    :try_start_5
    const-string v5, "RootIpcFramework"

    .line 1000
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "UrlRequestEx: Exception:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1001
    invoke-static {v1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    if-eqz v4, :cond_b

    .line 1006
    :try_start_6
    invoke-virtual {v4}, Ljava/io/PrintWriter;->close()V

    :cond_b
    if-eqz v2, :cond_c

    .line 1009
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    :cond_c
    :goto_5
    const-string v1, "RootIpcFramework"

    .line 1016
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "UrlRequestEx: result:"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :catchall_3
    move-exception v0

    :goto_6
    move-object v1, v0

    :goto_7
    if-eqz v4, :cond_d

    .line 1006
    :try_start_7
    invoke-virtual {v4}, Ljava/io/PrintWriter;->close()V

    goto :goto_8

    :catch_4
    move-exception v0

    move-object v2, v0

    goto :goto_9

    :cond_d
    :goto_8
    if-eqz v2, :cond_e

    .line 1009
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_a

    .line 1013
    :goto_9
    invoke-static {v2}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 1015
    :cond_e
    :goto_a
    throw v1
.end method

.method public static Vibrate(I)V
    .locals 1

    .line 1391
    sget-object v0, Lcom/cyjh/event/Injector;->e:Lcom/cyjh/mobileanjian/ipc/a;

    invoke-virtual {v0, p0}, Lcom/cyjh/mobileanjian/ipc/a;->a(I)V

    return-void
.end method

.method private static final a(FFF)F
    .locals 0

    sub-float/2addr p1, p0

    mul-float p1, p1, p2

    add-float/2addr p1, p0

    return p1
.end method

.method private static a(II)I
    .locals 6

    .line 1948
    invoke-static {}, Lcom/cyjh/event/Injector;->g()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x5

    if-ge v2, v3, :cond_1

    .line 34878
    sget-object v4, Lcom/cyjh/event/Injector;->x:[Lcom/cyjh/event/Injector$a;

    aget-object v4, v4, v2

    iget-boolean v4, v4, Lcom/cyjh/event/Injector$a;->a:Z

    if-nez v4, :cond_0

    sget-object v4, Lcom/cyjh/event/Injector;->x:[Lcom/cyjh/event/Injector$a;

    aget-object v4, v4, v2

    iget v4, v4, Lcom/cyjh/event/Injector$a;->b:I

    if-ne v4, p0, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, -0x1

    :goto_1
    const/4 p0, 0x0

    const/4 v4, 0x0

    :goto_2
    if-ge p0, v2, :cond_3

    .line 34892
    sget-object v5, Lcom/cyjh/event/Injector;->x:[Lcom/cyjh/event/Injector$a;

    aget-object v5, v5, p0

    iget-boolean v5, v5, Lcom/cyjh/event/Injector$a;->a:Z

    if-nez v5, :cond_2

    add-int/lit8 v4, v4, 0x1

    :cond_2
    add-int/lit8 p0, p0, 0x1

    goto :goto_2

    :cond_3
    const/4 p0, 0x2

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    goto :goto_3

    :pswitch_0
    if-ne v2, v0, :cond_4

    const/4 v1, 0x1

    goto :goto_3

    :cond_4
    mul-int/lit16 p0, v4, 0x100

    add-int/lit8 v1, p0, 0x6

    goto :goto_3

    :pswitch_1
    if-ne v2, v0, :cond_5

    const/4 v1, 0x2

    goto :goto_3

    :cond_5
    mul-int/lit16 v1, v4, 0x100

    add-int/2addr v1, p0

    goto :goto_3

    :pswitch_2
    if-ne v2, v0, :cond_6

    goto :goto_3

    :cond_6
    mul-int/lit16 p0, v4, 0x100

    add-int/lit8 v1, p0, 0x5

    .line 1977
    :goto_3
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v2, "injector>>>>>>touchType:"

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "action:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "---pointerNum:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "---pointerId:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    :try_start_0
    const-string v0, "[\\u4e00-\\u9fa5]"

    .line 1737
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 1738
    :goto_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1739
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UTF-8"

    .line 1740
    invoke-static {v1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1744
    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    :cond_0
    return-object p0
.end method

.method static synthetic a()V
    .locals 1

    .line 36277
    invoke-static {}, Lcom/cyjh/mq/sdk/MqRunnerLite;->getInstance()Lcom/cyjh/mq/sdk/MqRunnerLite;

    move-result-object v0

    .line 37070
    iget-object v0, v0, Lcom/cyjh/mq/sdk/MqRunnerLite;->a:Lcom/cyjh/mobileanjian/ipc/interfaces/OnScriptListener;

    if-eqz v0, :cond_0

    .line 36279
    invoke-interface {v0}, Lcom/cyjh/mobileanjian/ipc/interfaces/OnScriptListener;->onPause()V

    :cond_0
    return-void
.end method

.method private static a(I)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x5

    if-ge v1, v2, :cond_1

    .line 1829
    sget-object v2, Lcom/cyjh/event/Injector;->x:[Lcom/cyjh/event/Injector$a;

    aget-object v2, v2, v1

    iget v2, v2, Lcom/cyjh/event/Injector$a;->b:I

    if-ne p0, v2, :cond_0

    .line 1830
    sget-object v2, Lcom/cyjh/event/Injector;->x:[Lcom/cyjh/event/Injector$a;

    aget-object v2, v2, v1

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/cyjh/event/Injector$a;->a:Z

    .line 1831
    sget-object v2, Lcom/cyjh/event/Injector;->x:[Lcom/cyjh/event/Injector$a;

    aget-object v2, v2, v1

    iput v0, v2, Lcom/cyjh/event/Injector$a;->b:I

    .line 1832
    sget-object v2, Lcom/cyjh/event/Injector;->x:[Lcom/cyjh/event/Injector$a;

    aget-object v2, v2, v1

    const/4 v3, 0x0

    iput v3, v2, Lcom/cyjh/event/Injector$a;->c:F

    .line 1833
    sget-object v2, Lcom/cyjh/event/Injector;->x:[Lcom/cyjh/event/Injector$a;

    aget-object v2, v2, v1

    iput v3, v2, Lcom/cyjh/event/Injector$a;->d:F

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static a(IFF)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x5

    if-ge v1, v2, :cond_1

    .line 1841
    sget-object v2, Lcom/cyjh/event/Injector;->x:[Lcom/cyjh/event/Injector$a;

    aget-object v2, v2, v1

    iget-boolean v2, v2, Lcom/cyjh/event/Injector$a;->a:Z

    if-nez v2, :cond_0

    sget-object v2, Lcom/cyjh/event/Injector;->x:[Lcom/cyjh/event/Injector$a;

    aget-object v2, v2, v1

    iget v2, v2, Lcom/cyjh/event/Injector$a;->b:I

    if-ne v2, p0, :cond_0

    .line 1842
    sget-object v2, Lcom/cyjh/event/Injector;->x:[Lcom/cyjh/event/Injector$a;

    aget-object v2, v2, v1

    iput p0, v2, Lcom/cyjh/event/Injector$a;->b:I

    .line 1843
    sget-object p0, Lcom/cyjh/event/Injector;->x:[Lcom/cyjh/event/Injector$a;

    aget-object p0, p0, v1

    iput p1, p0, Lcom/cyjh/event/Injector$a;->c:F

    .line 1844
    sget-object p0, Lcom/cyjh/event/Injector;->x:[Lcom/cyjh/event/Injector$a;

    aget-object p0, p0, v1

    iput p2, p0, Lcom/cyjh/event/Injector$a;->d:F

    .line 1845
    sget-object p0, Lcom/cyjh/event/Injector;->x:[Lcom/cyjh/event/Injector$a;

    aget-object p0, p0, v1

    iput-boolean v0, p0, Lcom/cyjh/event/Injector$a;->a:Z

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_3

    .line 1852
    sget-object v3, Lcom/cyjh/event/Injector;->x:[Lcom/cyjh/event/Injector$a;

    aget-object v3, v3, v1

    iget-boolean v3, v3, Lcom/cyjh/event/Injector$a;->a:Z

    if-eqz v3, :cond_2

    .line 1853
    sget-object v2, Lcom/cyjh/event/Injector;->x:[Lcom/cyjh/event/Injector$a;

    aget-object v2, v2, v1

    iput p0, v2, Lcom/cyjh/event/Injector$a;->b:I

    .line 1854
    sget-object p0, Lcom/cyjh/event/Injector;->x:[Lcom/cyjh/event/Injector$a;

    aget-object p0, p0, v1

    iput p1, p0, Lcom/cyjh/event/Injector$a;->c:F

    .line 1855
    sget-object p0, Lcom/cyjh/event/Injector;->x:[Lcom/cyjh/event/Injector$a;

    aget-object p0, p0, v1

    iput p2, p0, Lcom/cyjh/event/Injector$a;->d:F

    .line 1856
    sget-object p0, Lcom/cyjh/event/Injector;->x:[Lcom/cyjh/event/Injector$a;

    aget-object p0, p0, v1

    iput-boolean v0, p0, Lcom/cyjh/event/Injector$a;->a:Z

    return-void

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method private static a(ILcom/cyjh/event/b;)V
    .locals 2

    .line 226
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "sendToTargetHandler "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "         "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 227
    sget-object v0, Lcom/cyjh/event/Injector;->i:Landroid/os/Handler;

    invoke-virtual {v0, p0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method static synthetic a(Lcom/cyjh/event/b;)V
    .locals 4

    .line 35232
    sget-object v0, Lcom/cyjh/event/Injector;->d:Lcom/cyjh/mobileanjian/ipc/view/ExToast;

    if-nez v0, :cond_0

    .line 35233
    new-instance v0, Lcom/cyjh/mobileanjian/ipc/view/ExToast;

    sget-object v1, Lcom/cyjh/event/Injector;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/cyjh/mobileanjian/ipc/view/ExToast;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/cyjh/event/Injector;->d:Lcom/cyjh/mobileanjian/ipc/view/ExToast;

    .line 35235
    :cond_0
    sget-object v0, Lcom/cyjh/event/Injector;->d:Lcom/cyjh/mobileanjian/ipc/view/ExToast;

    iget-object v1, p0, Lcom/cyjh/event/b;->d:Ljava/lang/String;

    iget v2, p0, Lcom/cyjh/event/b;->a:I

    iget v3, p0, Lcom/cyjh/event/b;->b:I

    iget p0, p0, Lcom/cyjh/event/b;->c:I

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->show(Ljava/lang/CharSequence;III)V

    return-void
.end method

.method static synthetic a([B)V
    .locals 9

    .line 38285
    :try_start_0
    invoke-static {p0}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object p0

    .line 38286
    invoke-static {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->parseFrom(Lcom/google/protobuf/ByteString;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;

    move-result-object p0

    if-eqz p0, :cond_2e

    .line 38288
    sget-object v0, Lcom/cyjh/event/Injector;->f:Lcom/cyjh/mobileanjian/ipc/ui/i;

    .line 39101
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getControlId()Ljava/lang/String;

    move-result-object v7

    .line 39102
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getCommand()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;

    move-result-object v1

    .line 39103
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "command: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 39105
    sget-object v2, Lcom/cyjh/mobileanjian/ipc/ui/i$3;->a:[I

    invoke-virtual {v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->ordinal()I

    move-result v1

    aget v1, v2, v1

    const/4 v2, 0x2

    const/4 v3, 0x3

    const/4 v8, 0x1

    const/4 v4, 0x0

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_8

    .line 45784
    :pswitch_0
    iget-object v1, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v2, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v1, v1, v2

    if-nez v1, :cond_0

    .line 45785
    invoke-static {v4}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    .line 45789
    :cond_0
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getControlId()Ljava/lang/String;

    move-result-object v1

    .line 45790
    iget-object v2, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v0, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v0, v2, v0

    invoke-virtual {v0, v1}, Lcom/cyjh/mobileanjian/ipc/ui/k;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    .line 45792
    invoke-static {v4}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    .line 45796
    :cond_1
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getPadding()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$Padding_Var;

    move-result-object p0

    .line 45797
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "padding: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$Padding_Var;->getLeft()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45798
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "padding: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$Padding_Var;->getTop()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45799
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "padding: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$Padding_Var;->getRight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45800
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "padding: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$Padding_Var;->getBottom()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45801
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$Padding_Var;->getLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$Padding_Var;->getTop()I

    move-result v2

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$Padding_Var;->getRight()I

    move-result v3

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$Padding_Var;->getBottom()I

    move-result p0

    invoke-virtual {v0, v1, v2, v3, p0}, Landroid/view/View;->setPadding(IIII)V

    .line 45802
    invoke-static {v8}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    .line 45763
    :pswitch_1
    iget-object v1, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v2, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v1, v1, v2

    if-nez v1, :cond_2

    .line 45764
    invoke-static {v4}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    .line 45768
    :cond_2
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getControlId()Ljava/lang/String;

    move-result-object v1

    .line 45769
    iget-object v2, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v0, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v0, v2, v0

    invoke-virtual {v0, v1}, Lcom/cyjh/mobileanjian/ipc/ui/k;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_3

    .line 45771
    invoke-static {v4}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    .line 45775
    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 45776
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getAlignType()I

    move-result p0

    iput p0, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 45777
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 45779
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "set gravity ok; "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 45780
    invoke-static {v8}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    .line 44866
    :pswitch_2
    iget-object v1, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v5, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v1, v1, v5

    if-nez v1, :cond_4

    .line 44867
    invoke-static {v4}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    .line 44871
    :cond_4
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getControlId()Ljava/lang/String;

    move-result-object v1

    .line 44874
    iget-object v5, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->e:[Ljava/util/HashMap;

    iget v6, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v5, v5, v6

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_5

    .line 44875
    invoke-static {v4}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    .line 44879
    :cond_5
    sget-object v5, Lcom/cyjh/mobileanjian/ipc/ui/i$3;->b:[I

    iget-object v6, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->e:[Ljava/util/HashMap;

    iget v7, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v6, v6, v7

    invoke-virtual {v6, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/cyjh/mobileanjian/ipc/ui/m;

    invoke-virtual {v6}, Lcom/cyjh/mobileanjian/ipc/ui/m;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_1

    .line 44901
    invoke-static {v4}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    goto/16 :goto_1

    .line 44891
    :pswitch_3
    iget-object v5, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v0, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v0, v5, v0

    invoke-virtual {v0, v1}, Lcom/cyjh/mobileanjian/ipc/ui/k;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    .line 44892
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getItemIndex()I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/RadioButton;

    if-nez p0, :cond_6

    .line 44894
    invoke-static {v4}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    .line 44897
    :cond_6
    invoke-virtual {p0}, Landroid/widget/RadioButton;->getPaint()Landroid/text/TextPaint;

    move-result-object p0

    invoke-virtual {p0}, Landroid/text/TextPaint;->getColor()I

    move-result p0

    goto :goto_0

    .line 44887
    :pswitch_4
    iget-object p0, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v0, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object p0, p0, v0

    invoke-virtual {p0, v1}, Lcom/cyjh/mobileanjian/ipc/ui/k;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/CheckBox;

    .line 44888
    invoke-virtual {p0}, Landroid/widget/CheckBox;->getPaint()Landroid/text/TextPaint;

    move-result-object p0

    invoke-virtual {p0}, Landroid/text/TextPaint;->getColor()I

    move-result p0

    goto :goto_0

    .line 44883
    :pswitch_5
    iget-object p0, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v0, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object p0, p0, v0

    invoke-virtual {p0, v1}, Lcom/cyjh/mobileanjian/ipc/ui/k;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    .line 44884
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p0

    invoke-virtual {p0}, Landroid/text/TextPaint;->getColor()I

    move-result p0

    :goto_0
    const-string v0, "%02X%02X%02X"

    .line 44907
    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v3, v2

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 44909
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;

    move-result-object v0

    .line 44910
    invoke-virtual {v0, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;->setControlId(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;

    move-result-object v0

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Data_Type;->STRING:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Data_Type;

    .line 44911
    invoke-virtual {v0, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;->setType(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Data_Type;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;

    move-result-object v0

    .line 44912
    invoke-virtual {v0, p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;->setStringValue(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar;

    move-result-object p0

    .line 44913
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object v0

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Command_Type;->RSP_MSG:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Command_Type;

    .line 44914
    invoke-virtual {v0, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->setCommand(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Command_Type;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object v0

    .line 44915
    invoke-virtual {v0, v8}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->setIsSuccess(Z)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->addVarTable(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;

    move-result-object p0

    .line 44917
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object p0

    invoke-static {p0}, Lcom/cyjh/event/c;->a(Lcom/google/protobuf/ByteString;)V

    return-void

    :goto_1
    return-void

    .line 44832
    :pswitch_6
    iget-object p0, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v1, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object p0, p0, v1

    if-nez p0, :cond_7

    .line 44833
    invoke-static {v4}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    .line 44837
    :cond_7
    iget-object p0, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v0, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object p0, p0, v0

    invoke-virtual {p0, v7}, Lcom/cyjh/mobileanjian/ipc/ui/k;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object p0

    if-nez p0, :cond_8

    .line 44839
    invoke-static {v4}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    .line 44843
    :cond_8
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-eqz p0, :cond_9

    const/4 v0, 0x4

    if-eq p0, v0, :cond_b

    const/16 v0, 0x8

    if-eq p0, v0, :cond_a

    :cond_9
    const/4 v2, 0x1

    goto :goto_2

    :cond_a
    const/4 v2, 0x3

    .line 44854
    :cond_b
    :goto_2
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;

    move-result-object p0

    .line 44855
    invoke-virtual {p0, v7}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;->setControlId(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;

    move-result-object p0

    sget-object v0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Data_Type;->INT:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Data_Type;

    .line 44856
    invoke-virtual {p0, v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;->setType(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Data_Type;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;

    move-result-object p0

    .line 44857
    invoke-virtual {p0, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;->setIntValue(I)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar;

    move-result-object p0

    .line 44858
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object v0

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Command_Type;->RSP_MSG:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Command_Type;

    .line 44859
    invoke-virtual {v0, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->setCommand(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Command_Type;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object v0

    .line 44860
    invoke-virtual {v0, v8}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->setIsSuccess(Z)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->addVarTable(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;

    move-result-object p0

    .line 44862
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object p0

    invoke-static {p0}, Lcom/cyjh/event/c;->a(Lcom/google/protobuf/ByteString;)V

    return-void

    .line 44806
    :pswitch_7
    iget-object p0, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v1, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object p0, p0, v1

    if-nez p0, :cond_c

    .line 44807
    invoke-static {v4}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    .line 44811
    :cond_c
    iget-object p0, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v1, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object p0, p0, v1

    invoke-virtual {p0, v7}, Lcom/cyjh/mobileanjian/ipc/ui/k;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object p0

    if-nez p0, :cond_d

    .line 44813
    invoke-static {v4}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    .line 44816
    :cond_d
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v1

    .line 44817
    iget-object v2, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->e:[Ljava/util/HashMap;

    iget v0, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v0, v2, v0

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v2, Lcom/cyjh/mobileanjian/ipc/ui/m;->b:Lcom/cyjh/mobileanjian/ipc/ui/m;

    if-ne v0, v2, :cond_e

    .line 44818
    check-cast p0, Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->isFocusable()Z

    move-result v1

    .line 44820
    :cond_e
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;

    move-result-object p0

    .line 44821
    invoke-virtual {p0, v7}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;->setControlId(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;

    move-result-object p0

    sget-object v0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Data_Type;->BOOL:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Data_Type;

    .line 44822
    invoke-virtual {p0, v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;->setType(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Data_Type;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;

    move-result-object p0

    .line 44823
    invoke-virtual {p0, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;->setBoolValue(Z)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar;

    move-result-object p0

    .line 44824
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object v0

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Command_Type;->RSP_MSG:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Command_Type;

    .line 44825
    invoke-virtual {v0, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->setCommand(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Command_Type;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object v0

    .line 44826
    invoke-virtual {v0, v8}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->setIsSuccess(Z)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->addVarTable(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;

    move-result-object p0

    .line 44828
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object p0

    invoke-static {p0}, Lcom/cyjh/event/c;->a(Lcom/google/protobuf/ByteString;)V

    return-void

    .line 39277
    :pswitch_8
    invoke-virtual {v0, v7}, Lcom/cyjh/mobileanjian/ipc/ui/i;->e(Ljava/lang/String;)V

    return-void

    .line 44720
    :pswitch_9
    iget-object v1, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v2, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v1, v1, v2

    if-nez v1, :cond_f

    .line 44721
    invoke-static {v4}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    .line 44725
    :cond_f
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getControlId()Ljava/lang/String;

    move-result-object v1

    .line 44726
    iget-object v2, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v3, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v2, v2, v3

    invoke-virtual {v2, v1}, Lcom/cyjh/mobileanjian/ipc/ui/k;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_10

    .line 44728
    invoke-static {v4}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    .line 44732
    :cond_10
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getColor()Ljava/lang/String;

    move-result-object p0

    const-string v3, "^#*([0-9A-Fa-f]{6})|([0-9A-Fa-f]{3})"

    .line 44733
    invoke-virtual {p0, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_11

    .line 44734
    sget p0, Lcom/cyjh/mqsdk/R$string;->ui_show_invalid_color_value:I

    new-array v1, v4, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(I[Ljava/lang/Object;)V

    .line 44735
    invoke-static {v4}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    :cond_11
    const-string v3, "#"

    .line 44739
    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_12

    .line 44740
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "#"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 44741
    :cond_12
    invoke-static {p0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p0

    .line 44742
    invoke-static {p0}, Lcom/cyjh/mobileanjian/ipc/utils/c;->a(I)I

    move-result p0

    .line 44743
    iget-object v3, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->e:[Ljava/util/HashMap;

    iget v4, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v3, v3, v4

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lcom/cyjh/mobileanjian/ipc/ui/m;->c:Lcom/cyjh/mobileanjian/ipc/ui/m;

    if-ne v3, v4, :cond_14

    .line 44744
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 44745
    invoke-virtual {v1, p0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 44746
    invoke-virtual {v0}, Lcom/cyjh/mobileanjian/ipc/ui/i;->b()I

    move-result p0

    int-to-float p0, p0

    .line 44747
    invoke-virtual {v1, p0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 44748
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x10

    if-lt p0, v0, :cond_13

    .line 44749
    invoke-virtual {v2, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    .line 44751
    :cond_13
    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 44753
    :goto_3
    invoke-static {v8}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    .line 44756
    :cond_14
    iget-object v3, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->e:[Ljava/util/HashMap;

    iget v0, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v0, v3, v0

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/ui/m;->f:Lcom/cyjh/mobileanjian/ipc/ui/m;

    if-eq v0, v1, :cond_15

    .line 44757
    invoke-virtual {v2, p0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 44759
    :cond_15
    invoke-static {v8}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    .line 44650
    :pswitch_a
    iget-object v1, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v2, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v1, v1, v2

    if-nez v1, :cond_16

    .line 44651
    invoke-static {v4}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    .line 44655
    :cond_16
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getControlId()Ljava/lang/String;

    move-result-object v1

    .line 44656
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getColor()Ljava/lang/String;

    move-result-object v2

    const-string v3, "^#*([0-9A-Fa-f]{6})|([0-9A-Fa-f]{3})"

    .line 44658
    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_17

    .line 44659
    sget p0, Lcom/cyjh/mqsdk/R$string;->ui_show_invalid_color_value:I

    new-array v1, v4, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(I[Ljava/lang/Object;)V

    .line 44660
    invoke-static {v4}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    :cond_17
    const-string v3, "#"

    .line 44664
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_18

    .line 44665
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "#"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 44666
    :cond_18
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    .line 44667
    invoke-static {v2}, Lcom/cyjh/mobileanjian/ipc/utils/c;->a(I)I

    move-result v2

    .line 44670
    iget-object v3, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->d:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_19

    .line 44671
    iget-object p0, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget-object v0, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->d:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget-object p0, p0, v0

    invoke-virtual {p0, v2}, Lcom/cyjh/mobileanjian/ipc/ui/k;->a(I)V

    goto :goto_4

    .line 44676
    :cond_19
    iget-object v3, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v5, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v3, v3, v5

    invoke-virtual {v3, v1}, Lcom/cyjh/mobileanjian/ipc/ui/k;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_1a

    .line 44678
    invoke-static {v4}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    .line 44682
    :cond_1a
    sget-object v5, Lcom/cyjh/mobileanjian/ipc/ui/i$3;->b:[I

    iget-object v6, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->e:[Ljava/util/HashMap;

    iget v0, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v0, v6, v0

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cyjh/mobileanjian/ipc/ui/m;

    invoke-virtual {v0}, Lcom/cyjh/mobileanjian/ipc/ui/m;->ordinal()I

    move-result v0

    aget v0, v5, v0

    packed-switch v0, :pswitch_data_2

    .line 44712
    invoke-static {v4}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    goto :goto_5

    .line 44703
    :pswitch_b
    check-cast v3, Landroid/widget/Spinner;

    .line 44704
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getItemIndex()I

    move-result p0

    invoke-virtual {v3}, Landroid/widget/Spinner;->getCount()I

    move-result v0

    if-lt p0, v0, :cond_1c

    .line 44705
    invoke-static {v4}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    .line 44694
    :pswitch_c
    check-cast v3, Landroid/widget/RadioGroup;

    .line 44695
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getItemIndex()I

    move-result p0

    invoke-virtual {v3, p0}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/RadioButton;

    if-nez p0, :cond_1b

    .line 44697
    invoke-static {v4}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    .line 44700
    :cond_1b
    invoke-virtual {p0, v2}, Landroid/widget/RadioButton;->setTextColor(I)V

    goto :goto_4

    .line 44690
    :pswitch_d
    check-cast v3, Landroid/widget/CheckBox;

    .line 44691
    invoke-virtual {v3, v2}, Landroid/widget/CheckBox;->setTextColor(I)V

    goto :goto_4

    .line 44686
    :pswitch_e
    check-cast v3, Landroid/widget/TextView;

    .line 44687
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 44716
    :cond_1c
    :goto_4
    invoke-static {v8}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    :goto_5
    return-void

    .line 43949
    :pswitch_f
    iget-object v1, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v2, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v1, v1, v2

    if-nez v1, :cond_1d

    .line 43950
    invoke-static {v4}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    .line 43954
    :cond_1d
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getControlId()Ljava/lang/String;

    move-result-object v1

    .line 43957
    iget-object v2, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->e:[Ljava/util/HashMap;

    iget v3, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v2, v2, v3

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1e

    .line 43958
    invoke-static {v4}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    .line 43962
    :cond_1e
    sget-object v2, Lcom/cyjh/mobileanjian/ipc/ui/i$3;->b:[I

    iget-object v3, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->e:[Ljava/util/HashMap;

    iget v5, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v3, v3, v5

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cyjh/mobileanjian/ipc/ui/m;

    invoke-virtual {v3}, Lcom/cyjh/mobileanjian/ipc/ui/m;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_3

    .line 43993
    invoke-static {v4}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    goto/16 :goto_7

    .line 43983
    :pswitch_10
    iget-object v2, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v0, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v0, v2, v0

    invoke-virtual {v0, v1}, Lcom/cyjh/mobileanjian/ipc/ui/k;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    .line 43984
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getItemIndex()I

    move-result v2

    invoke-virtual {v0}, Landroid/widget/Spinner;->getCount()I

    move-result v3

    if-lt v2, v3, :cond_1f

    .line 43985
    invoke-static {v4}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    .line 43988
    :cond_1f
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Spinner Get pos: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getItemIndex()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/Spinner;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 43989
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getItemIndex()I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto :goto_6

    .line 43974
    :pswitch_11
    iget-object v2, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v0, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v0, v2, v0

    invoke-virtual {v0, v1}, Lcom/cyjh/mobileanjian/ipc/ui/k;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    .line 43975
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getItemIndex()I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/RadioButton;

    if-nez p0, :cond_20

    .line 43977
    invoke-static {v4}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    .line 43980
    :cond_20
    invoke-virtual {p0}, Landroid/widget/RadioButton;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_6

    .line 43970
    :pswitch_12
    iget-object p0, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v0, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object p0, p0, v0

    invoke-virtual {p0, v1}, Lcom/cyjh/mobileanjian/ipc/ui/k;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/CheckBox;

    .line 43971
    invoke-virtual {p0}, Landroid/widget/CheckBox;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_6

    .line 43966
    :pswitch_13
    iget-object p0, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v0, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object p0, p0, v0

    invoke-virtual {p0, v1}, Lcom/cyjh/mobileanjian/ipc/ui/k;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    .line 43967
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    .line 43997
    :goto_6
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;

    move-result-object v0

    .line 43998
    invoke-virtual {v0, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;->setControlId(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;

    move-result-object v0

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Data_Type;->STRING:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Data_Type;

    .line 43999
    invoke-virtual {v0, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;->setType(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Data_Type;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;

    move-result-object v0

    .line 44000
    invoke-virtual {v0, p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;->setStringValue(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar;

    move-result-object p0

    .line 44001
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object v0

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Command_Type;->RSP_MSG:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Command_Type;

    .line 44002
    invoke-virtual {v0, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->setCommand(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Command_Type;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object v0

    .line 44003
    invoke-virtual {v0, v8}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->setIsSuccess(Z)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->addVarTable(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;

    move-result-object p0

    .line 44005
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object p0

    invoke-static {p0}, Lcom/cyjh/event/c;->a(Lcom/google/protobuf/ByteString;)V

    return-void

    :goto_7
    return-void

    .line 43556
    :pswitch_14
    iget-object v1, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v2, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v1, v1, v2

    if-nez v1, :cond_21

    .line 43557
    invoke-static {v4}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    .line 43561
    :cond_21
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getControlId()Ljava/lang/String;

    move-result-object v1

    .line 43562
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getText()Ljava/lang/String;

    .line 43564
    iget-object v2, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v3, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v2, v2, v3

    invoke-virtual {v2, v1}, Lcom/cyjh/mobileanjian/ipc/ui/k;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_22

    .line 43566
    invoke-static {v4}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    .line 43570
    :cond_22
    iget-object v3, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->e:[Ljava/util/HashMap;

    iget v0, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v0, v3, v0

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/ui/m;->b:Lcom/cyjh/mobileanjian/ipc/ui/m;

    if-eq v0, v1, :cond_23

    .line 43571
    invoke-static {v4}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    .line 43575
    :cond_23
    check-cast v2, Landroid/widget/EditText;

    .line 43576
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getEditInputType()I

    move-result p0

    invoke-virtual {v2, p0}, Landroid/widget/EditText;->setInputType(I)V

    .line 43577
    invoke-static {v8}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    .line 39261
    :pswitch_15
    invoke-virtual {v0, p0}, Lcom/cyjh/mobileanjian/ipc/ui/i;->b(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;)V

    return-void

    .line 39258
    :pswitch_16
    invoke-virtual {v0, p0}, Lcom/cyjh/mobileanjian/ipc/ui/i;->c(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;)V

    return-void

    .line 43476
    :pswitch_17
    iget-object p0, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->d:Ljava/util/HashMap;

    invoke-virtual {p0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_24

    .line 43479
    invoke-static {v8}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    goto/16 :goto_8

    .line 43483
    :cond_24
    iget-object p0, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->e:[Ljava/util/HashMap;

    iget v1, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object p0, p0, v1

    invoke-virtual {p0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_25

    .line 43484
    invoke-static {v4}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    goto/16 :goto_8

    .line 43488
    :cond_25
    iget-object p0, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v0, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object p0, p0, v0

    invoke-virtual {p0, v7}, Lcom/cyjh/mobileanjian/ipc/ui/k;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object p0

    .line 43489
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    .line 43490
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 43491
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_8

    .line 39252
    :pswitch_18
    invoke-virtual {v0, p0}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;)Z

    move-result v8

    goto/16 :goto_8

    .line 39235
    :pswitch_19
    iget-object v1, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v2, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v1, v1, v2

    if-eqz v1, :cond_2d

    .line 39236
    iget-object v1, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v2, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v1, v1, v2

    invoke-virtual {v0}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a()I

    move-result v0

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getControlId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getParentId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getText()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v0, v2, v3, p0}, Lcom/cyjh/mobileanjian/ipc/ui/k;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    goto/16 :goto_8

    .line 39230
    :pswitch_1a
    iget-object v1, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v2, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v1, v1, v2

    if-eqz v1, :cond_2d

    .line 39231
    iget-object v1, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v0, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v0, v1, v0

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getControlId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getHeight()I

    move-result p0

    invoke-virtual {v0, v1, p0}, Lcom/cyjh/mobileanjian/ipc/ui/k;->a(Ljava/lang/String;I)V

    goto/16 :goto_8

    .line 39222
    :pswitch_1b
    iget-object v1, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v2, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v1, v1, v2

    if-eqz v1, :cond_2d

    .line 39223
    iget-object v1, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->c:Lcom/cyjh/mobileanjian/ipc/ui/g;

    invoke-virtual {v0}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a()I

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getItemTextList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getDefaultItemIndex()I

    move-result v3

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getWidth()I

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getHeight()I

    invoke-virtual {v1, v7, v2, v3}, Lcom/cyjh/mobileanjian/ipc/ui/g;->a(Ljava/lang/String;Ljava/util/List;I)Landroid/widget/Spinner;

    move-result-object v1

    .line 39224
    iget-object v2, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->e:[Ljava/util/HashMap;

    iget v3, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v2, v2, v3

    sget-object v3, Lcom/cyjh/mobileanjian/ipc/ui/m;->f:Lcom/cyjh/mobileanjian/ipc/ui/m;

    invoke-virtual {v2, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39225
    iget-object v2, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v3, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v2, v2, v3

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getParentId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, v1, p0}, Lcom/cyjh/mobileanjian/ipc/ui/k;->a(Landroid/view/View;Ljava/lang/String;)V

    .line 39226
    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    goto/16 :goto_8

    .line 39214
    :pswitch_1c
    iget-object v1, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v2, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v1, v1, v2

    if-eqz v1, :cond_2d

    .line 39215
    iget-object v1, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->c:Lcom/cyjh/mobileanjian/ipc/ui/g;

    invoke-virtual {v0}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a()I

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v7, v2, v3, v4}, Lcom/cyjh/mobileanjian/ipc/ui/g;->a(Ljava/lang/String;IILjava/lang/String;)Landroid/webkit/WebView;

    move-result-object v1

    .line 39216
    iget-object v2, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->e:[Ljava/util/HashMap;

    iget v3, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v2, v2, v3

    sget-object v3, Lcom/cyjh/mobileanjian/ipc/ui/m;->h:Lcom/cyjh/mobileanjian/ipc/ui/m;

    invoke-virtual {v2, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39217
    iget-object v2, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v0, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v0, v2, v0

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getParentId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/cyjh/mobileanjian/ipc/ui/k;->a(Landroid/view/View;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 39205
    :pswitch_1d
    iget-object v1, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v2, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v1, v1, v2

    if-eqz v1, :cond_2d

    .line 39206
    iget-object v1, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->c:Lcom/cyjh/mobileanjian/ipc/ui/g;

    invoke-virtual {v0}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a()I

    move-result v2

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getHeight()I

    move-result v5

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getPath()Ljava/lang/String;

    move-result-object v6

    move-object v3, v7

    invoke-virtual/range {v1 .. v6}, Lcom/cyjh/mobileanjian/ipc/ui/g;->a(ILjava/lang/String;IILjava/lang/String;)Landroid/widget/ImageView;

    move-result-object v1

    .line 39207
    iget-object v2, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->e:[Ljava/util/HashMap;

    iget v3, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v2, v2, v3

    sget-object v3, Lcom/cyjh/mobileanjian/ipc/ui/m;->g:Lcom/cyjh/mobileanjian/ipc/ui/m;

    invoke-virtual {v2, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39208
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 39209
    iget-object v2, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v0, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v0, v2, v0

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getParentId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/cyjh/mobileanjian/ipc/ui/k;->a(Landroid/view/View;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 39197
    :pswitch_1e
    iget-object v1, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v2, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v1, v1, v2

    if-eqz v1, :cond_2d

    .line 39198
    iget-object v1, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->c:Lcom/cyjh/mobileanjian/ipc/ui/g;

    invoke-virtual {v0}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a()I

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getHeight()I

    move-result v5

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getDefaultCheckStatus()Z

    move-result v6

    move-object v2, v7

    invoke-virtual/range {v1 .. v6}, Lcom/cyjh/mobileanjian/ipc/ui/g;->a(Ljava/lang/String;Ljava/lang/String;IIZ)Landroid/widget/CheckBox;

    move-result-object v1

    .line 39199
    iget-object v2, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->e:[Ljava/util/HashMap;

    iget v3, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v2, v2, v3

    sget-object v3, Lcom/cyjh/mobileanjian/ipc/ui/m;->d:Lcom/cyjh/mobileanjian/ipc/ui/m;

    invoke-virtual {v2, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39200
    iget-object v2, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v0, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v0, v2, v0

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getParentId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/cyjh/mobileanjian/ipc/ui/k;->a(Landroid/view/View;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 39189
    :pswitch_1f
    iget-object v1, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v2, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v1, v1, v2

    if-eqz v1, :cond_2d

    .line 39190
    iget-object v1, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->c:Lcom/cyjh/mobileanjian/ipc/ui/g;

    invoke-virtual {v0}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a()I

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getItemTextList()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getDefaultItemIndex()I

    move-result v4

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getHeight()I

    move-result v6

    move-object v2, v7

    invoke-virtual/range {v1 .. v6}, Lcom/cyjh/mobileanjian/ipc/ui/g;->a(Ljava/lang/String;Ljava/util/List;III)Landroid/widget/RadioGroup;

    move-result-object v1

    .line 39191
    iget-object v2, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->e:[Ljava/util/HashMap;

    iget v3, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v2, v2, v3

    sget-object v3, Lcom/cyjh/mobileanjian/ipc/ui/m;->e:Lcom/cyjh/mobileanjian/ipc/ui/m;

    invoke-virtual {v2, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39192
    iget-object v2, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v0, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v0, v2, v0

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getParentId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/cyjh/mobileanjian/ipc/ui/k;->a(Landroid/view/View;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 39181
    :pswitch_20
    iget-object v1, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v2, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v1, v1, v2

    if-eqz v1, :cond_2d

    .line 39182
    iget-object v1, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->c:Lcom/cyjh/mobileanjian/ipc/ui/g;

    invoke-virtual {v0}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a()I

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getHeight()I

    move-result v4

    invoke-virtual {v1, v7, v2, v3, v4}, Lcom/cyjh/mobileanjian/ipc/ui/g;->b(Ljava/lang/String;Ljava/lang/String;II)Landroid/widget/Button;

    move-result-object v1

    .line 39183
    iget-object v2, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->e:[Ljava/util/HashMap;

    iget v3, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v2, v2, v3

    sget-object v3, Lcom/cyjh/mobileanjian/ipc/ui/m;->c:Lcom/cyjh/mobileanjian/ipc/ui/m;

    invoke-virtual {v2, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39184
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 39185
    iget-object v2, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v0, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v0, v2, v0

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getParentId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/cyjh/mobileanjian/ipc/ui/k;->a(Landroid/view/View;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 39173
    :pswitch_21
    iget-object v1, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v2, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v1, v1, v2

    if-eqz v1, :cond_2d

    .line 39174
    iget-object v1, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->c:Lcom/cyjh/mobileanjian/ipc/ui/g;

    invoke-virtual {v0}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a()I

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getHeight()I

    move-result v4

    invoke-virtual {v1, v7, v2, v3, v4}, Lcom/cyjh/mobileanjian/ipc/ui/g;->d(Ljava/lang/String;Ljava/lang/String;II)Landroid/widget/EditText;

    move-result-object v1

    .line 39175
    iget-object v2, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->e:[Ljava/util/HashMap;

    iget v3, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v2, v2, v3

    sget-object v3, Lcom/cyjh/mobileanjian/ipc/ui/m;->b:Lcom/cyjh/mobileanjian/ipc/ui/m;

    invoke-virtual {v2, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39176
    iget-object v2, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v3, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v2, v2, v3

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getParentId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, v1, p0}, Lcom/cyjh/mobileanjian/ipc/ui/k;->a(Landroid/view/View;Ljava/lang/String;)V

    .line 39177
    new-instance p0, Lcom/cyjh/mobileanjian/ipc/ui/i$a;

    invoke-direct {p0, v0, v7}, Lcom/cyjh/mobileanjian/ipc/ui/i$a;-><init>(Lcom/cyjh/mobileanjian/ipc/ui/i;Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto/16 :goto_8

    .line 39166
    :pswitch_22
    iget-object v1, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v2, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v1, v1, v2

    if-eqz v1, :cond_2d

    .line 39167
    iget-object v1, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->c:Lcom/cyjh/mobileanjian/ipc/ui/g;

    invoke-virtual {v0}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a()I

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getHeight()I

    move-result v4

    invoke-virtual {v1, v7, v2, v3, v4}, Lcom/cyjh/mobileanjian/ipc/ui/g;->a(Ljava/lang/String;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v1

    .line 39168
    iget-object v2, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->e:[Ljava/util/HashMap;

    iget v3, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v2, v2, v3

    sget-object v3, Lcom/cyjh/mobileanjian/ipc/ui/m;->a:Lcom/cyjh/mobileanjian/ipc/ui/m;

    invoke-virtual {v2, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39169
    iget-object v2, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v0, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v0, v2, v0

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getParentId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/cyjh/mobileanjian/ipc/ui/k;->a(Landroid/view/View;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 39157
    :pswitch_23
    iget-object v1, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v2, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v1, v1, v2

    if-eqz v1, :cond_2d

    .line 39159
    iget-object v1, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->c:Lcom/cyjh/mobileanjian/ipc/ui/g;

    invoke-virtual {v0}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a()I

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getHeight()I

    move-result v3

    invoke-virtual {v1, v7, v2, v3}, Lcom/cyjh/mobileanjian/ipc/ui/g;->b(Ljava/lang/String;II)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 39160
    iget-object v2, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->e:[Ljava/util/HashMap;

    iget v3, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v2, v2, v3

    sget-object v3, Lcom/cyjh/mobileanjian/ipc/ui/m;->i:Lcom/cyjh/mobileanjian/ipc/ui/m;

    invoke-virtual {v2, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39161
    iget-object v2, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v0, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v0, v2, v0

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getParentId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/cyjh/mobileanjian/ipc/ui/k;->a(Landroid/view/View;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 43179
    :pswitch_24
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getControlId()Ljava/lang/String;

    move-result-object v1

    .line 43180
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getColor()Ljava/lang/String;

    move-result-object p0

    .line 43182
    iget-object v2, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->d:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_26

    .line 43183
    sget p0, Lcom/cyjh/mqsdk/R$string;->ui_show_not_found_ui:I

    new-array v2, v8, [Ljava/lang/Object;

    aput-object v1, v2, v4

    invoke-virtual {v0, p0, v2}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(I[Ljava/lang/Object;)V

    .line 43184
    invoke-static {v4}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    :cond_26
    const-string v2, "^#*([0-9A-Fa-f]{6})|([0-9A-Fa-f]{3})"

    .line 43188
    invoke-virtual {p0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_27

    .line 43189
    sget p0, Lcom/cyjh/mqsdk/R$string;->ui_show_invalid_color_value:I

    new-array v1, v4, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(I[Ljava/lang/Object;)V

    .line 43190
    invoke-static {v4}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    :cond_27
    const-string v2, "#"

    .line 43194
    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_28

    .line 43195
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "#"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 43196
    :cond_28
    iget-object v2, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->d:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 43197
    invoke-static {p0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p0

    .line 43198
    invoke-static {p0}, Lcom/cyjh/mobileanjian/ipc/utils/c;->a(I)I

    move-result p0

    .line 43199
    iget-object v0, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    aget-object v0, v0, v1

    invoke-virtual {v0, p0}, Lcom/cyjh/mobileanjian/ipc/ui/k;->b(I)V

    .line 43200
    invoke-static {v8}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    .line 43160
    :pswitch_25
    iget-object p0, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->d:Ljava/util/HashMap;

    invoke-virtual {p0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_29

    .line 43161
    sget p0, Lcom/cyjh/mqsdk/R$string;->ui_show_not_found_ui:I

    new-array v1, v8, [Ljava/lang/Object;

    aput-object v7, v1, v4

    invoke-virtual {v0, p0, v1}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(I[Ljava/lang/Object;)V

    .line 43162
    invoke-static {v4}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    .line 43166
    :cond_29
    iget-object p0, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget-object v0, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->d:Ljava/util/HashMap;

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget-object p0, p0, v0

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/ui/k;->a()Ljava/lang/String;

    move-result-object p0

    .line 43167
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;

    move-result-object v0

    .line 43168
    invoke-virtual {v0, v7}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;->setControlId(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;

    move-result-object v0

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Data_Type;->STRING:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Data_Type;

    .line 43169
    invoke-virtual {v0, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;->setType(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Data_Type;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;

    move-result-object v0

    .line 43170
    invoke-virtual {v0, p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;->setStringValue(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar;

    move-result-object p0

    .line 43171
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object v0

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Command_Type;->RSP_MSG:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Command_Type;

    .line 43172
    invoke-virtual {v0, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->setCommand(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Command_Type;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object v0

    .line 43173
    invoke-virtual {v0, v8}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->setIsSuccess(Z)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->addVarTable(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;

    move-result-object p0

    .line 43175
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object p0

    invoke-static {p0}, Lcom/cyjh/event/c;->a(Lcom/google/protobuf/ByteString;)V

    return-void

    .line 39146
    :pswitch_26
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getText()Ljava/lang/String;

    move-result-object p0

    .line 43150
    iget-object v1, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->d:Ljava/util/HashMap;

    invoke-virtual {v1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2a

    .line 43151
    sget p0, Lcom/cyjh/mqsdk/R$string;->ui_show_not_found_ui:I

    new-array v1, v8, [Ljava/lang/Object;

    aput-object v7, v1, v4

    invoke-virtual {v0, p0, v1}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(I[Ljava/lang/Object;)V

    const/4 v8, 0x0

    goto/16 :goto_8

    .line 43155
    :cond_2a
    iget-object v1, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget-object v0, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->d:Ljava/util/HashMap;

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget-object v0, v1, v0

    invoke-virtual {v0, p0}, Lcom/cyjh/mobileanjian/ipc/ui/k;->a(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 39140
    :pswitch_27
    iget-object v1, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v2, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v1, v1, v2

    if-eqz v1, :cond_2d

    .line 39141
    iget-object v1, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v2, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v1, v1, v2

    invoke-virtual {v0}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a()I

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getParentId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getHeight()I

    move-result p0

    invoke-virtual {v1, v7, v0, v2, p0}, Lcom/cyjh/mobileanjian/ipc/ui/k;->a(Ljava/lang/String;Ljava/lang/String;II)V

    goto/16 :goto_8

    .line 39137
    :pswitch_28
    invoke-virtual {v0}, Lcom/cyjh/mobileanjian/ipc/ui/i;->c()V

    goto/16 :goto_8

    .line 39134
    :pswitch_29
    invoke-virtual {v0, v7}, Lcom/cyjh/mobileanjian/ipc/ui/i;->d(Ljava/lang/String;)Z

    move-result v8

    goto/16 :goto_8

    .line 39131
    :pswitch_2a
    invoke-static {v7}, Lcom/cyjh/mobileanjian/ipc/ui/i;->c(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 42123
    :pswitch_2b
    iget-object p0, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->d:Ljava/util/HashMap;

    invoke-virtual {p0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_2b

    .line 42124
    sget p0, Lcom/cyjh/mqsdk/R$string;->ui_show_not_found_ui:I

    new-array v1, v8, [Ljava/lang/Object;

    aput-object v7, v1, v4

    invoke-virtual {v0, p0, v1}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(I[Ljava/lang/Object;)V

    .line 42125
    invoke-static {v4}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    .line 42129
    :cond_2b
    iget-object p0, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget-object v1, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->d:Ljava/util/HashMap;

    invoke-virtual {v1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-object p0, p0, v1

    .line 42260
    iget-boolean p0, p0, Lcom/cyjh/mobileanjian/ipc/ui/k;->c:Z

    if-eqz p0, :cond_2c

    .line 42130
    invoke-static {v4}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    .line 42134
    :cond_2c
    iget-object p0, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget-object v0, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->d:Ljava/util/HashMap;

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget-object p0, p0, v0

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/ui/k;->c()V

    .line 42135
    invoke-static {v8}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    .line 42136
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;

    move-result-object p0

    .line 42137
    invoke-virtual {p0, v7}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;->setControlId(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;

    move-result-object p0

    sget-object v0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Event_Type;->ON_SHOW:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Event_Type;

    .line 42138
    invoke-virtual {p0, v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;->setType(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Event_Type;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;

    move-result-object p0

    .line 42139
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;

    move-result-object p0

    .line 42140
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object v0

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Command_Type;->EVENT:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Command_Type;

    .line 42141
    invoke-virtual {v0, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->setCommand(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Command_Type;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object v0

    .line 42142
    invoke-virtual {v0, v8}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->setIsSuccess(Z)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object v0

    .line 42143
    invoke-virtual {v0, p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->setEvent(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object p0

    .line 42144
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;

    move-result-object p0

    .line 42145
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object p0

    invoke-static {p0}, Lcom/cyjh/event/c;->b(Lcom/google/protobuf/ByteString;)V

    return-void

    .line 39125
    :pswitch_2c
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getHeight()I

    move-result p0

    .line 40078
    iget v2, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    add-int/2addr v2, v8

    iput v2, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    .line 40079
    iget-object v2, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v3, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    iget-object v4, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->c:Lcom/cyjh/mobileanjian/ipc/ui/g;

    invoke-virtual {v4, v7, v1, p0}, Lcom/cyjh/mobileanjian/ipc/ui/g;->a(Ljava/lang/String;II)Lcom/cyjh/mobileanjian/ipc/ui/k;

    move-result-object p0

    aput-object p0, v2, v3

    .line 40080
    iget-object p0, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->d:Ljava/util/HashMap;

    iget v1, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40082
    iget-object p0, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->e:[Ljava/util/HashMap;

    iget v1, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    aput-object v2, p0, v1

    .line 40084
    iget-object p0, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v1, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object p0, p0, v1

    new-instance v1, Lcom/cyjh/mobileanjian/ipc/ui/i$1;

    invoke-direct {v1, v0, v7}, Lcom/cyjh/mobileanjian/ipc/ui/i$1;-><init>(Lcom/cyjh/mobileanjian/ipc/ui/i;Ljava/lang/String;)V

    .line 40395
    iput-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/k;->b:Landroid/view/View$OnClickListener;

    .line 40100
    iget-object p0, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v1, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object p0, p0, v1

    new-instance v1, Lcom/cyjh/mobileanjian/ipc/ui/i$2;

    invoke-direct {v1, v0, v7}, Lcom/cyjh/mobileanjian/ipc/ui/i$2;-><init>(Lcom/cyjh/mobileanjian/ipc/ui/i;Ljava/lang/String;)V

    .line 41390
    iput-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/k;->a:Landroid/view/View$OnClickListener;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_4

    goto :goto_8

    .line 39117
    :pswitch_2d
    :try_start_1
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/cyjh/mobileanjian/ipc/ui/i;->b(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_4

    goto :goto_8

    :catch_0
    move-exception p0

    .line 39121
    :try_start_2
    invoke-static {p0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_8

    :catch_1
    move-exception p0

    .line 39119
    invoke-static {p0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V
    :try_end_2
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_8

    .line 39108
    :pswitch_2e
    :try_start_3
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Ljava/lang/String;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_3 .. :try_end_3} :catch_4

    goto :goto_8

    :catch_2
    move-exception p0

    .line 39112
    :try_start_4
    invoke-static {p0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_8

    :catch_3
    move-exception p0

    .line 39110
    invoke-static {p0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 39308
    :cond_2d
    :goto_8
    :pswitch_2f
    invoke-static {v8}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V
    :try_end_4
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_4 .. :try_end_4} :catch_4

    :cond_2e
    return-void

    :catch_4
    move-exception p0

    .line 38291
    invoke-static {p0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_f
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_2
        :pswitch_2f
        :pswitch_1
        :pswitch_2f
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
    .end packed-switch
.end method

.method private static b(I)Lcom/cyjh/event/Injector$a;
    .locals 2

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_1

    .line 1865
    sget-object v1, Lcom/cyjh/event/Injector;->x:[Lcom/cyjh/event/Injector$a;

    aget-object v1, v1, v0

    iget-boolean v1, v1, Lcom/cyjh/event/Injector$a;->a:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/cyjh/event/Injector;->x:[Lcom/cyjh/event/Injector$a;

    aget-object v1, v1, v0

    iget v1, v1, Lcom/cyjh/event/Injector$a;->b:I

    if-ne v1, p0, :cond_0

    .line 1867
    sget-object p0, Lcom/cyjh/event/Injector;->x:[Lcom/cyjh/event/Injector$a;

    aget-object p0, p0, v0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method

.method static synthetic b()V
    .locals 1

    .line 37269
    invoke-static {}, Lcom/cyjh/mq/sdk/MqRunnerLite;->getInstance()Lcom/cyjh/mq/sdk/MqRunnerLite;

    move-result-object v0

    .line 38070
    iget-object v0, v0, Lcom/cyjh/mq/sdk/MqRunnerLite;->a:Lcom/cyjh/mobileanjian/ipc/interfaces/OnScriptListener;

    if-eqz v0, :cond_0

    .line 37271
    invoke-interface {v0}, Lcom/cyjh/mobileanjian/ipc/interfaces/OnScriptListener;->onResume()V

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/cyjh/event/b;)V
    .locals 4

    .line 35240
    new-instance v0, Lcom/cyjh/mobileanjian/ipc/ui/b;

    sget-object v1, Lcom/cyjh/event/Injector;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/cyjh/event/b;->d:Ljava/lang/String;

    iget p0, p0, Lcom/cyjh/event/b;->a:I

    new-instance v3, Lcom/cyjh/event/Injector$2;

    invoke-direct {v3}, Lcom/cyjh/event/Injector$2;-><init>()V

    invoke-direct {v0, v1, v2, p0, v3}, Lcom/cyjh/mobileanjian/ipc/ui/b;-><init>(Landroid/content/Context;Ljava/lang/String;ILcom/cyjh/mobileanjian/ipc/ui/b$a;)V

    .line 35245
    invoke-virtual {v0}, Lcom/cyjh/mobileanjian/ipc/ui/b;->a()V

    return-void
.end method

.method private static b([B)V
    .locals 9

    .line 285
    :try_start_0
    invoke-static {p0}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object p0

    .line 286
    invoke-static {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->parseFrom(Lcom/google/protobuf/ByteString;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;

    move-result-object p0

    if-eqz p0, :cond_2e

    .line 288
    sget-object v0, Lcom/cyjh/event/Injector;->f:Lcom/cyjh/mobileanjian/ipc/ui/i;

    .line 5101
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getControlId()Ljava/lang/String;

    move-result-object v7

    .line 5102
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getCommand()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;

    move-result-object v1

    .line 5103
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "command: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 5105
    sget-object v2, Lcom/cyjh/mobileanjian/ipc/ui/i$3;->a:[I

    invoke-virtual {v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->ordinal()I

    move-result v1

    aget v1, v2, v1

    const/4 v2, 0x2

    const/4 v3, 0x3

    const/4 v8, 0x1

    const/4 v4, 0x0

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_8

    .line 11784
    :pswitch_0
    iget-object v1, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v2, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v1, v1, v2

    if-nez v1, :cond_0

    .line 11785
    invoke-static {v4}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    .line 11789
    :cond_0
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getControlId()Ljava/lang/String;

    move-result-object v1

    .line 11790
    iget-object v2, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v0, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v0, v2, v0

    invoke-virtual {v0, v1}, Lcom/cyjh/mobileanjian/ipc/ui/k;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    .line 11792
    invoke-static {v4}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    .line 11796
    :cond_1
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getPadding()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$Padding_Var;

    move-result-object p0

    .line 11797
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "padding: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$Padding_Var;->getLeft()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11798
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "padding: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$Padding_Var;->getTop()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11799
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "padding: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$Padding_Var;->getRight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11800
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "padding: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$Padding_Var;->getBottom()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11801
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$Padding_Var;->getLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$Padding_Var;->getTop()I

    move-result v2

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$Padding_Var;->getRight()I

    move-result v3

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$Padding_Var;->getBottom()I

    move-result p0

    invoke-virtual {v0, v1, v2, v3, p0}, Landroid/view/View;->setPadding(IIII)V

    .line 11802
    invoke-static {v8}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    .line 11763
    :pswitch_1
    iget-object v1, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v2, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v1, v1, v2

    if-nez v1, :cond_2

    .line 11764
    invoke-static {v4}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    .line 11768
    :cond_2
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getControlId()Ljava/lang/String;

    move-result-object v1

    .line 11769
    iget-object v2, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v0, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v0, v2, v0

    invoke-virtual {v0, v1}, Lcom/cyjh/mobileanjian/ipc/ui/k;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_3

    .line 11771
    invoke-static {v4}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    .line 11775
    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 11776
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getAlignType()I

    move-result p0

    iput p0, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 11777
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 11779
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "set gravity ok; "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11780
    invoke-static {v8}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    .line 10866
    :pswitch_2
    iget-object v1, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v5, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v1, v1, v5

    if-nez v1, :cond_4

    .line 10867
    invoke-static {v4}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    .line 10871
    :cond_4
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getControlId()Ljava/lang/String;

    move-result-object v1

    .line 10874
    iget-object v5, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->e:[Ljava/util/HashMap;

    iget v6, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v5, v5, v6

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_5

    .line 10875
    invoke-static {v4}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    .line 10879
    :cond_5
    sget-object v5, Lcom/cyjh/mobileanjian/ipc/ui/i$3;->b:[I

    iget-object v6, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->e:[Ljava/util/HashMap;

    iget v7, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v6, v6, v7

    invoke-virtual {v6, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/cyjh/mobileanjian/ipc/ui/m;

    invoke-virtual {v6}, Lcom/cyjh/mobileanjian/ipc/ui/m;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_1

    .line 10901
    invoke-static {v4}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    goto/16 :goto_1

    .line 10891
    :pswitch_3
    iget-object v5, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v0, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v0, v5, v0

    invoke-virtual {v0, v1}, Lcom/cyjh/mobileanjian/ipc/ui/k;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    .line 10892
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getItemIndex()I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/RadioButton;

    if-nez p0, :cond_6

    .line 10894
    invoke-static {v4}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    .line 10897
    :cond_6
    invoke-virtual {p0}, Landroid/widget/RadioButton;->getPaint()Landroid/text/TextPaint;

    move-result-object p0

    invoke-virtual {p0}, Landroid/text/TextPaint;->getColor()I

    move-result p0

    goto :goto_0

    .line 10887
    :pswitch_4
    iget-object p0, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v0, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object p0, p0, v0

    invoke-virtual {p0, v1}, Lcom/cyjh/mobileanjian/ipc/ui/k;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/CheckBox;

    .line 10888
    invoke-virtual {p0}, Landroid/widget/CheckBox;->getPaint()Landroid/text/TextPaint;

    move-result-object p0

    invoke-virtual {p0}, Landroid/text/TextPaint;->getColor()I

    move-result p0

    goto :goto_0

    .line 10883
    :pswitch_5
    iget-object p0, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v0, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object p0, p0, v0

    invoke-virtual {p0, v1}, Lcom/cyjh/mobileanjian/ipc/ui/k;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    .line 10884
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p0

    invoke-virtual {p0}, Landroid/text/TextPaint;->getColor()I

    move-result p0

    :goto_0
    const-string v0, "%02X%02X%02X"

    .line 10907
    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v3, v2

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 10909
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;

    move-result-object v0

    .line 10910
    invoke-virtual {v0, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;->setControlId(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;

    move-result-object v0

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Data_Type;->STRING:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Data_Type;

    .line 10911
    invoke-virtual {v0, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;->setType(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Data_Type;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;

    move-result-object v0

    .line 10912
    invoke-virtual {v0, p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;->setStringValue(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar;

    move-result-object p0

    .line 10913
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object v0

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Command_Type;->RSP_MSG:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Command_Type;

    .line 10914
    invoke-virtual {v0, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->setCommand(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Command_Type;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object v0

    .line 10915
    invoke-virtual {v0, v8}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->setIsSuccess(Z)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->addVarTable(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;

    move-result-object p0

    .line 10917
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object p0

    invoke-static {p0}, Lcom/cyjh/event/c;->a(Lcom/google/protobuf/ByteString;)V

    return-void

    :goto_1
    return-void

    .line 10832
    :pswitch_6
    iget-object p0, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v1, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object p0, p0, v1

    if-nez p0, :cond_7

    .line 10833
    invoke-static {v4}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    .line 10837
    :cond_7
    iget-object p0, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v0, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object p0, p0, v0

    invoke-virtual {p0, v7}, Lcom/cyjh/mobileanjian/ipc/ui/k;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object p0

    if-nez p0, :cond_8

    .line 10839
    invoke-static {v4}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    .line 10843
    :cond_8
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-eqz p0, :cond_9

    const/4 v0, 0x4

    if-eq p0, v0, :cond_b

    const/16 v0, 0x8

    if-eq p0, v0, :cond_a

    :cond_9
    const/4 v2, 0x1

    goto :goto_2

    :cond_a
    const/4 v2, 0x3

    .line 10854
    :cond_b
    :goto_2
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;

    move-result-object p0

    .line 10855
    invoke-virtual {p0, v7}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;->setControlId(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;

    move-result-object p0

    sget-object v0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Data_Type;->INT:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Data_Type;

    .line 10856
    invoke-virtual {p0, v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;->setType(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Data_Type;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;

    move-result-object p0

    .line 10857
    invoke-virtual {p0, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;->setIntValue(I)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar;

    move-result-object p0

    .line 10858
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object v0

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Command_Type;->RSP_MSG:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Command_Type;

    .line 10859
    invoke-virtual {v0, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->setCommand(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Command_Type;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object v0

    .line 10860
    invoke-virtual {v0, v8}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->setIsSuccess(Z)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->addVarTable(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;

    move-result-object p0

    .line 10862
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object p0

    invoke-static {p0}, Lcom/cyjh/event/c;->a(Lcom/google/protobuf/ByteString;)V

    return-void

    .line 10806
    :pswitch_7
    iget-object p0, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v1, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object p0, p0, v1

    if-nez p0, :cond_c

    .line 10807
    invoke-static {v4}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    .line 10811
    :cond_c
    iget-object p0, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v1, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object p0, p0, v1

    invoke-virtual {p0, v7}, Lcom/cyjh/mobileanjian/ipc/ui/k;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object p0

    if-nez p0, :cond_d

    .line 10813
    invoke-static {v4}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    .line 10816
    :cond_d
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v1

    .line 10817
    iget-object v2, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->e:[Ljava/util/HashMap;

    iget v0, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v0, v2, v0

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v2, Lcom/cyjh/mobileanjian/ipc/ui/m;->b:Lcom/cyjh/mobileanjian/ipc/ui/m;

    if-ne v0, v2, :cond_e

    .line 10818
    check-cast p0, Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->isFocusable()Z

    move-result v1

    .line 10820
    :cond_e
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;

    move-result-object p0

    .line 10821
    invoke-virtual {p0, v7}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;->setControlId(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;

    move-result-object p0

    sget-object v0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Data_Type;->BOOL:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Data_Type;

    .line 10822
    invoke-virtual {p0, v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;->setType(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Data_Type;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;

    move-result-object p0

    .line 10823
    invoke-virtual {p0, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;->setBoolValue(Z)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar;

    move-result-object p0

    .line 10824
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object v0

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Command_Type;->RSP_MSG:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Command_Type;

    .line 10825
    invoke-virtual {v0, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->setCommand(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Command_Type;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object v0

    .line 10826
    invoke-virtual {v0, v8}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->setIsSuccess(Z)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->addVarTable(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;

    move-result-object p0

    .line 10828
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object p0

    invoke-static {p0}, Lcom/cyjh/event/c;->a(Lcom/google/protobuf/ByteString;)V

    return-void

    .line 5277
    :pswitch_8
    invoke-virtual {v0, v7}, Lcom/cyjh/mobileanjian/ipc/ui/i;->e(Ljava/lang/String;)V

    return-void

    .line 10720
    :pswitch_9
    iget-object v1, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v2, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v1, v1, v2

    if-nez v1, :cond_f

    .line 10721
    invoke-static {v4}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    .line 10725
    :cond_f
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getControlId()Ljava/lang/String;

    move-result-object v1

    .line 10726
    iget-object v2, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v3, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v2, v2, v3

    invoke-virtual {v2, v1}, Lcom/cyjh/mobileanjian/ipc/ui/k;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_10

    .line 10728
    invoke-static {v4}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    .line 10732
    :cond_10
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getColor()Ljava/lang/String;

    move-result-object p0

    const-string v3, "^#*([0-9A-Fa-f]{6})|([0-9A-Fa-f]{3})"

    .line 10733
    invoke-virtual {p0, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_11

    .line 10734
    sget p0, Lcom/cyjh/mqsdk/R$string;->ui_show_invalid_color_value:I

    new-array v1, v4, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(I[Ljava/lang/Object;)V

    .line 10735
    invoke-static {v4}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    :cond_11
    const-string v3, "#"

    .line 10739
    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_12

    .line 10740
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "#"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 10741
    :cond_12
    invoke-static {p0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p0

    .line 10742
    invoke-static {p0}, Lcom/cyjh/mobileanjian/ipc/utils/c;->a(I)I

    move-result p0

    .line 10743
    iget-object v3, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->e:[Ljava/util/HashMap;

    iget v4, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v3, v3, v4

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lcom/cyjh/mobileanjian/ipc/ui/m;->c:Lcom/cyjh/mobileanjian/ipc/ui/m;

    if-ne v3, v4, :cond_14

    .line 10744
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 10745
    invoke-virtual {v1, p0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 10746
    invoke-virtual {v0}, Lcom/cyjh/mobileanjian/ipc/ui/i;->b()I

    move-result p0

    int-to-float p0, p0

    .line 10747
    invoke-virtual {v1, p0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 10748
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x10

    if-lt p0, v0, :cond_13

    .line 10749
    invoke-virtual {v2, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    .line 10751
    :cond_13
    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 10753
    :goto_3
    invoke-static {v8}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    .line 10756
    :cond_14
    iget-object v3, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->e:[Ljava/util/HashMap;

    iget v0, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v0, v3, v0

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/ui/m;->f:Lcom/cyjh/mobileanjian/ipc/ui/m;

    if-eq v0, v1, :cond_15

    .line 10757
    invoke-virtual {v2, p0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 10759
    :cond_15
    invoke-static {v8}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    .line 10650
    :pswitch_a
    iget-object v1, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v2, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v1, v1, v2

    if-nez v1, :cond_16

    .line 10651
    invoke-static {v4}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    .line 10655
    :cond_16
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getControlId()Ljava/lang/String;

    move-result-object v1

    .line 10656
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getColor()Ljava/lang/String;

    move-result-object v2

    const-string v3, "^#*([0-9A-Fa-f]{6})|([0-9A-Fa-f]{3})"

    .line 10658
    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_17

    .line 10659
    sget p0, Lcom/cyjh/mqsdk/R$string;->ui_show_invalid_color_value:I

    new-array v1, v4, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(I[Ljava/lang/Object;)V

    .line 10660
    invoke-static {v4}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    :cond_17
    const-string v3, "#"

    .line 10664
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_18

    .line 10665
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "#"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 10666
    :cond_18
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    .line 10667
    invoke-static {v2}, Lcom/cyjh/mobileanjian/ipc/utils/c;->a(I)I

    move-result v2

    .line 10670
    iget-object v3, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->d:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_19

    .line 10671
    iget-object p0, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget-object v0, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->d:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget-object p0, p0, v0

    invoke-virtual {p0, v2}, Lcom/cyjh/mobileanjian/ipc/ui/k;->a(I)V

    goto :goto_4

    .line 10676
    :cond_19
    iget-object v3, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v5, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v3, v3, v5

    invoke-virtual {v3, v1}, Lcom/cyjh/mobileanjian/ipc/ui/k;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_1a

    .line 10678
    invoke-static {v4}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    .line 10682
    :cond_1a
    sget-object v5, Lcom/cyjh/mobileanjian/ipc/ui/i$3;->b:[I

    iget-object v6, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->e:[Ljava/util/HashMap;

    iget v0, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v0, v6, v0

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cyjh/mobileanjian/ipc/ui/m;

    invoke-virtual {v0}, Lcom/cyjh/mobileanjian/ipc/ui/m;->ordinal()I

    move-result v0

    aget v0, v5, v0

    packed-switch v0, :pswitch_data_2

    .line 10712
    invoke-static {v4}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    goto :goto_5

    .line 10703
    :pswitch_b
    check-cast v3, Landroid/widget/Spinner;

    .line 10704
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getItemIndex()I

    move-result p0

    invoke-virtual {v3}, Landroid/widget/Spinner;->getCount()I

    move-result v0

    if-lt p0, v0, :cond_1c

    .line 10705
    invoke-static {v4}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    .line 10694
    :pswitch_c
    check-cast v3, Landroid/widget/RadioGroup;

    .line 10695
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getItemIndex()I

    move-result p0

    invoke-virtual {v3, p0}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/RadioButton;

    if-nez p0, :cond_1b

    .line 10697
    invoke-static {v4}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    .line 10700
    :cond_1b
    invoke-virtual {p0, v2}, Landroid/widget/RadioButton;->setTextColor(I)V

    goto :goto_4

    .line 10690
    :pswitch_d
    check-cast v3, Landroid/widget/CheckBox;

    .line 10691
    invoke-virtual {v3, v2}, Landroid/widget/CheckBox;->setTextColor(I)V

    goto :goto_4

    .line 10686
    :pswitch_e
    check-cast v3, Landroid/widget/TextView;

    .line 10687
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 10716
    :cond_1c
    :goto_4
    invoke-static {v8}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    :goto_5
    return-void

    .line 9949
    :pswitch_f
    iget-object v1, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v2, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v1, v1, v2

    if-nez v1, :cond_1d

    .line 9950
    invoke-static {v4}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    .line 9954
    :cond_1d
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getControlId()Ljava/lang/String;

    move-result-object v1

    .line 9957
    iget-object v2, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->e:[Ljava/util/HashMap;

    iget v3, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v2, v2, v3

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1e

    .line 9958
    invoke-static {v4}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    .line 9962
    :cond_1e
    sget-object v2, Lcom/cyjh/mobileanjian/ipc/ui/i$3;->b:[I

    iget-object v3, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->e:[Ljava/util/HashMap;

    iget v5, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v3, v3, v5

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cyjh/mobileanjian/ipc/ui/m;

    invoke-virtual {v3}, Lcom/cyjh/mobileanjian/ipc/ui/m;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_3

    .line 9993
    invoke-static {v4}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    goto/16 :goto_7

    .line 9983
    :pswitch_10
    iget-object v2, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v0, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v0, v2, v0

    invoke-virtual {v0, v1}, Lcom/cyjh/mobileanjian/ipc/ui/k;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    .line 9984
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getItemIndex()I

    move-result v2

    invoke-virtual {v0}, Landroid/widget/Spinner;->getCount()I

    move-result v3

    if-lt v2, v3, :cond_1f

    .line 9985
    invoke-static {v4}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    .line 9988
    :cond_1f
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Spinner Get pos: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getItemIndex()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/Spinner;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 9989
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getItemIndex()I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto :goto_6

    .line 9974
    :pswitch_11
    iget-object v2, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v0, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v0, v2, v0

    invoke-virtual {v0, v1}, Lcom/cyjh/mobileanjian/ipc/ui/k;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    .line 9975
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getItemIndex()I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/RadioButton;

    if-nez p0, :cond_20

    .line 9977
    invoke-static {v4}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    .line 9980
    :cond_20
    invoke-virtual {p0}, Landroid/widget/RadioButton;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_6

    .line 9970
    :pswitch_12
    iget-object p0, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v0, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object p0, p0, v0

    invoke-virtual {p0, v1}, Lcom/cyjh/mobileanjian/ipc/ui/k;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/CheckBox;

    .line 9971
    invoke-virtual {p0}, Landroid/widget/CheckBox;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_6

    .line 9966
    :pswitch_13
    iget-object p0, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v0, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object p0, p0, v0

    invoke-virtual {p0, v1}, Lcom/cyjh/mobileanjian/ipc/ui/k;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    .line 9967
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    .line 9997
    :goto_6
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;

    move-result-object v0

    .line 9998
    invoke-virtual {v0, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;->setControlId(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;

    move-result-object v0

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Data_Type;->STRING:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Data_Type;

    .line 9999
    invoke-virtual {v0, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;->setType(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Data_Type;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;

    move-result-object v0

    .line 10000
    invoke-virtual {v0, p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;->setStringValue(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar;

    move-result-object p0

    .line 10001
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object v0

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Command_Type;->RSP_MSG:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Command_Type;

    .line 10002
    invoke-virtual {v0, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->setCommand(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Command_Type;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object v0

    .line 10003
    invoke-virtual {v0, v8}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->setIsSuccess(Z)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->addVarTable(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;

    move-result-object p0

    .line 10005
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object p0

    invoke-static {p0}, Lcom/cyjh/event/c;->a(Lcom/google/protobuf/ByteString;)V

    return-void

    :goto_7
    return-void

    .line 9556
    :pswitch_14
    iget-object v1, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v2, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v1, v1, v2

    if-nez v1, :cond_21

    .line 9557
    invoke-static {v4}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    .line 9561
    :cond_21
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getControlId()Ljava/lang/String;

    move-result-object v1

    .line 9562
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getText()Ljava/lang/String;

    .line 9564
    iget-object v2, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v3, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v2, v2, v3

    invoke-virtual {v2, v1}, Lcom/cyjh/mobileanjian/ipc/ui/k;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_22

    .line 9566
    invoke-static {v4}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    .line 9570
    :cond_22
    iget-object v3, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->e:[Ljava/util/HashMap;

    iget v0, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v0, v3, v0

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/ui/m;->b:Lcom/cyjh/mobileanjian/ipc/ui/m;

    if-eq v0, v1, :cond_23

    .line 9571
    invoke-static {v4}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    .line 9575
    :cond_23
    check-cast v2, Landroid/widget/EditText;

    .line 9576
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getEditInputType()I

    move-result p0

    invoke-virtual {v2, p0}, Landroid/widget/EditText;->setInputType(I)V

    .line 9577
    invoke-static {v8}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    .line 5261
    :pswitch_15
    invoke-virtual {v0, p0}, Lcom/cyjh/mobileanjian/ipc/ui/i;->b(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;)V

    return-void

    .line 5258
    :pswitch_16
    invoke-virtual {v0, p0}, Lcom/cyjh/mobileanjian/ipc/ui/i;->c(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;)V

    return-void

    .line 9476
    :pswitch_17
    iget-object p0, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->d:Ljava/util/HashMap;

    invoke-virtual {p0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_24

    .line 9479
    invoke-static {v8}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    goto/16 :goto_8

    .line 9483
    :cond_24
    iget-object p0, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->e:[Ljava/util/HashMap;

    iget v1, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object p0, p0, v1

    invoke-virtual {p0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_25

    .line 9484
    invoke-static {v4}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    goto/16 :goto_8

    .line 9488
    :cond_25
    iget-object p0, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v0, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object p0, p0, v0

    invoke-virtual {p0, v7}, Lcom/cyjh/mobileanjian/ipc/ui/k;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object p0

    .line 9489
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    .line 9490
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 9491
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_8

    .line 5252
    :pswitch_18
    invoke-virtual {v0, p0}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;)Z

    move-result v8

    goto/16 :goto_8

    .line 5235
    :pswitch_19
    iget-object v1, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v2, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v1, v1, v2

    if-eqz v1, :cond_2d

    .line 5236
    iget-object v1, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v2, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v1, v1, v2

    invoke-virtual {v0}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a()I

    move-result v0

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getControlId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getParentId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getText()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v0, v2, v3, p0}, Lcom/cyjh/mobileanjian/ipc/ui/k;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    goto/16 :goto_8

    .line 5230
    :pswitch_1a
    iget-object v1, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v2, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v1, v1, v2

    if-eqz v1, :cond_2d

    .line 5231
    iget-object v1, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v0, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v0, v1, v0

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getControlId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getHeight()I

    move-result p0

    invoke-virtual {v0, v1, p0}, Lcom/cyjh/mobileanjian/ipc/ui/k;->a(Ljava/lang/String;I)V

    goto/16 :goto_8

    .line 5222
    :pswitch_1b
    iget-object v1, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v2, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v1, v1, v2

    if-eqz v1, :cond_2d

    .line 5223
    iget-object v1, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->c:Lcom/cyjh/mobileanjian/ipc/ui/g;

    invoke-virtual {v0}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a()I

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getItemTextList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getDefaultItemIndex()I

    move-result v3

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getWidth()I

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getHeight()I

    invoke-virtual {v1, v7, v2, v3}, Lcom/cyjh/mobileanjian/ipc/ui/g;->a(Ljava/lang/String;Ljava/util/List;I)Landroid/widget/Spinner;

    move-result-object v1

    .line 5224
    iget-object v2, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->e:[Ljava/util/HashMap;

    iget v3, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v2, v2, v3

    sget-object v3, Lcom/cyjh/mobileanjian/ipc/ui/m;->f:Lcom/cyjh/mobileanjian/ipc/ui/m;

    invoke-virtual {v2, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5225
    iget-object v2, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v3, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v2, v2, v3

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getParentId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, v1, p0}, Lcom/cyjh/mobileanjian/ipc/ui/k;->a(Landroid/view/View;Ljava/lang/String;)V

    .line 5226
    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    goto/16 :goto_8

    .line 5214
    :pswitch_1c
    iget-object v1, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v2, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v1, v1, v2

    if-eqz v1, :cond_2d

    .line 5215
    iget-object v1, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->c:Lcom/cyjh/mobileanjian/ipc/ui/g;

    invoke-virtual {v0}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a()I

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v7, v2, v3, v4}, Lcom/cyjh/mobileanjian/ipc/ui/g;->a(Ljava/lang/String;IILjava/lang/String;)Landroid/webkit/WebView;

    move-result-object v1

    .line 5216
    iget-object v2, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->e:[Ljava/util/HashMap;

    iget v3, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v2, v2, v3

    sget-object v3, Lcom/cyjh/mobileanjian/ipc/ui/m;->h:Lcom/cyjh/mobileanjian/ipc/ui/m;

    invoke-virtual {v2, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5217
    iget-object v2, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v0, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v0, v2, v0

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getParentId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/cyjh/mobileanjian/ipc/ui/k;->a(Landroid/view/View;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 5205
    :pswitch_1d
    iget-object v1, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v2, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v1, v1, v2

    if-eqz v1, :cond_2d

    .line 5206
    iget-object v1, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->c:Lcom/cyjh/mobileanjian/ipc/ui/g;

    invoke-virtual {v0}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a()I

    move-result v2

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getHeight()I

    move-result v5

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getPath()Ljava/lang/String;

    move-result-object v6

    move-object v3, v7

    invoke-virtual/range {v1 .. v6}, Lcom/cyjh/mobileanjian/ipc/ui/g;->a(ILjava/lang/String;IILjava/lang/String;)Landroid/widget/ImageView;

    move-result-object v1

    .line 5207
    iget-object v2, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->e:[Ljava/util/HashMap;

    iget v3, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v2, v2, v3

    sget-object v3, Lcom/cyjh/mobileanjian/ipc/ui/m;->g:Lcom/cyjh/mobileanjian/ipc/ui/m;

    invoke-virtual {v2, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5208
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5209
    iget-object v2, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v0, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v0, v2, v0

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getParentId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/cyjh/mobileanjian/ipc/ui/k;->a(Landroid/view/View;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 5197
    :pswitch_1e
    iget-object v1, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v2, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v1, v1, v2

    if-eqz v1, :cond_2d

    .line 5198
    iget-object v1, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->c:Lcom/cyjh/mobileanjian/ipc/ui/g;

    invoke-virtual {v0}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a()I

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getHeight()I

    move-result v5

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getDefaultCheckStatus()Z

    move-result v6

    move-object v2, v7

    invoke-virtual/range {v1 .. v6}, Lcom/cyjh/mobileanjian/ipc/ui/g;->a(Ljava/lang/String;Ljava/lang/String;IIZ)Landroid/widget/CheckBox;

    move-result-object v1

    .line 5199
    iget-object v2, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->e:[Ljava/util/HashMap;

    iget v3, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v2, v2, v3

    sget-object v3, Lcom/cyjh/mobileanjian/ipc/ui/m;->d:Lcom/cyjh/mobileanjian/ipc/ui/m;

    invoke-virtual {v2, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5200
    iget-object v2, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v0, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v0, v2, v0

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getParentId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/cyjh/mobileanjian/ipc/ui/k;->a(Landroid/view/View;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 5189
    :pswitch_1f
    iget-object v1, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v2, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v1, v1, v2

    if-eqz v1, :cond_2d

    .line 5190
    iget-object v1, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->c:Lcom/cyjh/mobileanjian/ipc/ui/g;

    invoke-virtual {v0}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a()I

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getItemTextList()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getDefaultItemIndex()I

    move-result v4

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getHeight()I

    move-result v6

    move-object v2, v7

    invoke-virtual/range {v1 .. v6}, Lcom/cyjh/mobileanjian/ipc/ui/g;->a(Ljava/lang/String;Ljava/util/List;III)Landroid/widget/RadioGroup;

    move-result-object v1

    .line 5191
    iget-object v2, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->e:[Ljava/util/HashMap;

    iget v3, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v2, v2, v3

    sget-object v3, Lcom/cyjh/mobileanjian/ipc/ui/m;->e:Lcom/cyjh/mobileanjian/ipc/ui/m;

    invoke-virtual {v2, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5192
    iget-object v2, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v0, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v0, v2, v0

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getParentId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/cyjh/mobileanjian/ipc/ui/k;->a(Landroid/view/View;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 5181
    :pswitch_20
    iget-object v1, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v2, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v1, v1, v2

    if-eqz v1, :cond_2d

    .line 5182
    iget-object v1, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->c:Lcom/cyjh/mobileanjian/ipc/ui/g;

    invoke-virtual {v0}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a()I

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getHeight()I

    move-result v4

    invoke-virtual {v1, v7, v2, v3, v4}, Lcom/cyjh/mobileanjian/ipc/ui/g;->b(Ljava/lang/String;Ljava/lang/String;II)Landroid/widget/Button;

    move-result-object v1

    .line 5183
    iget-object v2, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->e:[Ljava/util/HashMap;

    iget v3, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v2, v2, v3

    sget-object v3, Lcom/cyjh/mobileanjian/ipc/ui/m;->c:Lcom/cyjh/mobileanjian/ipc/ui/m;

    invoke-virtual {v2, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5184
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5185
    iget-object v2, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v0, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v0, v2, v0

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getParentId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/cyjh/mobileanjian/ipc/ui/k;->a(Landroid/view/View;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 5173
    :pswitch_21
    iget-object v1, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v2, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v1, v1, v2

    if-eqz v1, :cond_2d

    .line 5174
    iget-object v1, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->c:Lcom/cyjh/mobileanjian/ipc/ui/g;

    invoke-virtual {v0}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a()I

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getHeight()I

    move-result v4

    invoke-virtual {v1, v7, v2, v3, v4}, Lcom/cyjh/mobileanjian/ipc/ui/g;->d(Ljava/lang/String;Ljava/lang/String;II)Landroid/widget/EditText;

    move-result-object v1

    .line 5175
    iget-object v2, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->e:[Ljava/util/HashMap;

    iget v3, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v2, v2, v3

    sget-object v3, Lcom/cyjh/mobileanjian/ipc/ui/m;->b:Lcom/cyjh/mobileanjian/ipc/ui/m;

    invoke-virtual {v2, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5176
    iget-object v2, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v3, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v2, v2, v3

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getParentId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, v1, p0}, Lcom/cyjh/mobileanjian/ipc/ui/k;->a(Landroid/view/View;Ljava/lang/String;)V

    .line 5177
    new-instance p0, Lcom/cyjh/mobileanjian/ipc/ui/i$a;

    invoke-direct {p0, v0, v7}, Lcom/cyjh/mobileanjian/ipc/ui/i$a;-><init>(Lcom/cyjh/mobileanjian/ipc/ui/i;Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto/16 :goto_8

    .line 5166
    :pswitch_22
    iget-object v1, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v2, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v1, v1, v2

    if-eqz v1, :cond_2d

    .line 5167
    iget-object v1, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->c:Lcom/cyjh/mobileanjian/ipc/ui/g;

    invoke-virtual {v0}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a()I

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getHeight()I

    move-result v4

    invoke-virtual {v1, v7, v2, v3, v4}, Lcom/cyjh/mobileanjian/ipc/ui/g;->a(Ljava/lang/String;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v1

    .line 5168
    iget-object v2, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->e:[Ljava/util/HashMap;

    iget v3, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v2, v2, v3

    sget-object v3, Lcom/cyjh/mobileanjian/ipc/ui/m;->a:Lcom/cyjh/mobileanjian/ipc/ui/m;

    invoke-virtual {v2, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5169
    iget-object v2, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v0, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v0, v2, v0

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getParentId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/cyjh/mobileanjian/ipc/ui/k;->a(Landroid/view/View;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 5157
    :pswitch_23
    iget-object v1, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v2, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v1, v1, v2

    if-eqz v1, :cond_2d

    .line 5159
    iget-object v1, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->c:Lcom/cyjh/mobileanjian/ipc/ui/g;

    invoke-virtual {v0}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a()I

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getHeight()I

    move-result v3

    invoke-virtual {v1, v7, v2, v3}, Lcom/cyjh/mobileanjian/ipc/ui/g;->b(Ljava/lang/String;II)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 5160
    iget-object v2, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->e:[Ljava/util/HashMap;

    iget v3, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v2, v2, v3

    sget-object v3, Lcom/cyjh/mobileanjian/ipc/ui/m;->i:Lcom/cyjh/mobileanjian/ipc/ui/m;

    invoke-virtual {v2, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5161
    iget-object v2, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v0, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v0, v2, v0

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getParentId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/cyjh/mobileanjian/ipc/ui/k;->a(Landroid/view/View;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 9179
    :pswitch_24
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getControlId()Ljava/lang/String;

    move-result-object v1

    .line 9180
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getColor()Ljava/lang/String;

    move-result-object p0

    .line 9182
    iget-object v2, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->d:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_26

    .line 9183
    sget p0, Lcom/cyjh/mqsdk/R$string;->ui_show_not_found_ui:I

    new-array v2, v8, [Ljava/lang/Object;

    aput-object v1, v2, v4

    invoke-virtual {v0, p0, v2}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(I[Ljava/lang/Object;)V

    .line 9184
    invoke-static {v4}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    :cond_26
    const-string v2, "^#*([0-9A-Fa-f]{6})|([0-9A-Fa-f]{3})"

    .line 9188
    invoke-virtual {p0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_27

    .line 9189
    sget p0, Lcom/cyjh/mqsdk/R$string;->ui_show_invalid_color_value:I

    new-array v1, v4, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(I[Ljava/lang/Object;)V

    .line 9190
    invoke-static {v4}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    :cond_27
    const-string v2, "#"

    .line 9194
    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_28

    .line 9195
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "#"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 9196
    :cond_28
    iget-object v2, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->d:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 9197
    invoke-static {p0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p0

    .line 9198
    invoke-static {p0}, Lcom/cyjh/mobileanjian/ipc/utils/c;->a(I)I

    move-result p0

    .line 9199
    iget-object v0, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    aget-object v0, v0, v1

    invoke-virtual {v0, p0}, Lcom/cyjh/mobileanjian/ipc/ui/k;->b(I)V

    .line 9200
    invoke-static {v8}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    .line 9160
    :pswitch_25
    iget-object p0, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->d:Ljava/util/HashMap;

    invoke-virtual {p0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_29

    .line 9161
    sget p0, Lcom/cyjh/mqsdk/R$string;->ui_show_not_found_ui:I

    new-array v1, v8, [Ljava/lang/Object;

    aput-object v7, v1, v4

    invoke-virtual {v0, p0, v1}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(I[Ljava/lang/Object;)V

    .line 9162
    invoke-static {v4}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    .line 9166
    :cond_29
    iget-object p0, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget-object v0, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->d:Ljava/util/HashMap;

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget-object p0, p0, v0

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/ui/k;->a()Ljava/lang/String;

    move-result-object p0

    .line 9167
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;

    move-result-object v0

    .line 9168
    invoke-virtual {v0, v7}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;->setControlId(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;

    move-result-object v0

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Data_Type;->STRING:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Data_Type;

    .line 9169
    invoke-virtual {v0, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;->setType(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Data_Type;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;

    move-result-object v0

    .line 9170
    invoke-virtual {v0, p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;->setStringValue(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar;

    move-result-object p0

    .line 9171
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object v0

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Command_Type;->RSP_MSG:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Command_Type;

    .line 9172
    invoke-virtual {v0, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->setCommand(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Command_Type;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object v0

    .line 9173
    invoke-virtual {v0, v8}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->setIsSuccess(Z)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->addVarTable(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;

    move-result-object p0

    .line 9175
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object p0

    invoke-static {p0}, Lcom/cyjh/event/c;->a(Lcom/google/protobuf/ByteString;)V

    return-void

    .line 5146
    :pswitch_26
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getText()Ljava/lang/String;

    move-result-object p0

    .line 9150
    iget-object v1, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->d:Ljava/util/HashMap;

    invoke-virtual {v1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2a

    .line 9151
    sget p0, Lcom/cyjh/mqsdk/R$string;->ui_show_not_found_ui:I

    new-array v1, v8, [Ljava/lang/Object;

    aput-object v7, v1, v4

    invoke-virtual {v0, p0, v1}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(I[Ljava/lang/Object;)V

    const/4 v8, 0x0

    goto/16 :goto_8

    .line 9155
    :cond_2a
    iget-object v1, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget-object v0, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->d:Ljava/util/HashMap;

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget-object v0, v1, v0

    invoke-virtual {v0, p0}, Lcom/cyjh/mobileanjian/ipc/ui/k;->a(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 5140
    :pswitch_27
    iget-object v1, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v2, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v1, v1, v2

    if-eqz v1, :cond_2d

    .line 5141
    iget-object v1, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v2, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v1, v1, v2

    invoke-virtual {v0}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a()I

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getParentId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getHeight()I

    move-result p0

    invoke-virtual {v1, v7, v0, v2, p0}, Lcom/cyjh/mobileanjian/ipc/ui/k;->a(Ljava/lang/String;Ljava/lang/String;II)V

    goto/16 :goto_8

    .line 5137
    :pswitch_28
    invoke-virtual {v0}, Lcom/cyjh/mobileanjian/ipc/ui/i;->c()V

    goto/16 :goto_8

    .line 5134
    :pswitch_29
    invoke-virtual {v0, v7}, Lcom/cyjh/mobileanjian/ipc/ui/i;->d(Ljava/lang/String;)Z

    move-result v8

    goto/16 :goto_8

    .line 5131
    :pswitch_2a
    invoke-static {v7}, Lcom/cyjh/mobileanjian/ipc/ui/i;->c(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 8123
    :pswitch_2b
    iget-object p0, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->d:Ljava/util/HashMap;

    invoke-virtual {p0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_2b

    .line 8124
    sget p0, Lcom/cyjh/mqsdk/R$string;->ui_show_not_found_ui:I

    new-array v1, v8, [Ljava/lang/Object;

    aput-object v7, v1, v4

    invoke-virtual {v0, p0, v1}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(I[Ljava/lang/Object;)V

    .line 8125
    invoke-static {v4}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    .line 8129
    :cond_2b
    iget-object p0, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget-object v1, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->d:Ljava/util/HashMap;

    invoke-virtual {v1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-object p0, p0, v1

    .line 8260
    iget-boolean p0, p0, Lcom/cyjh/mobileanjian/ipc/ui/k;->c:Z

    if-eqz p0, :cond_2c

    .line 8130
    invoke-static {v4}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    .line 8134
    :cond_2c
    iget-object p0, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget-object v0, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->d:Ljava/util/HashMap;

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget-object p0, p0, v0

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/ui/k;->c()V

    .line 8135
    invoke-static {v8}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    .line 8136
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;

    move-result-object p0

    .line 8137
    invoke-virtual {p0, v7}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;->setControlId(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;

    move-result-object p0

    sget-object v0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Event_Type;->ON_SHOW:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Event_Type;

    .line 8138
    invoke-virtual {p0, v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;->setType(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Event_Type;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;

    move-result-object p0

    .line 8139
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;

    move-result-object p0

    .line 8140
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object v0

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Command_Type;->EVENT:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Command_Type;

    .line 8141
    invoke-virtual {v0, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->setCommand(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Command_Type;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object v0

    .line 8142
    invoke-virtual {v0, v8}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->setIsSuccess(Z)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object v0

    .line 8143
    invoke-virtual {v0, p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->setEvent(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object p0

    .line 8144
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;

    move-result-object p0

    .line 8145
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object p0

    invoke-static {p0}, Lcom/cyjh/event/c;->b(Lcom/google/protobuf/ByteString;)V

    return-void

    .line 5125
    :pswitch_2c
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getHeight()I

    move-result p0

    .line 6078
    iget v2, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    add-int/2addr v2, v8

    iput v2, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    .line 6079
    iget-object v2, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v3, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    iget-object v4, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->c:Lcom/cyjh/mobileanjian/ipc/ui/g;

    invoke-virtual {v4, v7, v1, p0}, Lcom/cyjh/mobileanjian/ipc/ui/g;->a(Ljava/lang/String;II)Lcom/cyjh/mobileanjian/ipc/ui/k;

    move-result-object p0

    aput-object p0, v2, v3

    .line 6080
    iget-object p0, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->d:Ljava/util/HashMap;

    iget v1, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6082
    iget-object p0, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->e:[Ljava/util/HashMap;

    iget v1, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    aput-object v2, p0, v1

    .line 6084
    iget-object p0, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v1, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object p0, p0, v1

    new-instance v1, Lcom/cyjh/mobileanjian/ipc/ui/i$1;

    invoke-direct {v1, v0, v7}, Lcom/cyjh/mobileanjian/ipc/ui/i$1;-><init>(Lcom/cyjh/mobileanjian/ipc/ui/i;Ljava/lang/String;)V

    .line 6395
    iput-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/k;->b:Landroid/view/View$OnClickListener;

    .line 6100
    iget-object p0, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v1, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object p0, p0, v1

    new-instance v1, Lcom/cyjh/mobileanjian/ipc/ui/i$2;

    invoke-direct {v1, v0, v7}, Lcom/cyjh/mobileanjian/ipc/ui/i$2;-><init>(Lcom/cyjh/mobileanjian/ipc/ui/i;Ljava/lang/String;)V

    .line 7390
    iput-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/k;->a:Landroid/view/View$OnClickListener;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_4

    goto :goto_8

    .line 5117
    :pswitch_2d
    :try_start_1
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/cyjh/mobileanjian/ipc/ui/i;->b(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_4

    goto :goto_8

    :catch_0
    move-exception p0

    .line 5121
    :try_start_2
    invoke-static {p0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_8

    :catch_1
    move-exception p0

    .line 5119
    invoke-static {p0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V
    :try_end_2
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_8

    .line 5108
    :pswitch_2e
    :try_start_3
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Ljava/lang/String;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_3 .. :try_end_3} :catch_4

    goto :goto_8

    :catch_2
    move-exception p0

    .line 5112
    :try_start_4
    invoke-static {p0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_8

    :catch_3
    move-exception p0

    .line 5110
    invoke-static {p0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 5308
    :cond_2d
    :goto_8
    :pswitch_2f
    invoke-static {v8}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V
    :try_end_4
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_4 .. :try_end_4} :catch_4

    :cond_2e
    return-void

    :catch_4
    move-exception p0

    .line 291
    invoke-static {p0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_f
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_2
        :pswitch_2f
        :pswitch_1
        :pswitch_2f
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
    .end packed-switch
.end method

.method private static c(I)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_1

    .line 1878
    sget-object v1, Lcom/cyjh/event/Injector;->x:[Lcom/cyjh/event/Injector$a;

    aget-object v1, v1, v0

    iget-boolean v1, v1, Lcom/cyjh/event/Injector$a;->a:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/cyjh/event/Injector;->x:[Lcom/cyjh/event/Injector$a;

    aget-object v1, v1, v0

    iget v1, v1, Lcom/cyjh/event/Injector$a;->b:I

    if-ne v1, p0, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    :goto_1
    return v0
.end method

.method private static c()V
    .locals 1

    .line 269
    invoke-static {}, Lcom/cyjh/mq/sdk/MqRunnerLite;->getInstance()Lcom/cyjh/mq/sdk/MqRunnerLite;

    move-result-object v0

    .line 4070
    iget-object v0, v0, Lcom/cyjh/mq/sdk/MqRunnerLite;->a:Lcom/cyjh/mobileanjian/ipc/interfaces/OnScriptListener;

    if-eqz v0, :cond_0

    .line 271
    invoke-interface {v0}, Lcom/cyjh/mobileanjian/ipc/interfaces/OnScriptListener;->onResume()V

    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/cyjh/event/b;)V
    .locals 3

    .line 35250
    new-instance v0, Lcom/cyjh/mobileanjian/ipc/ui/c;

    sget-object v1, Lcom/cyjh/event/Injector;->c:Landroid/content/Context;

    iget-object p0, p0, Lcom/cyjh/event/b;->d:Ljava/lang/String;

    new-instance v2, Lcom/cyjh/event/Injector$3;

    invoke-direct {v2}, Lcom/cyjh/event/Injector$3;-><init>()V

    invoke-direct {v0, v1, p0, v2}, Lcom/cyjh/mobileanjian/ipc/ui/c;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/cyjh/mobileanjian/ipc/ui/c$a;)V

    .line 35255
    invoke-virtual {v0}, Lcom/cyjh/mobileanjian/ipc/ui/c;->a()V

    return-void
.end method

.method private static d(I)I
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v0, p0, :cond_1

    .line 1892
    sget-object v2, Lcom/cyjh/event/Injector;->x:[Lcom/cyjh/event/Injector$a;

    aget-object v2, v2, v0

    iget-boolean v2, v2, Lcom/cyjh/event/Injector$a;->a:Z

    if-nez v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private static d()V
    .locals 1

    .line 277
    invoke-static {}, Lcom/cyjh/mq/sdk/MqRunnerLite;->getInstance()Lcom/cyjh/mq/sdk/MqRunnerLite;

    move-result-object v0

    .line 5070
    iget-object v0, v0, Lcom/cyjh/mq/sdk/MqRunnerLite;->a:Lcom/cyjh/mobileanjian/ipc/interfaces/OnScriptListener;

    if-eqz v0, :cond_0

    .line 279
    invoke-interface {v0}, Lcom/cyjh/mobileanjian/ipc/interfaces/OnScriptListener;->onPause()V

    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/cyjh/event/b;)V
    .locals 3

    .line 35261
    invoke-static {}, Lcom/cyjh/mq/sdk/MqRunnerLite;->getInstance()Lcom/cyjh/mq/sdk/MqRunnerLite;

    move-result-object v0

    .line 36070
    iget-object v0, v0, Lcom/cyjh/mq/sdk/MqRunnerLite;->a:Lcom/cyjh/mobileanjian/ipc/interfaces/OnScriptListener;

    if-eqz v0, :cond_0

    .line 35263
    iget v1, p0, Lcom/cyjh/event/b;->e:F

    iget v2, p0, Lcom/cyjh/event/b;->a:I

    iget p0, p0, Lcom/cyjh/event/b;->b:I

    invoke-interface {v0, v1, v2, p0}, Lcom/cyjh/mobileanjian/ipc/interfaces/OnScriptListener;->onUpdateControlBarPos(FII)V

    :cond_0
    return-void
.end method

.method private static e()Landroid/app/Instrumentation;
    .locals 1

    .line 296
    sget-object v0, Lcom/cyjh/event/Injector;->b:Landroid/app/Instrumentation;

    if-nez v0, :cond_0

    .line 297
    new-instance v0, Landroid/app/Instrumentation;

    invoke-direct {v0}, Landroid/app/Instrumentation;-><init>()V

    sput-object v0, Lcom/cyjh/event/Injector;->b:Landroid/app/Instrumentation;

    .line 299
    :cond_0
    sget-object v0, Lcom/cyjh/event/Injector;->b:Landroid/app/Instrumentation;

    return-object v0
.end method

.method private static e(Lcom/cyjh/event/b;)V
    .locals 4

    .line 232
    sget-object v0, Lcom/cyjh/event/Injector;->d:Lcom/cyjh/mobileanjian/ipc/view/ExToast;

    if-nez v0, :cond_0

    .line 233
    new-instance v0, Lcom/cyjh/mobileanjian/ipc/view/ExToast;

    sget-object v1, Lcom/cyjh/event/Injector;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/cyjh/mobileanjian/ipc/view/ExToast;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/cyjh/event/Injector;->d:Lcom/cyjh/mobileanjian/ipc/view/ExToast;

    .line 235
    :cond_0
    sget-object v0, Lcom/cyjh/event/Injector;->d:Lcom/cyjh/mobileanjian/ipc/view/ExToast;

    iget-object v1, p0, Lcom/cyjh/event/b;->d:Ljava/lang/String;

    iget v2, p0, Lcom/cyjh/event/b;->a:I

    iget v3, p0, Lcom/cyjh/event/b;->b:I

    iget p0, p0, Lcom/cyjh/event/b;->c:I

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->show(Ljava/lang/CharSequence;III)V

    return-void
.end method

.method private static f()V
    .locals 5

    .line 1808
    sget-object v0, Lcom/cyjh/event/Injector;->x:[Lcom/cyjh/event/Injector$a;

    if-nez v0, :cond_0

    const/4 v0, 0x5

    .line 1809
    new-array v1, v0, [Lcom/cyjh/event/Injector$a;

    sput-object v1, Lcom/cyjh/event/Injector;->x:[Lcom/cyjh/event/Injector$a;

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 1811
    new-instance v3, Lcom/cyjh/event/Injector$a;

    invoke-direct {v3, v1}, Lcom/cyjh/event/Injector$a;-><init>(B)V

    const/4 v4, 0x1

    .line 1812
    iput-boolean v4, v3, Lcom/cyjh/event/Injector$a;->a:Z

    .line 1813
    iput v1, v3, Lcom/cyjh/event/Injector$a;->b:I

    const/4 v4, 0x0

    .line 1814
    iput v4, v3, Lcom/cyjh/event/Injector$a;->c:F

    .line 1815
    iput v4, v3, Lcom/cyjh/event/Injector$a;->d:F

    .line 1816
    sget-object v4, Lcom/cyjh/event/Injector;->x:[Lcom/cyjh/event/Injector$a;

    aput-object v3, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static f(Lcom/cyjh/event/b;)V
    .locals 4

    .line 240
    new-instance v0, Lcom/cyjh/mobileanjian/ipc/ui/b;

    sget-object v1, Lcom/cyjh/event/Injector;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/cyjh/event/b;->d:Ljava/lang/String;

    iget p0, p0, Lcom/cyjh/event/b;->a:I

    new-instance v3, Lcom/cyjh/event/Injector$2;

    invoke-direct {v3}, Lcom/cyjh/event/Injector$2;-><init>()V

    invoke-direct {v0, v1, v2, p0, v3}, Lcom/cyjh/mobileanjian/ipc/ui/b;-><init>(Landroid/content/Context;Ljava/lang/String;ILcom/cyjh/mobileanjian/ipc/ui/b$a;)V

    .line 245
    invoke-virtual {v0}, Lcom/cyjh/mobileanjian/ipc/ui/b;->a()V

    return-void
.end method

.method private static g()I
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x5

    if-ge v0, v2, :cond_1

    .line 1905
    sget-object v2, Lcom/cyjh/event/Injector;->x:[Lcom/cyjh/event/Injector$a;

    aget-object v2, v2, v0

    iget-boolean v2, v2, Lcom/cyjh/event/Injector$a;->a:Z

    if-nez v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private static g(Lcom/cyjh/event/b;)V
    .locals 3

    .line 250
    new-instance v0, Lcom/cyjh/mobileanjian/ipc/ui/c;

    sget-object v1, Lcom/cyjh/event/Injector;->c:Landroid/content/Context;

    iget-object p0, p0, Lcom/cyjh/event/b;->d:Ljava/lang/String;

    new-instance v2, Lcom/cyjh/event/Injector$3;

    invoke-direct {v2}, Lcom/cyjh/event/Injector$3;-><init>()V

    invoke-direct {v0, v1, p0, v2}, Lcom/cyjh/mobileanjian/ipc/ui/c;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/cyjh/mobileanjian/ipc/ui/c$a;)V

    .line 255
    invoke-virtual {v0}, Lcom/cyjh/mobileanjian/ipc/ui/c;->a()V

    return-void
.end method

.method private static h()V
    .locals 6

    .line 1915
    invoke-static {}, Lcom/cyjh/event/Injector;->g()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1920
    :cond_0
    new-array v1, v0, [Landroid/view/MotionEvent$PointerProperties;

    sput-object v1, Lcom/cyjh/event/Injector;->y:[Landroid/view/MotionEvent$PointerProperties;

    .line 1921
    new-array v1, v0, [Landroid/view/MotionEvent$PointerCoords;

    sput-object v1, Lcom/cyjh/event/Injector;->z:[Landroid/view/MotionEvent$PointerCoords;

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x5

    if-ge v1, v3, :cond_3

    .line 1924
    sget-object v3, Lcom/cyjh/event/Injector;->x:[Lcom/cyjh/event/Injector$a;

    aget-object v3, v3, v1

    iget-boolean v3, v3, Lcom/cyjh/event/Injector$a;->a:Z

    if-nez v3, :cond_2

    if-ge v2, v0, :cond_1

    .line 1927
    new-instance v3, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {v3}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    .line 1928
    new-instance v4, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v4}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    .line 1931
    iput v1, v3, Landroid/view/MotionEvent$PointerProperties;->id:I

    .line 1932
    sget-object v5, Lcom/cyjh/event/Injector;->x:[Lcom/cyjh/event/Injector$a;

    aget-object v5, v5, v1

    iget v5, v5, Lcom/cyjh/event/Injector$a;->c:F

    iput v5, v4, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 1933
    sget-object v5, Lcom/cyjh/event/Injector;->x:[Lcom/cyjh/event/Injector$a;

    aget-object v5, v5, v1

    iget v5, v5, Lcom/cyjh/event/Injector$a;->d:F

    iput v5, v4, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 1934
    invoke-static {}, Lcom/cyjh/event/Injector;->GetTapRotation()F

    move-result v5

    iput v5, v4, Landroid/view/MotionEvent$PointerCoords;->orientation:F

    .line 1935
    sget-object v5, Lcom/cyjh/event/Injector;->y:[Landroid/view/MotionEvent$PointerProperties;

    aput-object v3, v5, v2

    .line 1936
    sget-object v3, Lcom/cyjh/event/Injector;->z:[Landroid/view/MotionEvent$PointerCoords;

    aput-object v4, v3, v2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private static h(Lcom/cyjh/event/b;)V
    .locals 3

    .line 261
    invoke-static {}, Lcom/cyjh/mq/sdk/MqRunnerLite;->getInstance()Lcom/cyjh/mq/sdk/MqRunnerLite;

    move-result-object v0

    .line 3070
    iget-object v0, v0, Lcom/cyjh/mq/sdk/MqRunnerLite;->a:Lcom/cyjh/mobileanjian/ipc/interfaces/OnScriptListener;

    if-eqz v0, :cond_0

    .line 263
    iget v1, p0, Lcom/cyjh/event/b;->e:F

    iget v2, p0, Lcom/cyjh/event/b;->a:I

    iget p0, p0, Lcom/cyjh/event/b;->b:I

    invoke-interface {v0, v1, v2, p0}, Lcom/cyjh/mobileanjian/ipc/interfaces/OnScriptListener;->onUpdateControlBarPos(FII)V

    :cond_0
    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1

    if-nez p0, :cond_0

    .line 140
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "Context is null..."

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 142
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/cyjh/event/Injector;->c:Landroid/content/Context;

    .line 143
    new-instance p0, Lcom/cyjh/mobileanjian/ipc/a;

    sget-object v0, Lcom/cyjh/event/Injector;->c:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/cyjh/mobileanjian/ipc/a;-><init>(Landroid/content/Context;)V

    sput-object p0, Lcom/cyjh/event/Injector;->e:Lcom/cyjh/mobileanjian/ipc/a;

    .line 144
    new-instance p0, Lcom/cyjh/mobileanjian/ipc/ui/i;

    sget-object v0, Lcom/cyjh/event/Injector;->c:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/cyjh/mobileanjian/ipc/ui/i;-><init>(Landroid/content/Context;)V

    sput-object p0, Lcom/cyjh/event/Injector;->f:Lcom/cyjh/mobileanjian/ipc/ui/i;

    .line 146
    invoke-static {}, Lcom/cyjh/event/Injector;->initTessBass()Z

    move-result p0

    sput-boolean p0, Lcom/cyjh/event/Injector;->h:Z

    return-void
.end method

.method public static initTessBass()Z
    .locals 4

    .line 159
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/cyjh/event/Injector;->c:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/tessdata/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "eng.traineddata"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/cyjh/event/Injector;->c:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/tessdata/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "chi_sim.traineddata"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "chi_sim+eng"

    .line 168
    new-instance v1, Lcom/googlecode/tesseract/android/TessBaseAPI;

    invoke-direct {v1}, Lcom/googlecode/tesseract/android/TessBaseAPI;-><init>()V

    sput-object v1, Lcom/cyjh/event/Injector;->g:Lcom/googlecode/tesseract/android/TessBaseAPI;

    .line 169
    sget-object v1, Lcom/cyjh/event/Injector;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 170
    sget-object v2, Lcom/cyjh/event/Injector;->g:Lcom/googlecode/tesseract/android/TessBaseAPI;

    invoke-virtual {v2, v1, v0}, Lcom/googlecode/tesseract/android/TessBaseAPI;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const-string v1, "MqmHandler"

    .line 171
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "initTessBass: init ret="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public static release()V
    .locals 4

    .line 150
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/a;->f()V

    .line 151
    sget-object v0, Lcom/cyjh/event/Injector;->e:Lcom/cyjh/mobileanjian/ipc/a;

    invoke-virtual {v0}, Lcom/cyjh/mobileanjian/ipc/a;->a()V

    .line 152
    sget-object v0, Lcom/cyjh/event/Injector;->f:Lcom/cyjh/mobileanjian/ipc/ui/i;

    .line 2089
    invoke-virtual {v0}, Lcom/cyjh/mobileanjian/ipc/ui/i;->c()V

    const/4 v1, 0x0

    .line 2090
    iput v1, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    const/4 v2, 0x1

    .line 2091
    iput v2, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->f:I

    :goto_0
    const/16 v2, 0x20

    if-ge v1, v2, :cond_1

    .line 2093
    iget-object v2, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    const/4 v3, 0x0

    aput-object v3, v2, v1

    .line 2094
    iget-object v2, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->e:[Ljava/util/HashMap;

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    .line 2095
    iget-object v2, v0, Lcom/cyjh/mobileanjian/ipc/ui/i;->e:[Ljava/util/HashMap;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 153
    :cond_1
    invoke-static {}, Lcom/cyjh/event/Injector;->releasePointerInfoArray()V

    return-void
.end method

.method public static releasePointerInfoArray()V
    .locals 1

    const/4 v0, 0x0

    .line 1823
    sput-object v0, Lcom/cyjh/event/Injector;->x:[Lcom/cyjh/event/Injector$a;

    return-void
.end method

.method public static sendText(Ljava/lang/String;I)V
    .locals 0

    .line 421
    invoke-static {}, Lcom/cyjh/mq/sdk/MqRunnerLite;->getInstance()Lcom/cyjh/mq/sdk/MqRunnerLite;

    move-result-object p1

    .line 15075
    iget-object p1, p1, Lcom/cyjh/mq/sdk/MqRunnerLite;->e:Lcom/cyjh/mobileanjian/ipc/interfaces/OnSpecialMqCmdCallback;

    if-eqz p1, :cond_0

    .line 422
    invoke-static {}, Lcom/cyjh/mq/sdk/MqRunnerLite;->getInstance()Lcom/cyjh/mq/sdk/MqRunnerLite;

    move-result-object p1

    .line 16075
    iget-object p1, p1, Lcom/cyjh/mq/sdk/MqRunnerLite;->e:Lcom/cyjh/mobileanjian/ipc/interfaces/OnSpecialMqCmdCallback;

    .line 422
    invoke-interface {p1, p0}, Lcom/cyjh/mobileanjian/ipc/interfaces/OnSpecialMqCmdCallback;->inputText(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static setSyncReturnValue(ILjava/lang/String;)V
    .locals 0

    .line 1569
    sput p0, Lcom/cyjh/event/Injector;->o:I

    .line 1570
    sput-object p1, Lcom/cyjh/event/Injector;->p:Ljava/lang/String;

    const/4 p0, 0x1

    .line 1571
    sput-boolean p0, Lcom/cyjh/event/Injector;->n:Z

    return-void
.end method

.method public static switchToIm(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
