.class public Lcom/ds/daisi/net/URL/URLConstant;
.super Ljava/lang/Object;
.source "URLConstant.java"


# static fields
.field public static final ACCOUNT_REQUEST_NAME:Ljava/lang/String; = "User"

.field public static final ACCOUNT_URL:Ljava/lang/String;

.field public static final BLACK_LIST_NAME:Ljava/lang/String; = "GetElfBlackList"

.field public static final BLACK_LIST_PACKAGE:Ljava/lang/String; = "packagename"

.field public static final BLACK_LIST_TYPE:Ljava/lang/String; = "type"

.field public static final CODES_SOURCE_NAME:Ljava/lang/String; = "GetCodes"

.field public static final LOGURL:Ljava/lang/String;

.field public static final LOG_REQUEST_NAME:Ljava/lang/String; = "SetLog"

.field public static MONOMER_INSTALLATION_PACKAGE:Ljava/lang/String; = "GetMonomerInstallationPackage"

.field public static MONOMER_PACKAGE_NAME:Ljava/lang/String; = "packagename"

.field public static final MSG_REQUEST_GUID:Ljava/lang/String; = "guid"

.field public static final MSG_REQUEST_IMIE:Ljava/lang/String; = "imie"

.field public static final MSG_REQUEST_IS_FREE:Ljava/lang/String; = "isfree"

.field public static final MSG_REQUEST_NAME:Ljava/lang/String; = "GetMessage"

.field public static final MSG_REQUEST_PLATFORMS:Ljava/lang/String; = "platforms"

.field public static final PAY_OR_Free:Ljava/lang/String;

.field public static TEMPLATE_MANAGER:Ljava/lang/String; = "GetTemplateManager"

.field public static TEMPLATE_TYPE:Ljava/lang/String; = "type"

.field public static TEMPLATE_VERSION:Ljava/lang/String; = "version"

.field public static final TOKEN_PARAMS_APPID:Ljava/lang/String; = "AppId"

.field public static final TOKEN_PARAMS_DATA:Ljava/lang/String; = "Data"

.field public static final TOKEN_PARAMS_RCODE:Ljava/lang/String; = "RCode"

.field public static final TOKEN_PARAMS_SIGN:Ljava/lang/String; = "Sign"

.field public static final TOKEN_PARAMS_TOKEN:Ljava/lang/String; = "Token"

.field public static final TOKEN_PARAMS_USERNAME:Ljava/lang/String; = "UserName"

.field public static final TOKEN_PARAM_TYPE:Ljava/lang/String; = "Type"

.field public static final TOKEN_REQ_NAME:Ljava/lang/String; = "Token"

.field public static final UPDATE_REQUEST_NAME:Ljava/lang/String; = "Update"

.field public static final UPDATE_URL:Ljava/lang/String;

.field public static final USER_ACCOUNT:Ljava/lang/String; = "phone"

.field public static final USER_APK_PACKAGENAME:Ljava/lang/String; = "packagename"

.field public static final USER_CHECKED_ACCOUNT_FREEZE:Ljava/lang/String; = "CheckAccount"

.field public static final USER_SCRIPT_TRY_COUNT:Ljava/lang/String; = "GetTryCount"

.field public static final USER_TIME_URL:Ljava/lang/String; = "http://121.41.22.28/api/UserCheckAppTime?Data="

.field public static final VALUE_TYPE:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    .line 5
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ds/daisi/net/URL/URLConstant;->VALUE_TYPE:Ljava/lang/String;

    const/4 v0, 0x1

    .line 6
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ds/daisi/net/URL/URLConstant;->PAY_OR_Free:Ljava/lang/String;

    .line 12
    sget-object v0, Lcom/ds/daisi/net/URL/MyBuildConfig;->AUTHORITY_VERIFY:Ljava/lang/String;

    const-string v1, "Update"

    invoke-static {v0, v1}, Lcom/ds/daisi/net/URL/MyBuildConfig;->getBuilder(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 13
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ds/daisi/net/URL/URLConstant;->UPDATE_URL:Ljava/lang/String;

    const-string v0, "logapi.mobileanjian.com"

    const-string v1, "SetLog"

    .line 18
    invoke-static {v0, v1}, Lcom/ds/daisi/net/URL/MyBuildConfig;->getBuilder(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 19
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ds/daisi/net/URL/URLConstant;->LOGURL:Ljava/lang/String;

    .line 39
    sget-object v0, Lcom/ds/daisi/net/URL/MyBuildConfig;->AUTHORITY:Ljava/lang/String;

    const-string v1, "User"

    invoke-static {v0, v1}, Lcom/ds/daisi/net/URL/MyBuildConfig;->getBuilder(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 40
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ds/daisi/net/URL/URLConstant;->ACCOUNT_URL:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
