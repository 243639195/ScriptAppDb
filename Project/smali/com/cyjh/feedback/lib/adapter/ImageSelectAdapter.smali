.class public Lcom/cyjh/feedback/lib/adapter/ImageSelectAdapter;
.super Landroid/widget/BaseAdapter;
.source "ImageSelectAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cyjh/feedback/lib/adapter/ImageSelectAdapter$OnSelectImgNumber;,
        Lcom/cyjh/feedback/lib/adapter/ImageSelectAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private mImgPaths:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;

.field private mSelectImgNumber:Lcom/cyjh/feedback/lib/adapter/ImageSelectAdapter$OnSelectImgNumber;

.field private mSetSelect:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 33
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 32
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/cyjh/feedback/lib/adapter/ImageSelectAdapter;->mSetSelect:Ljava/util/Set;

    .line 34
    iput-object p1, p0, Lcom/cyjh/feedback/lib/adapter/ImageSelectAdapter;->context:Landroid/content/Context;

    .line 35
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/cyjh/feedback/lib/adapter/ImageSelectAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 36
    iput-object p2, p0, Lcom/cyjh/feedback/lib/adapter/ImageSelectAdapter;->mImgPaths:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/cyjh/feedback/lib/adapter/ImageSelectAdapter;)Landroid/content/Context;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/cyjh/feedback/lib/adapter/ImageSelectAdapter;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/cyjh/feedback/lib/adapter/ImageSelectAdapter;)Ljava/util/Set;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/cyjh/feedback/lib/adapter/ImageSelectAdapter;->mSetSelect:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic access$200(Lcom/cyjh/feedback/lib/adapter/ImageSelectAdapter;)Lcom/cyjh/feedback/lib/adapter/ImageSelectAdapter$OnSelectImgNumber;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/cyjh/feedback/lib/adapter/ImageSelectAdapter;->mSelectImgNumber:Lcom/cyjh/feedback/lib/adapter/ImageSelectAdapter$OnSelectImgNumber;

    return-object p0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/cyjh/feedback/lib/adapter/ImageSelectAdapter;->mImgPaths:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/cyjh/feedback/lib/adapter/ImageSelectAdapter;->mImgPaths:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 58
    new-instance p2, Lcom/cyjh/feedback/lib/adapter/ImageSelectAdapter$ViewHolder;

    invoke-direct {p2, p0}, Lcom/cyjh/feedback/lib/adapter/ImageSelectAdapter$ViewHolder;-><init>(Lcom/cyjh/feedback/lib/adapter/ImageSelectAdapter;)V

    .line 59
    iget-object v1, p0, Lcom/cyjh/feedback/lib/adapter/ImageSelectAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v2, Lcom/cyjh/feedback/libraryfeedbackinfo/R$layout;->image_adapter_item:I

    invoke-virtual {v1, v2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    .line 60
    sget v1, Lcom/cyjh/feedback/libraryfeedbackinfo/R$id;->id_img_select_grid_item:I

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p2, Lcom/cyjh/feedback/lib/adapter/ImageSelectAdapter$ViewHolder;->imageButton:Landroid/widget/ImageButton;

    .line 61
    sget v1, Lcom/cyjh/feedback/libraryfeedbackinfo/R$id;->id_img_grid_item:I

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p2, Lcom/cyjh/feedback/lib/adapter/ImageSelectAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    .line 62
    invoke-virtual {p3, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 64
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/cyjh/feedback/lib/adapter/ImageSelectAdapter$ViewHolder;

    move-object v3, p3

    move-object p3, p2

    move-object p2, v3

    .line 67
    :goto_0
    iget-object v1, p2, Lcom/cyjh/feedback/lib/adapter/ImageSelectAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    sget v2, Lcom/cyjh/feedback/libraryfeedbackinfo/R$mipmap;->pictures_no:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 68
    iget-object v1, p0, Lcom/cyjh/feedback/lib/adapter/ImageSelectAdapter;->mImgPaths:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 70
    sget-object v1, Lcom/cyjh/feedback/lib/utils/ImageLoader$Type;->FILO:Lcom/cyjh/feedback/lib/utils/ImageLoader$Type;

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/cyjh/feedback/lib/utils/ImageLoader;->getInstance(Lcom/cyjh/feedback/lib/utils/ImageLoader$Type;I)Lcom/cyjh/feedback/lib/utils/ImageLoader;

    move-result-object v1

    iget-object v2, p2, Lcom/cyjh/feedback/lib/adapter/ImageSelectAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v1, p1, v2}, Lcom/cyjh/feedback/lib/utils/ImageLoader;->imageLoader(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 72
    iget-object v1, p2, Lcom/cyjh/feedback/lib/adapter/ImageSelectAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 73
    iget-object v1, p2, Lcom/cyjh/feedback/lib/adapter/ImageSelectAdapter$ViewHolder;->imageButton:Landroid/widget/ImageButton;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 75
    iget-object v1, p0, Lcom/cyjh/feedback/lib/adapter/ImageSelectAdapter;->mSetSelect:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 76
    iget-object v1, p2, Lcom/cyjh/feedback/lib/adapter/ImageSelectAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    const-string v2, "#77000000"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 77
    iget-object v1, p2, Lcom/cyjh/feedback/lib/adapter/ImageSelectAdapter$ViewHolder;->imageButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 79
    :cond_1
    iget-object v0, p2, Lcom/cyjh/feedback/lib/adapter/ImageSelectAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    new-instance v1, Lcom/cyjh/feedback/lib/adapter/ImageSelectAdapter$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/cyjh/feedback/lib/adapter/ImageSelectAdapter$1;-><init>(Lcom/cyjh/feedback/lib/adapter/ImageSelectAdapter;Ljava/lang/String;Lcom/cyjh/feedback/lib/adapter/ImageSelectAdapter$ViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p3
.end method

.method public getmSetSelect()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 115
    iget-object v0, p0, Lcom/cyjh/feedback/lib/adapter/ImageSelectAdapter;->mSetSelect:Ljava/util/Set;

    return-object v0
.end method

.method public setOnSelectImgNumber(Lcom/cyjh/feedback/lib/adapter/ImageSelectAdapter$OnSelectImgNumber;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/cyjh/feedback/lib/adapter/ImageSelectAdapter;->mSelectImgNumber:Lcom/cyjh/feedback/lib/adapter/ImageSelectAdapter$OnSelectImgNumber;

    return-void
.end method
