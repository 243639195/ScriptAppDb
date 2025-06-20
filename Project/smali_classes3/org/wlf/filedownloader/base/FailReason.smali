.class public abstract Lorg/wlf/filedownloader/base/FailReason;
.super Ljava/lang/Exception;
.source "FailReason.java"


# static fields
.field public static final TYPE_NULL_POINTER:Ljava/lang/String;

.field public static final TYPE_UNKNOWN:Ljava/lang/String;


# instance fields
.field private mType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lorg/wlf/filedownloader/base/FailReason;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_TYPE_UNKNOWN"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/wlf/filedownloader/base/FailReason;->TYPE_UNKNOWN:Ljava/lang/String;

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lorg/wlf/filedownloader/base/FailReason;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_TYPE_NULL_POINTER"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/wlf/filedownloader/base/FailReason;->TYPE_NULL_POINTER:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 29
    sget-object v0, Lorg/wlf/filedownloader/base/FailReason;->TYPE_UNKNOWN:Ljava/lang/String;

    iput-object v0, p0, Lorg/wlf/filedownloader/base/FailReason;->mType:Ljava/lang/String;

    .line 39
    iput-object p1, p0, Lorg/wlf/filedownloader/base/FailReason;->mType:Ljava/lang/String;

    .line 40
    invoke-virtual {p0}, Lorg/wlf/filedownloader/base/FailReason;->isTypeInit()Z

    move-result v0

    if-nez v0, :cond_0

    .line 42
    invoke-direct {p0, p0}, Lorg/wlf/filedownloader/base/FailReason;->initType(Ljava/lang/Throwable;)V

    .line 44
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "detailMessage"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 29
    sget-object v0, Lorg/wlf/filedownloader/base/FailReason;->TYPE_UNKNOWN:Ljava/lang/String;

    iput-object v0, p0, Lorg/wlf/filedownloader/base/FailReason;->mType:Ljava/lang/String;

    .line 54
    iput-object p2, p0, Lorg/wlf/filedownloader/base/FailReason;->mType:Ljava/lang/String;

    .line 55
    invoke-virtual {p0}, Lorg/wlf/filedownloader/base/FailReason;->isTypeInit()Z

    move-result v0

    if-nez v0, :cond_0

    .line 57
    invoke-direct {p0, p0}, Lorg/wlf/filedownloader/base/FailReason;->initType(Ljava/lang/Throwable;)V

    .line 59
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "detailMessage"    # Ljava/lang/String;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 99
    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 29
    sget-object v0, Lorg/wlf/filedownloader/base/FailReason;->TYPE_UNKNOWN:Ljava/lang/String;

    iput-object v0, p0, Lorg/wlf/filedownloader/base/FailReason;->mType:Ljava/lang/String;

    .line 101
    invoke-direct {p0, p2}, Lorg/wlf/filedownloader/base/FailReason;->initType(Ljava/lang/Throwable;)V

    .line 102
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 1
    .param p1, "detailMessage"    # Ljava/lang/String;
    .param p2, "throwable"    # Ljava/lang/Throwable;
    .param p3, "type"    # Ljava/lang/String;

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 29
    sget-object v0, Lorg/wlf/filedownloader/base/FailReason;->TYPE_UNKNOWN:Ljava/lang/String;

    iput-object v0, p0, Lorg/wlf/filedownloader/base/FailReason;->mType:Ljava/lang/String;

    .line 70
    iput-object p3, p0, Lorg/wlf/filedownloader/base/FailReason;->mType:Ljava/lang/String;

    .line 71
    invoke-virtual {p0}, Lorg/wlf/filedownloader/base/FailReason;->isTypeInit()Z

    move-result v0

    if-nez v0, :cond_0

    .line 73
    invoke-direct {p0, p2}, Lorg/wlf/filedownloader/base/FailReason;->initType(Ljava/lang/Throwable;)V

    .line 75
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 110
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 29
    sget-object v0, Lorg/wlf/filedownloader/base/FailReason;->TYPE_UNKNOWN:Ljava/lang/String;

    iput-object v0, p0, Lorg/wlf/filedownloader/base/FailReason;->mType:Ljava/lang/String;

    .line 112
    invoke-direct {p0, p1}, Lorg/wlf/filedownloader/base/FailReason;->initType(Ljava/lang/Throwable;)V

    .line 113
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 1
    .param p1, "throwable"    # Ljava/lang/Throwable;
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    .line 84
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 29
    sget-object v0, Lorg/wlf/filedownloader/base/FailReason;->TYPE_UNKNOWN:Ljava/lang/String;

    iput-object v0, p0, Lorg/wlf/filedownloader/base/FailReason;->mType:Ljava/lang/String;

    .line 85
    iput-object p2, p0, Lorg/wlf/filedownloader/base/FailReason;->mType:Ljava/lang/String;

    .line 86
    invoke-virtual {p0}, Lorg/wlf/filedownloader/base/FailReason;->isTypeInit()Z

    move-result v0

    if-nez v0, :cond_0

    .line 88
    invoke-direct {p0, p1}, Lorg/wlf/filedownloader/base/FailReason;->initType(Ljava/lang/Throwable;)V

    .line 90
    :cond_0
    return-void
.end method

.method private getOriginalCauseInternal(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 2
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 251
    if-nez p1, :cond_1

    .line 252
    const/4 v0, 0x0

    .line 258
    :cond_0
    :goto_0
    return-object v0

    .line 254
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 255
    .local v0, "cause":Ljava/lang/Throwable;
    instance-of v1, v0, Lorg/wlf/filedownloader/base/FailReason;

    if-eqz v1, :cond_0

    .line 256
    invoke-direct {p0, v0}, Lorg/wlf/filedownloader/base/FailReason;->getOriginalCauseInternal(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_0
.end method

.method private initType(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 135
    if-nez p1, :cond_1

    .line 148
    :cond_0
    :goto_0
    return-void

    .line 139
    :cond_1
    invoke-virtual {p0, p1}, Lorg/wlf/filedownloader/base/FailReason;->onInitTypeWithThrowable(Ljava/lang/Throwable;)V

    .line 141
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eq p1, v0, :cond_0

    .line 145
    invoke-virtual {p0}, Lorg/wlf/filedownloader/base/FailReason;->isTypeInit()Z

    move-result v0

    if-nez v0, :cond_0

    .line 146
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/wlf/filedownloader/base/FailReason;->initType(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private onInitTypeWithFailReasonInternal(Lorg/wlf/filedownloader/base/FailReason;)V
    .locals 2
    .param p1, "failReason"    # Lorg/wlf/filedownloader/base/FailReason;

    .prologue
    .line 175
    if-nez p1, :cond_1

    .line 187
    :cond_0
    :goto_0
    return-void

    .line 179
    :cond_1
    invoke-virtual {p0, p1}, Lorg/wlf/filedownloader/base/FailReason;->onInitTypeWithFailReason(Lorg/wlf/filedownloader/base/FailReason;)V

    .line 181
    invoke-virtual {p0}, Lorg/wlf/filedownloader/base/FailReason;->isTypeInit()Z

    move-result v1

    if-nez v1, :cond_0

    .line 182
    invoke-virtual {p1}, Lorg/wlf/filedownloader/base/FailReason;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 183
    .local v0, "cause":Ljava/lang/Throwable;
    instance-of v1, v0, Lorg/wlf/filedownloader/base/FailReason;

    if-eqz v1, :cond_0

    .line 184
    check-cast v0, Lorg/wlf/filedownloader/base/FailReason;

    .end local v0    # "cause":Ljava/lang/Throwable;
    invoke-direct {p0, v0}, Lorg/wlf/filedownloader/base/FailReason;->onInitTypeWithFailReasonInternal(Lorg/wlf/filedownloader/base/FailReason;)V

    goto :goto_0
.end method


# virtual methods
.method public getOriginalCause()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 246
    invoke-direct {p0, p0}, Lorg/wlf/filedownloader/base/FailReason;->getOriginalCauseInternal(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lorg/wlf/filedownloader/base/FailReason;->mType:Ljava/lang/String;

    return-object v0
.end method

.method protected final isTypeInit()Z
    .locals 2

    .prologue
    .line 123
    sget-object v0, Lorg/wlf/filedownloader/base/FailReason;->TYPE_UNKNOWN:Ljava/lang/String;

    iget-object v1, p0, Lorg/wlf/filedownloader/base/FailReason;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/wlf/filedownloader/base/FailReason;->mType:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 124
    :cond_0
    const/4 v0, 0x0

    .line 126
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected onInitTypeWithFailReason(Lorg/wlf/filedownloader/base/FailReason;)V
    .locals 0
    .param p1, "failReason"    # Lorg/wlf/filedownloader/base/FailReason;

    .prologue
    .line 195
    return-void
.end method

.method protected onInitTypeWithOriginalThrowable(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "originalThrowable"    # Ljava/lang/Throwable;

    .prologue
    .line 203
    if-nez p1, :cond_1

    .line 216
    :cond_0
    :goto_0
    return-void

    .line 207
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 209
    .local v0, "throwableClassName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 213
    const-class v1, Ljava/lang/NullPointerException;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 214
    sget-object v1, Lorg/wlf/filedownloader/base/FailReason;->TYPE_NULL_POINTER:Ljava/lang/String;

    iput-object v1, p0, Lorg/wlf/filedownloader/base/FailReason;->mType:Ljava/lang/String;

    goto :goto_0
.end method

.method protected onInitTypeWithThrowable(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 157
    invoke-virtual {p0}, Lorg/wlf/filedownloader/base/FailReason;->isTypeInit()Z

    move-result v1

    if-nez v1, :cond_0

    if-nez p1, :cond_1

    .line 171
    :cond_0
    :goto_0
    return-void

    .line 161
    :cond_1
    instance-of v1, p1, Lorg/wlf/filedownloader/base/FailReason;

    if-eqz v1, :cond_2

    move-object v0, p1

    .line 162
    check-cast v0, Lorg/wlf/filedownloader/base/FailReason;

    .line 163
    .local v0, "failReason":Lorg/wlf/filedownloader/base/FailReason;
    invoke-virtual {v0}, Lorg/wlf/filedownloader/base/FailReason;->getOriginalCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/wlf/filedownloader/base/FailReason;->onInitTypeWithOriginalThrowable(Ljava/lang/Throwable;)V

    .line 164
    invoke-virtual {p0}, Lorg/wlf/filedownloader/base/FailReason;->isTypeInit()Z

    move-result v1

    if-nez v1, :cond_0

    .line 167
    invoke-direct {p0, v0}, Lorg/wlf/filedownloader/base/FailReason;->onInitTypeWithFailReasonInternal(Lorg/wlf/filedownloader/base/FailReason;)V

    goto :goto_0

    .line 169
    .end local v0    # "failReason":Lorg/wlf/filedownloader/base/FailReason;
    :cond_2
    invoke-virtual {p0, p1}, Lorg/wlf/filedownloader/base/FailReason;->onInitTypeWithOriginalThrowable(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected final setType(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 226
    iput-object p1, p0, Lorg/wlf/filedownloader/base/FailReason;->mType:Ljava/lang/String;

    .line 227
    return-void
.end method
