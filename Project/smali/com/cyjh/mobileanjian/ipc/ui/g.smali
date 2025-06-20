.class public final Lcom/cyjh/mobileanjian/ipc/ui/g;
.super Ljava/lang/Object;
.source "UiFactory.java"


# instance fields
.field a:Landroid/view/LayoutInflater;

.field private b:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/g;->b:Landroid/content/Context;

    .line 46
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/g;->b:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/g;->a:Landroid/view/LayoutInflater;

    return-void
.end method

.method private a(F)I
    .locals 4

    .line 75
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/g;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, p1

    float-to-double v0, v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v2

    double-to-int p1, v0

    return p1
.end method

.method private a(I)I
    .locals 2

    .line 51
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/g;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 52
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    int-to-float p1, p1

    .line 53
    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v0, v0

    const/high16 v1, 0x43200000    # 160.0f

    div-float/2addr v0, v1

    mul-float p1, p1, v0

    float-to-int p1, p1

    return p1
.end method

.method private a(II)Landroid/widget/LinearLayout$LayoutParams;
    .locals 0

    .line 59
    invoke-direct {p0, p1, p2}, Lcom/cyjh/mobileanjian/ipc/ui/g;->b(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method private a(ILjava/lang/String;)Landroid/widget/LinearLayout;
    .locals 3

    .line 345
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/g;->a:Landroid/view/LayoutInflater;

    sget v1, Lcom/cyjh/mqsdk/R$layout;->ui_show_tab_layout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 346
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setId(I)V

    .line 347
    invoke-virtual {v0, p2}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/TextView;
    .locals 1

    const/4 v0, -0x2

    .line 132
    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/cyjh/mobileanjian/ipc/ui/g;->a(Ljava/lang/String;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object p1

    return-object p1
.end method

.method public static a(Landroid/content/Context;)Lcom/cyjh/mobileanjian/ipc/ui/g;
    .locals 1

    .line 87
    new-instance v0, Lcom/cyjh/mobileanjian/ipc/ui/g;

    invoke-direct {v0, p0}, Lcom/cyjh/mobileanjian/ipc/ui/g;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private a(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/ui/k;
    .locals 2

    const/4 v0, -0x1

    const/4 v1, -0x2

    .line 92
    invoke-virtual {p0, p1, v0, v1}, Lcom/cyjh/mobileanjian/ipc/ui/g;->a(Ljava/lang/String;II)Lcom/cyjh/mobileanjian/ipc/ui/k;

    move-result-object p1

    return-object p1
.end method

.method private b(F)I
    .locals 4

    .line 81
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/g;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr p1, v0

    float-to-double v0, p1

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v2

    double-to-int p1, v0

    return p1
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/Button;
    .locals 1

    const/4 v0, -0x2

    .line 169
    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/cyjh/mobileanjian/ipc/ui/g;->b(Ljava/lang/String;Ljava/lang/String;II)Landroid/widget/Button;

    move-result-object p1

    return-object p1
.end method

.method private b(II)Landroid/widget/LinearLayout$LayoutParams;
    .locals 2

    .line 64
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    if-eq p1, v1, :cond_0

    if-eq p2, v1, :cond_0

    .line 67
    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 68
    iput p2, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    :cond_0
    const/16 p1, 0x8

    .line 70
    invoke-direct {p0, p1}, Lcom/cyjh/mobileanjian/ipc/ui/g;->a(I)I

    move-result p1

    const/4 p2, 0x0

    invoke-virtual {v0, p2, p2, p1, p2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    return-object v0
.end method

.method private c(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/EditText;
    .locals 1

    const/4 v0, -0x2

    .line 237
    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/cyjh/mobileanjian/ipc/ui/g;->d(Ljava/lang/String;Ljava/lang/String;II)Landroid/widget/EditText;

    move-result-object p1

    return-object p1
.end method

.method private e(Ljava/lang/String;Ljava/lang/String;II)Landroid/widget/TextView;
    .locals 3

    .line 142
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/g;->a:Landroid/view/LayoutInflater;

    sget v1, Lcom/cyjh/mqsdk/R$layout;->ui_show_text_view:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 144
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 145
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    invoke-direct {p0, p3, p4}, Lcom/cyjh/mobileanjian/ipc/ui/g;->b(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method private f(Ljava/lang/String;Ljava/lang/String;II)Landroid/widget/TextView;
    .locals 3

    .line 152
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/g;->a:Landroid/view/LayoutInflater;

    sget v1, Lcom/cyjh/mqsdk/R$layout;->ui_float_text_view:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 154
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 155
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 p2, -0x2

    invoke-direct {p1, p2, p2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    if-eq p3, p2, :cond_0

    if-eq p4, p2, :cond_0

    .line 159
    iput p3, p1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 160
    iput p4, p1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 164
    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method private g(Ljava/lang/String;Ljava/lang/String;II)Landroid/widget/Button;
    .locals 3

    .line 179
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/g;->a:Landroid/view/LayoutInflater;

    sget v1, Lcom/cyjh/mqsdk/R$layout;->ui_show_button:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 180
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 181
    invoke-virtual {v0, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    .line 182
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setAllCaps(Z)V

    .line 184
    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p2, p3, p4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 p3, 0x8

    .line 185
    invoke-direct {p0, p3}, Lcom/cyjh/mobileanjian/ipc/ui/g;->a(I)I

    move-result p3

    invoke-virtual {p2, p1, p1, p3, p1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 186
    invoke-virtual {v0, p2}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 187
    sget p1, Lcom/cyjh/mqsdk/R$drawable;->bg_default_button:I

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setBackgroundResource(I)V

    return-object v0
.end method

.method private h(Ljava/lang/String;Ljava/lang/String;II)Landroid/widget/Button;
    .locals 3

    .line 193
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/g;->a:Landroid/view/LayoutInflater;

    sget v1, Lcom/cyjh/mqsdk/R$layout;->ui_float_button:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 194
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 195
    invoke-virtual {v0, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    .line 196
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setAllCaps(Z)V

    if-nez p3, :cond_0

    if-nez p4, :cond_0

    .line 199
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 p2, -0x1

    const/16 p3, 0x64

    invoke-direct {p1, p2, p3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    goto :goto_0

    .line 203
    :cond_0
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p1, p3, p4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 206
    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;IILjava/lang/String;)Landroid/webkit/WebView;
    .locals 2

    const-string v0, "http://"

    .line 296
    invoke-virtual {p4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "https://"

    invoke-virtual {p4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 298
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 301
    :cond_0
    new-instance v0, Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/g;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 302
    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->setTag(Ljava/lang/Object;)V

    .line 303
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p1, p2, p3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 304
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 305
    invoke-virtual {v0, p4}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 306
    new-instance p1, Lcom/cyjh/mobileanjian/ipc/ui/g$1;

    invoke-direct {p1, p0}, Lcom/cyjh/mobileanjian/ipc/ui/g$1;-><init>(Lcom/cyjh/mobileanjian/ipc/ui/g;)V

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    return-object v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;IIZ)Landroid/widget/CheckBox;
    .locals 3

    .line 258
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/g;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/cyjh/mqsdk/R$layout;->ui_show_checkbox:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 261
    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 262
    invoke-virtual {v0, p2}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 263
    invoke-virtual {v0, p5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 2059
    invoke-direct {p0, p3, p4}, Lcom/cyjh/mobileanjian/ipc/ui/g;->b(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p1

    .line 264
    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x0

    .line 265
    invoke-virtual {v0, p1, p1, p1, p1}, Landroid/widget/CheckBox;->setPadding(IIII)V

    return-object v0
.end method

.method public final a(ILjava/lang/String;IILjava/lang/String;)Landroid/widget/ImageView;
    .locals 2

    .line 320
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/g;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 321
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setId(I)V

    .line 322
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 5059
    invoke-direct {p0, p3, p4}, Lcom/cyjh/mobileanjian/ipc/ui/g;->b(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p1

    .line 323
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 324
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    return-object v0
.end method

.method public final a(Ljava/lang/String;Ljava/util/List;III)Landroid/widget/RadioGroup;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;III)",
            "Landroid/widget/RadioGroup;"
        }
    .end annotation

    .line 272
    new-instance v0, Landroid/widget/RadioGroup;

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/g;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/RadioGroup;-><init>(Landroid/content/Context;)V

    .line 273
    invoke-virtual {v0, p1}, Landroid/widget/RadioGroup;->setTag(Ljava/lang/Object;)V

    .line 3059
    invoke-direct {p0, p4, p5}, Lcom/cyjh/mobileanjian/ipc/ui/g;->b(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p1

    .line 274
    invoke-virtual {v0, p1}, Landroid/widget/RadioGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x0

    const/4 p4, 0x0

    .line 276
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p5

    if-ge p4, p5, :cond_0

    .line 278
    iget-object p5, p0, Lcom/cyjh/mobileanjian/ipc/ui/g;->a:Landroid/view/LayoutInflater;

    sget v1, Lcom/cyjh/mqsdk/R$layout;->ui_show_radio_button:I

    const/4 v2, 0x0

    invoke-virtual {p5, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p5

    check-cast p5, Landroid/widget/RadioButton;

    .line 279
    invoke-virtual {p5, p4}, Landroid/widget/RadioButton;->setId(I)V

    .line 280
    invoke-interface {p2, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {p5, v1}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, -0x2

    .line 4059
    invoke-direct {p0, v1, v1}, Lcom/cyjh/mobileanjian/ipc/ui/g;->b(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    .line 281
    invoke-virtual {p5, v1}, Landroid/widget/RadioButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, 0x5

    .line 282
    invoke-direct {p0, v1}, Lcom/cyjh/mobileanjian/ipc/ui/g;->a(I)I

    move-result v2

    invoke-direct {p0, v1}, Lcom/cyjh/mobileanjian/ipc/ui/g;->a(I)I

    move-result v1

    invoke-virtual {p5, p1, v2, p1, v1}, Landroid/widget/RadioButton;->setPadding(IIII)V

    .line 283
    invoke-virtual {v0, p5}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    const/16 p5, 0x64

    if-ge p4, p5, :cond_0

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    .line 288
    :cond_0
    invoke-virtual {v0}, Landroid/widget/RadioGroup;->clearCheck()V

    .line 289
    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getChildCount()I

    move-result p2

    if-ge p3, p2, :cond_1

    move p1, p3

    .line 290
    :cond_1
    invoke-virtual {v0, p1}, Landroid/widget/RadioGroup;->check(I)V

    return-object v0
.end method

.method public final a(Ljava/lang/String;Ljava/util/List;I)Landroid/widget/Spinner;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)",
            "Landroid/widget/Spinner;"
        }
    .end annotation

    .line 331
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/g;->a:Landroid/view/LayoutInflater;

    sget v1, Lcom/cyjh/mqsdk/R$layout;->ui_show_spinner:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    .line 333
    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setTag(Ljava/lang/Object;)V

    const/4 p1, -0x2

    .line 6059
    invoke-direct {p0, p1, p1}, Lcom/cyjh/mobileanjian/ipc/ui/g;->b(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p1

    .line 334
    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 335
    new-instance p1, Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/g;->b:Landroid/content/Context;

    sget v2, Lcom/cyjh/mqsdk/R$layout;->ui_show_spinner_dropdown_item:I

    invoke-direct {p1, v1, v2, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 336
    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 337
    invoke-virtual {p1}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result p1

    if-ge p3, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    .line 338
    :goto_0
    invoke-virtual {v0, p3}, Landroid/widget/Spinner;->setSelection(I)V

    return-object v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;II)Landroid/widget/TextView;
    .locals 3

    .line 1142
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/g;->a:Landroid/view/LayoutInflater;

    sget v1, Lcom/cyjh/mqsdk/R$layout;->ui_show_text_view:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1144
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 1145
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1147
    invoke-direct {p0, p3, p4}, Lcom/cyjh/mobileanjian/ipc/ui/g;->b(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public final a(Ljava/lang/String;IIII)Lcom/cyjh/mobileanjian/ipc/ui/j;
    .locals 8

    .line 354
    new-instance v7, Lcom/cyjh/mobileanjian/ipc/ui/j;

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/g;->b:Landroid/content/Context;

    move-object v0, v7

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/cyjh/mobileanjian/ipc/ui/j;-><init>(Landroid/content/Context;Ljava/lang/String;IIII)V

    return-object v7
.end method

.method public final a(Ljava/lang/String;II)Lcom/cyjh/mobileanjian/ipc/ui/k;
    .locals 2

    .line 97
    new-instance v0, Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/g;->b:Landroid/content/Context;

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/cyjh/mobileanjian/ipc/ui/k;-><init>(Landroid/content/Context;Ljava/lang/String;II)V

    return-object v0
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;II)Landroid/widget/Button;
    .locals 3

    .line 1179
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/g;->a:Landroid/view/LayoutInflater;

    sget v1, Lcom/cyjh/mqsdk/R$layout;->ui_show_button:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 1180
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 1181
    invoke-virtual {v0, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    .line 1182
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setAllCaps(Z)V

    .line 1184
    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p2, p3, p4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 p3, 0x8

    .line 1185
    invoke-direct {p0, p3}, Lcom/cyjh/mobileanjian/ipc/ui/g;->a(I)I

    move-result p3

    invoke-virtual {p2, p1, p1, p3, p1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 1186
    invoke-virtual {v0, p2}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1187
    sget p1, Lcom/cyjh/mqsdk/R$drawable;->bg_default_button:I

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setBackgroundResource(I)V

    return-object v0
.end method

.method public final b(Ljava/lang/String;II)Landroid/widget/LinearLayout;
    .locals 2

    .line 103
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/g;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 105
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x1

    .line 106
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/high16 p1, -0x1000000

    .line 107
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    const/16 p2, 0xbb8

    .line 112
    :cond_0
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p1, p2, p3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;II)Landroid/widget/ImageView;
    .locals 3

    .line 211
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/g;->a:Landroid/view/LayoutInflater;

    sget v1, Lcom/cyjh/mqsdk/R$layout;->ui_show_image_view:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 212
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 215
    :try_start_0
    new-instance p1, Ljava/io/FileInputStream;

    invoke-direct {p1, p2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 216
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 219
    invoke-static {p1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    move-object p1, v2

    :goto_0
    if-eqz p1, :cond_0

    .line 222
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 224
    :cond_0
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 p2, -0x2

    invoke-direct {p1, p2, p2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    if-eq p3, p2, :cond_1

    if-eq p4, p2, :cond_1

    .line 227
    iput p3, p1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 228
    iput p4, p1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 232
    :cond_1
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public final c(Ljava/lang/String;II)Landroid/widget/LinearLayout;
    .locals 3

    .line 119
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/g;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/cyjh/mqsdk/R$layout;->ui_show_row:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    .line 121
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 123
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 125
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p1, p2, p3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 126
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public final d(Ljava/lang/String;Ljava/lang/String;II)Landroid/widget/EditText;
    .locals 3

    .line 242
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/g;->a:Landroid/view/LayoutInflater;

    sget v1, Lcom/cyjh/mqsdk/R$layout;->ui_show_edit_text:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 243
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 244
    invoke-virtual {v0, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 247
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p1, p3, p4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 p2, 0x8

    .line 248
    invoke-direct {p0, p2}, Lcom/cyjh/mobileanjian/ipc/ui/g;->a(I)I

    move-result p2

    const/4 p3, 0x0

    invoke-virtual {p1, p3, p3, p2, p3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 249
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 250
    sget p1, Lcom/cyjh/mqsdk/R$drawable;->bg_edit_text:I

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setBackgroundResource(I)V

    return-object v0
.end method
