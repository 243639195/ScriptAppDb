.class public Lorg/wlf/filedownloader/util/DateUtil;
.super Ljava/lang/Object;
.source "DateUtil.java"


# static fields
.field private static final DATE_FORMAT_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/text/SimpleDateFormat;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lorg/wlf/filedownloader/util/DateUtil;->DATE_FORMAT_MAP:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static date2String_yyyy_MM_dd_HH_mm_ss(Ljava/util/Date;)Ljava/lang/String;
    .locals 1
    .param p0, "date"    # Ljava/util/Date;

    .prologue
    .line 75
    const-string v0, "yyyy-MM-dd HH:mm:ss"

    invoke-static {v0}, Lorg/wlf/filedownloader/util/DateUtil;->getSimpleDateFormat(Ljava/lang/String;)Ljava/text/SimpleDateFormat;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getSimpleDateFormat(Ljava/lang/String;)Ljava/text/SimpleDateFormat;
    .locals 3
    .param p0, "format"    # Ljava/lang/String;

    .prologue
    .line 34
    sget-object v2, Lorg/wlf/filedownloader/util/DateUtil;->DATE_FORMAT_MAP:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ThreadLocal;

    .line 35
    .local v1, "threadLocal":Ljava/lang/ThreadLocal;, "Ljava/lang/ThreadLocal<Ljava/text/SimpleDateFormat;>;"
    if-nez v1, :cond_0

    .line 36
    new-instance v1, Ljava/lang/ThreadLocal;

    .end local v1    # "threadLocal":Ljava/lang/ThreadLocal;, "Ljava/lang/ThreadLocal<Ljava/text/SimpleDateFormat;>;"
    invoke-direct {v1}, Ljava/lang/ThreadLocal;-><init>()V

    .line 37
    .restart local v1    # "threadLocal":Ljava/lang/ThreadLocal;, "Ljava/lang/ThreadLocal<Ljava/text/SimpleDateFormat;>;"
    sget-object v2, Lorg/wlf/filedownloader/util/DateUtil;->DATE_FORMAT_MAP:Ljava/util/Map;

    invoke-interface {v2, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    :cond_0
    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/SimpleDateFormat;

    .line 40
    .local v0, "sdf":Ljava/text/SimpleDateFormat;
    if-nez v0, :cond_1

    .line 41
    new-instance v0, Ljava/text/SimpleDateFormat;

    .end local v0    # "sdf":Ljava/text/SimpleDateFormat;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 42
    .restart local v0    # "sdf":Ljava/text/SimpleDateFormat;
    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 44
    :cond_1
    return-object v0
.end method

.method public static string2Date_yyyy_MM_dd_HH_mm_ss(Ljava/lang/String;)Ljava/util/Date;
    .locals 4
    .param p0, "strDate"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 55
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 65
    :goto_0
    return-object v2

    .line 59
    :cond_0
    const-string v3, "yyyy-MM-dd HH:mm:ss"

    invoke-static {v3}, Lorg/wlf/filedownloader/util/DateUtil;->getSimpleDateFormat(Ljava/lang/String;)Ljava/text/SimpleDateFormat;

    move-result-object v1

    .line 61
    .local v1, "sdf":Ljava/text/SimpleDateFormat;
    :try_start_0
    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 62
    :catch_0
    move-exception v0

    .line 63
    .local v0, "e":Ljava/text/ParseException;
    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_0
.end method
