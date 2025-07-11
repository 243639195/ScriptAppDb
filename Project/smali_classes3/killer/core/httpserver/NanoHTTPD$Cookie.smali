.class public Lkiller/core/httpserver/NanoHTTPD$Cookie;
.super Ljava/lang/Object;
.source "NanoHTTPD.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkiller/core/httpserver/NanoHTTPD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Cookie"
.end annotation


# instance fields
.field private final e:Ljava/lang/String;

.field private final n:Ljava/lang/String;

.field private final v:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 180
    const/16 v0, 0x1e

    invoke-direct {p0, p1, p2, v0}, Lkiller/core/httpserver/NanoHTTPD$Cookie;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 181
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "numDays"    # I

    .prologue
    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 184
    iput-object p1, p0, Lkiller/core/httpserver/NanoHTTPD$Cookie;->n:Ljava/lang/String;

    .line 185
    iput-object p2, p0, Lkiller/core/httpserver/NanoHTTPD$Cookie;->v:Ljava/lang/String;

    .line 186
    invoke-static {p3}, Lkiller/core/httpserver/NanoHTTPD$Cookie;->getHTTPTime(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lkiller/core/httpserver/NanoHTTPD$Cookie;->e:Ljava/lang/String;

    .line 187
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "expires"    # Ljava/lang/String;

    .prologue
    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 190
    iput-object p1, p0, Lkiller/core/httpserver/NanoHTTPD$Cookie;->n:Ljava/lang/String;

    .line 191
    iput-object p2, p0, Lkiller/core/httpserver/NanoHTTPD$Cookie;->v:Ljava/lang/String;

    .line 192
    iput-object p3, p0, Lkiller/core/httpserver/NanoHTTPD$Cookie;->e:Ljava/lang/String;

    .line 193
    return-void
.end method

.method public static getHTTPTime(I)Ljava/lang/String;
    .locals 4
    .param p0, "days"    # I

    .prologue
    .line 170
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 171
    .local v0, "calendar":Ljava/util/Calendar;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "EEE, dd MMM yyyy HH:mm:ss z"

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 172
    .local v1, "dateFormat":Ljava/text/SimpleDateFormat;
    const-string v2, "GMT"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 173
    const/4 v2, 0x5

    invoke-virtual {v0, v2, p0}, Ljava/util/Calendar;->add(II)V

    .line 174
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public getHTTPHeader()Ljava/lang/String;
    .locals 4

    .prologue
    .line 196
    const-string v0, "%s=%s; expires=%s"

    .line 197
    .local v0, "fmt":Ljava/lang/String;
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lkiller/core/httpserver/NanoHTTPD$Cookie;->n:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lkiller/core/httpserver/NanoHTTPD$Cookie;->v:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lkiller/core/httpserver/NanoHTTPD$Cookie;->e:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
