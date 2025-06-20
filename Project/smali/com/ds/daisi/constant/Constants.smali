.class public Lcom/ds/daisi/constant/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# static fields
.field public static final ACCOUNT:Ljava/lang/String; = "account"

.field public static final ANDROID:Ljava/lang/String; = "android"

.field public static final APPID_SP_KEY:Ljava/lang/String; = "appid_sp_key"

.field public static final CYJH_PAY_SP:Ljava/lang/String; = "cyjh_pay_sp"

.field public static final DATABASE_TABLE_MSG:Ljava/lang/String; = "Message"

.field public static final DEFAULT_NEGATIVE_ONE:I = -0x1

.field public static final DEFAULT_ONE:I = 0x1

.field public static final DEFAULT_ZERO:I = 0x0

.field public static final DESIV:[B

.field public static final DESkey:[B

.field public static final ENUM_SCRIPT_NEED_UPGRADE:I = 0x24

.field public static final EXIT_LOGIN_FILE:Ljava/lang/String; = "ExitLogin.txt"

.field public static final FENG_LING_AD_APP_ID:Ljava/lang/String; = "5e1f6df6cc024c80b7e8b86dc670c100"

.field public static final FENG_LING_AD_BANNER_ID:Ljava/lang/String; = "101477"

.field public static final FENG_LING_AD_SPLASH_ID:Ljava/lang/String; = "101478"

.field public static final HAS_LOAD_BOTTOM_AD:Ljava/lang/String; = "has_load_bottom_ad"

.field public static final HAS_LOAD_SPLASH_FIRST_AD:Ljava/lang/String; = "has_load_splash_first_ad"

.field public static final HAS_LOAD_SPLASH_SECOND_AD:Ljava/lang/String; = "has_load_splash_second_ad"

.field public static final HOURS:I = 0x18

.field public static final ISEXIST_NETWORK_REQ_FILE:Ljava/lang/String; = "network_file_is_exist"

.field public static final IS_LOGIN:Ljava/lang/String; = "is_login"

.field public static final IS_SCRIPT_HOT_UPGRADE:I = 0x1

.field public static final IS_STUDIO:Ljava/lang/String; = "is_studio"

.field public static final IS_TIMEOUT_FLAG:Ljava/lang/String; = "is_timeout_flag"

.field public static final LOGIN_MESSAGE_DIR:Ljava/lang/String; = "login"

.field public static final MESSAGE_WHAT_GET_ROOT_LEAD_URL_SUCCEED:I = 0x1

.field public static final MINUTES:I = 0x3c

.field public static final MSG_DATA:Ljava/lang/String; = "msgData"

.field public static final NETWORK_MESSAGE:Ljava/lang/String; = "NetworkMessage"

.field public static final NETWORK_REQUEST_LOG:Ljava/lang/String; = "NetworkReqLog.txt"

.field public static final NETWORK_RES_MESSAGE_TIME:Ljava/lang/String; = "save_network_message"

.field public static final ONE_THOUSAND:I = 0x3e8

.field public static final POLYMERIC_AD_APP_ID:Ljava/lang/String; = "589ac20e"

.field public static final POLYMERIC_AD_BOTTOM_ID:Ljava/lang/String; = "9312C6DA2448C84DB3C4FE8F66E2B394"

.field public static final POLYMERIC_AD_SPLASH_FIRST_ID:Ljava/lang/String; = "F4F04588C1076DA9017964B229D657DA"

.field public static final POLYMERIC_AD_SPLASH_SECOND_ID:Ljava/lang/String; = "94CCB814573108BFBD19D8E2BB45AEE0"

.field public static final PUSH_SYSTEM_APP_NAME:Ljava/lang/String; = "app-release.apk"

.field public static final REBOOT:Ljava/lang/String; = "110"

.field public static final RED_DOT_FLAG:Ljava/lang/String; = "red_dot_flag"

.field public static final RED_FINGER_PCKAGENAME:Ljava/lang/String; = "com.redfinger.appstore"

.field public static final REQUEST_CODE_APP_INSTALL:I = 0x2710

.field public static ROOT_TYPE:I = 0x2

.field public static final ROOT_TYPE_ELFIN:I = 0x2

.field public static final SCRIPT_DAY_COUNT:Ljava/lang/String; = "script_day_count"

.field public static final SCRIPT_TRY_COUNT:Ljava/lang/String; = "script_try_count"

.field public static final SCRIPT_TRY_USE_COUNT:Ljava/lang/String; = "script_count_use"

.field public static final SCRIPT_USER_TYPE:Ljava/lang/String; = "sciprt_user_type"

.field public static final SCRIPT_USE_COUNT:Ljava/lang/String; = "count"

.field public static final SCRIPT_USE_MESSAGE:Ljava/lang/String; = "use"

.field public static SD_CARD_SCRIPT_ASSETS:Ljava/lang/String; = "assets"

.field public static SD_CARD_SCRIPT_DIR:Ljava/lang/String; = "script"

.field public static SD_CARD_SCRIPT_NAME:Ljava/lang/String; = ".config"

.field public static final SINGLE_APK_REQ_TIME:Ljava/lang/String; = "single_apk_req"

.field public static final SMALL_RED_DOT:Ljava/lang/String; = "small_red_dot"

.field public static final TEMPLATE_APK_REQ_TIME:Ljava/lang/String; = "template_apk_req"

.field public static final TOKEN_VERIFY_CODES:Ljava/lang/String; = "token_verify_codes"

.field public static final TOKEN_VERIFY_KEY:Ljava/lang/String; = "token_verify_key"

.field public static UPLOAD_INSTANCE_DATA_INTERVAL:I = 0x3c

.field public static final USER_MESSAGE:Ljava/lang/String; = "user_message"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x8

    .line 29
    new-array v1, v0, [B

    fill-array-data v1, :array_0

    sput-object v1, Lcom/ds/daisi/constant/Constants;->DESkey:[B

    .line 31
    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/ds/daisi/constant/Constants;->DESIV:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x13t
        0x1ft
        0x61t
        0x1at
        0xat
        0x50t
        0xbt
        0x25t
    .end array-data

    :array_1
    .array-data 1
        0x23t
        0xct
        0x25t
        0x31t
        0x65t
        0x5bt
        0xet
        0x24t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getApkPath(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getCacheDeviceId(Landroid/content/Context;)Ljava/io/File;
    .locals 2

    .line 144
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/ds/daisi/constant/Constants;->getApkPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "Info"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_0

    .line 146
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 148
    :cond_0
    new-instance p0, Ljava/io/File;

    const-string v1, "device_id"

    invoke-direct {p0, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object p0
.end method

.method public static getSaveFilePath(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 1

    .line 121
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/ds/daisi/constant/Constants;->getApkPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_0

    .line 123
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 125
    :cond_0
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, v0, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object p0
.end method
