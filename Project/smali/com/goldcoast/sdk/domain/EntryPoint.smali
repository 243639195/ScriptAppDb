.class public Lcom/goldcoast/sdk/domain/EntryPoint;
.super Ljava/lang/Object;
.source "EntryPoint.java"


# static fields
.field public static final RS_LONG:B = 0x1t

.field public static final RS_MIXED:B = 0x2t

.field public static final RS_TEMP:B = 0x0t

.field public static final S_120:B = 0x3t

.field public static final S_123:B = 0x2t

.field public static final S_43:B = 0x1t

.field public static final S_47:B = 0x4t

.field private static a:Lcom/goldcoast/sdk/domain/EntryPoint; = null

.field private static b:B = 0x1t

.field private static c:Ljava/lang/String; = null

.field private static d:Ljava/lang/String; = null

.field private static e:Ljava/lang/String; = null

.field public static extractDir:Ljava/io/File; = null

.field private static f:Ljava/lang/String; = null

.field private static g:Lcom/b/a/ai; = null

.field private static h:Lcom/goldcoast/sdk/domain/AnalyseResult; = null

.field private static i:Ljava/lang/String; = null

.field private static j:I = 0x3c

.field private static k:I = -0x1

.field private static l:B = 0x0t

.field private static m:Z = true

.field protected static mContext:Landroid/app/Application;

.field private static final n:Z


# instance fields
.field private A:Lcom/goldcoast/sdk/a/d;

.field private B:Lcom/goldcoast/sdk/a/d;

.field private C:Z

.field private D:Z

.field private E:Landroid/content/BroadcastReceiver;

.field private F:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final o:[Ljava/lang/String;

.field private final p:Lcom/king/sdk/KingListener;

.field private q:Z

.field private r:I

.field private s:I

.field private t:I

.field private u:I

.field private v:Landroid/net/ConnectivityManager;

.field private w:Lcom/goldcoast/sdk/domain/JNIWrapper;

.field private x:Ljava/lang/String;

.field private y:Z

.field private z:Lcom/goldcoast/sdk/c/c;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 128
    new-instance v0, Lcom/b/a/ai;

    invoke-direct {v0}, Lcom/b/a/ai;-><init>()V

    sput-object v0, Lcom/goldcoast/sdk/domain/EntryPoint;->g:Lcom/b/a/ai;

    .line 135
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0xe

    if-lt v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/goldcoast/sdk/domain/EntryPoint;->n:Z

    :try_start_0
    const-string v0, "goldcoast"

    .line 139
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 141
    sput-boolean v1, Lcom/goldcoast/sdk/domain/EntryPoint;->m:Z

    .line 142
    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    .line 146
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\u5929"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "\u5e72"

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "\u5730"

    const/4 v3, 0x2

    aput-object v1, v0, v3

    const-string v1, "\u652f"

    const/4 v3, 0x3

    aput-object v1, v0, v3

    const-string v1, "\u5c71"

    const/4 v3, 0x4

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/goldcoast/sdk/domain/EntryPoint;->o:[Ljava/lang/String;

    .line 147
    new-instance v0, Lcom/goldcoast/sdk/domain/a;

    invoke-direct {v0, p0}, Lcom/goldcoast/sdk/domain/a;-><init>(Lcom/goldcoast/sdk/domain/EntryPoint;)V

    iput-object v0, p0, Lcom/goldcoast/sdk/domain/EntryPoint;->p:Lcom/king/sdk/KingListener;

    .line 153
    iput-boolean v2, p0, Lcom/goldcoast/sdk/domain/EntryPoint;->q:Z

    .line 162
    iput-boolean v2, p0, Lcom/goldcoast/sdk/domain/EntryPoint;->y:Z

    .line 166
    iput-boolean v2, p0, Lcom/goldcoast/sdk/domain/EntryPoint;->C:Z

    .line 167
    iput-boolean v2, p0, Lcom/goldcoast/sdk/domain/EntryPoint;->D:Z

    .line 168
    new-instance v0, Lcom/goldcoast/sdk/domain/c;

    invoke-direct {v0, p0}, Lcom/goldcoast/sdk/domain/c;-><init>(Lcom/goldcoast/sdk/domain/EntryPoint;)V

    iput-object v0, p0, Lcom/goldcoast/sdk/domain/EntryPoint;->E:Landroid/content/BroadcastReceiver;

    .line 182
    invoke-static {}, Lcom/goldcoast/sdk/c/h;->a()Lcom/goldcoast/sdk/c/h;

    const-string v0, "client"

    sget-object v1, Lcom/goldcoast/sdk/domain/EntryPoint;->i:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/goldcoast/sdk/c/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    sget-boolean v0, Lcom/goldcoast/sdk/domain/EntryPoint;->m:Z

    if-eqz v0, :cond_0

    .line 194
    new-instance v0, Lcom/goldcoast/sdk/domain/JNIWrapper;

    invoke-direct {v0}, Lcom/goldcoast/sdk/domain/JNIWrapper;-><init>()V

    iput-object v0, p0, Lcom/goldcoast/sdk/domain/EntryPoint;->w:Lcom/goldcoast/sdk/domain/JNIWrapper;

    .line 197
    :cond_0
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/goldcoast/sdk/domain/EntryPoint;->mContext:Landroid/app/Application;

    invoke-virtual {v2}, Landroid/app/Application;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "ota"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "elf"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/goldcoast/sdk/domain/EntryPoint;->extractDir:Ljava/io/File;

    .line 202
    :try_start_0
    sget-object v0, Lcom/goldcoast/sdk/domain/EntryPoint;->mContext:Landroid/app/Application;

    iget-object v1, p0, Lcom/goldcoast/sdk/domain/EntryPoint;->E:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Application;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    :catch_0
    sget-object v0, Lcom/goldcoast/sdk/domain/EntryPoint;->mContext:Landroid/app/Application;

    const-string v1, "connectivity"

    .line 206
    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/goldcoast/sdk/domain/EntryPoint;->v:Landroid/net/ConnectivityManager;

    .line 207
    sget-object v0, Lcom/goldcoast/sdk/domain/EntryPoint;->mContext:Landroid/app/Application;

    iget-object v1, p0, Lcom/goldcoast/sdk/domain/EntryPoint;->E:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/Application;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 210
    sget-object v0, Lcom/goldcoast/sdk/domain/EntryPoint;->mContext:Landroid/app/Application;

    invoke-static {v0}, Lcom/goldcoast/sdk/c/g;->a(Landroid/content/Context;)V

    .line 211
    sget-object v0, Lcom/goldcoast/sdk/domain/EntryPoint;->mContext:Landroid/app/Application;

    invoke-static {v0}, Lcom/goldcoast/sdk/c/c;->a(Landroid/content/Context;)Lcom/goldcoast/sdk/c/c;

    move-result-object v0

    iput-object v0, p0, Lcom/goldcoast/sdk/domain/EntryPoint;->z:Lcom/goldcoast/sdk/c/c;

    const-string v0, "http://www.newbyvideo.com:10001"

    .line 2266
    invoke-virtual {p0, v0}, Lcom/goldcoast/sdk/domain/EntryPoint;->initHost(Ljava/lang/String;)V

    .line 214
    sget-object v0, Lcom/goldcoast/sdk/domain/EntryPoint;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/goldcoast/sdk/b/b;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a()I
    .locals 1

    .line 89
    sget v0, Lcom/goldcoast/sdk/domain/EntryPoint;->j:I

    return v0
.end method

.method private a(Lcom/goldcoast/sdk/a/d;)I
    .locals 7

    const-string v0, "key:%s\norder:%d name: %s"

    const/4 v1, 0x3

    .line 1181
    new-array v1, v1, [Ljava/lang/Object;

    .line 1183
    invoke-virtual {p1}, Lcom/goldcoast/sdk/a/d;->e()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p1}, Lcom/goldcoast/sdk/a/d;->d()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    .line 1184
    invoke-virtual {p1}, Lcom/goldcoast/sdk/a/d;->a()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x2

    aput-object v2, v1, v5

    .line 1182
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1181
    invoke-direct {p0, v0, v5}, Lcom/goldcoast/sdk/domain/EntryPoint;->b(Ljava/lang/String;I)V

    const/4 v0, -0x1

    .line 1186
    :try_start_0
    iget-object v1, p0, Lcom/goldcoast/sdk/domain/EntryPoint;->w:Lcom/goldcoast/sdk/domain/JNIWrapper;

    if-nez v1, :cond_0

    return v0

    .line 1188
    :cond_0
    iget-object v1, p0, Lcom/goldcoast/sdk/domain/EntryPoint;->w:Lcom/goldcoast/sdk/domain/JNIWrapper;

    const-string v2, "%s/ota/elf/%s"

    new-array v5, v5, [Ljava/lang/Object;

    sget-object v6, Lcom/goldcoast/sdk/domain/EntryPoint;->mContext:Landroid/app/Application;

    .line 1189
    invoke-virtual {v6}, Landroid/app/Application;->getFilesDir()Ljava/io/File;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-virtual {p1}, Lcom/goldcoast/sdk/a/d;->a()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v5, v4

    .line 1188
    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/goldcoast/sdk/domain/JNIWrapper;->loadSO(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 1192
    invoke-static {p1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    return v0
.end method

.method static synthetic a(Lcom/goldcoast/sdk/domain/EntryPoint;)Landroid/net/ConnectivityManager;
    .locals 0

    .line 89
    iget-object p0, p0, Lcom/goldcoast/sdk/domain/EntryPoint;->v:Landroid/net/ConnectivityManager;

    return-object p0
.end method

.method static synthetic a(Lcom/goldcoast/sdk/domain/EntryPoint;Landroid/util/Pair;)Landroid/util/Pair;
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/goldcoast/sdk/domain/EntryPoint;->F:Landroid/util/Pair;

    return-object p1
.end method

.method private static a(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1359
    new-instance v0, Ljava/util/zip/ZipInputStream;

    invoke-direct {v0, p0}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    const-string p0, ""

    .line 1362
    invoke-virtual {v0}, Ljava/util/zip/ZipInputStream;->available()I

    const-string v1, ""

    const/4 v2, 0x0

    .line 1365
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v3

    if-eqz v3, :cond_2

    const-string v4, "META-INF"

    .line 1366
    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1369
    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v4, "_"

    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 1370
    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object p0

    move-object v1, p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 1373
    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object p0

    .line 1374
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1375
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 1376
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 1377
    invoke-static {v0, v4}, Lcom/goldcoast/sdk/domain/EntryPoint;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 1378
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    .line 1379
    invoke-static {v3}, Lcom/goldcoast/sdk/c/e;->a(Ljava/io/File;)I

    goto :goto_0

    .line 1381
    :cond_2
    invoke-virtual {v0}, Ljava/util/zip/ZipInputStream;->close()V

    const/4 p1, 0x1

    if-le v2, p1, :cond_3

    return-object v1

    :cond_3
    return-object p0
.end method

.method static synthetic a(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 7175
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/goldcoast/sdk/domain/EntryPoint;->extractDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 7163
    :cond_1
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/goldcoast/sdk/domain/EntryPoint;->extractDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 7165
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/goldcoast/sdk/domain/EntryPoint;->extractDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".romaster_root"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 7167
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7168
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7169
    invoke-static {v0, p0}, Lcom/goldcoast/sdk/c/e;->a(Ljava/io/File;Ljava/io/File;)Z

    const/16 p0, 0x1ed

    .line 7170
    invoke-static {p1, p0}, Lcom/goldcoast/sdk/c/e;->a(Ljava/lang/String;I)I

    .line 7171
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 7172
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p1, Lcom/goldcoast/sdk/domain/EntryPoint;->extractDir:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "shua .romaster_root"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method private static a([B)Ljava/lang/String;
    .locals 8

    .line 1565
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p0

    const/4 v2, 0x2

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    .line 1566
    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_3

    .line 1567
    aget-byte v3, p0, v1

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    .line 1568
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 1570
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "0"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_0
    if-le v4, v2, :cond_1

    add-int/lit8 v6, v4, -0x2

    .line 1572
    invoke-virtual {v3, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 1573
    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1574
    array-length v3, p0

    sub-int/2addr v3, v5

    if-ge v1, v3, :cond_2

    const/16 v3, 0x3a

    .line 1575
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1577
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(I)V
    .locals 4

    .line 7142
    :try_start_0
    invoke-static {}, Lcom/goldcoast/sdk/c/h;->a()Lcom/goldcoast/sdk/c/h;

    const-string v0, "refer"

    invoke-static {v0}, Lcom/goldcoast/sdk/c/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 7143
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 7146
    :cond_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 7147
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    const/4 v2, 0x0

    .line 7148
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_2

    if-eq v2, p0, :cond_1

    .line 7152
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7154
    :cond_2
    invoke-static {}, Lcom/goldcoast/sdk/c/h;->a()Lcom/goldcoast/sdk/c/h;

    const-string p0, "refer"

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/goldcoast/sdk/c/h;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 7156
    invoke-static {p0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic a(Lcom/goldcoast/sdk/domain/EntryPoint;Ljava/lang/String;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 5596
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "body"

    const-string v4, ""

    .line 5597
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 5598
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x4

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v3, :cond_1

    .line 5599
    iget v1, v0, Lcom/goldcoast/sdk/domain/EntryPoint;->r:I

    if-ne v1, v4, :cond_0

    const-string v1, "response body is null\n$$$ failed"

    .line 5600
    invoke-direct {v0, v1, v6}, Lcom/goldcoast/sdk/domain/EntryPoint;->b(Ljava/lang/String;I)V

    return-void

    :cond_0
    const-string v1, "response body is null"

    .line 5602
    invoke-direct {v0, v1, v5}, Lcom/goldcoast/sdk/domain/EntryPoint;->b(Ljava/lang/String;I)V

    return-void

    .line 5608
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "######\n"

    .line 5609
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "<analyseP.Enc>:%s\n"

    .line 5610
    new-array v8, v6, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v1, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5611
    invoke-static {}, Lcom/goldcoast/sdk/c/g;->a()Lcom/goldcoast/sdk/c/g;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/goldcoast/sdk/c/g;->b(Ljava/lang/String;)V

    .line 5612
    new-instance v1, Lorg/json/JSONObject;

    invoke-static {v2}, Lcom/goldcoast/sdk/c/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "bra"

    .line 5616
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 5617
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    iput v3, v0, Lcom/goldcoast/sdk/domain/EntryPoint;->t:I

    const-string v3, "global"

    const-string v7, ""

    .line 5618
    invoke-virtual {v1, v3, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v7, "category"

    .line 5619
    invoke-virtual {v1, v7, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    const-string v8, "token"

    const-string v10, ""

    .line 5620
    invoke-virtual {v1, v8, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 5621
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 5622
    invoke-static {}, Lcom/goldcoast/sdk/c/h;->a()Lcom/goldcoast/sdk/c/h;

    const-string v10, "client"

    invoke-static {v10, v8}, Lcom/goldcoast/sdk/c/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 5625
    :cond_2
    invoke-direct {v0, v3}, Lcom/goldcoast/sdk/domain/EntryPoint;->c(Ljava/lang/String;)V

    const-string v3, "poc"

    const-string v8, ""

    .line 5626
    invoke-virtual {v1, v3, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5627
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    if-eqz v2, :cond_10

    .line 5628
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-gtz v8, :cond_3

    goto/16 :goto_3

    :cond_3
    const/4 v8, 0x0

    .line 5638
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v8, v10, :cond_e

    .line 5639
    iget-boolean v10, v0, Lcom/goldcoast/sdk/domain/EntryPoint;->C:Z

    if-nez v10, :cond_f

    .line 5642
    iput v8, v0, Lcom/goldcoast/sdk/domain/EntryPoint;->u:I

    .line 5643
    invoke-virtual {v2, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "file"

    .line 5644
    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v11, "params"

    .line 5645
    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v0, Lcom/goldcoast/sdk/domain/EntryPoint;->x:Ljava/lang/String;

    const-string v11, "category"

    .line 5646
    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v12

    const-string v11, "order"

    .line 5648
    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v14

    const-string v11, "file_hex"

    const-string v13, ""

    .line 5649
    invoke-virtual {v10, v11, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const-string v11, "component"

    const-string v13, ""

    .line 5650
    invoke-virtual {v10, v11, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v10, "\\?"

    .line 5651
    invoke-virtual {v15, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    aget-object v10, v10, v9

    const-string v11, "/"

    .line 5652
    invoke-virtual {v10, v11}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v11

    add-int/2addr v11, v6

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v10, v11, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 5653
    new-instance v11, Lcom/goldcoast/sdk/a/d;

    move-object v10, v11

    move-object v6, v11

    move-object v11, v9

    move-object v4, v13

    move-object v13, v1

    move-object/from16 v17, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v17

    invoke-direct/range {v10 .. v16}, Lcom/goldcoast/sdk/a/d;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 5655
    iget-boolean v10, v0, Lcom/goldcoast/sdk/domain/EntryPoint;->q:Z

    if-nez v10, :cond_f

    if-nez v7, :cond_4

    .line 5659
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_4

    const-string v10, "null"

    .line 5660
    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    const-string v10, "[]"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 5661
    invoke-static {v4}, Lcom/goldcoast/sdk/domain/EntryPoint;->b(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    if-nez v8, :cond_5

    const-string v10, "null"

    .line 5662
    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_5

    const-string v10, "[]"

    .line 5663
    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_5

    .line 5664
    invoke-static {v4}, Lcom/goldcoast/sdk/domain/EntryPoint;->b(Ljava/lang/String;)V

    .line 5668
    :cond_5
    :goto_1
    sget-object v4, Lcom/goldcoast/sdk/domain/EntryPoint;->mContext:Landroid/app/Application;

    move-object/from16 v10, v17

    invoke-static {v10, v4, v9}, Lcom/goldcoast/sdk/b/a;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 5669
    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5671
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    .line 5804
    invoke-virtual {v6}, Lcom/goldcoast/sdk/a/d;->b()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_6

    const-string v4, "poc is null"

    .line 5805
    invoke-direct {v0, v4, v5}, Lcom/goldcoast/sdk/domain/EntryPoint;->b(Ljava/lang/String;I)V

    goto/16 :goto_2

    .line 5810
    :cond_6
    invoke-virtual {v6}, Lcom/goldcoast/sdk/a/d;->a()Ljava/lang/String;

    move-result-object v9

    const-string v10, ".zip"

    invoke-virtual {v9, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 5811
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Lcom/goldcoast/sdk/domain/EntryPoint;->extractDir:Ljava/io/File;

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v10, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5812
    invoke-virtual {v6}, Lcom/goldcoast/sdk/a/d;->a()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 5814
    new-instance v10, Ljava/io/FileInputStream;

    invoke-direct {v10, v9}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 5815
    sget-object v11, Lcom/goldcoast/sdk/domain/EntryPoint;->extractDir:Ljava/io/File;

    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/goldcoast/sdk/domain/EntryPoint;->a(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 5816
    invoke-virtual {v6, v10}, Lcom/goldcoast/sdk/a/d;->a(Ljava/lang/String;)V

    .line 5817
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5818
    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    .line 5821
    :cond_7
    sget v9, Lcom/goldcoast/sdk/domain/EntryPoint;->k:I

    if-nez v9, :cond_8

    .line 5822
    invoke-direct/range {p0 .. p0}, Lcom/goldcoast/sdk/domain/EntryPoint;->e()V

    goto :goto_2

    .line 5857
    :cond_8
    iput-object v6, v0, Lcom/goldcoast/sdk/domain/EntryPoint;->A:Lcom/goldcoast/sdk/a/d;

    .line 5858
    iget-object v9, v0, Lcom/goldcoast/sdk/domain/EntryPoint;->z:Lcom/goldcoast/sdk/c/c;

    invoke-virtual {v6}, Lcom/goldcoast/sdk/a/d;->a()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/goldcoast/sdk/c/c;->c(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_9

    const-string v4, "$$$ skip"

    .line 5859
    invoke-direct {v0, v4, v5}, Lcom/goldcoast/sdk/domain/EntryPoint;->b(Ljava/lang/String;I)V

    goto :goto_2

    .line 5865
    :cond_9
    iget v9, v0, Lcom/goldcoast/sdk/domain/EntryPoint;->r:I

    const/4 v10, 0x4

    if-ne v9, v10, :cond_c

    .line 5866
    iget-object v9, v0, Lcom/goldcoast/sdk/domain/EntryPoint;->w:Lcom/goldcoast/sdk/domain/JNIWrapper;

    if-eqz v9, :cond_d

    .line 5868
    invoke-direct {v0, v6}, Lcom/goldcoast/sdk/domain/EntryPoint;->a(Lcom/goldcoast/sdk/a/d;)I

    move-result v6

    const/16 v9, 0xbb8

    if-ne v6, v9, :cond_a

    .line 5869
    invoke-direct/range {p0 .. p0}, Lcom/goldcoast/sdk/domain/EntryPoint;->e()V

    goto :goto_2

    :cond_a
    const/4 v6, 0x1

    sub-int/2addr v4, v6

    if-ne v8, v4, :cond_b

    const-string v4, "$$$ failed"

    .line 5877
    invoke-direct {v0, v4, v6}, Lcom/goldcoast/sdk/domain/EntryPoint;->b(Ljava/lang/String;I)V

    .line 5879
    invoke-virtual/range {p0 .. p0}, Lcom/goldcoast/sdk/domain/EntryPoint;->braFlush()V

    goto :goto_2

    :cond_b
    const-string v4, "$$$ return null"

    .line 5881
    invoke-direct {v0, v4, v5}, Lcom/goldcoast/sdk/domain/EntryPoint;->b(Ljava/lang/String;I)V

    goto :goto_2

    .line 5886
    :cond_c
    invoke-direct {v0, v6}, Lcom/goldcoast/sdk/domain/EntryPoint;->b(Lcom/goldcoast/sdk/a/d;)Landroid/util/Pair;

    :cond_d
    :goto_2
    add-int/lit8 v8, v8, 0x1

    const/4 v4, 0x4

    const/4 v6, 0x1

    const/4 v9, 0x0

    goto/16 :goto_0

    .line 5673
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/goldcoast/sdk/domain/EntryPoint;->braFlush()V

    :cond_f
    return-void

    .line 5630
    :cond_10
    :goto_3
    iget v1, v0, Lcom/goldcoast/sdk/domain/EntryPoint;->r:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_11

    const-string v1, "not found suitable su file\n$$$ failed "

    const/4 v2, 0x1

    .line 5631
    invoke-direct {v0, v1, v2}, Lcom/goldcoast/sdk/domain/EntryPoint;->b(Ljava/lang/String;I)V

    return-void

    :cond_11
    const-string v1, "not found suitable su file "

    .line 5633
    invoke-direct {v0, v1, v5}, Lcom/goldcoast/sdk/domain/EntryPoint;->b(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic a(Lcom/goldcoast/sdk/domain/EntryPoint;Ljava/lang/String;I)V
    .locals 0

    .line 89
    invoke-direct {p0, p1, p2}, Lcom/goldcoast/sdk/domain/EntryPoint;->b(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic a(Lcom/goldcoast/sdk/domain/EntryPoint;Ljava/lang/String;Ljava/util/List;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 6678
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "body"

    const-string v4, ""

    .line 6679
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 6680
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x2

    if-eqz v3, :cond_0

    const-string v1, "response body is null"

    .line 6681
    invoke-direct {v0, v1, v4}, Lcom/goldcoast/sdk/domain/EntryPoint;->b(Ljava/lang/String;I)V

    return-void

    .line 6686
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "######\n"

    .line 6687
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "<analyseP.Enc>:%s\n"

    const/4 v6, 0x1

    .line 6688
    new-array v7, v6, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v1, v7, v8

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6689
    invoke-static {}, Lcom/goldcoast/sdk/c/g;->a()Lcom/goldcoast/sdk/c/g;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/goldcoast/sdk/c/g;->b(Ljava/lang/String;)V

    .line 6690
    new-instance v1, Lorg/json/JSONObject;

    invoke-static {v2}, Lcom/goldcoast/sdk/c/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "bra"

    .line 6692
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 6693
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    iput v3, v0, Lcom/goldcoast/sdk/domain/EntryPoint;->t:I

    const-string v3, "global"

    const-string v5, ""

    .line 6694
    invoke-virtual {v1, v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "category"

    .line 6695
    invoke-virtual {v1, v5, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    const-string v7, "token"

    const-string v9, ""

    .line 6696
    invoke-virtual {v1, v7, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 6697
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 6698
    invoke-static {}, Lcom/goldcoast/sdk/c/h;->a()Lcom/goldcoast/sdk/c/h;

    const-string v9, "client"

    invoke-static {v9, v7}, Lcom/goldcoast/sdk/c/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 6701
    :cond_1
    invoke-direct {v0, v3}, Lcom/goldcoast/sdk/domain/EntryPoint;->c(Ljava/lang/String;)V

    const-string v3, "poc"

    const-string v7, ""

    .line 6702
    invoke-virtual {v1, v3, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 6703
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    if-eqz v2, :cond_6

    .line 6704
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-gtz v3, :cond_2

    goto/16 :goto_2

    :cond_2
    const/4 v3, 0x0

    .line 6713
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_5

    .line 6714
    iget-boolean v4, v0, Lcom/goldcoast/sdk/domain/EntryPoint;->C:Z

    if-nez v4, :cond_5

    .line 6717
    iput v3, v0, Lcom/goldcoast/sdk/domain/EntryPoint;->u:I

    .line 6718
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v7, "file"

    .line 6719
    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v7, "params"

    .line 6720
    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/goldcoast/sdk/domain/EntryPoint;->x:Ljava/lang/String;

    const-string v7, "category"

    .line 6721
    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v11

    const-string v7, "order"

    .line 6722
    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v13

    const-string v7, "file_hex"

    const-string v9, ""

    .line 6723
    invoke-virtual {v4, v7, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v7, "component"

    const-string v9, ""

    .line 6724
    invoke-virtual {v4, v7, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v7, "\\?"

    .line 6725
    invoke-virtual {v15, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    aget-object v7, v7, v8

    .line 6726
    invoke-static {}, Lcom/goldcoast/sdk/c/g;->a()Lcom/goldcoast/sdk/c/g;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "parseResponse_m->braUrl="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/goldcoast/sdk/c/g;->a(Ljava/lang/String;)V

    const-string v9, "/"

    .line 6727
    invoke-virtual {v7, v9}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v9

    add-int/2addr v9, v6

    .line 6728
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    .line 6727
    invoke-virtual {v15, v9, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 6731
    new-instance v7, Lcom/goldcoast/sdk/a/d;

    move-object v9, v7

    move-object v12, v1

    invoke-direct/range {v9 .. v15}, Lcom/goldcoast/sdk/a/d;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 6733
    iget-boolean v9, v0, Lcom/goldcoast/sdk/domain/EntryPoint;->q:Z

    if-nez v9, :cond_5

    if-nez v5, :cond_3

    .line 6738
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_3

    const-string v9, "null"

    .line 6739
    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    const-string v9, "[]"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 6740
    invoke-static {v4}, Lcom/goldcoast/sdk/domain/EntryPoint;->b(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    if-nez v3, :cond_4

    const-string v9, "null"

    .line 6741
    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    const-string v9, "[]"

    .line 6742
    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 6743
    invoke-static {v4}, Lcom/goldcoast/sdk/domain/EntryPoint;->b(Ljava/lang/String;)V

    :cond_4
    :goto_1
    move-object/from16 v4, p2

    .line 6745
    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_5
    return-void

    .line 6705
    :cond_6
    :goto_2
    iget v1, v0, Lcom/goldcoast/sdk/domain/EntryPoint;->r:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_7

    const-string v1, "not found suitable su file\n$$$ failed"

    .line 6706
    invoke-direct {v0, v1, v6}, Lcom/goldcoast/sdk/domain/EntryPoint;->b(Ljava/lang/String;I)V

    return-void

    :cond_7
    const-string v1, "not found suitable su file "

    .line 6708
    invoke-direct {v0, v1, v4}, Lcom/goldcoast/sdk/domain/EntryPoint;->b(Ljava/lang/String;I)V

    return-void
.end method

.method private static a(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 3

    const/16 v0, 0x1000

    .line 1387
    new-array v0, v0, [B

    .line 1389
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v2, 0x0

    .line 1390
    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic a(Ljava/lang/String;)V
    .locals 2

    .line 7126
    :try_start_0
    invoke-static {}, Lcom/goldcoast/sdk/c/h;->a()Lcom/goldcoast/sdk/c/h;

    const-string v0, "refer"

    invoke-static {v0}, Lcom/goldcoast/sdk/c/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 7128
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7129
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    goto :goto_0

    .line 7131
    :cond_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 7133
    :goto_0
    invoke-virtual {v0, p0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 7134
    invoke-static {}, Lcom/goldcoast/sdk/c/h;->a()Lcom/goldcoast/sdk/c/h;

    const-string p0, "refer"

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/goldcoast/sdk/c/h;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 7136
    invoke-static {p0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    return-void
.end method

.method private a(Ljava/lang/String;II)V
    .locals 12

    .line 969
    new-instance v0, Lcom/b/a/y;

    invoke-direct {v0}, Lcom/b/a/y;-><init>()V

    const-string v1, "body"

    invoke-virtual {v0, v1, p1}, Lcom/b/a/y;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/b/a/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/y;->a()Lcom/b/a/x;

    move-result-object v0

    .line 970
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x2

    if-ne p3, v2, :cond_0

    const-string v2, "######rePost\n"

    .line 972
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string v2, "######\n"

    .line 976
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const-string v2, "<feedbackQ.Enc>:%s\n"

    const/4 v3, 0x1

    .line 980
    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 981
    invoke-static {}, Lcom/goldcoast/sdk/c/g;->a()Lcom/goldcoast/sdk/c/g;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/goldcoast/sdk/c/g;->b(Ljava/lang/String;)V

    .line 982
    new-instance v1, Landroid/os/ConditionVariable;

    invoke-direct {v1, v5}, Landroid/os/ConditionVariable;-><init>(Z)V

    .line 983
    invoke-virtual {v1}, Landroid/os/ConditionVariable;->close()V

    .line 986
    new-instance v2, Lcom/b/a/ap;

    invoke-direct {v2}, Lcom/b/a/ap;-><init>()V

    sget-object v3, Lcom/goldcoast/sdk/domain/EntryPoint;->e:Ljava/lang/String;

    .line 987
    invoke-virtual {v2, v3}, Lcom/b/a/ap;->a(Ljava/lang/String;)Lcom/b/a/ap;

    move-result-object v2

    .line 988
    invoke-virtual {v2, v0}, Lcom/b/a/ap;->a(Lcom/b/a/aq;)Lcom/b/a/ap;

    move-result-object v0

    .line 989
    invoke-virtual {v0}, Lcom/b/a/ap;->a()Lcom/b/a/ao;

    move-result-object v0

    .line 990
    sget-object v2, Lcom/goldcoast/sdk/domain/EntryPoint;->g:Lcom/b/a/ai;

    invoke-virtual {v2, v0}, Lcom/b/a/ai;->a(Lcom/b/a/ao;)Lcom/b/a/g;

    move-result-object v0

    new-instance v2, Lcom/goldcoast/sdk/domain/h;

    move-object v6, v2

    move-object v7, p0

    move v8, p3

    move-object v9, p1

    move-object v10, v1

    move v11, p2

    invoke-direct/range {v6 .. v11}, Lcom/goldcoast/sdk/domain/h;-><init>(Lcom/goldcoast/sdk/domain/EntryPoint;ILjava/lang/String;Landroid/os/ConditionVariable;I)V

    invoke-interface {v0, v2}, Lcom/b/a/g;->a(Lcom/b/a/h;)V

    .line 1073
    invoke-virtual {v1}, Landroid/os/ConditionVariable;->block()V

    return-void
.end method

.method private a(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x3
    .end annotation

    .line 924
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/goldcoast/sdk/domain/EntryPoint;->extractDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 925
    new-instance v1, Lcom/goldcoast/sdk/a/g;

    invoke-direct {v1}, Lcom/goldcoast/sdk/a/g;-><init>()V

    .line 926
    new-instance v2, Lcom/goldcoast/sdk/a/f;

    invoke-static {}, Lcom/goldcoast/sdk/a/f;->a()[Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/goldcoast/sdk/a/f;-><init>([Ljava/lang/String;)V

    .line 927
    sget-object v3, Lcom/goldcoast/sdk/domain/EntryPoint;->mContext:Landroid/app/Application;

    invoke-static {v3}, Lcom/goldcoast/sdk/c/d;->a(Landroid/content/Context;)Lcom/goldcoast/sdk/c/d;

    invoke-static {}, Lcom/goldcoast/sdk/c/d;->a()Lcom/goldcoast/sdk/a/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/goldcoast/sdk/a/b;->b()Lcom/goldcoast/sdk/a/e;

    move-result-object v3

    invoke-virtual {v3}, Lcom/goldcoast/sdk/a/e;->b()Ljava/lang/String;

    move-result-object v3

    .line 928
    invoke-virtual {v2, v3}, Lcom/goldcoast/sdk/a/f;->a(Ljava/lang/String;)V

    .line 929
    invoke-virtual {v1, v2}, Lcom/goldcoast/sdk/a/g;->a(Lcom/goldcoast/sdk/a/f;)V

    .line 930
    invoke-virtual {v1, p1}, Lcom/goldcoast/sdk/a/g;->a(Ljava/lang/String;)V

    .line 931
    invoke-virtual {v1, p2}, Lcom/goldcoast/sdk/a/g;->a(I)V

    .line 932
    invoke-virtual {v1, p3}, Lcom/goldcoast/sdk/a/g;->b(Ljava/lang/String;)V

    .line 933
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    invoke-virtual {v1, p1, p2}, Lcom/goldcoast/sdk/a/g;->a(J)V

    .line 934
    sget-object p1, Lcom/goldcoast/sdk/domain/EntryPoint;->mContext:Landroid/app/Application;

    invoke-static {p1}, Lcom/goldcoast/sdk/c/d;->a(Landroid/content/Context;)Lcom/goldcoast/sdk/c/d;

    invoke-static {}, Lcom/goldcoast/sdk/c/d;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/goldcoast/sdk/a/g;->c(Ljava/lang/String;)V

    .line 936
    :try_start_0
    sget-object p1, Lcom/goldcoast/sdk/domain/EntryPoint;->mContext:Landroid/app/Application;

    const-string p2, "phone"

    .line 937
    invoke-virtual {p1, p2}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    .line 938
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/goldcoast/sdk/a/g;->d(Ljava/lang/String;)V

    .line 939
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/goldcoast/sdk/a/g;->e(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 942
    :catch_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/goldcoast/sdk/a/g;->f(Ljava/lang/String;)V

    .line 943
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Locale;->getDisplayCountry()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/goldcoast/sdk/a/g;->g(Ljava/lang/String;)V

    .line 944
    invoke-static {}, Lcom/goldcoast/sdk/c/h;->a()Lcom/goldcoast/sdk/c/h;

    const-string p1, "client"

    invoke-static {p1}, Lcom/goldcoast/sdk/c/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/goldcoast/sdk/a/g;->h(Ljava/lang/String;)V

    .line 945
    sget-object p1, Lcom/goldcoast/sdk/domain/EntryPoint;->mContext:Landroid/app/Application;

    invoke-virtual {p1}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/goldcoast/sdk/a/g;->j(Ljava/lang/String;)V

    .line 946
    invoke-virtual {p0}, Lcom/goldcoast/sdk/domain/EntryPoint;->getCertificateFingerprintMD5()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/goldcoast/sdk/a/g;->k(Ljava/lang/String;)V

    .line 947
    invoke-virtual {v1, p4}, Lcom/goldcoast/sdk/a/g;->b(I)V

    const-string p1, "4.0.14"

    .line 948
    invoke-virtual {v1, p1}, Lcom/goldcoast/sdk/a/g;->i(Ljava/lang/String;)V

    .line 949
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 961
    :try_start_1
    invoke-virtual {v1}, Lcom/goldcoast/sdk/a/g;->a()Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/goldcoast/sdk/c/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, -0x1

    const/4 p3, 0x1

    invoke-direct {p0, p1, p2, p3}, Lcom/goldcoast/sdk/domain/EntryPoint;->a(Ljava/lang/String;II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    return-void
.end method

.method private a(Lcom/goldcoast/sdk/domain/AnalyseResult;)Z
    .locals 6

    .line 315
    sget-object v0, Lcom/goldcoast/sdk/domain/EntryPoint;->mContext:Landroid/app/Application;

    const-string v1, "connectivity"

    .line 3037
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 3040
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v3, 0x0

    .line 3042
    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_1

    .line 3043
    aget-object v4, v0, v3

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v4

    sget-object v5, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v4, v5, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_2

    const-string p1, "start failed: \u5f53\u524d\u7f51\u7edc\u8fde\u63a5\u5f02\u5e38\uff0c\u8bf7\u68c0\u6d4b\u7f51\u7edc\u8fde\u63a5\u662f\u5426\u53ef\u7528."

    .line 316
    invoke-direct {p0, p1, v2}, Lcom/goldcoast/sdk/domain/EntryPoint;->b(Ljava/lang/String;I)V

    return v1

    .line 321
    :cond_2
    invoke-static {}, Lcom/goldcoast/sdk/c/h;->a()Lcom/goldcoast/sdk/c/h;

    const-string v0, "client"

    invoke-static {v0}, Lcom/goldcoast/sdk/c/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lcom/goldcoast/sdk/domain/EntryPoint;->mContext:Landroid/app/Application;

    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    if-nez p1, :cond_4

    const-string p1, "start failed: \u8bf7\u521d\u59cb\u5316analyseResult\u53c2\u6570"

    .line 329
    invoke-direct {p0, p1, v2}, Lcom/goldcoast/sdk/domain/EntryPoint;->b(Ljava/lang/String;I)V

    return v1

    :cond_4
    return v2

    :cond_5
    :goto_2
    const-string p1, "start failed: \u8bf7\u5728Application\u4e2d\u8c03\u7528 EntryPoint.init([context],[token])"

    .line 323
    invoke-direct {p0, p1, v2}, Lcom/goldcoast/sdk/domain/EntryPoint;->b(Ljava/lang/String;I)V

    return v1
.end method

.method static synthetic a(Lcom/goldcoast/sdk/domain/EntryPoint;Z)Z
    .locals 0

    .line 89
    iput-boolean p1, p0, Lcom/goldcoast/sdk/domain/EntryPoint;->D:Z

    return p1
.end method

.method private static a(Ljava/io/File;)Z
    .locals 4

    .line 1471
    :try_start_0
    new-instance v0, Landroid/net/LocalSocket;

    invoke-direct {v0}, Landroid/net/LocalSocket;-><init>()V

    .line 1473
    new-instance v1, Landroid/net/LocalSocketAddress;

    const-string v2, "darwin.rodo"

    sget-object v3, Landroid/net/LocalSocketAddress$Namespace;->ABSTRACT:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v1, v2, v3}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    invoke-virtual {v0, v1}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    .line 1477
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    .line 1478
    array-length v1, p0

    add-int/lit8 v1, v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 1479
    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 1480
    array-length v2, p0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1481
    invoke-virtual {v1, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 1482
    invoke-virtual {v0}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p0

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 1484
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    .line 1485
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    const-string v1, "KingDaemon"

    .line 1486
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "client pid="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1487
    array-length v1, p0

    add-int/lit8 v1, v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 1488
    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 1489
    array-length v2, p0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1490
    invoke-virtual {v1, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 1491
    invoke-virtual {v0}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p0

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 1493
    invoke-virtual {v0}, Landroid/net/LocalSocket;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method private b(Lcom/goldcoast/sdk/a/d;)Landroid/util/Pair;
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x5
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/goldcoast/sdk/a/d;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1199
    sget v0, Lcom/goldcoast/sdk/domain/EntryPoint;->k:I

    if-nez v0, :cond_0

    .line 1200
    new-instance p1, Landroid/util/Pair;

    const-string v0, "yes"

    const-string v1, "$$$ success"

    invoke-direct {p1, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    .line 1202
    :cond_0
    new-instance v0, Landroid/os/ConditionVariable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/os/ConditionVariable;-><init>(Z)V

    .line 1203
    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 1204
    iget-object v1, p0, Lcom/goldcoast/sdk/domain/EntryPoint;->z:Lcom/goldcoast/sdk/c/c;

    invoke-virtual {p1}, Lcom/goldcoast/sdk/a/d;->a()Ljava/lang/String;

    move-result-object v2

    .line 4076
    invoke-virtual {v1, v2}, Lcom/goldcoast/sdk/c/c;->c(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 4079
    invoke-virtual {v1}, Lcom/goldcoast/sdk/c/c;->a()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 4081
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 4082
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    goto :goto_0

    .line 4085
    :cond_1
    :try_start_0
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v5

    goto :goto_0

    :catch_0
    move-exception v3

    .line 4087
    invoke-static {v3}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 4091
    :goto_0
    :try_start_1
    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 4092
    invoke-virtual {v4}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/goldcoast/sdk/c/c;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    .line 4094
    invoke-static {v1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 4218
    :cond_2
    :goto_1
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/goldcoast/sdk/domain/j;

    invoke-direct {v2, p0, p1}, Lcom/goldcoast/sdk/domain/j;-><init>(Lcom/goldcoast/sdk/domain/EntryPoint;Lcom/goldcoast/sdk/a/d;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 4263
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 4267
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/goldcoast/sdk/domain/b;

    invoke-direct {v2, p0, v0}, Lcom/goldcoast/sdk/domain/b;-><init>(Lcom/goldcoast/sdk/domain/EntryPoint;Landroid/os/ConditionVariable;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 4307
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 1209
    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 1210
    iget-object v0, p0, Lcom/goldcoast/sdk/domain/EntryPoint;->z:Lcom/goldcoast/sdk/c/c;

    invoke-virtual {p1}, Lcom/goldcoast/sdk/a/d;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/goldcoast/sdk/c/c;->b(Ljava/lang/String;)V

    .line 1211
    iget-object p1, p0, Lcom/goldcoast/sdk/domain/EntryPoint;->F:Landroid/util/Pair;

    if-nez p1, :cond_3

    .line 1212
    new-instance p1, Landroid/util/Pair;

    const-string v0, "no"

    const-string v1, "not return any result"

    invoke-direct {p1, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/goldcoast/sdk/domain/EntryPoint;->F:Landroid/util/Pair;

    .line 1214
    :cond_3
    iget-object p1, p0, Lcom/goldcoast/sdk/domain/EntryPoint;->F:Landroid/util/Pair;

    return-object p1
.end method

.method private b()V
    .locals 5

    .line 287
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/goldcoast/sdk/domain/EntryPoint;->extractDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 288
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 290
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    array-length v1, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    .line 291
    invoke-virtual {v4}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 298
    :catch_0
    :cond_0
    sget-object v0, Lcom/goldcoast/sdk/domain/EntryPoint;->extractDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 299
    iput-boolean v2, p0, Lcom/goldcoast/sdk/domain/EntryPoint;->y:Z

    return-void
.end method

.method static synthetic b(Lcom/goldcoast/sdk/domain/EntryPoint;)V
    .locals 0

    .line 89
    invoke-direct {p0}, Lcom/goldcoast/sdk/domain/EntryPoint;->f()V

    return-void
.end method

.method static synthetic b(Lcom/goldcoast/sdk/domain/EntryPoint;Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x2

    .line 89
    invoke-direct {p0, p1, p2, v0}, Lcom/goldcoast/sdk/domain/EntryPoint;->a(Ljava/lang/String;II)V

    return-void
.end method

.method private static b(Ljava/lang/String;)V
    .locals 3

    const-string v0, "\\?"

    .line 753
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const-string v1, "/"

    .line 754
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 755
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    .line 754
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 756
    sget-object v2, Lcom/goldcoast/sdk/domain/EntryPoint;->mContext:Landroid/app/Application;

    invoke-static {p0, v2, v0}, Lcom/goldcoast/sdk/b/a;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 757
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/goldcoast/sdk/domain/EntryPoint;->extractDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 759
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 760
    sget-object v1, Lcom/goldcoast/sdk/domain/EntryPoint;->extractDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/goldcoast/sdk/domain/EntryPoint;->a(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    .line 761
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 762
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    return-void
.end method

.method private b(Ljava/lang/String;I)V
    .locals 3

    .line 1311
    sput p2, Lcom/goldcoast/sdk/domain/EntryPoint;->k:I

    const/4 v0, 0x1

    if-nez p2, :cond_4

    .line 1313
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    .line 1316
    :cond_0
    iget-object p2, p0, Lcom/goldcoast/sdk/domain/EntryPoint;->B:Lcom/goldcoast/sdk/a/d;

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/goldcoast/sdk/domain/EntryPoint;->B:Lcom/goldcoast/sdk/a/d;

    .line 1317
    invoke-virtual {p2}, Lcom/goldcoast/sdk/a/d;->a()Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lcom/goldcoast/sdk/domain/EntryPoint;->A:Lcom/goldcoast/sdk/a/d;

    .line 1318
    invoke-virtual {v1}, Lcom/goldcoast/sdk/a/d;->a()Ljava/lang/String;

    move-result-object v1

    .line 1317
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    return-void

    .line 1321
    :cond_1
    iget-object p2, p0, Lcom/goldcoast/sdk/domain/EntryPoint;->A:Lcom/goldcoast/sdk/a/d;

    iput-object p2, p0, Lcom/goldcoast/sdk/domain/EntryPoint;->B:Lcom/goldcoast/sdk/a/d;

    .line 1322
    iget-object p2, p0, Lcom/goldcoast/sdk/domain/EntryPoint;->z:Lcom/goldcoast/sdk/c/c;

    const-string v1, ""

    invoke-virtual {p2, v1}, Lcom/goldcoast/sdk/c/c;->a(Ljava/lang/String;)V

    .line 1323
    iget-object p2, p0, Lcom/goldcoast/sdk/domain/EntryPoint;->A:Lcom/goldcoast/sdk/a/d;

    if-eqz p2, :cond_2

    .line 1324
    iget-object p2, p0, Lcom/goldcoast/sdk/domain/EntryPoint;->A:Lcom/goldcoast/sdk/a/d;

    invoke-virtual {p2}, Lcom/goldcoast/sdk/a/d;->a()Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lcom/goldcoast/sdk/domain/EntryPoint;->A:Lcom/goldcoast/sdk/a/d;

    invoke-virtual {v1}, Lcom/goldcoast/sdk/a/d;->c()I

    move-result v1

    invoke-direct {p0, p2, v0, p1, v1}, Lcom/goldcoast/sdk/domain/EntryPoint;->a(Ljava/lang/String;ILjava/lang/String;I)V

    :cond_2
    const/4 p2, 0x0

    :goto_0
    const/16 v0, 0x1e

    if-ge p2, v0, :cond_3

    .line 1328
    :try_start_0
    invoke-virtual {p0}, Lcom/goldcoast/sdk/domain/EntryPoint;->getStatus()Z

    move-result v0

    if-nez v0, :cond_3

    const-wide/16 v0, 0x3e8

    .line 1331
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :catch_0
    move-exception p2

    .line 1334
    invoke-static {p2}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 1336
    :cond_3
    sget-object p2, Lcom/goldcoast/sdk/domain/EntryPoint;->h:Lcom/goldcoast/sdk/domain/AnalyseResult;

    invoke-interface {p2, p1}, Lcom/goldcoast/sdk/domain/AnalyseResult;->onSuccess(Ljava/lang/String;)V

    return-void

    :cond_4
    const/4 v1, -0x1

    if-ne p2, v0, :cond_5

    .line 1338
    sget-object p2, Lcom/goldcoast/sdk/domain/EntryPoint;->h:Lcom/goldcoast/sdk/domain/AnalyseResult;

    invoke-interface {p2, p1}, Lcom/goldcoast/sdk/domain/AnalyseResult;->onFailed(Ljava/lang/String;)V

    .line 1339
    invoke-virtual {p0}, Lcom/goldcoast/sdk/domain/EntryPoint;->braFlush()V

    .line 1340
    iget-object p2, p0, Lcom/goldcoast/sdk/domain/EntryPoint;->A:Lcom/goldcoast/sdk/a/d;

    if-eqz p2, :cond_8

    .line 1341
    iget-object p2, p0, Lcom/goldcoast/sdk/domain/EntryPoint;->A:Lcom/goldcoast/sdk/a/d;

    invoke-virtual {p2}, Lcom/goldcoast/sdk/a/d;->a()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/goldcoast/sdk/domain/EntryPoint;->A:Lcom/goldcoast/sdk/a/d;

    invoke-virtual {v0}, Lcom/goldcoast/sdk/a/d;->c()I

    move-result v0

    invoke-direct {p0, p2, v1, p1, v0}, Lcom/goldcoast/sdk/domain/EntryPoint;->a(Ljava/lang/String;ILjava/lang/String;I)V

    return-void

    :cond_5
    const/4 v2, 0x2

    if-ne p2, v2, :cond_6

    .line 1344
    sget-object p2, Lcom/goldcoast/sdk/domain/EntryPoint;->h:Lcom/goldcoast/sdk/domain/AnalyseResult;

    invoke-interface {p2, p1}, Lcom/goldcoast/sdk/domain/AnalyseResult;->onProgress(Ljava/lang/String;)V

    return-void

    .line 1346
    :cond_6
    iget p2, p0, Lcom/goldcoast/sdk/domain/EntryPoint;->r:I

    const/4 v2, 0x4

    if-ne p2, v2, :cond_7

    iget p2, p0, Lcom/goldcoast/sdk/domain/EntryPoint;->t:I

    sub-int/2addr p2, v0

    iget v0, p0, Lcom/goldcoast/sdk/domain/EntryPoint;->u:I

    if-ne p2, v0, :cond_7

    .line 1347
    sget-object p2, Lcom/goldcoast/sdk/domain/EntryPoint;->h:Lcom/goldcoast/sdk/domain/AnalyseResult;

    invoke-interface {p2, p1}, Lcom/goldcoast/sdk/domain/AnalyseResult;->onFailed(Ljava/lang/String;)V

    .line 1348
    invoke-virtual {p0}, Lcom/goldcoast/sdk/domain/EntryPoint;->braFlush()V

    .line 1349
    iget-object p2, p0, Lcom/goldcoast/sdk/domain/EntryPoint;->A:Lcom/goldcoast/sdk/a/d;

    if-eqz p2, :cond_8

    .line 1350
    iget-object p2, p0, Lcom/goldcoast/sdk/domain/EntryPoint;->A:Lcom/goldcoast/sdk/a/d;

    invoke-virtual {p2}, Lcom/goldcoast/sdk/a/d;->a()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/goldcoast/sdk/domain/EntryPoint;->A:Lcom/goldcoast/sdk/a/d;

    invoke-virtual {v0}, Lcom/goldcoast/sdk/a/d;->c()I

    move-result v0

    invoke-direct {p0, p2, v1, p1, v0}, Lcom/goldcoast/sdk/domain/EntryPoint;->a(Ljava/lang/String;ILjava/lang/String;I)V

    return-void

    .line 1353
    :cond_7
    sget-object p2, Lcom/goldcoast/sdk/domain/EntryPoint;->h:Lcom/goldcoast/sdk/domain/AnalyseResult;

    invoke-interface {p2, p1}, Lcom/goldcoast/sdk/domain/AnalyseResult;->onException(Ljava/lang/String;)V

    :cond_8
    return-void
.end method

.method private c()V
    .locals 2

    .line 303
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/goldcoast/sdk/domain/EntryPoint;->mContext:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/app/Application;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "dump"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 305
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 306
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 307
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_0
    const/4 v0, 0x0

    .line 310
    iput-boolean v0, p0, Lcom/goldcoast/sdk/domain/EntryPoint;->q:Z

    .line 311
    iput v0, p0, Lcom/goldcoast/sdk/domain/EntryPoint;->s:I

    return-void
.end method

.method static synthetic c(Lcom/goldcoast/sdk/domain/EntryPoint;)V
    .locals 3

    .line 5078
    iget-object v0, p0, Lcom/goldcoast/sdk/domain/EntryPoint;->z:Lcom/goldcoast/sdk/c/c;

    invoke-virtual {v0}, Lcom/goldcoast/sdk/c/c;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5081
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "rf_md5"

    .line 5083
    iget-object v2, p0, Lcom/goldcoast/sdk/domain/EntryPoint;->z:Lcom/goldcoast/sdk/c/c;

    invoke-virtual {v2}, Lcom/goldcoast/sdk/c/c;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "android_id"

    .line 5084
    sget-object v2, Lcom/goldcoast/sdk/domain/EntryPoint;->mContext:Landroid/app/Application;

    invoke-static {v2}, Lcom/goldcoast/sdk/c/d;->a(Landroid/content/Context;)Lcom/goldcoast/sdk/c/d;

    invoke-static {}, Lcom/goldcoast/sdk/c/d;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "token"

    .line 5085
    invoke-static {}, Lcom/goldcoast/sdk/c/h;->a()Lcom/goldcoast/sdk/c/h;

    const-string v2, "client"

    invoke-static {v2}, Lcom/goldcoast/sdk/c/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "package_name"

    .line 5086
    sget-object v2, Lcom/goldcoast/sdk/domain/EntryPoint;->mContext:Landroid/app/Application;

    invoke-virtual {v2}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "signature"

    .line 5087
    invoke-virtual {p0}, Lcom/goldcoast/sdk/domain/EntryPoint;->getCertificateFingerprintMD5()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5089
    new-instance p0, Lcom/b/a/y;

    invoke-direct {p0}, Lcom/b/a/y;-><init>()V

    const-string v1, "body"

    .line 5090
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/goldcoast/sdk/c/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/b/a/y;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/b/a/y;

    move-result-object p0

    .line 5091
    invoke-virtual {p0}, Lcom/b/a/y;->a()Lcom/b/a/x;

    move-result-object p0

    .line 5093
    sget-object v0, Lcom/goldcoast/sdk/domain/EntryPoint;->g:Lcom/b/a/ai;

    new-instance v1, Lcom/b/a/ap;

    invoke-direct {v1}, Lcom/b/a/ap;-><init>()V

    sget-object v2, Lcom/goldcoast/sdk/domain/EntryPoint;->f:Ljava/lang/String;

    .line 5094
    invoke-virtual {v1, v2}, Lcom/b/a/ap;->a(Ljava/lang/String;)Lcom/b/a/ap;

    move-result-object v1

    .line 5095
    invoke-virtual {v1, p0}, Lcom/b/a/ap;->a(Lcom/b/a/aq;)Lcom/b/a/ap;

    move-result-object p0

    invoke-virtual {p0}, Lcom/b/a/ap;->a()Lcom/b/a/ao;

    move-result-object p0

    .line 5093
    invoke-virtual {v0, p0}, Lcom/b/a/ai;->a(Lcom/b/a/ao;)Lcom/b/a/g;

    move-result-object p0

    .line 5096
    invoke-interface {p0}, Lcom/b/a/g;->a()Lcom/b/a/as;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 5098
    invoke-static {p0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 5

    .line 767
    iget-boolean v0, p0, Lcom/goldcoast/sdk/domain/EntryPoint;->y:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "\\?"

    .line 771
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const-string v2, "/"

    .line 772
    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    .line 773
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    .line 772
    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 774
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/goldcoast/sdk/domain/EntryPoint;->extractDir:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 776
    sget-object v4, Lcom/goldcoast/sdk/domain/EntryPoint;->mContext:Landroid/app/Application;

    invoke-static {p1, v4, v0}, Lcom/goldcoast/sdk/b/a;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 777
    new-instance p1, Ljava/io/FileInputStream;

    invoke-direct {p1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 778
    sget-object v0, Lcom/goldcoast/sdk/domain/EntryPoint;->extractDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/goldcoast/sdk/domain/EntryPoint;->a(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    .line 779
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 780
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    const-string p1, "%s%slibsu.so"

    const/4 v0, 0x2

    .line 781
    new-array v0, v0, [Ljava/lang/Object;

    sget-object v2, Lcom/goldcoast/sdk/domain/EntryPoint;->extractDir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    aput-object v1, v0, v3

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 3789
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/goldcoast/sdk/domain/EntryPoint;->mContext:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/app/Application;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "permmgr"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "libsu.so"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3791
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3792
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3793
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 3795
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3796
    invoke-static {v0, v1}, Lcom/goldcoast/sdk/c/e;->a(Ljava/io/File;Ljava/io/File;)Z

    .line 3797
    invoke-static {v1}, Lcom/goldcoast/sdk/c/e;->a(Ljava/io/File;)I

    .line 3798
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 783
    iput-boolean v3, p0, Lcom/goldcoast/sdk/domain/EntryPoint;->y:Z

    return-void
.end method

.method static synthetic d(Lcom/goldcoast/sdk/domain/EntryPoint;)I
    .locals 0

    .line 89
    iget p0, p0, Lcom/goldcoast/sdk/domain/EntryPoint;->r:I

    return p0
.end method

.method private d()Lorg/json/JSONObject;
    .locals 4

    .line 418
    sget-object v0, Lcom/goldcoast/sdk/domain/EntryPoint;->mContext:Landroid/app/Application;

    invoke-static {v0}, Lcom/goldcoast/sdk/c/d;->a(Landroid/content/Context;)Lcom/goldcoast/sdk/c/d;

    invoke-static {}, Lcom/goldcoast/sdk/c/d;->a()Lcom/goldcoast/sdk/a/b;

    move-result-object v0

    .line 419
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 421
    new-instance v2, Lcom/goldcoast/sdk/a/f;

    invoke-static {}, Lcom/goldcoast/sdk/a/f;->a()[Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/goldcoast/sdk/a/f;-><init>([Ljava/lang/String;)V

    .line 422
    sget-object v3, Lcom/goldcoast/sdk/domain/EntryPoint;->mContext:Landroid/app/Application;

    invoke-static {v3}, Lcom/goldcoast/sdk/c/d;->a(Landroid/content/Context;)Lcom/goldcoast/sdk/c/d;

    invoke-static {}, Lcom/goldcoast/sdk/c/d;->c()Lcom/goldcoast/sdk/a/e;

    move-result-object v3

    .line 423
    invoke-virtual {v3}, Lcom/goldcoast/sdk/a/e;->b()Ljava/lang/String;

    move-result-object v3

    .line 422
    invoke-virtual {v2, v3}, Lcom/goldcoast/sdk/a/f;->a(Ljava/lang/String;)V

    .line 424
    invoke-virtual {v0, v2}, Lcom/goldcoast/sdk/a/b;->a(Lcom/goldcoast/sdk/a/f;)V

    .line 427
    invoke-virtual {v0}, Lcom/goldcoast/sdk/a/b;->a()Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "device"

    .line 433
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "self"

    .line 434
    sget-object v2, Lcom/goldcoast/sdk/domain/EntryPoint;->mContext:Landroid/app/Application;

    invoke-virtual {v2}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "token"

    .line 436
    invoke-static {}, Lcom/goldcoast/sdk/c/h;->a()Lcom/goldcoast/sdk/c/h;

    const-string v2, "client"

    invoke-static {v2}, Lcom/goldcoast/sdk/c/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "package_name"

    .line 437
    sget-object v2, Lcom/goldcoast/sdk/domain/EntryPoint;->mContext:Landroid/app/Application;

    invoke-virtual {v2}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "signature"

    .line 438
    invoke-virtual {p0}, Lcom/goldcoast/sdk/domain/EntryPoint;->getCertificateFingerprintMD5()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "keyword"

    const-string v2, ""

    .line 439
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v1
.end method

.method static synthetic e(Lcom/goldcoast/sdk/domain/EntryPoint;)Landroid/util/Pair;
    .locals 0

    .line 89
    iget-object p0, p0, Lcom/goldcoast/sdk/domain/EntryPoint;->F:Landroid/util/Pair;

    return-object p0
.end method

.method private e()V
    .locals 2

    const-string v0, "$$$ success"

    const/4 v1, 0x0

    .line 850
    invoke-direct {p0, v0, v1}, Lcom/goldcoast/sdk/domain/EntryPoint;->b(Ljava/lang/String;I)V

    const/4 v0, 0x1

    .line 851
    iput-boolean v0, p0, Lcom/goldcoast/sdk/domain/EntryPoint;->q:Z

    .line 852
    invoke-virtual {p0}, Lcom/goldcoast/sdk/domain/EntryPoint;->braFlush()V

    return-void
.end method

.method static synthetic f(Lcom/goldcoast/sdk/domain/EntryPoint;)I
    .locals 2

    .line 89
    iget v0, p0, Lcom/goldcoast/sdk/domain/EntryPoint;->s:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/goldcoast/sdk/domain/EntryPoint;->s:I

    return v0
.end method

.method private f()V
    .locals 2

    .line 1104
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/goldcoast/sdk/domain/i;

    invoke-direct {v1, p0}, Lcom/goldcoast/sdk/domain/i;-><init>(Lcom/goldcoast/sdk/domain/EntryPoint;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1121
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static synthetic g(Lcom/goldcoast/sdk/domain/EntryPoint;)I
    .locals 0

    .line 89
    iget p0, p0, Lcom/goldcoast/sdk/domain/EntryPoint;->s:I

    return p0
.end method

.method private static g()Z
    .locals 4

    .line 1442
    :try_start_0
    new-instance v0, Landroid/net/LocalSocket;

    invoke-direct {v0}, Landroid/net/LocalSocket;-><init>()V

    .line 1443
    new-instance v1, Landroid/net/LocalSocketAddress;

    const-string v2, "darwin.rodo"

    sget-object v3, Landroid/net/LocalSocketAddress$Namespace;->ABSTRACT:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v1, v2, v3}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    invoke-virtual {v0, v1}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    .line 1445
    invoke-virtual {v0}, Landroid/net/LocalSocket;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic h(Lcom/goldcoast/sdk/domain/EntryPoint;)Z
    .locals 1

    const/4 v0, 0x0

    .line 89
    iput-boolean v0, p0, Lcom/goldcoast/sdk/domain/EntryPoint;->C:Z

    return v0
.end method

.method static synthetic i(Lcom/goldcoast/sdk/domain/EntryPoint;)Z
    .locals 0

    .line 89
    iget-boolean p0, p0, Lcom/goldcoast/sdk/domain/EntryPoint;->D:Z

    return p0
.end method

.method public static init(Landroid/app/Application;Ljava/lang/String;Lcom/goldcoast/sdk/domain/AnalyseResult;IB)V
    .locals 0

    .line 220
    sput-object p0, Lcom/goldcoast/sdk/domain/EntryPoint;->mContext:Landroid/app/Application;

    .line 221
    sput-object p2, Lcom/goldcoast/sdk/domain/EntryPoint;->h:Lcom/goldcoast/sdk/domain/AnalyseResult;

    .line 222
    sget-object p0, Lcom/goldcoast/sdk/domain/EntryPoint;->mContext:Landroid/app/Application;

    invoke-static {p0}, Lcom/goldcoast/sdk/c/h;->a(Landroid/content/Context;)V

    .line 223
    sput-object p1, Lcom/goldcoast/sdk/domain/EntryPoint;->i:Ljava/lang/String;

    .line 224
    sput-byte p4, Lcom/goldcoast/sdk/domain/EntryPoint;->b:B

    const/16 p0, 0x78

    if-lt p3, p0, :cond_0

    .line 226
    sput p3, Lcom/goldcoast/sdk/domain/EntryPoint;->j:I

    :cond_0
    return-void
.end method

.method public static instance()Lcom/goldcoast/sdk/domain/EntryPoint;
    .locals 1

    .line 241
    sget-object v0, Lcom/goldcoast/sdk/domain/EntryPoint;->a:Lcom/goldcoast/sdk/domain/EntryPoint;

    if-nez v0, :cond_0

    .line 242
    new-instance v0, Lcom/goldcoast/sdk/domain/EntryPoint;

    invoke-direct {v0}, Lcom/goldcoast/sdk/domain/EntryPoint;-><init>()V

    sput-object v0, Lcom/goldcoast/sdk/domain/EntryPoint;->a:Lcom/goldcoast/sdk/domain/EntryPoint;

    .line 244
    :cond_0
    sget-object v0, Lcom/goldcoast/sdk/domain/EntryPoint;->a:Lcom/goldcoast/sdk/domain/EntryPoint;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized analyse(Lcom/goldcoast/sdk/domain/AnalyseResult;)V
    .locals 9

    monitor-enter p0

    const/4 v0, -0x1

    .line 338
    :try_start_0
    sput v0, Lcom/goldcoast/sdk/domain/EntryPoint;->k:I

    .line 339
    sput-object p1, Lcom/goldcoast/sdk/domain/EntryPoint;->h:Lcom/goldcoast/sdk/domain/AnalyseResult;

    .line 340
    sget-object p1, Lcom/goldcoast/sdk/domain/EntryPoint;->h:Lcom/goldcoast/sdk/domain/AnalyseResult;

    invoke-direct {p0, p1}, Lcom/goldcoast/sdk/domain/EntryPoint;->a(Lcom/goldcoast/sdk/domain/AnalyseResult;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    .line 341
    monitor-exit p0

    return-void

    .line 344
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/goldcoast/sdk/domain/EntryPoint;->getStatus()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 345
    invoke-direct {p0}, Lcom/goldcoast/sdk/domain/EntryPoint;->e()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 346
    monitor-exit p0

    return-void

    .line 349
    :cond_1
    :try_start_2
    sget p1, Lcom/goldcoast/sdk/domain/EntryPoint;->k:I

    if-nez p1, :cond_2

    .line 350
    invoke-direct {p0}, Lcom/goldcoast/sdk/domain/EntryPoint;->e()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 351
    monitor-exit p0

    return-void

    .line 353
    :cond_2
    :try_start_3
    iget-boolean p1, p0, Lcom/goldcoast/sdk/domain/EntryPoint;->C:Z

    const/4 v0, 0x1

    if-eqz p1, :cond_3

    const-string p1, "busying now\n$$$ failed"

    .line 354
    invoke-direct {p0, p1, v0}, Lcom/goldcoast/sdk/domain/EntryPoint;->b(Ljava/lang/String;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 355
    monitor-exit p0

    return-void

    .line 358
    :cond_3
    :try_start_4
    invoke-direct {p0}, Lcom/goldcoast/sdk/domain/EntryPoint;->b()V

    .line 360
    invoke-direct {p0}, Lcom/goldcoast/sdk/domain/EntryPoint;->c()V

    .line 362
    invoke-direct {p0}, Lcom/goldcoast/sdk/domain/EntryPoint;->f()V

    .line 364
    invoke-direct {p0}, Lcom/goldcoast/sdk/domain/EntryPoint;->d()Lorg/json/JSONObject;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 365
    :goto_0
    iget-object v3, p0, Lcom/goldcoast/sdk/domain/EntryPoint;->o:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_6

    const/4 v3, 0x3

    if-eq v2, v3, :cond_5

    .line 369
    iput v2, p0, Lcom/goldcoast/sdk/domain/EntryPoint;->r:I

    .line 370
    iget-boolean v3, p0, Lcom/goldcoast/sdk/domain/EntryPoint;->q:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v3, :cond_4

    .line 371
    monitor-exit p0

    return-void

    .line 374
    :cond_4
    :try_start_5
    invoke-virtual {p0}, Lcom/goldcoast/sdk/domain/EntryPoint;->braFlush()V

    .line 375
    iget-boolean v3, p0, Lcom/goldcoast/sdk/domain/EntryPoint;->C:Z

    if-nez v3, :cond_6

    .line 3445
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/goldcoast/sdk/domain/d;

    invoke-direct {v4, p0}, Lcom/goldcoast/sdk/domain/d;-><init>(Lcom/goldcoast/sdk/domain/EntryPoint;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 3450
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 3451
    sget v3, Lcom/goldcoast/sdk/domain/EntryPoint;->k:I

    if-eqz v3, :cond_5

    .line 3454
    new-instance v3, Landroid/os/ConditionVariable;

    invoke-direct {v3, v1}, Landroid/os/ConditionVariable;-><init>(Z)V

    const-string v4, "\u6b63\u5728\u4e91\u7aef  [%s]  \u5b57\u7ec4\u67e5\u627e\u65b9\u6848 \u8bf7\u7b49\u5f85..."

    .line 3455
    new-array v5, v0, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/goldcoast/sdk/domain/EntryPoint;->o:[Ljava/lang/String;

    aget-object v6, v6, v2

    aput-object v6, v5, v1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    invoke-direct {p0, v4, v5}, Lcom/goldcoast/sdk/domain/EntryPoint;->b(Ljava/lang/String;I)V

    const-string v4, "category"

    .line 3457
    invoke-virtual {p1, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v4, "sdkV"

    const-string v5, "4.0.14"

    .line 3458
    invoke-virtual {p1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "rtp"

    .line 3459
    sget-byte v5, Lcom/goldcoast/sdk/domain/EntryPoint;->b:B

    invoke-virtual {p1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 3460
    new-instance v4, Lcom/b/a/y;

    invoke-direct {v4}, Lcom/b/a/y;-><init>()V

    const-string v5, "body"

    .line 3461
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/goldcoast/sdk/c/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/b/a/y;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/b/a/y;

    move-result-object v4

    .line 3462
    invoke-virtual {v4}, Lcom/b/a/y;->a()Lcom/b/a/x;

    move-result-object v4

    .line 3463
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "######\n"

    .line 3464
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "<analyseQ.Enc>:%s\n"

    .line 3465
    new-array v7, v0, [Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v1

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3469
    invoke-static {}, Lcom/goldcoast/sdk/c/g;->a()Lcom/goldcoast/sdk/c/g;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/goldcoast/sdk/c/g;->b(Ljava/lang/String;)V

    .line 3470
    invoke-virtual {v3}, Landroid/os/ConditionVariable;->close()V

    .line 3471
    new-array v5, v0, [Z

    aput-boolean v1, v5, v1

    .line 3473
    new-instance v6, Lcom/b/a/ap;

    invoke-direct {v6}, Lcom/b/a/ap;-><init>()V

    sget-object v7, Lcom/goldcoast/sdk/domain/EntryPoint;->d:Ljava/lang/String;

    .line 3474
    invoke-virtual {v6, v7}, Lcom/b/a/ap;->a(Ljava/lang/String;)Lcom/b/a/ap;

    move-result-object v6

    .line 3475
    invoke-virtual {v6, v4}, Lcom/b/a/ap;->a(Lcom/b/a/aq;)Lcom/b/a/ap;

    move-result-object v4

    .line 3476
    invoke-virtual {v4}, Lcom/b/a/ap;->a()Lcom/b/a/ao;

    move-result-object v4

    .line 3477
    sget-object v6, Lcom/goldcoast/sdk/domain/EntryPoint;->g:Lcom/b/a/ai;

    invoke-virtual {v6, v4}, Lcom/b/a/ai;->a(Lcom/b/a/ao;)Lcom/b/a/g;

    move-result-object v4

    new-instance v6, Lcom/goldcoast/sdk/domain/e;

    invoke-direct {v6, p0, v3, v5}, Lcom/goldcoast/sdk/domain/e;-><init>(Lcom/goldcoast/sdk/domain/EntryPoint;Landroid/os/ConditionVariable;[Z)V

    invoke-interface {v4, v6}, Lcom/b/a/g;->a(Lcom/b/a/h;)V

    .line 3515
    invoke-virtual {v3}, Landroid/os/ConditionVariable;->block()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 381
    :cond_6
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 337
    monitor-exit p0

    throw p1
.end method

.method public braFlush()V
    .locals 4

    .line 270
    sget-object v0, Lcom/goldcoast/sdk/domain/EntryPoint;->extractDir:Ljava/io/File;

    if-nez v0, :cond_0

    return-void

    .line 274
    :cond_0
    sget-object v0, Lcom/goldcoast/sdk/domain/EntryPoint;->extractDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 276
    :try_start_0
    sget-object v0, Lcom/goldcoast/sdk/domain/EntryPoint;->extractDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 277
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void

    :catch_0
    :cond_2
    return-void
.end method

.method public cleanSkipFlag()V
    .locals 2

    .line 1404
    iget-object v0, p0, Lcom/goldcoast/sdk/domain/EntryPoint;->z:Lcom/goldcoast/sdk/c/c;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/goldcoast/sdk/c/c;->a(Ljava/lang/String;)V

    return-void
.end method

.method public exec([Ljava/lang/String;)Z
    .locals 5

    .line 1501
    invoke-virtual {p0}, Lcom/goldcoast/sdk/domain/EntryPoint;->getStatus()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p1, "EntryPoint"

    const-string v0, "getStatus failed, Service not start"

    .line 1502
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 1505
    :cond_0
    sget-byte v0, Lcom/goldcoast/sdk/domain/EntryPoint;->l:B

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 1506
    invoke-virtual {p0, p1}, Lcom/goldcoast/sdk/domain/EntryPoint;->execDarwin([Ljava/lang/String;)V

    goto :goto_0

    .line 1507
    :cond_1
    sget-byte v0, Lcom/goldcoast/sdk/domain/EntryPoint;->l:B

    if-ne v0, v2, :cond_2

    .line 1509
    :try_start_0
    sget-object v0, Lcom/goldcoast/sdk/domain/EntryPoint;->mContext:Landroid/app/Application;

    invoke-static {v0}, Lcom/king/sdk/i;->a(Landroid/content/Context;)Lcom/king/sdk/i;

    move-result-object v0

    .line 1512
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    sget-object v3, Lcom/goldcoast/sdk/domain/EntryPoint;->mContext:Landroid/app/Application;

    .line 1513
    invoke-virtual {v3}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 1514
    invoke-static {}, Lcom/goldcoast/sdk/c/h;->a()Lcom/goldcoast/sdk/c/h;

    const-string v4, "client"

    invoke-static {v4}, Lcom/goldcoast/sdk/c/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1510
    invoke-virtual {v0, p1, v1, v3, v4}, Lcom/king/sdk/i;->a([Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1517
    invoke-static {p1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    :goto_0
    return v2

    :cond_2
    const-string p1, "EntryPoint"

    const-string v0, "Service has been stoped"

    .line 1520
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public execDarwin([Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_1

    .line 1453
    array-length v0, p1

    if-lez v0, :cond_1

    .line 1454
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/goldcoast/sdk/domain/EntryPoint;->mContext:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/app/Application;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "tmp.sh"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1455
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1457
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 1459
    invoke-static {v1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 1462
    :cond_0
    :goto_0
    invoke-static {p1, v0}, Lcom/goldcoast/sdk/c/e;->a([Ljava/lang/String;Ljava/io/File;)V

    .line 1463
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0x1ff

    invoke-static {p1, v1}, Lcom/goldcoast/sdk/c/e;->a(Ljava/lang/String;I)I

    .line 1464
    invoke-static {v0}, Lcom/goldcoast/sdk/domain/EntryPoint;->a(Ljava/io/File;)Z

    :cond_1
    return-void
.end method

.method public getBra(Lcom/goldcoast/sdk/a/d;)V
    .locals 4

    .line 891
    invoke-virtual {p1}, Lcom/goldcoast/sdk/a/d;->f()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/goldcoast/sdk/domain/EntryPoint;->mContext:Landroid/app/Application;

    invoke-virtual {p1}, Lcom/goldcoast/sdk/a/d;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/goldcoast/sdk/b/a;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 3831
    invoke-virtual {p1}, Lcom/goldcoast/sdk/a/d;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    const-string v0, "poc is null"

    .line 3832
    invoke-direct {p0, v0, v1}, Lcom/goldcoast/sdk/domain/EntryPoint;->b(Ljava/lang/String;I)V

    goto :goto_0

    .line 3837
    :cond_0
    invoke-virtual {p1}, Lcom/goldcoast/sdk/a/d;->a()Ljava/lang/String;

    move-result-object v0

    const-string v2, ".zip"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3838
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/goldcoast/sdk/domain/EntryPoint;->extractDir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3839
    invoke-virtual {p1}, Lcom/goldcoast/sdk/a/d;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3841
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 3842
    sget-object v3, Lcom/goldcoast/sdk/domain/EntryPoint;->extractDir:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/goldcoast/sdk/domain/EntryPoint;->a(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3843
    invoke-virtual {p1, v2}, Lcom/goldcoast/sdk/a/d;->a(Ljava/lang/String;)V

    .line 3844
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3845
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 3898
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/goldcoast/sdk/domain/EntryPoint;->A:Lcom/goldcoast/sdk/a/d;

    .line 3899
    iget-object v0, p0, Lcom/goldcoast/sdk/domain/EntryPoint;->z:Lcom/goldcoast/sdk/c/c;

    invoke-virtual {p1}, Lcom/goldcoast/sdk/a/d;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/goldcoast/sdk/c/c;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p1, "$$$ skip"

    .line 3900
    invoke-direct {p0, p1, v1}, Lcom/goldcoast/sdk/domain/EntryPoint;->b(Ljava/lang/String;I)V

    return-void

    .line 3906
    :cond_2
    iget v0, p0, Lcom/goldcoast/sdk/domain/EntryPoint;->r:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_4

    .line 3907
    invoke-direct {p0, p1}, Lcom/goldcoast/sdk/domain/EntryPoint;->a(Lcom/goldcoast/sdk/a/d;)I

    move-result p1

    const/16 v0, 0xbb8

    if-ne p1, v0, :cond_3

    .line 3908
    invoke-direct {p0}, Lcom/goldcoast/sdk/domain/EntryPoint;->e()V

    return-void

    :cond_3
    const-string p1, "$$$ failed"

    const/4 v0, 0x1

    .line 3915
    invoke-direct {p0, p1, v0}, Lcom/goldcoast/sdk/domain/EntryPoint;->b(Ljava/lang/String;I)V

    .line 3916
    invoke-virtual {p0}, Lcom/goldcoast/sdk/domain/EntryPoint;->braFlush()V

    return-void

    .line 3919
    :cond_4
    invoke-direct {p0, p1}, Lcom/goldcoast/sdk/domain/EntryPoint;->b(Lcom/goldcoast/sdk/a/d;)Landroid/util/Pair;

    return-void
.end method

.method public getCertificateFingerprintMD5()Ljava/lang/String;
    .locals 4

    .line 1527
    sget-object v0, Lcom/goldcoast/sdk/domain/EntryPoint;->mContext:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1528
    sget-object v1, Lcom/goldcoast/sdk/domain/EntryPoint;->mContext:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x40

    const/4 v3, 0x0

    .line 1532
    :try_start_0
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1534
    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    move-object v0, v3

    .line 1536
    :goto_0
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v1, 0x0

    .line 1537
    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v0

    .line 1538
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    :try_start_1
    const-string v0, "X509"

    .line 1541
    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0
    :try_end_1
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 1543
    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    move-object v0, v3

    .line 1547
    :goto_1
    :try_start_2
    invoke-virtual {v0, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;
    :try_end_2
    .catch Ljava/security/cert/CertificateException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    .line 1549
    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    move-object v0, v3

    :goto_2
    :try_start_3
    const-string v1, "MD5"

    .line 1553
    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 1554
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    .line 1555
    invoke-static {v0}, Lcom/goldcoast/sdk/domain/EntryPoint;->a([B)Ljava/lang/String;

    move-result-object v0
    :try_end_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_4

    :catch_3
    move-exception v0

    .line 1559
    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_3

    :catch_4
    move-exception v0

    .line 1557
    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    :goto_3
    move-object v0, v3

    :goto_4
    return-object v0
.end method

.method public getStackString(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 2

    .line 1395
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 1396
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 1397
    invoke-static {p1, v1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;Ljava/io/PrintWriter;)V

    .line 1398
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    .line 1399
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getStatus()Z
    .locals 2

    .line 1417
    invoke-static {}, Lcom/goldcoast/sdk/domain/EntryPoint;->g()Z

    move-result v0

    const/4 v1, 0x0

    .line 1418
    sput-byte v1, Lcom/goldcoast/sdk/domain/EntryPoint;->l:B

    return v0
.end method

.method public hasSkip()Z
    .locals 1

    .line 1408
    iget-object v0, p0, Lcom/goldcoast/sdk/domain/EntryPoint;->z:Lcom/goldcoast/sdk/c/c;

    invoke-virtual {v0}, Lcom/goldcoast/sdk/c/c;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public initHost(Ljava/lang/String;)V
    .locals 4

    .line 248
    sput-object p1, Lcom/goldcoast/sdk/domain/EntryPoint;->c:Ljava/lang/String;

    const-string p1, "%s/api/v1/phones"

    const/4 v0, 0x1

    .line 249
    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lcom/goldcoast/sdk/domain/EntryPoint;->c:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/goldcoast/sdk/domain/EntryPoint;->d:Ljava/lang/String;

    const-string p1, "%s/api/v1/phones/referer"

    .line 250
    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lcom/goldcoast/sdk/domain/EntryPoint;->c:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/goldcoast/sdk/domain/EntryPoint;->e:Ljava/lang/String;

    const-string p1, "%s/api/v1/where_is_the_way"

    .line 252
    new-array v0, v0, [Ljava/lang/Object;

    sget-object v1, Lcom/goldcoast/sdk/domain/EntryPoint;->c:Ljava/lang/String;

    aput-object v1, v0, v3

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/goldcoast/sdk/domain/EntryPoint;->f:Ljava/lang/String;

    return-void
.end method

.method public declared-synchronized manual(ILcom/goldcoast/sdk/domain/AnalyseResult;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/goldcoast/sdk/domain/AnalyseResult;",
            ")",
            "Ljava/util/List<",
            "Lcom/goldcoast/sdk/a/d;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 385
    :try_start_0
    sget-boolean v0, Lcom/goldcoast/sdk/domain/EntryPoint;->m:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 386
    monitor-exit p0

    return-object v1

    :cond_0
    const/4 v0, -0x1

    .line 389
    :try_start_1
    sput v0, Lcom/goldcoast/sdk/domain/EntryPoint;->k:I

    .line 390
    sput-object v1, Lcom/goldcoast/sdk/domain/EntryPoint;->h:Lcom/goldcoast/sdk/domain/AnalyseResult;

    .line 391
    sput-object p2, Lcom/goldcoast/sdk/domain/EntryPoint;->h:Lcom/goldcoast/sdk/domain/AnalyseResult;

    .line 392
    sget-object p2, Lcom/goldcoast/sdk/domain/EntryPoint;->h:Lcom/goldcoast/sdk/domain/AnalyseResult;

    invoke-direct {p0, p2}, Lcom/goldcoast/sdk/domain/EntryPoint;->a(Lcom/goldcoast/sdk/domain/AnalyseResult;)Z

    move-result p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p2, :cond_1

    .line 393
    monitor-exit p0

    return-object v1

    .line 396
    :cond_1
    :try_start_2
    sget p2, Lcom/goldcoast/sdk/domain/EntryPoint;->k:I

    if-nez p2, :cond_2

    .line 397
    invoke-direct {p0}, Lcom/goldcoast/sdk/domain/EntryPoint;->e()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 398
    monitor-exit p0

    return-object v1

    .line 400
    :cond_2
    :try_start_3
    iget-boolean p2, p0, Lcom/goldcoast/sdk/domain/EntryPoint;->C:Z

    const/4 v0, 0x1

    if-eqz p2, :cond_3

    const-string p1, "busying now\n$$$ failed"

    .line 401
    invoke-direct {p0, p1, v0}, Lcom/goldcoast/sdk/domain/EntryPoint;->b(Ljava/lang/String;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 402
    monitor-exit p0

    return-object v1

    .line 409
    :cond_3
    :try_start_4
    invoke-direct {p0}, Lcom/goldcoast/sdk/domain/EntryPoint;->b()V

    .line 410
    invoke-direct {p0}, Lcom/goldcoast/sdk/domain/EntryPoint;->c()V

    .line 411
    invoke-direct {p0}, Lcom/goldcoast/sdk/domain/EntryPoint;->f()V

    .line 413
    iput p1, p0, Lcom/goldcoast/sdk/domain/EntryPoint;->r:I

    .line 414
    invoke-direct {p0}, Lcom/goldcoast/sdk/domain/EntryPoint;->d()Lorg/json/JSONObject;

    move-result-object p2

    .line 3522
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/goldcoast/sdk/domain/f;

    invoke-direct {v2, p0}, Lcom/goldcoast/sdk/domain/f;-><init>(Lcom/goldcoast/sdk/domain/EntryPoint;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 3527
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 3529
    new-instance v1, Landroid/os/ConditionVariable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/os/ConditionVariable;-><init>(Z)V

    const-string v3, "\u6b63\u5728\u4e91\u7aef  [%s]  \u5b57\u7ec4\u67e5\u627e\u65b9\u6848 \u8bf7\u7b49\u5f85..."

    .line 3530
    new-array v4, v0, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/goldcoast/sdk/domain/EntryPoint;->o:[Ljava/lang/String;

    aget-object v5, v5, p1

    aput-object v5, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-direct {p0, v3, v4}, Lcom/goldcoast/sdk/domain/EntryPoint;->b(Ljava/lang/String;I)V

    const-string v3, "category"

    .line 3531
    invoke-virtual {p2, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "sdkV"

    const-string v3, "4.0.14"

    .line 3532
    invoke-virtual {p2, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "rtp"

    .line 3533
    sget-byte v3, Lcom/goldcoast/sdk/domain/EntryPoint;->b:B

    invoke-virtual {p2, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 3534
    new-instance p1, Lcom/b/a/y;

    invoke-direct {p1}, Lcom/b/a/y;-><init>()V

    const-string v3, "body"

    .line 3535
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/goldcoast/sdk/c/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v3, p2}, Lcom/b/a/y;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/b/a/y;

    move-result-object p1

    .line 3536
    invoke-virtual {p1}, Lcom/b/a/y;->a()Lcom/b/a/x;

    move-result-object p1

    .line 3537
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "######\n"

    .line 3538
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "<analyseQ.Enc>:%s\n"

    .line 3539
    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v2

    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3542
    invoke-static {}, Lcom/goldcoast/sdk/c/g;->a()Lcom/goldcoast/sdk/c/g;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/goldcoast/sdk/c/g;->b(Ljava/lang/String;)V

    .line 3543
    invoke-virtual {v1}, Landroid/os/ConditionVariable;->close()V

    .line 3544
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 3546
    new-instance v0, Lcom/b/a/ap;

    invoke-direct {v0}, Lcom/b/a/ap;-><init>()V

    sget-object v2, Lcom/goldcoast/sdk/domain/EntryPoint;->d:Ljava/lang/String;

    .line 3547
    invoke-virtual {v0, v2}, Lcom/b/a/ap;->a(Ljava/lang/String;)Lcom/b/a/ap;

    move-result-object v0

    .line 3548
    invoke-virtual {v0, p1}, Lcom/b/a/ap;->a(Lcom/b/a/aq;)Lcom/b/a/ap;

    move-result-object p1

    .line 3549
    invoke-virtual {p1}, Lcom/b/a/ap;->a()Lcom/b/a/ao;

    move-result-object p1

    .line 3550
    sget-object v0, Lcom/goldcoast/sdk/domain/EntryPoint;->g:Lcom/b/a/ai;

    invoke-virtual {v0, p1}, Lcom/b/a/ai;->a(Lcom/b/a/ao;)Lcom/b/a/g;

    move-result-object p1

    new-instance v0, Lcom/goldcoast/sdk/domain/g;

    invoke-direct {v0, p0, p2, v1}, Lcom/goldcoast/sdk/domain/g;-><init>(Lcom/goldcoast/sdk/domain/EntryPoint;Ljava/util/List;Landroid/os/ConditionVariable;)V

    invoke-interface {p1, v0}, Lcom/b/a/g;->a(Lcom/b/a/h;)V

    .line 3590
    invoke-virtual {v1}, Landroid/os/ConditionVariable;->block()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 414
    monitor-exit p0

    return-object p2

    :catchall_0
    move-exception p1

    .line 384
    monitor-exit p0

    throw p1
.end method

.method public registerStatus(ZLcom/king/sdk/KingListener;)Z
    .locals 2

    .line 1624
    invoke-virtual {p0}, Lcom/goldcoast/sdk/domain/EntryPoint;->getStatus()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-eqz p2, :cond_1

    goto :goto_0

    .line 1627
    :cond_1
    iget-object p2, p0, Lcom/goldcoast/sdk/domain/EntryPoint;->p:Lcom/king/sdk/KingListener;

    :goto_0
    const/4 v0, 0x1

    if-eqz p1, :cond_2

    .line 1631
    :try_start_0
    sget-object p1, Lcom/goldcoast/sdk/domain/EntryPoint;->mContext:Landroid/app/Application;

    invoke-static {p1}, Lcom/king/sdk/i;->a(Landroid/content/Context;)Lcom/king/sdk/i;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/king/sdk/i;->a(Lcom/king/sdk/IDFEE16B42C8B2890D8FF2860AF5562B1;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception p1

    .line 1634
    invoke-static {p1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 1640
    :cond_2
    :try_start_1
    sget-object p1, Lcom/goldcoast/sdk/domain/EntryPoint;->mContext:Landroid/app/Application;

    invoke-static {p1}, Lcom/king/sdk/i;->a(Landroid/content/Context;)Lcom/king/sdk/i;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/king/sdk/i;->a(Lcom/king/sdk/KingListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return v0

    :catch_1
    move-exception p1

    .line 1643
    invoke-static {p1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    :goto_1
    return v1
.end method

.method public sendData(Ljava/lang/String;I[B)Z
    .locals 1

    .line 1665
    :try_start_0
    sget-object v0, Lcom/goldcoast/sdk/domain/EntryPoint;->mContext:Landroid/app/Application;

    invoke-static {v0}, Lcom/king/sdk/i;->a(Landroid/content/Context;)Lcom/king/sdk/i;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/king/sdk/i;->a(Ljava/lang/String;I[B)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 1667
    invoke-static {p1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return p1
.end method

.method public sendmsg(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 1653
    :try_start_0
    sget-object v0, Lcom/goldcoast/sdk/domain/EntryPoint;->mContext:Landroid/app/Application;

    invoke-static {v0}, Lcom/king/sdk/i;->a(Landroid/content/Context;)Lcom/king/sdk/i;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/king/sdk/i;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 1655
    invoke-static {p1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return p1
.end method
