.class public Lcom/umeng/commonsdk/proguard/p;
.super Ljava/lang/Object;
.source "Root.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private b()Z
    .locals 2

    .line 30
    sget-object v0, Landroid/os/Build;->TAGS:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, "test-keys"

    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private c()Z
    .locals 2

    .line 39
    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/app/Superuser.apk"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 40
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :catch_0
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private d()Z
    .locals 2

    .line 49
    new-instance v0, Lcom/umeng/commonsdk/proguard/m;

    invoke-direct {v0}, Lcom/umeng/commonsdk/proguard/m;-><init>()V

    sget-object v1, Lcom/umeng/commonsdk/proguard/m$a;->a:Lcom/umeng/commonsdk/proguard/m$a;

    invoke-virtual {v0, v1}, Lcom/umeng/commonsdk/proguard/m;->a(Lcom/umeng/commonsdk/proguard/m$a;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private e()Z
    .locals 8

    const/4 v0, 0x7

    .line 57
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "/bin"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "/system/bin/"

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "/system/xbin/"

    const/4 v4, 0x2

    aput-object v1, v0, v4

    const-string v1, "/system/sbin/"

    const/4 v4, 0x3

    aput-object v1, v0, v4

    const-string v1, "/sbin/"

    const/4 v4, 0x4

    aput-object v1, v0, v4

    const-string v1, "/vendor/bin/"

    const/4 v4, 0x5

    aput-object v1, v0, v4

    const-string v1, "/su/bin/"

    const/4 v4, 0x6

    aput-object v1, v0, v4

    .line 60
    array-length v1, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_1

    aget-object v5, v0, v4

    .line 61
    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "su"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 62
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    return v3

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method


# virtual methods
.method public a()Z
    .locals 2

    .line 14
    invoke-direct {p0}, Lcom/umeng/commonsdk/proguard/p;->b()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 17
    :cond_0
    invoke-direct {p0}, Lcom/umeng/commonsdk/proguard/p;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 20
    :cond_1
    invoke-direct {p0}, Lcom/umeng/commonsdk/proguard/p;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 23
    :cond_2
    invoke-direct {p0}, Lcom/umeng/commonsdk/proguard/p;->e()Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    :cond_3
    const/4 v0, 0x0

    return v0
.end method
