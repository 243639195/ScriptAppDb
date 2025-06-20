.class public Lcom/ds/daisi/util/GlideUtils;
.super Ljava/lang/Object;
.source "GlideUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "u can\'t instantiate me..."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getBitmap(Landroid/content/Context;Ljava/lang/String;Lcom/bumptech/glide/request/RequestOptions;Lcom/ds/daisi/interfaces/GlideLoadBitmapCallback;)V
    .locals 1

    .line 141
    invoke-static {p0}, Lcom/ds/daisi/util/GlideUtils;->isValidContextForGlide(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    new-instance v0, Lcom/ds/daisi/util/GlideUtils$1;

    invoke-direct {v0, p3}, Lcom/ds/daisi/util/GlideUtils$1;-><init>(Lcom/ds/daisi/interfaces/GlideLoadBitmapCallback;)V

    .line 149
    invoke-static {p0}, Lcom/ds/daisi/load_model/GlideApp;->with(Landroid/content/Context;)Lcom/ds/daisi/load_model/GlideRequests;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ds/daisi/load_model/GlideRequests;->asBitmap()Lcom/ds/daisi/load_model/GlideRequest;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/ds/daisi/load_model/GlideRequest;->load(Ljava/lang/String;)Lcom/ds/daisi/load_model/GlideRequest;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/ds/daisi/load_model/GlideRequest;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lcom/ds/daisi/load_model/GlideRequest;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/ds/daisi/load_model/GlideRequest;->into(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;

    :cond_0
    return-void
.end method

.method public static getDefaultOption()Lcom/bumptech/glide/request/RequestOptions;
    .locals 2

    .line 37
    new-instance v0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    const v1, 0x7f020067

    .line 38
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->placeholder(I)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    .line 39
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->error(I)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    sget-object v1, Lcom/bumptech/glide/Priority;->NORMAL:Lcom/bumptech/glide/Priority;

    .line 40
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->priority(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    return-object v0
.end method

.method public static getPhotoImageOption()Lcom/bumptech/glide/request/RequestOptions;
    .locals 2

    .line 45
    new-instance v0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    .line 46
    invoke-virtual {v0}, Lcom/bumptech/glide/request/RequestOptions;->centerCrop()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    const v1, 0x7f020067

    .line 47
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->placeholder(I)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    .line 48
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->error(I)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    sget-object v1, Lcom/bumptech/glide/Priority;->NORMAL:Lcom/bumptech/glide/Priority;

    .line 49
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->priority(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    return-object v0
.end method

.method public static isValidContextForGlide(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 126
    :cond_0
    instance-of v1, p0, Landroid/app/Activity;

    if-eqz v1, :cond_3

    .line 127
    check-cast p0, Landroid/app/Activity;

    .line 128
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_2

    .line 129
    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_1
    return v0

    .line 132
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result p0

    if-eqz p0, :cond_3

    return v0

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method public static load(Landroid/content/Context;ILandroid/widget/ImageView;)V
    .locals 1

    .line 76
    invoke-static {p0}, Lcom/ds/daisi/util/GlideUtils;->isValidContextForGlide(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    invoke-static {p0}, Lcom/ds/daisi/load_model/GlideApp;->with(Landroid/content/Context;)Lcom/ds/daisi/load_model/GlideRequests;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ds/daisi/load_model/GlideRequests;->load(Ljava/lang/Integer;)Lcom/ds/daisi/load_model/GlideRequest;

    move-result-object p0

    invoke-static {}, Lcom/ds/daisi/util/GlideUtils;->getDefaultOption()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ds/daisi/load_model/GlideRequest;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lcom/ds/daisi/load_model/GlideRequest;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/ds/daisi/load_model/GlideRequest;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    :cond_0
    return-void
.end method

.method public static load(Landroid/content/Context;ILandroid/widget/ImageView;Lcom/bumptech/glide/request/RequestOptions;)V
    .locals 1

    .line 82
    invoke-static {p0}, Lcom/ds/daisi/util/GlideUtils;->isValidContextForGlide(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    invoke-static {p0}, Lcom/ds/daisi/load_model/GlideApp;->with(Landroid/content/Context;)Lcom/ds/daisi/load_model/GlideRequests;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ds/daisi/load_model/GlideRequests;->load(Ljava/lang/Integer;)Lcom/ds/daisi/load_model/GlideRequest;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/ds/daisi/load_model/GlideRequest;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lcom/ds/daisi/load_model/GlideRequest;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/ds/daisi/load_model/GlideRequest;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    :cond_0
    return-void
.end method

.method public static load(Landroid/content/Context;Ljava/io/File;Landroid/widget/ImageView;)V
    .locals 1

    .line 88
    invoke-static {p0}, Lcom/ds/daisi/util/GlideUtils;->isValidContextForGlide(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    invoke-static {p0}, Lcom/ds/daisi/load_model/GlideApp;->with(Landroid/content/Context;)Lcom/ds/daisi/load_model/GlideRequests;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/ds/daisi/load_model/GlideRequests;->load(Ljava/io/File;)Lcom/ds/daisi/load_model/GlideRequest;

    move-result-object p0

    invoke-static {}, Lcom/ds/daisi/util/GlideUtils;->getDefaultOption()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ds/daisi/load_model/GlideRequest;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lcom/ds/daisi/load_model/GlideRequest;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/ds/daisi/load_model/GlideRequest;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    :cond_0
    return-void
.end method

.method public static load(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 1

    .line 70
    invoke-static {p0}, Lcom/ds/daisi/util/GlideUtils;->isValidContextForGlide(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    invoke-static {p0}, Lcom/ds/daisi/load_model/GlideApp;->with(Landroid/content/Context;)Lcom/ds/daisi/load_model/GlideRequests;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/ds/daisi/load_model/GlideRequests;->load(Ljava/lang/String;)Lcom/ds/daisi/load_model/GlideRequest;

    move-result-object p0

    invoke-static {}, Lcom/ds/daisi/util/GlideUtils;->getDefaultOption()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ds/daisi/load_model/GlideRequest;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lcom/ds/daisi/load_model/GlideRequest;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/ds/daisi/load_model/GlideRequest;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    :cond_0
    return-void
.end method

.method public static load(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;Lcom/bumptech/glide/load/Transformation;)V
    .locals 2

    .line 94
    invoke-static {p0}, Lcom/ds/daisi/util/GlideUtils;->isValidContextForGlide(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    new-instance v0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    const v1, 0x7f020067

    .line 96
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->placeholder(I)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    .line 97
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->error(I)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    sget-object v1, Lcom/bumptech/glide/Priority;->NORMAL:Lcom/bumptech/glide/Priority;

    .line 98
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->priority(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    .line 99
    invoke-virtual {v0, p3}, Lcom/bumptech/glide/request/RequestOptions;->transform(Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p3

    .line 100
    invoke-static {p0}, Lcom/ds/daisi/load_model/GlideApp;->with(Landroid/content/Context;)Lcom/ds/daisi/load_model/GlideRequests;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/ds/daisi/load_model/GlideRequests;->load(Ljava/lang/String;)Lcom/ds/daisi/load_model/GlideRequest;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/ds/daisi/load_model/GlideRequest;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lcom/ds/daisi/load_model/GlideRequest;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/ds/daisi/load_model/GlideRequest;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    :cond_0
    return-void
.end method

.method public static load(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;Lcom/bumptech/glide/request/RequestOptions;)V
    .locals 1

    .line 105
    invoke-static {p0}, Lcom/ds/daisi/util/GlideUtils;->isValidContextForGlide(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    invoke-static {p0}, Lcom/ds/daisi/load_model/GlideApp;->with(Landroid/content/Context;)Lcom/ds/daisi/load_model/GlideRequests;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/ds/daisi/load_model/GlideRequests;->load(Ljava/lang/String;)Lcom/ds/daisi/load_model/GlideRequest;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/ds/daisi/load_model/GlideRequest;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lcom/ds/daisi/load_model/GlideRequest;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/ds/daisi/load_model/GlideRequest;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    :cond_0
    return-void
.end method

.method public static load(Landroid/content/Context;[BLandroid/widget/ImageView;)V
    .locals 2

    .line 111
    invoke-static {p0}, Lcom/ds/daisi/util/GlideUtils;->isValidContextForGlide(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    new-instance v0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    const v1, 0x7f020067

    .line 113
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->placeholder(I)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    .line 114
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->error(I)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    sget-object v1, Lcom/bumptech/glide/Priority;->HIGH:Lcom/bumptech/glide/Priority;

    .line 115
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->priority(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    sget-object v1, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->ALL:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 116
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    .line 118
    invoke-static {p0}, Lcom/ds/daisi/load_model/GlideApp;->with(Landroid/content/Context;)Lcom/ds/daisi/load_model/GlideRequests;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/ds/daisi/load_model/GlideRequests;->load([B)Lcom/ds/daisi/load_model/GlideRequest;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/ds/daisi/load_model/GlideRequest;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lcom/ds/daisi/load_model/GlideRequest;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/ds/daisi/load_model/GlideRequest;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    :cond_0
    return-void
.end method

.method public static loadGif(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 1

    .line 58
    invoke-static {p0}, Lcom/ds/daisi/util/GlideUtils;->isValidContextForGlide(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    invoke-static {p0}, Lcom/ds/daisi/load_model/GlideApp;->with(Landroid/content/Context;)Lcom/ds/daisi/load_model/GlideRequests;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ds/daisi/load_model/GlideRequests;->asGif()Lcom/ds/daisi/load_model/GlideRequest;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/ds/daisi/load_model/GlideRequest;->load(Ljava/lang/String;)Lcom/ds/daisi/load_model/GlideRequest;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/ds/daisi/load_model/GlideRequest;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    :cond_0
    return-void
.end method

.method public static loadGif(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;Lcom/bumptech/glide/request/RequestOptions;)V
    .locals 1

    .line 64
    invoke-static {p0}, Lcom/ds/daisi/util/GlideUtils;->isValidContextForGlide(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    invoke-static {p0}, Lcom/ds/daisi/load_model/GlideApp;->with(Landroid/content/Context;)Lcom/ds/daisi/load_model/GlideRequests;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ds/daisi/load_model/GlideRequests;->asGif()Lcom/ds/daisi/load_model/GlideRequest;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/ds/daisi/load_model/GlideRequest;->load(Ljava/lang/String;)Lcom/ds/daisi/load_model/GlideRequest;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/ds/daisi/load_model/GlideRequest;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lcom/ds/daisi/load_model/GlideRequest;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/ds/daisi/load_model/GlideRequest;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    :cond_0
    return-void
.end method

.method public static preload(Landroid/content/Context;Ljava/lang/String;Lcom/bumptech/glide/request/RequestListener;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/bumptech/glide/request/RequestListener<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .line 155
    invoke-static {p0}, Lcom/ds/daisi/util/GlideUtils;->isValidContextForGlide(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p0

    .line 157
    invoke-virtual {p0}, Lcom/bumptech/glide/RequestManager;->downloadOnly()Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    .line 158
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    .line 159
    new-instance p1, Lcom/ds/daisi/util/GlideUtils$2;

    invoke-direct {p1, p2}, Lcom/ds/daisi/util/GlideUtils$2;-><init>(Lcom/bumptech/glide/request/RequestListener;)V

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->listener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/RequestBuilder;

    .line 174
    invoke-virtual {p0}, Lcom/bumptech/glide/RequestBuilder;->preload()Lcom/bumptech/glide/request/target/Target;

    :cond_0
    return-void
.end method
