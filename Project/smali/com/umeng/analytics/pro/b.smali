.class public Lcom/umeng/analytics/pro/b;
.super Ljava/lang/Object;
.source "UContent.java"


# static fields
.field public static final A:Ljava/lang/String; = "traffic"

.field public static final B:Ljava/lang/String; = "upload_traffic"

.field public static final C:Ljava/lang/String; = "download_traffic"

.field public static final D:Ljava/lang/String; = "activate_msg"

.field public static final E:Ljava/lang/String; = "ts"

.field public static final F:Ljava/lang/String; = "group_info"

.field public static final G:Ljava/lang/String; = "active_user"

.field public static final H:Ljava/lang/String; = "provider"

.field public static final I:Ljava/lang/String; = "puid"

.field public static final J:Ljava/lang/String; = "error"

.field public static final K:Ljava/lang/String; = "ts"

.field public static final L:Ljava/lang/String; = "error_source"

.field public static final M:Ljava/lang/String; = "context"

.field public static final N:Ljava/lang/String; = "ekv"

.field public static final O:Ljava/lang/String; = "gkv"

.field public static final P:Ljava/lang/String; = "id"

.field public static final Q:Ljava/lang/String; = "ts"

.field public static final R:Ljava/lang/String; = "du"

.field public static final S:Ljava/lang/String; = "userlevel"

.field public static final T:Ljava/lang/String; = "$st_fl"

.field public static final U:Ljava/lang/String; = "dplus"

.field public static final V:Ljava/lang/String; = "analytics"

.field public static final W:Ljava/lang/String; = "content"

.field public static final X:Ljava/lang/String; = "header"

.field public static final Y:Ljava/lang/String; = "events"

.field public static final Z:Ljava/lang/String; = "_$!ts"

.field public static final a:Ljava/lang/String; = "appkey"

.field public static final aa:Ljava/lang/String; = "_$!id"

.field public static final ab:Ljava/lang/String; = "_$!sp"

.field public static final ac:Ljava/lang/String; = "session"

.field public static final ad:Ljava/lang/String; = "_$!s_b"

.field public static final ae:Ljava/lang/String; = "_$!ts_b"

.field public static final af:Ljava/lang/String; = "_$!s_e"

.field public static final ag:Ljava/lang/String; = "_$!ts_e"

.field public static final ah:Ljava/lang/String; = "pageview"

.field public static final ai:Ljava/lang/String; = "_$!pv_b"

.field public static final aj:Ljava/lang/String; = "_$!ts"

.field public static final ak:Ljava/lang/String; = "versioncode"

.field public static final al:Ljava/lang/String; = "versionname"

.field public static final am:Ljava/lang/String; = "userlevel"

.field public static final an:Ljava/lang/String; = "eof"

.field public static final ao:Ljava/lang/String; = "exception"

.field public static final ap:[Ljava/lang/String;

.field public static final aq:[Ljava/lang/String;

.field public static final b:Ljava/lang/String; = "channel"

.field public static final c:Ljava/lang/String; = "secret"

.field public static final d:Ljava/lang/String; = "app_version"

.field public static final e:Ljava/lang/String; = "version_code"

.field public static final f:Ljava/lang/String; = "wrapper_type"

.field public static final g:Ljava/lang/String; = "wrapper_version"

.field public static final h:Ljava/lang/String; = "sdk_version"

.field public static final i:Ljava/lang/String; = "vertical_type"

.field public static final j:Ljava/lang/String; = "device_id"

.field public static final k:Ljava/lang/String; = "device_model"

.field public static final l:Ljava/lang/String; = "$pr_ve"

.field public static final m:Ljava/lang/String; = "$ud_da"

.field public static final n:Ljava/lang/String; = "sessions"

.field public static final o:Ljava/lang/String; = "id"

.field public static final p:Ljava/lang/String; = "start_time"

.field public static final q:Ljava/lang/String; = "end_time"

.field public static final r:Ljava/lang/String; = "duration"

.field public static final s:Ljava/lang/String; = "pages"

.field public static final t:Ljava/lang/String; = "autopages"

.field public static final u:Ljava/lang/String; = "page_name"

.field public static final v:Ljava/lang/String; = "duration"

.field public static final w:Ljava/lang/String; = "locations"

.field public static final x:Ljava/lang/String; = "lat"

.field public static final y:Ljava/lang/String; = "lng"

.field public static final z:Ljava/lang/String; = "ts"


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v0, 0x4

    .line 119
    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "id"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "ts"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "du"

    const/4 v5, 0x2

    aput-object v2, v1, v5

    const-string v2, "$st_fl"

    const/4 v6, 0x3

    aput-object v2, v1, v6

    sput-object v1, Lcom/umeng/analytics/pro/b;->ap:[Ljava/lang/String;

    const/16 v1, 0x26

    .line 120
    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "_$!ts"

    aput-object v2, v1, v3

    const-string v2, "_$!id"

    aput-object v2, v1, v4

    const-string v2, "_$!du"

    aput-object v2, v1, v5

    const-string v2, "_$!c"

    aput-object v2, v1, v6

    const-string v2, "$st_fl"

    aput-object v2, v1, v0

    const-string v0, "_$!sp"

    const/4 v2, 0x5

    aput-object v0, v1, v2

    const-string v0, "event_name"

    const/4 v2, 0x6

    aput-object v0, v1, v2

    const-string v0, "token"

    const/4 v2, 0x7

    aput-object v0, v1, v2

    const-string v0, "time"

    const/16 v2, 0x8

    aput-object v0, v1, v2

    const-string v0, "ip"

    const/16 v2, 0x9

    aput-object v0, v1, v2

    const-string v0, "country"

    const/16 v2, 0xa

    aput-object v0, v1, v2

    const-string v0, "region"

    const/16 v2, 0xb

    aput-object v0, v1, v2

    const-string v0, "city"

    const/16 v2, 0xc

    aput-object v0, v1, v2

    const-string v0, "browser"

    const/16 v2, 0xd

    aput-object v0, v1, v2

    const-string v0, "os"

    const/16 v2, 0xe

    aput-object v0, v1, v2

    const-string v0, "device_brand"

    const/16 v2, 0xf

    aput-object v0, v1, v2

    const-string v0, "device_version"

    const/16 v2, 0x10

    aput-object v0, v1, v2

    const-string v0, "device_type"

    const/16 v2, 0x11

    aput-object v0, v1, v2

    const-string v0, "screen_width"

    const/16 v2, 0x12

    aput-object v0, v1, v2

    const-string v0, "screen_height"

    const/16 v2, 0x13

    aput-object v0, v1, v2

    const-string v0, "referrer"

    const/16 v2, 0x14

    aput-object v0, v1, v2

    const-string v0, "referrer_domain"

    const/16 v2, 0x15

    aput-object v0, v1, v2

    const-string v0, "initial_referrer"

    const/16 v2, 0x16

    aput-object v0, v1, v2

    const-string v0, "initial_referrer_domain"

    const/16 v2, 0x17

    aput-object v0, v1, v2

    const-string v0, "initial_view_time"

    const/16 v2, 0x18

    aput-object v0, v1, v2

    const-string v0, "search_engine"

    const/16 v2, 0x19

    aput-object v0, v1, v2

    const-string v0, "keyword"

    const/16 v2, 0x1a

    aput-object v0, v1, v2

    const-string v0, "ali_lib"

    const/16 v2, 0x1b

    aput-object v0, v1, v2

    const-string v0, "utm_source"

    const/16 v2, 0x1c

    aput-object v0, v1, v2

    const-string v0, "utm_medium"

    const/16 v2, 0x1d

    aput-object v0, v1, v2

    const-string v0, "utm_term"

    const/16 v2, 0x1e

    aput-object v0, v1, v2

    const-string v0, "utm_content"

    const/16 v2, 0x1f

    aput-object v0, v1, v2

    const-string v0, "utm_campaign"

    const/16 v2, 0x20

    aput-object v0, v1, v2

    const-string v0, "date"

    const/16 v2, 0x21

    aput-object v0, v1, v2

    const-string v0, "hour"

    const/16 v2, 0x22

    aput-object v0, v1, v2

    const-string v0, "minute"

    const/16 v2, 0x23

    aput-object v0, v1, v2

    const-string v0, "app_version"

    const/16 v2, 0x24

    aput-object v0, v1, v2

    const-string v0, "sp"

    const/16 v2, 0x25

    aput-object v0, v1, v2

    sput-object v1, Lcom/umeng/analytics/pro/b;->aq:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
