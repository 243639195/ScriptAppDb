.class Lcom/cyjh/feedback/lib/adapter/ImageSelectAdapter$1;
.super Ljava/lang/Object;
.source "ImageSelectAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyjh/feedback/lib/adapter/ImageSelectAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cyjh/feedback/lib/adapter/ImageSelectAdapter;

.field final synthetic val$mHolder:Lcom/cyjh/feedback/lib/adapter/ImageSelectAdapter$ViewHolder;

.field final synthetic val$path:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/cyjh/feedback/lib/adapter/ImageSelectAdapter;Ljava/lang/String;Lcom/cyjh/feedback/lib/adapter/ImageSelectAdapter$ViewHolder;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/cyjh/feedback/lib/adapter/ImageSelectAdapter$1;->this$0:Lcom/cyjh/feedback/lib/adapter/ImageSelectAdapter;

    iput-object p2, p0, Lcom/cyjh/feedback/lib/adapter/ImageSelectAdapter$1;->val$path:Ljava/lang/String;

    iput-object p3, p0, Lcom/cyjh/feedback/lib/adapter/ImageSelectAdapter$1;->val$mHolder:Lcom/cyjh/feedback/lib/adapter/ImageSelectAdapter$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 82
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/cyjh/feedback/lib/adapter/ImageSelectAdapter$1;->val$path:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x400

    div-long/2addr v0, v2

    const-wide/16 v2, 0x800

    sub-long v4, v0, v2

    const-wide/16 v0, 0x0

    cmp-long p1, v4, v0

    const/4 v0, 0x1

    if-lez p1, :cond_0

    .line 84
    iget-object p1, p0, Lcom/cyjh/feedback/lib/adapter/ImageSelectAdapter$1;->this$0:Lcom/cyjh/feedback/lib/adapter/ImageSelectAdapter;

    invoke-static {p1}, Lcom/cyjh/feedback/lib/adapter/ImageSelectAdapter;->access$000(Lcom/cyjh/feedback/lib/adapter/ImageSelectAdapter;)Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lcom/cyjh/feedback/lib/adapter/ImageSelectAdapter$1;->this$0:Lcom/cyjh/feedback/lib/adapter/ImageSelectAdapter;

    invoke-static {v1}, Lcom/cyjh/feedback/lib/adapter/ImageSelectAdapter;->access$000(Lcom/cyjh/feedback/lib/adapter/ImageSelectAdapter;)Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/cyjh/feedback/libraryfeedbackinfo/R$string;->img_content_too_large:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 88
    :cond_0
    iget-object p1, p0, Lcom/cyjh/feedback/lib/adapter/ImageSelectAdapter$1;->this$0:Lcom/cyjh/feedback/lib/adapter/ImageSelectAdapter;

    invoke-static {p1}, Lcom/cyjh/feedback/lib/adapter/ImageSelectAdapter;->access$100(Lcom/cyjh/feedback/lib/adapter/ImageSelectAdapter;)Ljava/util/Set;

    move-result-object p1

    iget-object v1, p0, Lcom/cyjh/feedback/lib/adapter/ImageSelectAdapter$1;->val$path:Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 89
    iget-object p1, p0, Lcom/cyjh/feedback/lib/adapter/ImageSelectAdapter$1;->this$0:Lcom/cyjh/feedback/lib/adapter/ImageSelectAdapter;

    invoke-static {p1}, Lcom/cyjh/feedback/lib/adapter/ImageSelectAdapter;->access$100(Lcom/cyjh/feedback/lib/adapter/ImageSelectAdapter;)Ljava/util/Set;

    move-result-object p1

    iget-object v0, p0, Lcom/cyjh/feedback/lib/adapter/ImageSelectAdapter$1;->val$path:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 90
    iget-object p1, p0, Lcom/cyjh/feedback/lib/adapter/ImageSelectAdapter$1;->val$mHolder:Lcom/cyjh/feedback/lib/adapter/ImageSelectAdapter$ViewHolder;

    iget-object p1, p1, Lcom/cyjh/feedback/lib/adapter/ImageSelectAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 91
    iget-object p1, p0, Lcom/cyjh/feedback/lib/adapter/ImageSelectAdapter$1;->val$mHolder:Lcom/cyjh/feedback/lib/adapter/ImageSelectAdapter$ViewHolder;

    iget-object p1, p1, Lcom/cyjh/feedback/lib/adapter/ImageSelectAdapter$ViewHolder;->imageButton:Landroid/widget/ImageButton;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    .line 94
    :cond_1
    iget-object p1, p0, Lcom/cyjh/feedback/lib/adapter/ImageSelectAdapter$1;->this$0:Lcom/cyjh/feedback/lib/adapter/ImageSelectAdapter;

    invoke-static {p1}, Lcom/cyjh/feedback/lib/adapter/ImageSelectAdapter;->access$100(Lcom/cyjh/feedback/lib/adapter/ImageSelectAdapter;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p1

    const/4 v1, 0x3

    if-le p1, v1, :cond_2

    .line 95
    iget-object p1, p0, Lcom/cyjh/feedback/lib/adapter/ImageSelectAdapter$1;->this$0:Lcom/cyjh/feedback/lib/adapter/ImageSelectAdapter;

    invoke-static {p1}, Lcom/cyjh/feedback/lib/adapter/ImageSelectAdapter;->access$000(Lcom/cyjh/feedback/lib/adapter/ImageSelectAdapter;)Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lcom/cyjh/feedback/lib/adapter/ImageSelectAdapter$1;->this$0:Lcom/cyjh/feedback/lib/adapter/ImageSelectAdapter;

    invoke-static {v1}, Lcom/cyjh/feedback/lib/adapter/ImageSelectAdapter;->access$000(Lcom/cyjh/feedback/lib/adapter/ImageSelectAdapter;)Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/cyjh/feedback/libraryfeedbackinfo/R$string;->img_count_more:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 98
    :cond_2
    iget-object p1, p0, Lcom/cyjh/feedback/lib/adapter/ImageSelectAdapter$1;->this$0:Lcom/cyjh/feedback/lib/adapter/ImageSelectAdapter;

    invoke-static {p1}, Lcom/cyjh/feedback/lib/adapter/ImageSelectAdapter;->access$100(Lcom/cyjh/feedback/lib/adapter/ImageSelectAdapter;)Ljava/util/Set;

    move-result-object p1

    iget-object v0, p0, Lcom/cyjh/feedback/lib/adapter/ImageSelectAdapter$1;->val$path:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 99
    iget-object p1, p0, Lcom/cyjh/feedback/lib/adapter/ImageSelectAdapter$1;->val$mHolder:Lcom/cyjh/feedback/lib/adapter/ImageSelectAdapter$ViewHolder;

    iget-object p1, p1, Lcom/cyjh/feedback/lib/adapter/ImageSelectAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    const-string v0, "#77000000"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 100
    iget-object p1, p0, Lcom/cyjh/feedback/lib/adapter/ImageSelectAdapter$1;->val$mHolder:Lcom/cyjh/feedback/lib/adapter/ImageSelectAdapter$ViewHolder;

    iget-object p1, p1, Lcom/cyjh/feedback/lib/adapter/ImageSelectAdapter$ViewHolder;->imageButton:Landroid/widget/ImageButton;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 105
    :goto_0
    iget-object p1, p0, Lcom/cyjh/feedback/lib/adapter/ImageSelectAdapter$1;->this$0:Lcom/cyjh/feedback/lib/adapter/ImageSelectAdapter;

    invoke-static {p1}, Lcom/cyjh/feedback/lib/adapter/ImageSelectAdapter;->access$200(Lcom/cyjh/feedback/lib/adapter/ImageSelectAdapter;)Lcom/cyjh/feedback/lib/adapter/ImageSelectAdapter$OnSelectImgNumber;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 107
    iget-object p1, p0, Lcom/cyjh/feedback/lib/adapter/ImageSelectAdapter$1;->this$0:Lcom/cyjh/feedback/lib/adapter/ImageSelectAdapter;

    invoke-static {p1}, Lcom/cyjh/feedback/lib/adapter/ImageSelectAdapter;->access$200(Lcom/cyjh/feedback/lib/adapter/ImageSelectAdapter;)Lcom/cyjh/feedback/lib/adapter/ImageSelectAdapter$OnSelectImgNumber;

    move-result-object p1

    iget-object v0, p0, Lcom/cyjh/feedback/lib/adapter/ImageSelectAdapter$1;->this$0:Lcom/cyjh/feedback/lib/adapter/ImageSelectAdapter;

    invoke-static {v0}, Lcom/cyjh/feedback/lib/adapter/ImageSelectAdapter;->access$100(Lcom/cyjh/feedback/lib/adapter/ImageSelectAdapter;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/cyjh/feedback/lib/adapter/ImageSelectAdapter$OnSelectImgNumber;->isSelectImg(I)V

    :cond_3
    return-void
.end method
