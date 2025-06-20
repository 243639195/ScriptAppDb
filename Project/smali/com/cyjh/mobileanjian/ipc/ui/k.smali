.class public final Lcom/cyjh/mobileanjian/ipc/ui/k;
.super Ljava/lang/Object;
.source "UiShowLayout.java"


# static fields
.field private static final d:I = 0x1000

.field private static final e:Ljava/lang/String; = "first_row_tag"

.field private static final f:Ljava/lang/String; = "row_mark"

.field private static final v:I = 0x100

.field private static x:I


# instance fields
.field public a:Landroid/view/View$OnClickListener;

.field public b:Landroid/view/View$OnClickListener;

.field public c:Z

.field private g:Landroid/view/WindowManager;

.field private h:Landroid/view/WindowManager$LayoutParams;

.field private i:Lcom/cyjh/mobileanjian/ipc/view/ExToast;

.field private j:Landroid/content/Context;

.field private k:Landroid/widget/LinearLayout;

.field private l:Ljava/lang/String;

.field private m:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private n:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private o:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private p:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private q:Lcom/cyjh/mobileanjian/ipc/ui/g;

.field private r:Landroid/widget/LinearLayout;

.field private s:Landroid/widget/LinearLayout;

.field private t:Landroid/widget/TextView;

.field private u:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;",
            ">;"
        }
    .end annotation
.end field

.field private w:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;II)V
    .locals 7

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 53
    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/k;->l:Ljava/lang/String;

    .line 56
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/k;->m:Ljava/util/Set;

    .line 57
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/k;->n:Ljava/util/Set;

    .line 60
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/k;->o:Ljava/util/HashMap;

    .line 61
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/k;->p:Ljava/util/HashMap;

    const/4 v1, 0x0

    .line 69
    iput-boolean v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/k;->c:Z

    .line 71
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/k;->u:Ljava/util/ArrayList;

    .line 233
    new-instance v2, Lcom/cyjh/mobileanjian/ipc/ui/k$3;

    invoke-direct {v2, p0}, Lcom/cyjh/mobileanjian/ipc/ui/k$3;-><init>(Lcom/cyjh/mobileanjian/ipc/ui/k;)V

    iput-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/k;->w:Landroid/os/Handler;

    .line 75
    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/k;->j:Landroid/content/Context;

    .line 76
    invoke-static {p1}, Lcom/cyjh/mobileanjian/ipc/ui/g;->a(Landroid/content/Context;)Lcom/cyjh/mobileanjian/ipc/ui/g;

    move-result-object p1

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/k;->q:Lcom/cyjh/mobileanjian/ipc/ui/g;

    .line 1205
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/k;->j:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/k;->g:Landroid/view/WindowManager;

    .line 1206
    new-instance p1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/k;->h:Landroid/view/WindowManager$LayoutParams;

    .line 1208
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt p1, v2, :cond_0

    .line 1209
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/k;->h:Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x7f6

    iput v2, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    goto :goto_0

    .line 1211
    :cond_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt p1, v2, :cond_1

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-ge p1, v2, :cond_1

    .line 1213
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/k;->h:Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x7d5

    iput v2, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    goto :goto_0

    .line 1216
    :cond_1
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/k;->h:Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x7d2

    iput v2, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 1219
    :goto_0
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/k;->h:Landroid/view/WindowManager$LayoutParams;

    const/4 v2, 0x1

    iput v2, p1, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 1222
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/k;->h:Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x10

    iput v2, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1224
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/k;->h:Landroid/view/WindowManager$LayoutParams;

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1225
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/k;->h:Landroid/view/WindowManager$LayoutParams;

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1226
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/k;->h:Landroid/view/WindowManager$LayoutParams;

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 1227
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/k;->h:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1228
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/k;->h:Landroid/view/WindowManager$LayoutParams;

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 2151
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/k;->j:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    const/16 v2, 0x28

    .line 2152
    invoke-direct {p0, v2}, Lcom/cyjh/mobileanjian/ipc/ui/k;->c(I)I

    move-result v3

    add-int/2addr v3, p3

    iget v4, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    const/16 v5, 0xc8

    const/4 v6, -0x2

    if-lt v3, v4, :cond_2

    const/4 p3, -0x1

    goto :goto_1

    :cond_2
    if-lt p3, v6, :cond_3

    if-ltz p3, :cond_4

    .line 2156
    invoke-direct {p0, v5}, Lcom/cyjh/mobileanjian/ipc/ui/k;->c(I)I

    move-result v3

    if-ge p3, v3, :cond_4

    .line 2158
    :cond_3
    invoke-direct {p0, v5}, Lcom/cyjh/mobileanjian/ipc/ui/k;->c(I)I

    move-result p3

    .line 2161
    :cond_4
    :goto_1
    invoke-direct {p0, v2}, Lcom/cyjh/mobileanjian/ipc/ui/k;->c(I)I

    move-result v2

    add-int/2addr v2, p4

    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    if-lt v2, p1, :cond_5

    const/4 p4, -0x2

    goto :goto_2

    :cond_5
    if-lt p4, v6, :cond_6

    if-ltz p4, :cond_7

    .line 2165
    invoke-direct {p0, v5}, Lcom/cyjh/mobileanjian/ipc/ui/k;->c(I)I

    move-result p1

    if-ge p4, p1, :cond_7

    .line 2167
    :cond_6
    invoke-direct {p0, v5}, Lcom/cyjh/mobileanjian/ipc/ui/k;->c(I)I

    move-result p4

    .line 2170
    :cond_7
    :goto_2
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/k;->j:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 2171
    sget v2, Lcom/cyjh/mqsdk/R$layout;->layout_ui_show:I

    invoke-virtual {p1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/k;->s:Landroid/widget/LinearLayout;

    .line 2173
    sget v2, Lcom/cyjh/mqsdk/R$layout;->layout_display:I

    invoke-virtual {p1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    .line 2174
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, p3, p4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 2175
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2176
    iget-object p3, p0, Lcom/cyjh/mobileanjian/ipc/ui/k;->s:Landroid/widget/LinearLayout;

    const/16 p4, 0x11

    invoke-virtual {p3, p4}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 2177
    iget-object p3, p0, Lcom/cyjh/mobileanjian/ipc/ui/k;->s:Landroid/widget/LinearLayout;

    invoke-virtual {p3, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2179
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/k;->s:Landroid/widget/LinearLayout;

    sget p3, Lcom/cyjh/mqsdk/R$id;->title:I

    invoke-virtual {p1, p3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/k;->t:Landroid/widget/TextView;

    .line 2180
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/k;->s:Landroid/widget/LinearLayout;

    sget p3, Lcom/cyjh/mqsdk/R$id;->layout_user:I

    invoke-virtual {p1, p3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/k;->k:Landroid/widget/LinearLayout;

    .line 2182
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/k;->s:Landroid/widget/LinearLayout;

    sget p3, Lcom/cyjh/mqsdk/R$id;->exit:I

    invoke-virtual {p1, p3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance p3, Lcom/cyjh/mobileanjian/ipc/ui/k$1;

    invoke-direct {p3, p0}, Lcom/cyjh/mobileanjian/ipc/ui/k$1;-><init>(Lcom/cyjh/mobileanjian/ipc/ui/k;)V

    invoke-virtual {p1, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2192
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/k;->s:Landroid/widget/LinearLayout;

    sget p3, Lcom/cyjh/mqsdk/R$id;->next:I

    invoke-virtual {p1, p3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance p3, Lcom/cyjh/mobileanjian/ipc/ui/k$2;

    invoke-direct {p3, p0}, Lcom/cyjh/mobileanjian/ipc/ui/k$2;-><init>(Lcom/cyjh/mobileanjian/ipc/ui/k;)V

    invoke-virtual {p1, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3128
    iput-object p2, p0, Lcom/cyjh/mobileanjian/ipc/ui/k;->l:Ljava/lang/String;

    .line 3129
    invoke-virtual {p0, p2}, Lcom/cyjh/mobileanjian/ipc/ui/k;->a(Ljava/lang/String;)V

    const-string p1, "row_mark"

    .line 81
    invoke-virtual {p0, p1, p2, v1, v6}, Lcom/cyjh/mobileanjian/ipc/ui/k;->a(Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method static synthetic a(Lcom/cyjh/mobileanjian/ipc/ui/k;)Landroid/view/View$OnClickListener;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/cyjh/mobileanjian/ipc/ui/k;->a:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method private a(II)V
    .locals 6

    .line 151
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/k;->j:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/16 v1, 0x28

    .line 152
    invoke-direct {p0, v1}, Lcom/cyjh/mobileanjian/ipc/ui/k;->c(I)I

    move-result v2

    add-int/2addr v2, p1

    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    const/4 v4, -0x2

    const/16 v5, 0xc8

    if-lt v2, v3, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    if-lt p1, v4, :cond_1

    if-ltz p1, :cond_2

    .line 156
    invoke-direct {p0, v5}, Lcom/cyjh/mobileanjian/ipc/ui/k;->c(I)I

    move-result v2

    if-ge p1, v2, :cond_2

    .line 158
    :cond_1
    invoke-direct {p0, v5}, Lcom/cyjh/mobileanjian/ipc/ui/k;->c(I)I

    move-result p1

    .line 161
    :cond_2
    :goto_0
    invoke-direct {p0, v1}, Lcom/cyjh/mobileanjian/ipc/ui/k;->c(I)I

    move-result v1

    add-int/2addr v1, p2

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-lt v1, v0, :cond_3

    const/4 p2, -0x2

    goto :goto_1

    :cond_3
    if-lt p2, v4, :cond_4

    if-ltz p2, :cond_5

    .line 165
    invoke-direct {p0, v5}, Lcom/cyjh/mobileanjian/ipc/ui/k;->c(I)I

    move-result v0

    if-ge p2, v0, :cond_5

    .line 167
    :cond_4
    invoke-direct {p0, v5}, Lcom/cyjh/mobileanjian/ipc/ui/k;->c(I)I

    move-result p2

    .line 170
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/k;->j:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 171
    sget v1, Lcom/cyjh/mqsdk/R$layout;->layout_ui_show:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/k;->s:Landroid/widget/LinearLayout;

    .line 173
    sget v1, Lcom/cyjh/mqsdk/R$layout;->layout_display:I

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 174
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, p1, p2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 175
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 176
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/k;->s:Landroid/widget/LinearLayout;

    const/16 p2, 0x11

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 177
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/k;->s:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 179
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/k;->s:Landroid/widget/LinearLayout;

    sget p2, Lcom/cyjh/mqsdk/R$id;->title:I

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/k;->t:Landroid/widget/TextView;

    .line 180
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/k;->s:Landroid/widget/LinearLayout;

    sget p2, Lcom/cyjh/mqsdk/R$id;->layout_user:I

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/k;->k:Landroid/widget/LinearLayout;

    .line 182
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/k;->s:Landroid/widget/LinearLayout;

    sget p2, Lcom/cyjh/mqsdk/R$id;->exit:I

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/cyjh/mobileanjian/ipc/ui/k$1;

    invoke-direct {p2, p0}, Lcom/cyjh/mobileanjian/ipc/ui/k$1;-><init>(Lcom/cyjh/mobileanjian/ipc/ui/k;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/k;->s:Landroid/widget/LinearLayout;

    sget p2, Lcom/cyjh/mqsdk/R$id;->next:I

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/cyjh/mobileanjian/ipc/ui/k$2;

    invoke-direct {p2, p0}, Lcom/cyjh/mobileanjian/ipc/ui/k$2;-><init>(Lcom/cyjh/mobileanjian/ipc/ui/k;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic b(Lcom/cyjh/mobileanjian/ipc/ui/k;)Landroid/view/View$OnClickListener;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/cyjh/mobileanjian/ipc/ui/k;->b:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method private c(I)I
    .locals 2

    .line 271
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/k;->j:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 272
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    int-to-float p1, p1

    .line 273
    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v0, v0

    const/high16 v1, 0x43200000    # 160.0f

    div-float/2addr v0, v1

    mul-float p1, p1, v0

    float-to-int p1, p1

    return p1
.end method

.method static synthetic c(Lcom/cyjh/mobileanjian/ipc/ui/k;)Landroid/widget/LinearLayout;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/cyjh/mobileanjian/ipc/ui/k;->k:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method private c(Ljava/lang/String;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/k;->l:Ljava/lang/String;

    .line 129
    invoke-virtual {p0, p1}, Lcom/cyjh/mobileanjian/ipc/ui/k;->a(Ljava/lang/String;)V

    return-void
.end method

.method private f()Ljava/lang/String;
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/k;->l:Ljava/lang/String;

    return-object v0
.end method

.method private g()V
    .locals 2

    .line 205
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/k;->j:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/k;->g:Landroid/view/WindowManager;

    .line 206
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/k;->h:Landroid/view/WindowManager$LayoutParams;

    .line 208
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 209
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/k;->h:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x7f6

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    goto :goto_0

    .line 211
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_1

    .line 213
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/k;->h:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x7d5

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    goto :goto_0

    .line 216
    :cond_1
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/k;->h:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x7d2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 219
    :goto_0
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/k;->h:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 222
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/k;->h:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x10

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 224
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/k;->h:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 225
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/k;->h:Landroid/view/WindowManager$LayoutParams;

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 226
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/k;->h:Landroid/view/WindowManager$LayoutParams;

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 227
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/k;->h:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 228
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/k;->h:Landroid/view/WindowManager$LayoutParams;

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    return-void
.end method

.method private static h()Ljava/lang/String;
    .locals 3

    .line 362
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "first_row_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Lcom/cyjh/mobileanjian/ipc/ui/k;->x:I

    add-int/lit8 v2, v1, 0x1

    sput v2, Lcom/cyjh/mobileanjian/ipc/ui/k;->x:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/k;->t:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(I)V
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/k;->t:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public final a(Landroid/graphics/Typeface;I)V
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/k;->t:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 93
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/k;->t:Landroid/widget/TextView;

    int-to-float p2, p2

    const/4 v0, 0x2

    invoke-virtual {p1, v0, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void
.end method

.method public final a(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 390
    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/k;->a:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public final a(Landroid/view/View;Ljava/lang/String;)V
    .locals 2

    .line 299
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "row tag: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/k;->o:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/k;->l:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 302
    iget-object p2, p0, Lcom/cyjh/mobileanjian/ipc/ui/k;->r:Landroid/widget/LinearLayout;

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void

    .line 306
    :cond_0
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/k;->m:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 308
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/k;->k:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/k;->p:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;

    .line 309
    invoke-virtual {v0}, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;->getViewPager()Landroid/support/v4/view/ViewPager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    check-cast v0, Lcom/cyjh/mobileanjian/ipc/ui/l;

    .line 310
    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/k;->o:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, p1, p2, v1}, Lcom/cyjh/mobileanjian/ipc/ui/l;->a(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/k;->t:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final a(Ljava/lang/String;I)V
    .locals 4

    .line 316
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/k;->n:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 317
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/k;->j:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/cyjh/mqsdk/R$layout;->ui_show_sliding_layout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 319
    sget v1, Lcom/cyjh/mqsdk/R$id;->slidingTabLayout:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;

    .line 320
    invoke-virtual {v1, p1}, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x1

    .line 321
    invoke-virtual {v1, p1}, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;->setDistributeEvenly(Z)V

    .line 322
    new-array p1, p1, [I

    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/k;->j:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/cyjh/mqsdk/R$color;->ui_show_blue:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    const/4 v3, 0x0

    aput v2, p1, v3

    invoke-virtual {v1, p1}, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;->setSelectedIndicatorColors([I)V

    .line 323
    sget p1, Lcom/cyjh/mqsdk/R$drawable;->bg_tab_host:I

    invoke-virtual {v1, p1}, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;->setBackgroundResource(I)V

    .line 324
    new-instance p1, Lcom/cyjh/mobileanjian/ipc/ui/k$4;

    invoke-direct {p1, p0, v1}, Lcom/cyjh/mobileanjian/ipc/ui/k$4;-><init>(Lcom/cyjh/mobileanjian/ipc/ui/k;Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;)V

    invoke-virtual {v1, p1}, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    const/4 p1, -0x2

    if-ne p2, p1, :cond_0

    const/16 p1, 0xc8

    .line 348
    invoke-direct {p0, p1}, Lcom/cyjh/mobileanjian/ipc/ui/k;->c(I)I

    move-result p2

    .line 349
    :cond_0
    sget p1, Lcom/cyjh/mqsdk/R$id;->viewPager:I

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v4/view/ViewPager;

    .line 350
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v2}, Landroid/support/v4/view/ViewPager;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 351
    new-instance p2, Lcom/cyjh/mobileanjian/ipc/ui/l;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p2, v2, v3}, Lcom/cyjh/mobileanjian/ipc/ui/l;-><init>(Ljava/util/List;Ljava/util/List;)V

    .line 352
    invoke-virtual {p1, p2}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 353
    invoke-virtual {v1, p1}, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 354
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/k;->k:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 356
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/k;->u:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 3

    .line 4123
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/k;->l:Ljava/lang/String;

    .line 279
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/k;->q:Lcom/cyjh/mobileanjian/ipc/ui/g;

    const-string v1, "row_mark"

    invoke-virtual {v0, v1, p3, p4}, Lcom/cyjh/mobileanjian/ipc/ui/g;->c(Ljava/lang/String;II)Landroid/widget/LinearLayout;

    move-result-object p3

    iput-object p3, p0, Lcom/cyjh/mobileanjian/ipc/ui/k;->r:Landroid/widget/LinearLayout;

    .line 284
    iget-object p3, p0, Lcom/cyjh/mobileanjian/ipc/ui/k;->k:Landroid/widget/LinearLayout;

    iget-object p4, p0, Lcom/cyjh/mobileanjian/ipc/ui/k;->r:Landroid/widget/LinearLayout;

    invoke-virtual {p3, p4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 285
    iget-object p3, p0, Lcom/cyjh/mobileanjian/ipc/ui/k;->o:Ljava/util/HashMap;

    invoke-virtual {p3, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 287
    :cond_0
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/k;->m:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 289
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/k;->k:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/k;->p:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;

    .line 290
    invoke-virtual {v0}, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;->getViewPager()Landroid/support/v4/view/ViewPager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    check-cast v0, Lcom/cyjh/mobileanjian/ipc/ui/l;

    .line 5082
    iget-object v0, v0, Lcom/cyjh/mobileanjian/ipc/ui/l;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 5084
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5086
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/cyjh/mobileanjian/ipc/ui/g;->a(Landroid/content/Context;)Lcom/cyjh/mobileanjian/ipc/ui/g;

    move-result-object v2

    .line 5087
    invoke-virtual {v2, p1, p3, p4}, Lcom/cyjh/mobileanjian/ipc/ui/g;->c(Ljava/lang/String;II)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 5088
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 292
    :cond_2
    iget-object p3, p0, Lcom/cyjh/mobileanjian/ipc/ui/k;->o:Ljava/util/HashMap;

    invoke-virtual {p3, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-void
.end method

.method public final a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    .line 366
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/k;->n:Ljava/util/Set;

    invoke-interface {v0, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 5362
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "first_row_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Lcom/cyjh/mobileanjian/ipc/ui/k;->x:I

    add-int/lit8 v2, v1, 0x1

    sput v2, Lcom/cyjh/mobileanjian/ipc/ui/k;->x:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 371
    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/k;->m:Ljava/util/Set;

    invoke-interface {v1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 372
    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/k;->o:Ljava/util/HashMap;

    invoke-virtual {v1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/k;->p:Ljava/util/HashMap;

    invoke-virtual {v1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/k;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p3}, Landroid/widget/LinearLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;

    .line 376
    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/k;->q:Lcom/cyjh/mobileanjian/ipc/ui/g;

    .line 6345
    iget-object v1, v1, Lcom/cyjh/mobileanjian/ipc/ui/g;->a:Landroid/view/LayoutInflater;

    sget v2, Lcom/cyjh/mqsdk/R$layout;->ui_show_tab_layout:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 6346
    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->setId(I)V

    .line 6347
    invoke-virtual {v1, p2}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 377
    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->setId(I)V

    .line 380
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/k;->q:Lcom/cyjh/mobileanjian/ipc/ui/g;

    const/4 p2, -0x1

    const/4 v2, -0x2

    invoke-virtual {p1, v0, p2, v2}, Lcom/cyjh/mobileanjian/ipc/ui/g;->c(Ljava/lang/String;II)Landroid/widget/LinearLayout;

    move-result-object p1

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/k;->r:Landroid/widget/LinearLayout;

    .line 382
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/k;->r:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 7174
    iget-object p1, p3, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object p1

    check-cast p1, Lcom/cyjh/mobileanjian/ipc/ui/l;

    .line 8063
    iget-object p2, p1, Lcom/cyjh/mobileanjian/ipc/ui/l;->a:Ljava/util/List;

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8064
    iget-object p2, p1, Lcom/cyjh/mobileanjian/ipc/ui/l;->b:Ljava/util/List;

    invoke-interface {p2, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8065
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/ui/l;->notifyDataSetChanged()V

    .line 7176
    iget-object p2, p3, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p2, p1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 7177
    iget-object p1, p3, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p3, p1}, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    const/4 p1, 0x1

    return p1
.end method

.method public final b(Ljava/lang/String;)Landroid/view/View;
    .locals 4

    .line 134
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/k;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_3

    .line 137
    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/k;->u:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;

    .line 139
    invoke-virtual {v0}, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;->getViewPager()Landroid/support/v4/view/ViewPager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    check-cast v0, Lcom/cyjh/mobileanjian/ipc/ui/l;

    const/4 v2, 0x0

    .line 4096
    iget-object v0, v0, Lcom/cyjh/mobileanjian/ipc/ui/l;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 4098
    invoke-virtual {v2, p1}, Landroid/widget/LinearLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    :cond_2
    move-object v0, v2

    if-eqz v0, :cond_0

    :cond_3
    return-object v0
.end method

.method public final b()V
    .locals 4

    .line 249
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/k;->w:Landroid/os/Handler;

    const/16 v1, 0x100

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public final b(I)V
    .locals 4

    .line 113
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 114
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/16 p1, 0x8

    .line 117
    new-array p1, p1, [F

    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lcom/cyjh/mobileanjian/ipc/ui/k;->c(I)I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    aput v2, p1, v3

    invoke-direct {p0, v1}, Lcom/cyjh/mobileanjian/ipc/ui/k;->c(I)I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x1

    aput v2, p1, v3

    invoke-direct {p0, v1}, Lcom/cyjh/mobileanjian/ipc/ui/k;->c(I)I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x2

    aput v2, p1, v3

    invoke-direct {p0, v1}, Lcom/cyjh/mobileanjian/ipc/ui/k;->c(I)I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x3

    aput v2, p1, v3

    const/4 v2, 0x0

    aput v2, p1, v1

    const/4 v1, 0x5

    aput v2, p1, v1

    const/4 v1, 0x6

    aput v2, p1, v1

    const/4 v1, 0x7

    aput v2, p1, v1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    .line 118
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/k;->t:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final b(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 395
    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/k;->b:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public final c()V
    .locals 3

    const/4 v0, 0x1

    .line 254
    iput-boolean v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/k;->c:Z

    .line 255
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/k;->g:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/k;->s:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/k;->h:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final d()Z
    .locals 1

    .line 260
    iget-boolean v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/k;->c:Z

    return v0
.end method

.method public final e()V
    .locals 2

    const/4 v0, 0x0

    .line 265
    iput-boolean v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/k;->c:Z

    .line 266
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/k;->g:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/k;->s:Landroid/widget/LinearLayout;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    return-void
.end method
