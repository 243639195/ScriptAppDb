.class public final Lcom/cyjh/mobileanjian/ipc/stuff/a;
.super Ljava/lang/Object;
.source "AppAttr.java"


# static fields
.field public static final a:Ljava/lang/String; = "com.cyjh.mobileanjian"

.field private static b:Z = true

.field private static c:Ljava/lang/String; = "12345678-0000-0000-0000-BA9876543210"

.field private static d:Ljava/lang/String; = "2015-06-24"

.field private static e:Ljava/lang/String; = ""


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 54
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/lang/String;)V
    .locals 0

    .line 32
    sput-object p0, Lcom/cyjh/mobileanjian/ipc/stuff/a;->d:Ljava/lang/String;

    return-void
.end method

.method private static a(Z)V
    .locals 0

    .line 22
    sput-boolean p0, Lcom/cyjh/mobileanjian/ipc/stuff/a;->b:Z

    return-void
.end method

.method public static a()Z
    .locals 1

    .line 27
    sget-boolean v0, Lcom/cyjh/mobileanjian/ipc/stuff/a;->b:Z

    return v0
.end method

.method public static b()Ljava/lang/String;
    .locals 1

    .line 37
    sget-object v0, Lcom/cyjh/mobileanjian/ipc/stuff/a;->d:Ljava/lang/String;

    return-object v0
.end method

.method private static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-string v0, "NOT_FOUND"

    .line 60
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1054
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    .line 63
    invoke-virtual {v1, p0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 64
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 67
    invoke-static {p0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method private static b(Ljava/lang/String;)V
    .locals 0

    .line 42
    sput-object p0, Lcom/cyjh/mobileanjian/ipc/stuff/a;->c:Ljava/lang/String;

    return-void
.end method

.method private static c(Landroid/content/Context;)I
    .locals 2

    .line 75
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 2054
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    .line 78
    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 79
    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 82
    invoke-static {p0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    const/16 p0, -0x7d0

    :goto_0
    return p0
.end method

.method public static c()Ljava/lang/String;
    .locals 1

    .line 47
    sget-object v0, Lcom/cyjh/mobileanjian/ipc/stuff/a;->c:Ljava/lang/String;

    return-object v0
.end method

.method private static c(Ljava/lang/String;)V
    .locals 0

    .line 89
    sput-object p0, Lcom/cyjh/mobileanjian/ipc/stuff/a;->e:Ljava/lang/String;

    return-void
.end method

.method private static d()Ljava/lang/String;
    .locals 1

    .line 94
    sget-object v0, Lcom/cyjh/mobileanjian/ipc/stuff/a;->e:Ljava/lang/String;

    return-object v0
.end method

.method private static d(Landroid/content/Context;)Z
    .locals 1

    .line 99
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "com.cyjh.mobileanjian"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
