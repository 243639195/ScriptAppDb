.class public abstract Lcom/lidroid/xutils/http/callback/RequestCallBack;
.super Ljava/lang/Object;
.source "RequestCallBack.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final DEFAULT_RATE:I = 0x3e8

.field private static final MIN_RATE:I = 0xc8


# instance fields
.field private rate:I

.field private requestUrl:Ljava/lang/String;

.field protected userTag:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x3e8

    .line 33
    iput v0, p0, Lcom/lidroid/xutils/http/callback/RequestCallBack;->rate:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput p1, p0, Lcom/lidroid/xutils/http/callback/RequestCallBack;->rate:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput p1, p0, Lcom/lidroid/xutils/http/callback/RequestCallBack;->rate:I

    .line 47
    iput-object p2, p0, Lcom/lidroid/xutils/http/callback/RequestCallBack;->userTag:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x3e8

    .line 41
    iput v0, p0, Lcom/lidroid/xutils/http/callback/RequestCallBack;->rate:I

    .line 42
    iput-object p1, p0, Lcom/lidroid/xutils/http/callback/RequestCallBack;->userTag:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final getRate()I
    .locals 2

    .line 53
    iget v0, p0, Lcom/lidroid/xutils/http/callback/RequestCallBack;->rate:I

    const/16 v1, 0xc8

    if-ge v0, v1, :cond_0

    return v1

    .line 56
    :cond_0
    iget v0, p0, Lcom/lidroid/xutils/http/callback/RequestCallBack;->rate:I

    return v0
.end method

.method public final getRequestUrl()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/lidroid/xutils/http/callback/RequestCallBack;->requestUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getUserTag()Ljava/lang/Object;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/lidroid/xutils/http/callback/RequestCallBack;->userTag:Ljava/lang/Object;

    return-object v0
.end method

.method public onCancelled()V
    .locals 0

    return-void
.end method

.method public abstract onFailure(Lcom/lidroid/xutils/exception/HttpException;Ljava/lang/String;)V
.end method

.method public onLoading(JJZ)V
    .locals 0

    return-void
.end method

.method public onStart()V
    .locals 0

    return-void
.end method

.method public abstract onSuccess(Lcom/lidroid/xutils/http/ResponseInfo;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lidroid/xutils/http/ResponseInfo<",
            "TT;>;)V"
        }
    .end annotation
.end method

.method public final setRate(I)V
    .locals 0

    .line 60
    iput p1, p0, Lcom/lidroid/xutils/http/callback/RequestCallBack;->rate:I

    return-void
.end method

.method public final setRequestUrl(Ljava/lang/String;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/lidroid/xutils/http/callback/RequestCallBack;->requestUrl:Ljava/lang/String;

    return-void
.end method

.method public setUserTag(Ljava/lang/Object;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/lidroid/xutils/http/callback/RequestCallBack;->userTag:Ljava/lang/Object;

    return-void
.end method
