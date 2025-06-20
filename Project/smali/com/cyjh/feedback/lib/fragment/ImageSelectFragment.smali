.class public Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;
.super Lcom/cyjh/feedback/lib/base/BaseFragment;
.source "ImageSelectFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final LOAD_DEFAULT:I = 0x110

.field private static final SEPERATOR:Ljava/lang/String; = ","


# instance fields
.field private mAdapter:Lcom/cyjh/feedback/lib/adapter/ImageSelectAdapter;

.field private mButtonSure:Landroid/widget/Button;

.field private mFolderList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/cyjh/feedback/lib/entities/FolderBean;",
            ">;"
        }
    .end annotation
.end field

.field private mGridView:Landroid/widget/GridView;

.field private mHandler:Landroid/os/Handler;

.field private mImg:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mImgDir:Ljava/io/File;

.field private mPicSize:I

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mdatas:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Lcom/cyjh/feedback/lib/base/BaseFragment;-><init>()V

    .line 65
    new-instance v0, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment$1;

    invoke-direct {v0, p0}, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment$1;-><init>(Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;)V

    iput-object v0, p0, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;)Landroid/app/ProgressDialog;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object p0
.end method

.method static synthetic access$100(Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;Lcom/cyjh/feedback/lib/entities/FolderBean;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;->data2View(Lcom/cyjh/feedback/lib/entities/FolderBean;)V

    return-void
.end method

.method static synthetic access$200(Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;)Landroid/widget/Button;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;->mButtonSure:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$300(Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;Ljava/lang/String;)Z
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;->filterImgBySuffix(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;)I
    .locals 0

    .line 39
    iget p0, p0, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;->mPicSize:I

    return p0
.end method

.method static synthetic access$402(Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;I)I
    .locals 0

    .line 39
    iput p1, p0, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;->mPicSize:I

    return p1
.end method

.method static synthetic access$502(Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;Ljava/io/File;)Ljava/io/File;
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;->mImgDir:Ljava/io/File;

    return-object p1
.end method

.method static synthetic access$600(Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;)Ljava/util/List;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;->mFolderList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$700(Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;Lcom/cyjh/feedback/lib/entities/FolderBean;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;->gridViewDatas(Lcom/cyjh/feedback/lib/entities/FolderBean;)V

    return-void
.end method

.method static synthetic access$800(Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;)Landroid/os/Handler;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private data2View(Lcom/cyjh/feedback/lib/entities/FolderBean;)V
    .locals 3

    .line 78
    invoke-virtual {p1}, Lcom/cyjh/feedback/lib/entities/FolderBean;->getDirPath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 79
    invoke-virtual {p0}, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    sget v1, Lcom/cyjh/feedback/libraryfeedbackinfo/R$string;->no_everything_picture:I

    invoke-virtual {p0, v1}, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    const-string p1, "folderBean.getDirPath()"

    .line 80
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/orhanobut/logger/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 83
    :cond_0
    iget-object p1, p0, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;->mImgDir:Ljava/io/File;

    const/4 v1, 0x1

    if-nez p1, :cond_1

    .line 84
    invoke-virtual {p0}, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    sget v2, Lcom/cyjh/feedback/libraryfeedbackinfo/R$string;->no_everything_picture:I

    invoke-virtual {p0, v2}, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    const-string p1, "mImgDir == null"

    .line 85
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/orhanobut/logger/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 88
    :cond_1
    iget-object p1, p0, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;->mImg:Ljava/util/List;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;->mImg:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-gtz p1, :cond_2

    .line 89
    invoke-virtual {p0}, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    sget v2, Lcom/cyjh/feedback/libraryfeedbackinfo/R$string;->no_everything_picture:I

    invoke-virtual {p0, v2}, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    const-string p1, "mImg != null && mImg.size() <= 0"

    .line 90
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/orhanobut/logger/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 93
    :cond_2
    new-instance p1, Lcom/cyjh/feedback/lib/adapter/ImageSelectAdapter;

    invoke-virtual {p0}, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;->mImg:Ljava/util/List;

    invoke-direct {p1, v0, v1}, Lcom/cyjh/feedback/lib/adapter/ImageSelectAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object p1, p0, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;->mAdapter:Lcom/cyjh/feedback/lib/adapter/ImageSelectAdapter;

    .line 94
    iget-object p1, p0, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;->mGridView:Landroid/widget/GridView;

    iget-object v0, p0, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;->mAdapter:Lcom/cyjh/feedback/lib/adapter/ImageSelectAdapter;

    invoke-virtual {p1, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 95
    iget-object p1, p0, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;->mAdapter:Lcom/cyjh/feedback/lib/adapter/ImageSelectAdapter;

    invoke-virtual {p1}, Lcom/cyjh/feedback/lib/adapter/ImageSelectAdapter;->notifyDataSetChanged()V

    .line 96
    invoke-direct {p0}, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;->initEvent()V

    return-void
.end method

.method private filterImgBySuffix(Ljava/lang/String;)Z
    .locals 2

    .line 266
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".jpg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".jpeg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 267
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string v0, ".png"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private gridViewDatas(Lcom/cyjh/feedback/lib/entities/FolderBean;)V
    .locals 11

    .line 234
    iget-object v0, p0, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;->mImg:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 236
    invoke-virtual {p1}, Lcom/cyjh/feedback/lib/entities/FolderBean;->getDirPath()Ljava/lang/String;

    move-result-object p1

    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 240
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    .line 241
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 244
    new-instance v5, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment$4;

    invoke-direct {v5, p0}, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment$4;-><init>(Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;)V

    invoke-virtual {v4, v5}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 252
    array-length v5, v4

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_0

    aget-object v7, v4, v6

    .line 253
    iget-object v8, p0, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;->mImg:Ljava/util/List;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v10, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private initData()V
    .locals 3

    const-string v0, "mounted"

    .line 139
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 140
    invoke-virtual {p0}, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/cyjh/feedback/libraryfeedbackinfo/R$string;->no_sdk:I

    invoke-virtual {p0, v1}, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    .line 143
    :cond_0
    invoke-virtual {p0}, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    sget v2, Lcom/cyjh/feedback/libraryfeedbackinfo/R$string;->loading_somethings:I

    invoke-virtual {p0, v2}, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 145
    new-instance v0, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment$3;

    invoke-direct {v0, p0}, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment$3;-><init>(Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;)V

    .line 225
    invoke-virtual {v0}, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment$3;->start()V

    return-void
.end method

.method private initEvent()V
    .locals 2

    .line 117
    iget-object v0, p0, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;->mAdapter:Lcom/cyjh/feedback/lib/adapter/ImageSelectAdapter;

    new-instance v1, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment$2;

    invoke-direct {v1, p0}, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment$2;-><init>(Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;)V

    invoke-virtual {v0, v1}, Lcom/cyjh/feedback/lib/adapter/ImageSelectAdapter;->setOnSelectImgNumber(Lcom/cyjh/feedback/lib/adapter/ImageSelectAdapter$OnSelectImgNumber;)V

    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 4

    .line 126
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;->mdatas:Ljava/util/ArrayList;

    .line 127
    sget v0, Lcom/cyjh/feedback/libraryfeedbackinfo/R$id;->grid_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;->mGridView:Landroid/widget/GridView;

    .line 128
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;->mImg:Ljava/util/List;

    .line 129
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;->mFolderList:Ljava/util/List;

    .line 130
    sget v0, Lcom/cyjh/feedback/libraryfeedbackinfo/R$id;->id_btn_sure:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;->mButtonSure:Landroid/widget/Button;

    .line 131
    iget-object p1, p0, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;->mButtonSure:Landroid/widget/Button;

    sget v0, Lcom/cyjh/feedback/libraryfeedbackinfo/R$string;->btn_sure:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;->mdatas:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 132
    iget-object p1, p0, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;->mButtonSure:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static newInstance()Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;
    .locals 1

    .line 100
    new-instance v0, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;

    invoke-direct {v0}, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;-><init>()V

    return-object v0
.end method


# virtual methods
.method public getFragmentLayoutId()I
    .locals 1

    .line 104
    sget v0, Lcom/cyjh/feedback/libraryfeedbackinfo/R$layout;->fragment_select_image:I

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 272
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 273
    sget v0, Lcom/cyjh/feedback/libraryfeedbackinfo/R$id;->id_btn_sure:I

    if-ne p1, v0, :cond_3

    .line 274
    iget-object p1, p0, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;->mAdapter:Lcom/cyjh/feedback/lib/adapter/ImageSelectAdapter;

    if-nez p1, :cond_0

    return-void

    .line 277
    :cond_0
    iget-object p1, p0, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;->mAdapter:Lcom/cyjh/feedback/lib/adapter/ImageSelectAdapter;

    invoke-virtual {p1}, Lcom/cyjh/feedback/lib/adapter/ImageSelectAdapter;->getmSetSelect()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p1

    if-gtz p1, :cond_1

    .line 278
    invoke-virtual {p0}, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    sget v0, Lcom/cyjh/feedback/libraryfeedbackinfo/R$string;->please_choose_photo:I

    invoke-virtual {p0, v0}, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 281
    :cond_1
    iget-object p1, p0, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;->mAdapter:Lcom/cyjh/feedback/lib/adapter/ImageSelectAdapter;

    invoke-virtual {p1}, Lcom/cyjh/feedback/lib/adapter/ImageSelectAdapter;->getmSetSelect()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 282
    iget-object v1, p0, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;->mdatas:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 284
    :cond_2
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 285
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "image"

    .line 286
    iget-object v2, p0, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;->mdatas:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v1, "bundle"

    .line 287
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 288
    invoke-virtual {p0}, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/app/FragmentActivity;->setResult(ILandroid/content/Intent;)V

    .line 289
    invoke-virtual {p0}, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->finish()V

    :cond_3
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 301
    invoke-super {p0}, Lcom/cyjh/feedback/lib/base/BaseFragment;->onPause()V

    .line 302
    const-class v0, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/analytics/MobclickAgent;->onPageEnd(Ljava/lang/String;)V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 295
    invoke-super {p0}, Lcom/cyjh/feedback/lib/base/BaseFragment;->onResume()V

    .line 296
    const-class v0, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/analytics/MobclickAgent;->onPageStart(Ljava/lang/String;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 109
    invoke-super {p0, p1, p2}, Lcom/cyjh/feedback/lib/base/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 110
    invoke-direct {p0, p1}, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;->initView(Landroid/view/View;)V

    .line 111
    invoke-direct {p0}, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;->initData()V

    return-void
.end method
