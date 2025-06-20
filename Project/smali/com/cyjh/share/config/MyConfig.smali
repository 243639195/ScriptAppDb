.class public Lcom/cyjh/share/config/MyConfig;
.super Ljava/lang/Object;
.source "MyConfig.java"


# static fields
.field private static APP_2_DOMAIN_NAME:Ljava/lang/String; = null

.field private static APP_3_DOMAIN_NAME:Ljava/lang/String; = "http://auth2.mobileanjian.com/"

.field private static final SCHEME:Ljava/lang/String; = "http"

.field private static c4:Ljava/lang/String;

.field private static c5:Ljava/lang/String;

.field private static sAppInfo:Ljava/lang/String;

.field private static sAppType:I

.field private static sAppVersion:Ljava/lang/String;

.field private static sAppid:J

.field private static sAuthority:Ljava/lang/String;

.field public static sIsOpenLogger:Z

.field private static sTempVersionNumber:Ljava/lang/String;

.field private static sTemplateFileId:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getApp2DomainName()Ljava/lang/String;
    .locals 1

    .line 124
    sget-object v0, Lcom/cyjh/share/config/MyConfig;->APP_2_DOMAIN_NAME:Ljava/lang/String;

    return-object v0
.end method

.method public static getApp3DomainName()Ljava/lang/String;
    .locals 1

    .line 132
    sget-object v0, Lcom/cyjh/share/config/MyConfig;->APP_3_DOMAIN_NAME:Ljava/lang/String;

    return-object v0
.end method

.method public static getAppInfo()Ljava/lang/String;
    .locals 1

    .line 120
    sget-object v0, Lcom/cyjh/share/config/MyConfig;->sAppInfo:Ljava/lang/String;

    return-object v0
.end method

.method public static getAppType()I
    .locals 1

    .line 104
    sget v0, Lcom/cyjh/share/config/MyConfig;->sAppType:I

    return v0
.end method

.method public static getAppVersion()Ljava/lang/String;
    .locals 1

    .line 92
    sget-object v0, Lcom/cyjh/share/config/MyConfig;->sAppVersion:Ljava/lang/String;

    return-object v0
.end method

.method public static getAppid()J
    .locals 2

    .line 100
    sget-wide v0, Lcom/cyjh/share/config/MyConfig;->sAppid:J

    return-wide v0
.end method

.method public static getBuilderPay(Ljava/lang/String;)Landroid/net/Uri$Builder;
    .locals 2

    .line 47
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "http"

    .line 48
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    sget-object v1, Lcom/cyjh/share/config/MyConfig;->sAuthority:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->encodedAuthority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static getBuilderPay(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;
    .locals 2

    .line 52
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "http"

    .line 53
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    sget-object v1, Lcom/cyjh/share/config/MyConfig;->sAuthority:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->encodedAuthority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 54
    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static getC4()Ljava/lang/String;
    .locals 1

    .line 112
    sget-object v0, Lcom/cyjh/share/config/MyConfig;->c4:Ljava/lang/String;

    return-object v0
.end method

.method public static getC5()Ljava/lang/String;
    .locals 1

    .line 116
    sget-object v0, Lcom/cyjh/share/config/MyConfig;->c5:Ljava/lang/String;

    return-object v0
.end method

.method public static getTempVersionNumber()Ljava/lang/String;
    .locals 1

    .line 108
    sget-object v0, Lcom/cyjh/share/config/MyConfig;->sTempVersionNumber:Ljava/lang/String;

    return-object v0
.end method

.method public static getTemplateFileId()J
    .locals 2

    .line 96
    sget-wide v0, Lcom/cyjh/share/config/MyConfig;->sTemplateFileId:J

    return-wide v0
.end method

.method public static init(ZLjava/lang/String;JJLjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 79
    sput-object p1, Lcom/cyjh/share/config/MyConfig;->sAuthority:Ljava/lang/String;

    .line 80
    sput-boolean p0, Lcom/cyjh/share/config/MyConfig;->sIsOpenLogger:Z

    .line 81
    sput-wide p2, Lcom/cyjh/share/config/MyConfig;->sAppid:J

    .line 82
    sput-wide p4, Lcom/cyjh/share/config/MyConfig;->sTemplateFileId:J

    .line 83
    sput-object p6, Lcom/cyjh/share/config/MyConfig;->sAppVersion:Ljava/lang/String;

    .line 84
    sput p7, Lcom/cyjh/share/config/MyConfig;->sAppType:I

    .line 85
    sput-object p8, Lcom/cyjh/share/config/MyConfig;->sTempVersionNumber:Ljava/lang/String;

    .line 86
    sput-object p9, Lcom/cyjh/share/config/MyConfig;->c4:Ljava/lang/String;

    .line 87
    sput-object p10, Lcom/cyjh/share/config/MyConfig;->c5:Ljava/lang/String;

    .line 88
    sput-object p11, Lcom/cyjh/share/config/MyConfig;->sAppInfo:Ljava/lang/String;

    return-void
.end method

.method public static isOutputLog()Z
    .locals 1

    .line 61
    sget-boolean v0, Lcom/cyjh/share/config/MyConfig;->sIsOpenLogger:Z

    return v0
.end method

.method public static setApp2DomainName(Ljava/lang/String;)V
    .locals 0

    .line 128
    sput-object p0, Lcom/cyjh/share/config/MyConfig;->APP_2_DOMAIN_NAME:Ljava/lang/String;

    return-void
.end method

.method public static setApp3DomainName(Ljava/lang/String;)V
    .locals 0

    .line 136
    sput-object p0, Lcom/cyjh/share/config/MyConfig;->APP_3_DOMAIN_NAME:Ljava/lang/String;

    return-void
.end method

.method public static setAuthority(Ljava/lang/String;)V
    .locals 1

    .line 38
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "http://"

    .line 39
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "http://"

    .line 40
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 42
    :cond_0
    sput-object p0, Lcom/cyjh/share/config/MyConfig;->sAuthority:Ljava/lang/String;

    :cond_1
    return-void
.end method
