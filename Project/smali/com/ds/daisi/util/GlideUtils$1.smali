.class final Lcom/ds/daisi/util/GlideUtils$1;
.super Lcom/bumptech/glide/request/target/SimpleTarget;
.source "GlideUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ds/daisi/util/GlideUtils;->getBitmap(Landroid/content/Context;Ljava/lang/String;Lcom/bumptech/glide/request/RequestOptions;Lcom/ds/daisi/interfaces/GlideLoadBitmapCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/request/target/SimpleTarget<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/ds/daisi/interfaces/GlideLoadBitmapCallback;


# direct methods
.method constructor <init>(Lcom/ds/daisi/interfaces/GlideLoadBitmapCallback;)V
    .locals 0

    .line 142
    iput-object p1, p0, Lcom/ds/daisi/util/GlideUtils$1;->val$callback:Lcom/ds/daisi/interfaces/GlideLoadBitmapCallback;

    invoke-direct {p0}, Lcom/bumptech/glide/request/target/SimpleTarget;-><init>()V

    return-void
.end method


# virtual methods
.method public onResourceReady(Landroid/graphics/Bitmap;Lcom/bumptech/glide/request/transition/Transition;)V
    .locals 0
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/request/transition/Transition;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Lcom/bumptech/glide/request/transition/Transition<",
            "-",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 145
    iget-object p2, p0, Lcom/ds/daisi/util/GlideUtils$1;->val$callback:Lcom/ds/daisi/interfaces/GlideLoadBitmapCallback;

    if-eqz p2, :cond_0

    .line 146
    iget-object p2, p0, Lcom/ds/daisi/util/GlideUtils$1;->val$callback:Lcom/ds/daisi/interfaces/GlideLoadBitmapCallback;

    invoke-interface {p2, p1}, Lcom/ds/daisi/interfaces/GlideLoadBitmapCallback;->getBitmapCallback(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onResourceReady(Ljava/lang/Object;Lcom/bumptech/glide/request/transition/Transition;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/request/transition/Transition;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 142
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lcom/ds/daisi/util/GlideUtils$1;->onResourceReady(Landroid/graphics/Bitmap;Lcom/bumptech/glide/request/transition/Transition;)V

    return-void
.end method
