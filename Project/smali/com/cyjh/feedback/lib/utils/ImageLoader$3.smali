.class Lcom/cyjh/feedback/lib/utils/ImageLoader$3;
.super Landroid/os/Handler;
.source "ImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyjh/feedback/lib/utils/ImageLoader;->imageLoader(Ljava/lang/String;Landroid/widget/ImageView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cyjh/feedback/lib/utils/ImageLoader;


# direct methods
.method constructor <init>(Lcom/cyjh/feedback/lib/utils/ImageLoader;)V
    .locals 0

    .line 175
    iput-object p1, p0, Lcom/cyjh/feedback/lib/utils/ImageLoader$3;->this$0:Lcom/cyjh/feedback/lib/utils/ImageLoader;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 179
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/cyjh/feedback/lib/utils/ImageLoader$ImageHolder;

    .line 180
    iget-object v0, p1, Lcom/cyjh/feedback/lib/utils/ImageLoader$ImageHolder;->bitmap:Landroid/graphics/Bitmap;

    .line 181
    iget-object v1, p1, Lcom/cyjh/feedback/lib/utils/ImageLoader$ImageHolder;->path:Ljava/lang/String;

    .line 182
    iget-object p1, p1, Lcom/cyjh/feedback/lib/utils/ImageLoader$ImageHolder;->imageView:Landroid/widget/ImageView;

    .line 183
    invoke-virtual {p1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 184
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method
