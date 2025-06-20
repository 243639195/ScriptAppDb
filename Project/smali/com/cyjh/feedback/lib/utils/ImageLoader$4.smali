.class Lcom/cyjh/feedback/lib/utils/ImageLoader$4;
.super Ljava/lang/Object;
.source "ImageLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


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

.field final synthetic val$mImageview:Landroid/widget/ImageView;

.field final synthetic val$path:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/cyjh/feedback/lib/utils/ImageLoader;Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 0

    .line 195
    iput-object p1, p0, Lcom/cyjh/feedback/lib/utils/ImageLoader$4;->this$0:Lcom/cyjh/feedback/lib/utils/ImageLoader;

    iput-object p2, p0, Lcom/cyjh/feedback/lib/utils/ImageLoader$4;->val$mImageview:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/cyjh/feedback/lib/utils/ImageLoader$4;->val$path:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 199
    iget-object v0, p0, Lcom/cyjh/feedback/lib/utils/ImageLoader$4;->this$0:Lcom/cyjh/feedback/lib/utils/ImageLoader;

    iget-object v1, p0, Lcom/cyjh/feedback/lib/utils/ImageLoader$4;->val$mImageview:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lcom/cyjh/feedback/lib/utils/ImageLoader;->access$500(Lcom/cyjh/feedback/lib/utils/ImageLoader;Landroid/widget/ImageView;)Lcom/cyjh/feedback/lib/utils/ImageLoader$ImageSize;

    move-result-object v0

    .line 201
    iget-object v1, p0, Lcom/cyjh/feedback/lib/utils/ImageLoader$4;->this$0:Lcom/cyjh/feedback/lib/utils/ImageLoader;

    iget-object v2, p0, Lcom/cyjh/feedback/lib/utils/ImageLoader$4;->val$path:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/cyjh/feedback/lib/utils/ImageLoader;->access$600(Lcom/cyjh/feedback/lib/utils/ImageLoader;Ljava/lang/String;Lcom/cyjh/feedback/lib/utils/ImageLoader$ImageSize;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 203
    iget-object v1, p0, Lcom/cyjh/feedback/lib/utils/ImageLoader$4;->this$0:Lcom/cyjh/feedback/lib/utils/ImageLoader;

    iget-object v2, p0, Lcom/cyjh/feedback/lib/utils/ImageLoader$4;->val$path:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/cyjh/feedback/lib/utils/ImageLoader;->access$700(Lcom/cyjh/feedback/lib/utils/ImageLoader;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 205
    iget-object v1, p0, Lcom/cyjh/feedback/lib/utils/ImageLoader$4;->this$0:Lcom/cyjh/feedback/lib/utils/ImageLoader;

    iget-object v2, p0, Lcom/cyjh/feedback/lib/utils/ImageLoader$4;->val$path:Ljava/lang/String;

    iget-object v3, p0, Lcom/cyjh/feedback/lib/utils/ImageLoader$4;->val$mImageview:Landroid/widget/ImageView;

    invoke-static {v1, v0, v2, v3}, Lcom/cyjh/feedback/lib/utils/ImageLoader;->access$800(Lcom/cyjh/feedback/lib/utils/ImageLoader;Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 207
    iget-object v0, p0, Lcom/cyjh/feedback/lib/utils/ImageLoader$4;->this$0:Lcom/cyjh/feedback/lib/utils/ImageLoader;

    invoke-static {v0}, Lcom/cyjh/feedback/lib/utils/ImageLoader;->access$300(Lcom/cyjh/feedback/lib/utils/ImageLoader;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    return-void
.end method
