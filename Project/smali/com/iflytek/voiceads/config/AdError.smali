.class public Lcom/iflytek/voiceads/config/AdError;
.super Ljava/lang/Exception;


# static fields
.field private static final TIP_ACTIVITY_FINISH:I = 0xc

.field private static final TIP_INVALID_AD_UNIT_ID:I = 0x5

.field private static final TIP_INVALID_REQUEST:I = 0x3

.field private static final TIP_NETWORK_ERROR:I = 0x1

.field private static final TIP_NO_FILL:I = 0x4

.field private static final TIP_OVER_REQUEST_NUM:I = 0x8

.field private static final TIP_PAGE_LOAD_ERROR:I = 0xa

.field private static final TIP_PAGE_LOAD_TIMEOUT:I = 0x9

.field private static final TIP_PERMISSION_ERROR:I = 0x6

.field private static final TIP_SERVER_ERROR:I = 0x2

.field private static final TIP_SUCCESS:I = 0x0

.field private static final TIP_UNKNOWN_ERROR:I = 0x7

.field private static final TIP_VIDEO_CACHE:I = 0xb


# instance fields
.field private mDescription:Ljava/lang/String;

.field private mErrorCode:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/iflytek/voiceads/config/AdError;->mDescription:Ljava/lang/String;

    iput p1, p0, Lcom/iflytek/voiceads/config/AdError;->mErrorCode:I

    iget p1, p0, Lcom/iflytek/voiceads/config/AdError;->mErrorCode:I

    const v0, 0x11238

    if-eq p1, v0, :cond_4

    const v0, 0x1123c

    if-eq p1, v0, :cond_3

    const v0, 0x11300

    if-eq p1, v0, :cond_2

    const v0, 0x11303

    if-eq p1, v0, :cond_1

    const v0, 0x11364

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x7

    goto :goto_0

    :pswitch_0
    const/16 p1, 0xc

    goto :goto_0

    :pswitch_1
    const/16 p1, 0xb

    goto :goto_0

    :pswitch_2
    const/16 p1, 0xa

    goto :goto_0

    :pswitch_3
    const/16 p1, 0x9

    goto :goto_0

    :pswitch_4
    const/4 p1, 0x6

    goto :goto_0

    :pswitch_5
    const/4 p1, 0x1

    goto :goto_0

    :pswitch_6
    const/4 p1, 0x3

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    goto :goto_0

    :cond_1
    const/16 p1, 0x8

    goto :goto_0

    :cond_2
    :pswitch_7
    const/4 p1, 0x5

    goto :goto_0

    :cond_3
    const/4 p1, 0x4

    goto :goto_0

    :cond_4
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lcom/iflytek/voiceads/a/a;->a(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/iflytek/voiceads/config/AdError;->mDescription:Ljava/lang/String;

    return-void

    :pswitch_data_0
    .packed-switch 0x1155a
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_7
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getErrorCode()I
    .locals 1

    iget v0, p0, Lcom/iflytek/voiceads/config/AdError;->mErrorCode:I

    return v0
.end method

.method public getErrorDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/voiceads/config/AdError;->mDescription:Ljava/lang/String;

    return-object v0
.end method
