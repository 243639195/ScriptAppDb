.class public final enum Lkiller/core/httpserver/NanoHTTPD$Method;
.super Ljava/lang/Enum;
.source "NanoHTTPD.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkiller/core/httpserver/NanoHTTPD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Method"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lkiller/core/httpserver/NanoHTTPD$Method;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lkiller/core/httpserver/NanoHTTPD$Method;

.field public static final enum CONNECT:Lkiller/core/httpserver/NanoHTTPD$Method;

.field public static final enum COPY:Lkiller/core/httpserver/NanoHTTPD$Method;

.field public static final enum DELETE:Lkiller/core/httpserver/NanoHTTPD$Method;

.field public static final enum GET:Lkiller/core/httpserver/NanoHTTPD$Method;

.field public static final enum HEAD:Lkiller/core/httpserver/NanoHTTPD$Method;

.field public static final enum LOCK:Lkiller/core/httpserver/NanoHTTPD$Method;

.field public static final enum MKCOL:Lkiller/core/httpserver/NanoHTTPD$Method;

.field public static final enum MOVE:Lkiller/core/httpserver/NanoHTTPD$Method;

.field public static final enum OPTIONS:Lkiller/core/httpserver/NanoHTTPD$Method;

.field public static final enum PATCH:Lkiller/core/httpserver/NanoHTTPD$Method;

.field public static final enum POST:Lkiller/core/httpserver/NanoHTTPD$Method;

.field public static final enum PROPFIND:Lkiller/core/httpserver/NanoHTTPD$Method;

.field public static final enum PROPPATCH:Lkiller/core/httpserver/NanoHTTPD$Method;

.field public static final enum PUT:Lkiller/core/httpserver/NanoHTTPD$Method;

.field public static final enum TRACE:Lkiller/core/httpserver/NanoHTTPD$Method;

.field public static final enum UNLOCK:Lkiller/core/httpserver/NanoHTTPD$Method;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1247
    new-instance v0, Lkiller/core/httpserver/NanoHTTPD$Method;

    const-string v1, "GET"

    invoke-direct {v0, v1, v3}, Lkiller/core/httpserver/NanoHTTPD$Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkiller/core/httpserver/NanoHTTPD$Method;->GET:Lkiller/core/httpserver/NanoHTTPD$Method;

    .line 1248
    new-instance v0, Lkiller/core/httpserver/NanoHTTPD$Method;

    const-string v1, "PUT"

    invoke-direct {v0, v1, v4}, Lkiller/core/httpserver/NanoHTTPD$Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkiller/core/httpserver/NanoHTTPD$Method;->PUT:Lkiller/core/httpserver/NanoHTTPD$Method;

    .line 1249
    new-instance v0, Lkiller/core/httpserver/NanoHTTPD$Method;

    const-string v1, "POST"

    invoke-direct {v0, v1, v5}, Lkiller/core/httpserver/NanoHTTPD$Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkiller/core/httpserver/NanoHTTPD$Method;->POST:Lkiller/core/httpserver/NanoHTTPD$Method;

    .line 1250
    new-instance v0, Lkiller/core/httpserver/NanoHTTPD$Method;

    const-string v1, "DELETE"

    invoke-direct {v0, v1, v6}, Lkiller/core/httpserver/NanoHTTPD$Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkiller/core/httpserver/NanoHTTPD$Method;->DELETE:Lkiller/core/httpserver/NanoHTTPD$Method;

    .line 1251
    new-instance v0, Lkiller/core/httpserver/NanoHTTPD$Method;

    const-string v1, "HEAD"

    invoke-direct {v0, v1, v7}, Lkiller/core/httpserver/NanoHTTPD$Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkiller/core/httpserver/NanoHTTPD$Method;->HEAD:Lkiller/core/httpserver/NanoHTTPD$Method;

    .line 1252
    new-instance v0, Lkiller/core/httpserver/NanoHTTPD$Method;

    const-string v1, "OPTIONS"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lkiller/core/httpserver/NanoHTTPD$Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkiller/core/httpserver/NanoHTTPD$Method;->OPTIONS:Lkiller/core/httpserver/NanoHTTPD$Method;

    .line 1253
    new-instance v0, Lkiller/core/httpserver/NanoHTTPD$Method;

    const-string v1, "TRACE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lkiller/core/httpserver/NanoHTTPD$Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkiller/core/httpserver/NanoHTTPD$Method;->TRACE:Lkiller/core/httpserver/NanoHTTPD$Method;

    .line 1254
    new-instance v0, Lkiller/core/httpserver/NanoHTTPD$Method;

    const-string v1, "CONNECT"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lkiller/core/httpserver/NanoHTTPD$Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkiller/core/httpserver/NanoHTTPD$Method;->CONNECT:Lkiller/core/httpserver/NanoHTTPD$Method;

    .line 1255
    new-instance v0, Lkiller/core/httpserver/NanoHTTPD$Method;

    const-string v1, "PATCH"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lkiller/core/httpserver/NanoHTTPD$Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkiller/core/httpserver/NanoHTTPD$Method;->PATCH:Lkiller/core/httpserver/NanoHTTPD$Method;

    .line 1256
    new-instance v0, Lkiller/core/httpserver/NanoHTTPD$Method;

    const-string v1, "PROPFIND"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lkiller/core/httpserver/NanoHTTPD$Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkiller/core/httpserver/NanoHTTPD$Method;->PROPFIND:Lkiller/core/httpserver/NanoHTTPD$Method;

    .line 1257
    new-instance v0, Lkiller/core/httpserver/NanoHTTPD$Method;

    const-string v1, "PROPPATCH"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lkiller/core/httpserver/NanoHTTPD$Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkiller/core/httpserver/NanoHTTPD$Method;->PROPPATCH:Lkiller/core/httpserver/NanoHTTPD$Method;

    .line 1258
    new-instance v0, Lkiller/core/httpserver/NanoHTTPD$Method;

    const-string v1, "MKCOL"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lkiller/core/httpserver/NanoHTTPD$Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkiller/core/httpserver/NanoHTTPD$Method;->MKCOL:Lkiller/core/httpserver/NanoHTTPD$Method;

    .line 1259
    new-instance v0, Lkiller/core/httpserver/NanoHTTPD$Method;

    const-string v1, "MOVE"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lkiller/core/httpserver/NanoHTTPD$Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkiller/core/httpserver/NanoHTTPD$Method;->MOVE:Lkiller/core/httpserver/NanoHTTPD$Method;

    .line 1260
    new-instance v0, Lkiller/core/httpserver/NanoHTTPD$Method;

    const-string v1, "COPY"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lkiller/core/httpserver/NanoHTTPD$Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkiller/core/httpserver/NanoHTTPD$Method;->COPY:Lkiller/core/httpserver/NanoHTTPD$Method;

    .line 1261
    new-instance v0, Lkiller/core/httpserver/NanoHTTPD$Method;

    const-string v1, "LOCK"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lkiller/core/httpserver/NanoHTTPD$Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkiller/core/httpserver/NanoHTTPD$Method;->LOCK:Lkiller/core/httpserver/NanoHTTPD$Method;

    .line 1262
    new-instance v0, Lkiller/core/httpserver/NanoHTTPD$Method;

    const-string v1, "UNLOCK"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lkiller/core/httpserver/NanoHTTPD$Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkiller/core/httpserver/NanoHTTPD$Method;->UNLOCK:Lkiller/core/httpserver/NanoHTTPD$Method;

    .line 1246
    const/16 v0, 0x10

    new-array v0, v0, [Lkiller/core/httpserver/NanoHTTPD$Method;

    sget-object v1, Lkiller/core/httpserver/NanoHTTPD$Method;->GET:Lkiller/core/httpserver/NanoHTTPD$Method;

    aput-object v1, v0, v3

    sget-object v1, Lkiller/core/httpserver/NanoHTTPD$Method;->PUT:Lkiller/core/httpserver/NanoHTTPD$Method;

    aput-object v1, v0, v4

    sget-object v1, Lkiller/core/httpserver/NanoHTTPD$Method;->POST:Lkiller/core/httpserver/NanoHTTPD$Method;

    aput-object v1, v0, v5

    sget-object v1, Lkiller/core/httpserver/NanoHTTPD$Method;->DELETE:Lkiller/core/httpserver/NanoHTTPD$Method;

    aput-object v1, v0, v6

    sget-object v1, Lkiller/core/httpserver/NanoHTTPD$Method;->HEAD:Lkiller/core/httpserver/NanoHTTPD$Method;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lkiller/core/httpserver/NanoHTTPD$Method;->OPTIONS:Lkiller/core/httpserver/NanoHTTPD$Method;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lkiller/core/httpserver/NanoHTTPD$Method;->TRACE:Lkiller/core/httpserver/NanoHTTPD$Method;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lkiller/core/httpserver/NanoHTTPD$Method;->CONNECT:Lkiller/core/httpserver/NanoHTTPD$Method;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lkiller/core/httpserver/NanoHTTPD$Method;->PATCH:Lkiller/core/httpserver/NanoHTTPD$Method;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lkiller/core/httpserver/NanoHTTPD$Method;->PROPFIND:Lkiller/core/httpserver/NanoHTTPD$Method;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lkiller/core/httpserver/NanoHTTPD$Method;->PROPPATCH:Lkiller/core/httpserver/NanoHTTPD$Method;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lkiller/core/httpserver/NanoHTTPD$Method;->MKCOL:Lkiller/core/httpserver/NanoHTTPD$Method;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lkiller/core/httpserver/NanoHTTPD$Method;->MOVE:Lkiller/core/httpserver/NanoHTTPD$Method;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lkiller/core/httpserver/NanoHTTPD$Method;->COPY:Lkiller/core/httpserver/NanoHTTPD$Method;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lkiller/core/httpserver/NanoHTTPD$Method;->LOCK:Lkiller/core/httpserver/NanoHTTPD$Method;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lkiller/core/httpserver/NanoHTTPD$Method;->UNLOCK:Lkiller/core/httpserver/NanoHTTPD$Method;

    aput-object v2, v0, v1

    sput-object v0, Lkiller/core/httpserver/NanoHTTPD$Method;->$VALUES:[Lkiller/core/httpserver/NanoHTTPD$Method;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 1246
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static lookup(Ljava/lang/String;)Lkiller/core/httpserver/NanoHTTPD$Method;
    .locals 2
    .param p0, "method"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 1265
    if-nez p0, :cond_0

    .line 1272
    :goto_0
    return-object v1

    .line 1269
    :cond_0
    :try_start_0
    invoke-static {p0}, Lkiller/core/httpserver/NanoHTTPD$Method;->valueOf(Ljava/lang/String;)Lkiller/core/httpserver/NanoHTTPD$Method;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 1270
    :catch_0
    move-exception v0

    .line 1272
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lkiller/core/httpserver/NanoHTTPD$Method;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 1246
    const-class v0, Lkiller/core/httpserver/NanoHTTPD$Method;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lkiller/core/httpserver/NanoHTTPD$Method;

    return-object v0
.end method

.method public static values()[Lkiller/core/httpserver/NanoHTTPD$Method;
    .locals 1

    .prologue
    .line 1246
    sget-object v0, Lkiller/core/httpserver/NanoHTTPD$Method;->$VALUES:[Lkiller/core/httpserver/NanoHTTPD$Method;

    invoke-virtual {v0}, [Lkiller/core/httpserver/NanoHTTPD$Method;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lkiller/core/httpserver/NanoHTTPD$Method;

    return-object v0
.end method
