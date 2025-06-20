.class public Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;
.super Ljava/lang/Object;
.source "UipHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# static fields
.field public static final UIP_MESSAGE:I

.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;

.field private d:Lcom/cyjh/mobileanjian/ipc/uip/a;

.field private e:Lcom/cyjh/mobileanjian/ipc/uip/c;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/ScrollView;",
            ">;"
        }
    .end annotation
.end field

.field private g:Z

.field private h:Landroid/os/Handler;

.field private i:Lorg/json/JSONObject;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 52
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, ".uip.config.json"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 720
    new-instance v0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper$2;

    invoke-direct {v0, p0}, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper$2;-><init>(Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;)V

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->h:Landroid/os/Handler;

    .line 63
    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->b:Landroid/content/Context;

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/cyjh/mobileanjian/ipc/uip/IUipJsonParser;)Landroid/widget/LinearLayout;
    .locals 13

    if-nez p2, :cond_0

    .line 80
    new-instance p2, Lcom/cyjh/mobileanjian/ipc/uip/DefaultUipJsonParser;

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->b:Landroid/content/Context;

    invoke-direct {p2, v0}, Lcom/cyjh/mobileanjian/ipc/uip/DefaultUipJsonParser;-><init>(Landroid/content/Context;)V

    .line 83
    :cond_0
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 84
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 85
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v3, 0x1

    .line 86
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 87
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 89
    new-instance v4, Landroid/support/v4/view/ViewPager;

    iget-object v5, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->b:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;)V

    .line 90
    new-instance v5, Landroid/widget/TableLayout$LayoutParams;

    invoke-direct {v5, v2, v2}, Landroid/widget/TableLayout$LayoutParams;-><init>(II)V

    const/high16 v2, 0x3f800000    # 1.0f

    .line 91
    iput v2, v5, Landroid/widget/TableLayout$LayoutParams;->weight:F

    .line 92
    invoke-virtual {v4, v5}, Landroid/support/v4/view/ViewPager;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 93
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 95
    new-instance v2, Lcom/cyjh/mobileanjian/ipc/uip/a;

    iget-object v5, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->b:Landroid/content/Context;

    invoke-direct {v2, v5}, Lcom/cyjh/mobileanjian/ipc/uip/a;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->d:Lcom/cyjh/mobileanjian/ipc/uip/a;

    .line 96
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x2

    iget-object v6, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->d:Lcom/cyjh/mobileanjian/ipc/uip/a;

    const/high16 v7, 0x41a00000    # 20.0f

    invoke-virtual {v6, v7}, Lcom/cyjh/mobileanjian/ipc/uip/a;->a(F)I

    move-result v6

    invoke-direct {v2, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 97
    iget-object v5, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->d:Lcom/cyjh/mobileanjian/ipc/uip/a;

    invoke-virtual {v5, v2}, Lcom/cyjh/mobileanjian/ipc/uip/a;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 98
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->d:Lcom/cyjh/mobileanjian/ipc/uip/a;

    iget-object v5, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->d:Lcom/cyjh/mobileanjian/ipc/uip/a;

    const/high16 v6, 0x41200000    # 10.0f

    invoke-virtual {v5, v6}, Lcom/cyjh/mobileanjian/ipc/uip/a;->a(F)I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v2, v6, v5, v6, v6}, Lcom/cyjh/mobileanjian/ipc/uip/a;->setPadding(IIII)V

    .line 99
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->d:Lcom/cyjh/mobileanjian/ipc/uip/a;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 101
    new-instance v2, Ljava/util/ArrayList;

    const/16 v5, 0x20

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 102
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 104
    new-instance v7, Landroid/util/JsonReader;

    new-instance v8, Ljava/io/StringReader;

    invoke-direct {v8, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v7, v8}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V

    .line 107
    :try_start_0
    invoke-virtual {v7}, Landroid/util/JsonReader;->beginObject()V

    .line 108
    :goto_0
    invoke-virtual {v7}, Landroid/util/JsonReader;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_a

    .line 110
    invoke-virtual {v7}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object p1

    .line 111
    iget-object v8, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->b:Landroid/content/Context;

    sget v9, Lcom/cyjh/mqsdk/R$string;->ui_activity:I

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 114
    invoke-virtual {v7}, Landroid/util/JsonReader;->beginObject()V

    .line 115
    :cond_1
    :goto_1
    invoke-virtual {v7}, Landroid/util/JsonReader;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 117
    invoke-virtual {v7}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object p1

    .line 120
    new-instance v8, Landroid/widget/LinearLayout;

    iget-object v9, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->b:Landroid/content/Context;

    invoke-direct {v8, v9}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 121
    invoke-virtual {v8, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 122
    invoke-virtual {v8, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 123
    new-instance v9, Landroid/widget/ScrollView;

    iget-object v10, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->b:Landroid/content/Context;

    invoke-direct {v9, v10}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 124
    invoke-virtual {v9, p1}, Landroid/widget/ScrollView;->setTag(Ljava/lang/Object;)V

    .line 125
    invoke-virtual {v9, v1}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 126
    invoke-virtual {v9, v8}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 128
    invoke-virtual {v7}, Landroid/util/JsonReader;->beginObject()V

    .line 129
    :goto_2
    invoke-virtual {v7}, Landroid/util/JsonReader;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_8

    .line 131
    invoke-virtual {v7}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v10

    .line 132
    iget-object v11, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->b:Landroid/content/Context;

    sget v12, Lcom/cyjh/mqsdk/R$string;->ui_linearlayout:I

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 134
    invoke-interface {p2, v7}, Lcom/cyjh/mobileanjian/ipc/uip/IUipJsonParser;->parseHorizontalLinearLayout(Landroid/util/JsonReader;)Lcom/cyjh/mobileanjian/ipc/uip/b;

    move-result-object v10

    .line 135
    invoke-virtual {v8, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_2

    .line 136
    :cond_2
    iget-object v11, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->b:Landroid/content/Context;

    sget v12, Lcom/cyjh/mqsdk/R$string;->ui_textview:I

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 138
    invoke-interface {p2, v7}, Lcom/cyjh/mobileanjian/ipc/uip/IUipJsonParser;->parseTextView(Landroid/util/JsonReader;)Landroid/widget/TextView;

    move-result-object v10

    .line 139
    invoke-virtual {v8, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_2

    .line 140
    :cond_3
    iget-object v11, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->b:Landroid/content/Context;

    sget v12, Lcom/cyjh/mqsdk/R$string;->ui_button:I

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 142
    invoke-interface {p2, v7}, Lcom/cyjh/mobileanjian/ipc/uip/IUipJsonParser;->parseButton(Landroid/util/JsonReader;)Landroid/widget/Button;

    move-result-object v10

    .line 143
    invoke-virtual {v8, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_2

    .line 144
    :cond_4
    iget-object v11, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->b:Landroid/content/Context;

    sget v12, Lcom/cyjh/mqsdk/R$string;->ui_edittext:I

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 146
    invoke-interface {p2, v7}, Lcom/cyjh/mobileanjian/ipc/uip/IUipJsonParser;->parseEditText(Landroid/util/JsonReader;)Landroid/widget/EditText;

    move-result-object v10

    .line 147
    invoke-virtual {v8, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_2

    .line 148
    :cond_5
    iget-object v11, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->b:Landroid/content/Context;

    sget v12, Lcom/cyjh/mqsdk/R$string;->ui_checkbox:I

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 150
    invoke-interface {p2, v7}, Lcom/cyjh/mobileanjian/ipc/uip/IUipJsonParser;->parseCheckBox(Landroid/util/JsonReader;)Landroid/widget/CheckBox;

    move-result-object v10

    .line 151
    invoke-virtual {v8, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_2

    .line 152
    :cond_6
    iget-object v11, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->b:Landroid/content/Context;

    sget v12, Lcom/cyjh/mqsdk/R$string;->ui_spinner:I

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 154
    invoke-interface {p2, v7}, Lcom/cyjh/mobileanjian/ipc/uip/IUipJsonParser;->parseSpinner(Landroid/util/JsonReader;)Landroid/widget/Spinner;

    move-result-object v10

    .line 155
    invoke-virtual {v8, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_2

    .line 158
    :cond_7
    invoke-virtual {v7}, Landroid/util/JsonReader;->skipValue()V

    goto/16 :goto_2

    .line 162
    :cond_8
    invoke-virtual {v7}, Landroid/util/JsonReader;->endObject()V

    .line 164
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    if-ge v8, v5, :cond_1

    .line 167
    invoke-interface {v6, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 168
    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 171
    :cond_9
    invoke-virtual {v7}, Landroid/util/JsonReader;->endObject()V

    goto/16 :goto_0

    .line 174
    :cond_a
    invoke-virtual {v7}, Landroid/util/JsonReader;->endObject()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 181
    invoke-static {p1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_3

    :catch_1
    move-exception p1

    .line 177
    invoke-static {p1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 184
    :goto_3
    new-instance p1, Lcom/cyjh/mobileanjian/ipc/uip/f;

    invoke-direct {p1, v2, v6}, Lcom/cyjh/mobileanjian/ipc/uip/f;-><init>(Ljava/util/List;Ljava/util/List;)V

    .line 185
    invoke-virtual {v4, p1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 186
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->d:Lcom/cyjh/mobileanjian/ipc/uip/a;

    invoke-virtual {p1, v4}, Lcom/cyjh/mobileanjian/ipc/uip/a;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 189
    invoke-virtual {p0, v2}, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->bindEvent(Ljava/util/List;)V

    .line 190
    sget-object p1, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->a:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->saveToConfigFile(Ljava/lang/String;)V

    return-object v0
.end method

.method private a(Landroid/view/ViewGroup;)V
    .locals 4

    .line 486
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_5

    .line 488
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 489
    instance-of v3, v2, Lcom/cyjh/mobileanjian/ipc/uip/b;

    if-nez v3, :cond_3

    instance-of v3, v2, Landroid/widget/LinearLayout;

    if-eqz v3, :cond_0

    goto :goto_1

    .line 494
    :cond_0
    sget v3, Lcom/cyjh/mqsdk/R$id;->uip_function_key:I

    invoke-virtual {v2, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 499
    instance-of v3, v2, Landroid/widget/Spinner;

    if-eqz v3, :cond_1

    .line 501
    check-cast v2, Landroid/widget/Spinner;

    .line 502
    invoke-virtual {v2, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    goto :goto_2

    .line 503
    :cond_1
    instance-of v3, v2, Landroid/widget/CheckBox;

    if-eqz v3, :cond_2

    .line 505
    check-cast v2, Landroid/widget/CheckBox;

    .line 506
    invoke-virtual {v2, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    .line 507
    :cond_2
    instance-of v3, v2, Landroid/widget/Button;

    if-eqz v3, :cond_4

    .line 509
    check-cast v2, Landroid/widget/Button;

    .line 510
    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    .line 491
    :cond_3
    :goto_1
    check-cast v2, Landroid/view/ViewGroup;

    invoke-direct {p0, v2}, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->a(Landroid/view/ViewGroup;)V

    :cond_4
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method static synthetic a(Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 3523
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 3525
    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 3527
    invoke-virtual {v2, p1}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v2

    .line 3528
    instance-of v3, v2, Landroid/widget/Spinner;

    if-eqz v3, :cond_2

    .line 3530
    check-cast v2, Landroid/widget/Spinner;

    .line 3531
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->b:Landroid/content/Context;

    sget v1, Lcom/cyjh/mqsdk/R$string;->ui_spinner_defaultitem:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 3532
    invoke-virtual {v2}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object p1

    check-cast p1, Lcom/cyjh/mobileanjian/ipc/uip/e;

    .line 4022
    iget-object p1, p1, Lcom/cyjh/mobileanjian/ipc/uip/e;->a:Ljava/util/List;

    .line 3534
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 3535
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3537
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 3539
    :cond_1
    iget-object p0, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->b:Landroid/content/Context;

    sget p1, Lcom/cyjh/mqsdk/R$string;->ui_spinner_items:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_1

    .line 3542
    :cond_2
    instance-of v3, v2, Landroid/widget/CheckBox;

    if-eqz v3, :cond_3

    .line 3544
    check-cast v2, Landroid/widget/CheckBox;

    .line 3545
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->b:Landroid/content/Context;

    sget v1, Lcom/cyjh/mqsdk/R$string;->ui_checkbox_hintcontent:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2}, Landroid/widget/CheckBox;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3546
    iget-object p0, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->b:Landroid/content/Context;

    sget p1, Lcom/cyjh/mqsdk/R$string;->ui_checkbox_checked:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    goto :goto_1

    .line 3548
    :cond_3
    instance-of v3, v2, Landroid/widget/Button;

    if-eqz v3, :cond_4

    .line 3550
    check-cast v2, Landroid/widget/Button;

    .line 3551
    iget-object p0, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->b:Landroid/content/Context;

    sget p1, Lcom/cyjh/mqsdk/R$string;->ui_textview_textcontent:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 3553
    :cond_4
    instance-of v3, v2, Landroid/widget/EditText;

    if-eqz v3, :cond_5

    .line 3555
    check-cast v2, Landroid/widget/EditText;

    .line 3556
    iget-object p0, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->b:Landroid/content/Context;

    sget p1, Lcom/cyjh/mqsdk/R$string;->ui_edittext_defaultcontent:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 3558
    :cond_5
    instance-of v3, v2, Landroid/widget/TextView;

    if-eqz v3, :cond_0

    .line 3560
    check-cast v2, Landroid/widget/TextView;

    .line 3561
    iget-object p0, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->b:Landroid/content/Context;

    sget p1, Lcom/cyjh/mqsdk/R$string;->ui_textview_textcontent:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3566
    :cond_6
    :goto_1
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Builder;

    move-result-object p0

    sget-object p1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Command_Type;->RSP_MSG:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Command_Type;

    .line 3567
    invoke-virtual {p0, p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Builder;->setCommand(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Command_Type;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Builder;

    move-result-object p0

    const/4 p1, 0x1

    .line 3568
    invoke-virtual {p0, p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Builder;->setIsSuccess(Z)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Builder;

    move-result-object p0

    .line 3569
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Builder;->setUipAttributeData(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Builder;

    move-result-object p0

    .line 3570
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand;

    move-result-object p0

    .line 3572
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object p0

    invoke-static {p0}, Lcom/cyjh/mobileanjian/ipc/uip/UipEventStub;->UiRequestReturn(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic a(Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 4577
    new-instance v0, Landroid/util/JsonReader;

    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p2}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V

    .line 4581
    :try_start_0
    iget-object p2, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->f:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 4583
    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    .line 4584
    instance-of v2, v1, Landroid/widget/Spinner;

    if-eqz v2, :cond_6

    .line 4586
    check-cast v1, Landroid/widget/Spinner;

    const/4 p1, -0x1

    const/4 p2, 0x0

    .line 4589
    invoke-virtual {v0}, Landroid/util/JsonReader;->beginObject()V

    .line 4590
    :goto_0
    invoke-virtual {v0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 4592
    invoke-virtual {v0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v2

    .line 4593
    iget-object v3, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->b:Landroid/content/Context;

    sget v4, Lcom/cyjh/mqsdk/R$string;->ui_spinner_defaultitem:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4595
    invoke-virtual {v0}, Landroid/util/JsonReader;->nextInt()I

    move-result p1

    goto :goto_0

    .line 4596
    :cond_1
    iget-object v3, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->b:Landroid/content/Context;

    sget v4, Lcom/cyjh/mqsdk/R$string;->ui_spinner_items:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 4598
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 4599
    invoke-virtual {v0}, Landroid/util/JsonReader;->beginArray()V

    .line 4600
    :goto_1
    invoke-virtual {v0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4602
    invoke-virtual {v0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 4604
    :cond_2
    invoke-virtual {v0}, Landroid/util/JsonReader;->endArray()V

    goto :goto_0

    .line 4608
    :cond_3
    invoke-virtual {v0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_0

    .line 4611
    :cond_4
    invoke-virtual {v0}, Landroid/util/JsonReader;->endObject()V

    if-eqz p2, :cond_5

    .line 4614
    new-instance v0, Lcom/cyjh/mobileanjian/ipc/uip/e;

    iget-object p0, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->b:Landroid/content/Context;

    invoke-direct {v0, p0, p2}, Lcom/cyjh/mobileanjian/ipc/uip/e;-><init>(Landroid/content/Context;Ljava/util/List;)V

    const p0, 0x1090009

    .line 4615
    invoke-virtual {v0, p0}, Lcom/cyjh/mobileanjian/ipc/uip/e;->setDropDownViewResource(I)V

    .line 4616
    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    :cond_5
    if-ltz p1, :cond_13

    .line 4618
    invoke-virtual {v1}, Landroid/widget/Spinner;->getCount()I

    move-result p0

    if-ge p1, p0, :cond_13

    .line 4620
    invoke-virtual {v1, p1}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_6

    .line 4624
    :cond_6
    instance-of v2, v1, Landroid/widget/CheckBox;

    if-eqz v2, :cond_a

    .line 4626
    check-cast v1, Landroid/widget/CheckBox;

    .line 4628
    invoke-virtual {v0}, Landroid/util/JsonReader;->beginObject()V

    .line 4629
    :goto_2
    invoke-virtual {v0}, Landroid/util/JsonReader;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 4631
    invoke-virtual {v0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object p1

    .line 4632
    iget-object p2, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->b:Landroid/content/Context;

    sget v2, Lcom/cyjh/mqsdk/R$string;->ui_checkbox_hintcontent:I

    invoke-virtual {p2, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 4634
    invoke-virtual {v0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 4635
    :cond_7
    iget-object p2, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->b:Landroid/content/Context;

    sget v2, Lcom/cyjh/mqsdk/R$string;->ui_checkbox_checked:I

    invoke-virtual {p2, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 4637
    invoke-virtual {v0}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result p1

    invoke-virtual {v1, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_2

    .line 4641
    :cond_8
    invoke-virtual {v0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_2

    .line 4644
    :cond_9
    invoke-virtual {v0}, Landroid/util/JsonReader;->endObject()V

    goto/16 :goto_6

    .line 4646
    :cond_a
    instance-of v2, v1, Landroid/widget/Button;

    if-eqz v2, :cond_d

    .line 4648
    check-cast v1, Landroid/widget/Button;

    .line 4649
    invoke-virtual {v0}, Landroid/util/JsonReader;->beginObject()V

    .line 4650
    :goto_3
    invoke-virtual {v0}, Landroid/util/JsonReader;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_c

    .line 4652
    invoke-virtual {v0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object p1

    .line 4653
    iget-object p2, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->b:Landroid/content/Context;

    sget v2, Lcom/cyjh/mqsdk/R$string;->ui_textview_textcontent:I

    invoke-virtual {p2, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 4655
    invoke-virtual {v0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 4659
    :cond_b
    invoke-virtual {v0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_3

    .line 4662
    :cond_c
    invoke-virtual {v0}, Landroid/util/JsonReader;->endObject()V

    goto/16 :goto_6

    .line 4664
    :cond_d
    instance-of v2, v1, Landroid/widget/EditText;

    if-eqz v2, :cond_10

    .line 4666
    check-cast v1, Landroid/widget/EditText;

    .line 4668
    invoke-virtual {v0}, Landroid/util/JsonReader;->beginObject()V

    .line 4669
    :goto_4
    invoke-virtual {v0}, Landroid/util/JsonReader;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_f

    .line 4671
    invoke-virtual {v0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object p1

    .line 4672
    iget-object p2, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->b:Landroid/content/Context;

    sget v2, Lcom/cyjh/mqsdk/R$string;->ui_edittext_defaultcontent:I

    invoke-virtual {p2, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 4674
    invoke-virtual {v0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 4678
    :cond_e
    invoke-virtual {v0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_4

    .line 4681
    :cond_f
    invoke-virtual {v0}, Landroid/util/JsonReader;->endObject()V

    goto :goto_6

    .line 4683
    :cond_10
    instance-of v2, v1, Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 4685
    check-cast v1, Landroid/widget/TextView;

    .line 4687
    invoke-virtual {v0}, Landroid/util/JsonReader;->beginObject()V

    .line 4688
    :goto_5
    invoke-virtual {v0}, Landroid/util/JsonReader;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_12

    .line 4690
    invoke-virtual {v0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object p1

    .line 4691
    iget-object p2, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->b:Landroid/content/Context;

    sget v2, Lcom/cyjh/mqsdk/R$string;->ui_textview_textcontent:I

    invoke-virtual {p2, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 4693
    invoke-virtual {v0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 4697
    :cond_11
    invoke-virtual {v0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_5

    .line 4700
    :cond_12
    invoke-virtual {v0}, Landroid/util/JsonReader;->endObject()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    move-exception p0

    .line 4710
    invoke-static {p0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_6

    :catch_1
    move-exception p0

    .line 4706
    invoke-static {p0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 4713
    :cond_13
    :goto_6
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Builder;

    move-result-object p0

    sget-object p1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Command_Type;->RSP_MSG:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Command_Type;

    .line 4714
    invoke-virtual {p0, p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Builder;->setCommand(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Command_Type;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Builder;

    move-result-object p0

    const/4 p1, 0x1

    .line 4715
    invoke-virtual {p0, p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Builder;->setIsSuccess(Z)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Builder;

    move-result-object p0

    .line 4716
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand;

    move-result-object p0

    .line 4717
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object p0

    invoke-static {p0}, Lcom/cyjh/mobileanjian/ipc/uip/UipEventStub;->UiRequestReturn(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 523
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 525
    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 527
    invoke-virtual {v2, p1}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v2

    .line 528
    instance-of v3, v2, Landroid/widget/Spinner;

    if-eqz v3, :cond_2

    .line 530
    check-cast v2, Landroid/widget/Spinner;

    .line 531
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->b:Landroid/content/Context;

    sget v1, Lcom/cyjh/mqsdk/R$string;->ui_spinner_defaultitem:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 532
    invoke-virtual {v2}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object p1

    check-cast p1, Lcom/cyjh/mobileanjian/ipc/uip/e;

    .line 3022
    iget-object p1, p1, Lcom/cyjh/mobileanjian/ipc/uip/e;->a:Ljava/util/List;

    .line 534
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 535
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 537
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 539
    :cond_1
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->b:Landroid/content/Context;

    sget v2, Lcom/cyjh/mqsdk/R$string;->ui_spinner_items:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_1

    .line 542
    :cond_2
    instance-of v3, v2, Landroid/widget/CheckBox;

    if-eqz v3, :cond_3

    .line 544
    check-cast v2, Landroid/widget/CheckBox;

    .line 545
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->b:Landroid/content/Context;

    sget v1, Lcom/cyjh/mqsdk/R$string;->ui_checkbox_hintcontent:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2}, Landroid/widget/CheckBox;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 546
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->b:Landroid/content/Context;

    sget v1, Lcom/cyjh/mqsdk/R$string;->ui_checkbox_checked:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    goto :goto_1

    .line 548
    :cond_3
    instance-of v3, v2, Landroid/widget/Button;

    if-eqz v3, :cond_4

    .line 550
    check-cast v2, Landroid/widget/Button;

    .line 551
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->b:Landroid/content/Context;

    sget v1, Lcom/cyjh/mqsdk/R$string;->ui_textview_textcontent:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 553
    :cond_4
    instance-of v3, v2, Landroid/widget/EditText;

    if-eqz v3, :cond_5

    .line 555
    check-cast v2, Landroid/widget/EditText;

    .line 556
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->b:Landroid/content/Context;

    sget v1, Lcom/cyjh/mqsdk/R$string;->ui_edittext_defaultcontent:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 558
    :cond_5
    instance-of v3, v2, Landroid/widget/TextView;

    if-eqz v3, :cond_0

    .line 560
    check-cast v2, Landroid/widget/TextView;

    .line 561
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->b:Landroid/content/Context;

    sget v1, Lcom/cyjh/mqsdk/R$string;->ui_textview_textcontent:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 566
    :cond_6
    :goto_1
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Builder;

    move-result-object p1

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Command_Type;->RSP_MSG:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Command_Type;

    .line 567
    invoke-virtual {p1, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Builder;->setCommand(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Command_Type;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Builder;

    move-result-object p1

    const/4 v1, 0x1

    .line 568
    invoke-virtual {p1, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Builder;->setIsSuccess(Z)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Builder;

    move-result-object p1

    .line 569
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Builder;->setUipAttributeData(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Builder;

    move-result-object p1

    .line 570
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand;

    move-result-object p1

    .line 572
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object p1

    invoke-static {p1}, Lcom/cyjh/mobileanjian/ipc/uip/UipEventStub;->UiRequestReturn(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 577
    new-instance v0, Landroid/util/JsonReader;

    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p2}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V

    .line 581
    :try_start_0
    iget-object p2, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->f:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 583
    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    .line 584
    instance-of v2, v1, Landroid/widget/Spinner;

    if-eqz v2, :cond_6

    .line 586
    check-cast v1, Landroid/widget/Spinner;

    const/4 p1, -0x1

    const/4 p2, 0x0

    .line 589
    invoke-virtual {v0}, Landroid/util/JsonReader;->beginObject()V

    .line 590
    :goto_0
    invoke-virtual {v0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 592
    invoke-virtual {v0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v2

    .line 593
    iget-object v3, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->b:Landroid/content/Context;

    sget v4, Lcom/cyjh/mqsdk/R$string;->ui_spinner_defaultitem:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 595
    invoke-virtual {v0}, Landroid/util/JsonReader;->nextInt()I

    move-result p1

    goto :goto_0

    .line 596
    :cond_1
    iget-object v3, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->b:Landroid/content/Context;

    sget v4, Lcom/cyjh/mqsdk/R$string;->ui_spinner_items:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 598
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 599
    invoke-virtual {v0}, Landroid/util/JsonReader;->beginArray()V

    .line 600
    :goto_1
    invoke-virtual {v0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 602
    invoke-virtual {v0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 604
    :cond_2
    invoke-virtual {v0}, Landroid/util/JsonReader;->endArray()V

    goto :goto_0

    .line 608
    :cond_3
    invoke-virtual {v0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_0

    .line 611
    :cond_4
    invoke-virtual {v0}, Landroid/util/JsonReader;->endObject()V

    if-eqz p2, :cond_5

    .line 614
    new-instance v0, Lcom/cyjh/mobileanjian/ipc/uip/e;

    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->b:Landroid/content/Context;

    invoke-direct {v0, v2, p2}, Lcom/cyjh/mobileanjian/ipc/uip/e;-><init>(Landroid/content/Context;Ljava/util/List;)V

    const p2, 0x1090009

    .line 615
    invoke-virtual {v0, p2}, Lcom/cyjh/mobileanjian/ipc/uip/e;->setDropDownViewResource(I)V

    .line 616
    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    :cond_5
    if-ltz p1, :cond_13

    .line 618
    invoke-virtual {v1}, Landroid/widget/Spinner;->getCount()I

    move-result p2

    if-ge p1, p2, :cond_13

    .line 620
    invoke-virtual {v1, p1}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_6

    .line 624
    :cond_6
    instance-of v2, v1, Landroid/widget/CheckBox;

    if-eqz v2, :cond_a

    .line 626
    check-cast v1, Landroid/widget/CheckBox;

    .line 628
    invoke-virtual {v0}, Landroid/util/JsonReader;->beginObject()V

    .line 629
    :goto_2
    invoke-virtual {v0}, Landroid/util/JsonReader;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 631
    invoke-virtual {v0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object p1

    .line 632
    iget-object p2, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->b:Landroid/content/Context;

    sget v2, Lcom/cyjh/mqsdk/R$string;->ui_checkbox_hintcontent:I

    invoke-virtual {p2, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 634
    invoke-virtual {v0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 635
    :cond_7
    iget-object p2, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->b:Landroid/content/Context;

    sget v2, Lcom/cyjh/mqsdk/R$string;->ui_checkbox_checked:I

    invoke-virtual {p2, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 637
    invoke-virtual {v0}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result p1

    invoke-virtual {v1, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_2

    .line 641
    :cond_8
    invoke-virtual {v0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_2

    .line 644
    :cond_9
    invoke-virtual {v0}, Landroid/util/JsonReader;->endObject()V

    goto/16 :goto_6

    .line 646
    :cond_a
    instance-of v2, v1, Landroid/widget/Button;

    if-eqz v2, :cond_d

    .line 648
    check-cast v1, Landroid/widget/Button;

    .line 649
    invoke-virtual {v0}, Landroid/util/JsonReader;->beginObject()V

    .line 650
    :goto_3
    invoke-virtual {v0}, Landroid/util/JsonReader;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_c

    .line 652
    invoke-virtual {v0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object p1

    .line 653
    iget-object p2, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->b:Landroid/content/Context;

    sget v2, Lcom/cyjh/mqsdk/R$string;->ui_textview_textcontent:I

    invoke-virtual {p2, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 655
    invoke-virtual {v0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 659
    :cond_b
    invoke-virtual {v0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_3

    .line 662
    :cond_c
    invoke-virtual {v0}, Landroid/util/JsonReader;->endObject()V

    goto/16 :goto_6

    .line 664
    :cond_d
    instance-of v2, v1, Landroid/widget/EditText;

    if-eqz v2, :cond_10

    .line 666
    check-cast v1, Landroid/widget/EditText;

    .line 668
    invoke-virtual {v0}, Landroid/util/JsonReader;->beginObject()V

    .line 669
    :goto_4
    invoke-virtual {v0}, Landroid/util/JsonReader;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_f

    .line 671
    invoke-virtual {v0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object p1

    .line 672
    iget-object p2, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->b:Landroid/content/Context;

    sget v2, Lcom/cyjh/mqsdk/R$string;->ui_edittext_defaultcontent:I

    invoke-virtual {p2, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 674
    invoke-virtual {v0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 678
    :cond_e
    invoke-virtual {v0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_4

    .line 681
    :cond_f
    invoke-virtual {v0}, Landroid/util/JsonReader;->endObject()V

    goto :goto_6

    .line 683
    :cond_10
    instance-of v2, v1, Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 685
    check-cast v1, Landroid/widget/TextView;

    .line 687
    invoke-virtual {v0}, Landroid/util/JsonReader;->beginObject()V

    .line 688
    :goto_5
    invoke-virtual {v0}, Landroid/util/JsonReader;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_12

    .line 690
    invoke-virtual {v0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object p1

    .line 691
    iget-object p2, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->b:Landroid/content/Context;

    sget v2, Lcom/cyjh/mqsdk/R$string;->ui_textview_textcontent:I

    invoke-virtual {p2, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 693
    invoke-virtual {v0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 697
    :cond_11
    invoke-virtual {v0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_5

    .line 700
    :cond_12
    invoke-virtual {v0}, Landroid/util/JsonReader;->endObject()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    move-exception p1

    .line 710
    invoke-static {p1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_6

    :catch_1
    move-exception p1

    .line 706
    invoke-static {p1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 713
    :cond_13
    :goto_6
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Builder;

    move-result-object p1

    sget-object p2, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Command_Type;->RSP_MSG:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Command_Type;

    .line 714
    invoke-virtual {p1, p2}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Builder;->setCommand(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Command_Type;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Builder;

    move-result-object p1

    const/4 p2, 0x1

    .line 715
    invoke-virtual {p1, p2}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Builder;->setIsSuccess(Z)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Builder;

    move-result-object p1

    .line 716
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand;

    move-result-object p1

    .line 717
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object p1

    invoke-static {p1}, Lcom/cyjh/mobileanjian/ipc/uip/UipEventStub;->UiRequestReturn(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method private b(Ljava/lang/String;Lcom/cyjh/mobileanjian/ipc/uip/IUipJsonParser;)Landroid/widget/LinearLayout;
    .locals 13

    if-nez p2, :cond_0

    .line 199
    new-instance p2, Lcom/cyjh/mobileanjian/ipc/uip/DefaultUipJsonParser;

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->b:Landroid/content/Context;

    invoke-direct {p2, v0}, Lcom/cyjh/mobileanjian/ipc/uip/DefaultUipJsonParser;-><init>(Landroid/content/Context;)V

    .line 202
    :cond_0
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 203
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 204
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v3, 0x1

    .line 205
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 207
    new-instance v4, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;

    iget-object v5, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->b:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->c:Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;

    .line 208
    iget-object v4, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->c:Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x2

    invoke-direct {v5, v2, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5}, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 209
    iget-object v4, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->c:Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;

    new-array v5, v3, [I

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->b:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/cyjh/mqsdk/R$color;->ui_show_blue:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    aput v7, v5, v6

    invoke-virtual {v4, v5}, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;->setSelectedIndicatorColors([I)V

    .line 210
    iget-object v4, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->c:Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;

    invoke-virtual {v4, v3}, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;->setDistributeEvenly(Z)V

    .line 211
    iget-object v4, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->c:Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 213
    new-instance v4, Landroid/support/v4/view/ViewPager;

    iget-object v5, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->b:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;)V

    .line 214
    new-instance v5, Landroid/widget/TableLayout$LayoutParams;

    invoke-direct {v5, v2, v2}, Landroid/widget/TableLayout$LayoutParams;-><init>(II)V

    const/high16 v2, 0x3f800000    # 1.0f

    .line 215
    iput v2, v5, Landroid/widget/TableLayout$LayoutParams;->weight:F

    .line 216
    invoke-virtual {v4, v5}, Landroid/support/v4/view/ViewPager;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 217
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 219
    new-instance v2, Ljava/util/ArrayList;

    const/16 v5, 0x20

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 220
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 222
    new-instance v7, Landroid/util/JsonReader;

    new-instance v8, Ljava/io/StringReader;

    invoke-direct {v8, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v7, v8}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V

    .line 225
    :try_start_0
    invoke-virtual {v7}, Landroid/util/JsonReader;->beginObject()V

    .line 226
    :goto_0
    invoke-virtual {v7}, Landroid/util/JsonReader;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_a

    .line 228
    invoke-virtual {v7}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object p1

    .line 229
    iget-object v8, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->b:Landroid/content/Context;

    sget v9, Lcom/cyjh/mqsdk/R$string;->ui_activity:I

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 232
    invoke-virtual {v7}, Landroid/util/JsonReader;->beginObject()V

    .line 233
    :cond_1
    :goto_1
    invoke-virtual {v7}, Landroid/util/JsonReader;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 235
    invoke-virtual {v7}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object p1

    .line 238
    new-instance v8, Landroid/widget/LinearLayout;

    iget-object v9, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->b:Landroid/content/Context;

    invoke-direct {v8, v9}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 239
    invoke-virtual {v8, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 240
    invoke-virtual {v8, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 241
    new-instance v9, Landroid/widget/ScrollView;

    iget-object v10, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->b:Landroid/content/Context;

    invoke-direct {v9, v10}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 242
    invoke-virtual {v9, p1}, Landroid/widget/ScrollView;->setTag(Ljava/lang/Object;)V

    .line 243
    invoke-virtual {v9, v1}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 244
    invoke-virtual {v9, v8}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    const/high16 v10, 0x20000

    .line 245
    invoke-virtual {v9, v10}, Landroid/widget/ScrollView;->setDescendantFocusability(I)V

    .line 246
    invoke-virtual {v9, v3}, Landroid/widget/ScrollView;->setFocusable(Z)V

    .line 247
    invoke-virtual {v9, v3}, Landroid/widget/ScrollView;->setFocusableInTouchMode(Z)V

    .line 248
    new-instance v10, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper$1;

    invoke-direct {v10, p0}, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper$1;-><init>(Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;)V

    invoke-virtual {v9, v10}, Landroid/widget/ScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 257
    invoke-virtual {v7}, Landroid/util/JsonReader;->beginObject()V

    .line 258
    :goto_2
    invoke-virtual {v7}, Landroid/util/JsonReader;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_8

    .line 260
    invoke-virtual {v7}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v10

    .line 261
    iget-object v11, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->b:Landroid/content/Context;

    sget v12, Lcom/cyjh/mqsdk/R$string;->ui_linearlayout:I

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 263
    invoke-interface {p2, v7}, Lcom/cyjh/mobileanjian/ipc/uip/IUipJsonParser;->parseHorizontalLinearLayout(Landroid/util/JsonReader;)Lcom/cyjh/mobileanjian/ipc/uip/b;

    move-result-object v10

    .line 264
    invoke-virtual {v8, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_2

    .line 265
    :cond_2
    iget-object v11, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->b:Landroid/content/Context;

    sget v12, Lcom/cyjh/mqsdk/R$string;->ui_textview:I

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 267
    invoke-interface {p2, v7}, Lcom/cyjh/mobileanjian/ipc/uip/IUipJsonParser;->parseTextView(Landroid/util/JsonReader;)Landroid/widget/TextView;

    move-result-object v10

    .line 268
    invoke-virtual {v8, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_2

    .line 269
    :cond_3
    iget-object v11, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->b:Landroid/content/Context;

    sget v12, Lcom/cyjh/mqsdk/R$string;->ui_button:I

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 271
    invoke-interface {p2, v7}, Lcom/cyjh/mobileanjian/ipc/uip/IUipJsonParser;->parseButton(Landroid/util/JsonReader;)Landroid/widget/Button;

    move-result-object v10

    .line 272
    invoke-virtual {v8, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_2

    .line 273
    :cond_4
    iget-object v11, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->b:Landroid/content/Context;

    sget v12, Lcom/cyjh/mqsdk/R$string;->ui_edittext:I

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 275
    invoke-interface {p2, v7}, Lcom/cyjh/mobileanjian/ipc/uip/IUipJsonParser;->parseEditText(Landroid/util/JsonReader;)Landroid/widget/EditText;

    move-result-object v10

    .line 276
    invoke-virtual {v8, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_2

    .line 277
    :cond_5
    iget-object v11, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->b:Landroid/content/Context;

    sget v12, Lcom/cyjh/mqsdk/R$string;->ui_checkbox:I

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 279
    invoke-interface {p2, v7}, Lcom/cyjh/mobileanjian/ipc/uip/IUipJsonParser;->parseCheckBox(Landroid/util/JsonReader;)Landroid/widget/CheckBox;

    move-result-object v10

    .line 280
    invoke-virtual {v8, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_2

    .line 281
    :cond_6
    iget-object v11, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->b:Landroid/content/Context;

    sget v12, Lcom/cyjh/mqsdk/R$string;->ui_spinner:I

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 283
    invoke-interface {p2, v7}, Lcom/cyjh/mobileanjian/ipc/uip/IUipJsonParser;->parseSpinner(Landroid/util/JsonReader;)Landroid/widget/Spinner;

    move-result-object v10

    .line 284
    invoke-virtual {v8, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_2

    .line 287
    :cond_7
    invoke-virtual {v7}, Landroid/util/JsonReader;->skipValue()V

    goto/16 :goto_2

    .line 291
    :cond_8
    invoke-virtual {v7}, Landroid/util/JsonReader;->endObject()V

    .line 293
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    if-ge v8, v5, :cond_1

    .line 296
    invoke-interface {v6, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 297
    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 300
    :cond_9
    invoke-virtual {v7}, Landroid/util/JsonReader;->endObject()V

    goto/16 :goto_0

    .line 303
    :cond_a
    invoke-virtual {v7}, Landroid/util/JsonReader;->endObject()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 310
    invoke-static {p1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_3

    :catch_1
    move-exception p1

    .line 306
    invoke-static {p1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 313
    :goto_3
    new-instance p1, Lcom/cyjh/mobileanjian/ipc/uip/f;

    invoke-direct {p1, v2, v6}, Lcom/cyjh/mobileanjian/ipc/uip/f;-><init>(Ljava/util/List;Ljava/util/List;)V

    .line 314
    invoke-virtual {v4, p1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 315
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->c:Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;

    invoke-virtual {p1, v4}, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 318
    invoke-virtual {p0, v2}, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->bindEvent(Ljava/util/List;)V

    .line 319
    sget-object p1, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->a:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->saveToConfigFile(Ljava/lang/String;)V

    return-object v0
.end method

.method private b(Landroid/view/ViewGroup;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 847
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_5

    .line 849
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 850
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 851
    instance-of v4, v2, Landroid/widget/LinearLayout;

    if-nez v4, :cond_3

    instance-of v4, v2, Lcom/cyjh/mobileanjian/ipc/uip/b;

    if-eqz v4, :cond_0

    goto :goto_1

    .line 854
    :cond_0
    instance-of v4, v2, Landroid/widget/CheckBox;

    if-eqz v4, :cond_1

    .line 856
    check-cast v2, Landroid/widget/CheckBox;

    .line 857
    iget-object v4, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->i:Lorg/json/JSONObject;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-virtual {v4, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    goto :goto_2

    .line 858
    :cond_1
    instance-of v4, v2, Landroid/widget/Spinner;

    if-eqz v4, :cond_2

    .line 860
    check-cast v2, Landroid/widget/Spinner;

    .line 861
    iget-object v4, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->i:Lorg/json/JSONObject;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    invoke-virtual {v4, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_2

    .line 862
    :cond_2
    instance-of v4, v2, Landroid/widget/EditText;

    if-eqz v4, :cond_4

    .line 864
    check-cast v2, Landroid/widget/EditText;

    .line 865
    iget-object v4, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->i:Lorg/json/JSONObject;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2

    .line 853
    :cond_3
    :goto_1
    check-cast v2, Landroid/view/ViewGroup;

    invoke-direct {p0, v2}, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->b(Landroid/view/ViewGroup;)V

    :cond_4
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method private c(Ljava/lang/String;Lcom/cyjh/mobileanjian/ipc/uip/IUipJsonParser;)Landroid/widget/LinearLayout;
    .locals 7

    if-nez p2, :cond_0

    .line 328
    new-instance p2, Lcom/cyjh/mobileanjian/ipc/uip/DefaultUipJsonParser;

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->b:Landroid/content/Context;

    invoke-direct {p2, v0}, Lcom/cyjh/mobileanjian/ipc/uip/DefaultUipJsonParser;-><init>(Landroid/content/Context;)V

    .line 332
    :cond_0
    new-instance v0, Lcom/cyjh/mobileanjian/ipc/uip/c;

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/cyjh/mobileanjian/ipc/uip/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->e:Lcom/cyjh/mobileanjian/ipc/uip/c;

    .line 334
    new-instance v0, Landroid/util/JsonReader;

    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V

    const/4 p1, 0x0

    .line 337
    :try_start_0
    invoke-virtual {v0}, Landroid/util/JsonReader;->beginObject()V

    .line 338
    :goto_0
    invoke-virtual {v0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 340
    invoke-virtual {v0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v1

    .line 341
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->b:Landroid/content/Context;

    sget v3, Lcom/cyjh/mqsdk/R$string;->ui_activity:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 344
    invoke-virtual {v0}, Landroid/util/JsonReader;->beginObject()V

    const/4 v1, 0x0

    :goto_1
    const/16 v2, 0x20

    if-ge v1, v2, :cond_8

    .line 345
    invoke-virtual {v0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 347
    invoke-virtual {v0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v2

    .line 350
    iget-object v3, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->e:Lcom/cyjh/mobileanjian/ipc/uip/c;

    .line 1102
    new-instance v4, Landroid/widget/RadioButton;

    invoke-virtual {v3}, Lcom/cyjh/mobileanjian/ipc/uip/c;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    .line 1103
    sget-object v5, Lcom/cyjh/mobileanjian/ipc/uip/c;->a:[I

    iget v6, v3, Lcom/cyjh/mobileanjian/ipc/uip/c;->g:I

    aget v5, v5, v6

    invoke-virtual {v4, v5}, Landroid/widget/RadioButton;->setId(I)V

    .line 1107
    iget v5, v3, Lcom/cyjh/mobileanjian/ipc/uip/c;->d:I

    invoke-virtual {v4, p1, p1, p1, v5}, Landroid/widget/RadioButton;->setPadding(IIII)V

    .line 1109
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v4, v5}, Landroid/widget/RadioButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1110
    invoke-virtual {v3}, Lcom/cyjh/mobileanjian/ipc/uip/c;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/cyjh/mqsdk/R$color;->selector_tab:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/RadioButton;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 1111
    invoke-virtual {v4, v2}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    const/4 v5, 0x1

    .line 1112
    invoke-virtual {v4, v5}, Landroid/widget/RadioButton;->setLines(I)V

    .line 1113
    sget-object v6, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v4, v6}, Landroid/widget/RadioButton;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1114
    iget-object v6, v3, Lcom/cyjh/mobileanjian/ipc/uip/c;->b:Landroid/widget/RadioGroup;

    invoke-virtual {v6, v4}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    .line 1116
    new-instance v4, Landroid/widget/ScrollView;

    invoke-virtual {v3}, Lcom/cyjh/mobileanjian/ipc/uip/c;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v4, v6}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    iput-object v4, v3, Lcom/cyjh/mobileanjian/ipc/uip/c;->f:Landroid/widget/ScrollView;

    .line 1122
    iget-object v4, v3, Lcom/cyjh/mobileanjian/ipc/uip/c;->f:Landroid/widget/ScrollView;

    const/high16 v6, 0x20000

    invoke-virtual {v4, v6}, Landroid/widget/ScrollView;->setDescendantFocusability(I)V

    .line 1123
    iget-object v4, v3, Lcom/cyjh/mobileanjian/ipc/uip/c;->f:Landroid/widget/ScrollView;

    invoke-virtual {v4, v5}, Landroid/widget/ScrollView;->setFocusable(Z)V

    .line 1124
    iget-object v4, v3, Lcom/cyjh/mobileanjian/ipc/uip/c;->f:Landroid/widget/ScrollView;

    invoke-virtual {v4, v5}, Landroid/widget/ScrollView;->setFocusableInTouchMode(Z)V

    .line 1125
    iget-object v4, v3, Lcom/cyjh/mobileanjian/ipc/uip/c;->f:Landroid/widget/ScrollView;

    new-instance v6, Lcom/cyjh/mobileanjian/ipc/uip/c$1;

    invoke-direct {v6, v3}, Lcom/cyjh/mobileanjian/ipc/uip/c$1;-><init>(Lcom/cyjh/mobileanjian/ipc/uip/c;)V

    invoke-virtual {v4, v6}, Landroid/widget/ScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1133
    iget-object v4, v3, Lcom/cyjh/mobileanjian/ipc/uip/c;->f:Landroid/widget/ScrollView;

    invoke-virtual {v4, v2}, Landroid/widget/ScrollView;->setTag(Ljava/lang/Object;)V

    .line 1134
    iget-object v2, v3, Lcom/cyjh/mobileanjian/ipc/uip/c;->f:Landroid/widget/ScrollView;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x1

    invoke-direct {v4, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v4}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1150
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Lcom/cyjh/mobileanjian/ipc/uip/c;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1151
    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1152
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1153
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1135
    iput-object v2, v3, Lcom/cyjh/mobileanjian/ipc/uip/c;->e:Landroid/widget/LinearLayout;

    .line 1136
    iget-object v2, v3, Lcom/cyjh/mobileanjian/ipc/uip/c;->f:Landroid/widget/ScrollView;

    iget-object v3, v3, Lcom/cyjh/mobileanjian/ipc/uip/c;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 351
    invoke-virtual {v0}, Landroid/util/JsonReader;->beginObject()V

    .line 352
    :goto_2
    invoke-virtual {v0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 354
    invoke-virtual {v0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v2

    .line 355
    iget-object v3, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->b:Landroid/content/Context;

    sget v4, Lcom/cyjh/mqsdk/R$string;->ui_linearlayout:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 357
    invoke-interface {p2, v0}, Lcom/cyjh/mobileanjian/ipc/uip/IUipJsonParser;->parseHorizontalLinearLayout(Landroid/util/JsonReader;)Lcom/cyjh/mobileanjian/ipc/uip/b;

    move-result-object v2

    .line 358
    iget-object v3, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->e:Lcom/cyjh/mobileanjian/ipc/uip/c;

    invoke-virtual {v3, v2}, Lcom/cyjh/mobileanjian/ipc/uip/c;->a(Landroid/view/View;)V

    goto :goto_2

    .line 359
    :cond_1
    iget-object v3, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->b:Landroid/content/Context;

    sget v4, Lcom/cyjh/mqsdk/R$string;->ui_textview:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 361
    invoke-interface {p2, v0}, Lcom/cyjh/mobileanjian/ipc/uip/IUipJsonParser;->parseTextView(Landroid/util/JsonReader;)Landroid/widget/TextView;

    move-result-object v2

    .line 362
    iget-object v3, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->e:Lcom/cyjh/mobileanjian/ipc/uip/c;

    invoke-virtual {v3, v2}, Lcom/cyjh/mobileanjian/ipc/uip/c;->a(Landroid/view/View;)V

    goto :goto_2

    .line 363
    :cond_2
    iget-object v3, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->b:Landroid/content/Context;

    sget v4, Lcom/cyjh/mqsdk/R$string;->ui_button:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 365
    invoke-interface {p2, v0}, Lcom/cyjh/mobileanjian/ipc/uip/IUipJsonParser;->parseButton(Landroid/util/JsonReader;)Landroid/widget/Button;

    move-result-object v2

    .line 366
    iget-object v3, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->e:Lcom/cyjh/mobileanjian/ipc/uip/c;

    invoke-virtual {v3, v2}, Lcom/cyjh/mobileanjian/ipc/uip/c;->a(Landroid/view/View;)V

    goto :goto_2

    .line 367
    :cond_3
    iget-object v3, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->b:Landroid/content/Context;

    sget v4, Lcom/cyjh/mqsdk/R$string;->ui_edittext:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 369
    invoke-interface {p2, v0}, Lcom/cyjh/mobileanjian/ipc/uip/IUipJsonParser;->parseEditText(Landroid/util/JsonReader;)Landroid/widget/EditText;

    move-result-object v2

    .line 370
    iget-object v3, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->e:Lcom/cyjh/mobileanjian/ipc/uip/c;

    invoke-virtual {v3, v2}, Lcom/cyjh/mobileanjian/ipc/uip/c;->a(Landroid/view/View;)V

    goto :goto_2

    .line 371
    :cond_4
    iget-object v3, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->b:Landroid/content/Context;

    sget v4, Lcom/cyjh/mqsdk/R$string;->ui_checkbox:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 373
    invoke-interface {p2, v0}, Lcom/cyjh/mobileanjian/ipc/uip/IUipJsonParser;->parseCheckBox(Landroid/util/JsonReader;)Landroid/widget/CheckBox;

    move-result-object v2

    .line 374
    iget-object v3, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->e:Lcom/cyjh/mobileanjian/ipc/uip/c;

    invoke-virtual {v3, v2}, Lcom/cyjh/mobileanjian/ipc/uip/c;->a(Landroid/view/View;)V

    goto/16 :goto_2

    .line 375
    :cond_5
    iget-object v3, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->b:Landroid/content/Context;

    sget v4, Lcom/cyjh/mqsdk/R$string;->ui_spinner:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 377
    invoke-interface {p2, v0}, Lcom/cyjh/mobileanjian/ipc/uip/IUipJsonParser;->parseSpinner(Landroid/util/JsonReader;)Landroid/widget/Spinner;

    move-result-object v2

    .line 378
    iget-object v3, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->e:Lcom/cyjh/mobileanjian/ipc/uip/c;

    invoke-virtual {v3, v2}, Lcom/cyjh/mobileanjian/ipc/uip/c;->a(Landroid/view/View;)V

    goto/16 :goto_2

    .line 381
    :cond_6
    invoke-virtual {v0}, Landroid/util/JsonReader;->skipValue()V

    goto/16 :goto_2

    .line 385
    :cond_7
    invoke-virtual {v0}, Landroid/util/JsonReader;->endObject()V

    .line 387
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->e:Lcom/cyjh/mobileanjian/ipc/uip/c;

    .line 2144
    iget-object v3, v2, Lcom/cyjh/mobileanjian/ipc/uip/c;->c:Ljava/util/List;

    iget-object v4, v2, Lcom/cyjh/mobileanjian/ipc/uip/c;->f:Landroid/widget/ScrollView;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2145
    iget v3, v2, Lcom/cyjh/mobileanjian/ipc/uip/c;->g:I

    add-int/2addr v3, v5

    iput v3, v2, Lcom/cyjh/mobileanjian/ipc/uip/c;->g:I

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 390
    :cond_8
    invoke-virtual {v0}, Landroid/util/JsonReader;->endObject()V

    goto/16 :goto_0

    .line 393
    :cond_9
    invoke-virtual {v0}, Landroid/util/JsonReader;->endObject()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p2

    .line 400
    invoke-static {p2}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_3

    :catch_1
    move-exception p2

    .line 396
    invoke-static {p2}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 403
    :goto_3
    iget-object p2, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->e:Lcom/cyjh/mobileanjian/ipc/uip/c;

    invoke-virtual {p2, p1}, Lcom/cyjh/mobileanjian/ipc/uip/c;->setSelectTab(I)V

    .line 405
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->e:Lcom/cyjh/mobileanjian/ipc/uip/c;

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/uip/c;->getScrollViewList()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->bindEvent(Ljava/util/List;)V

    .line 406
    sget-object p1, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->a:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->saveToConfigFile(Ljava/lang/String;)V

    .line 408
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->e:Lcom/cyjh/mobileanjian/ipc/uip/c;

    return-object p1
.end method


# virtual methods
.method public bindEvent(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/widget/ScrollView;",
            ">;)V"
        }
    .end annotation

    .line 471
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->h:Landroid/os/Handler;

    invoke-static {v0}, Lcom/cyjh/mobileanjian/ipc/uip/UipEventStub;->registerHandler(Landroid/os/Handler;)V

    .line 473
    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->f:Ljava/util/List;

    .line 474
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    .line 476
    invoke-direct {p0, v0}, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->a(Landroid/view/ViewGroup;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public configViewFromFile(Ljava/lang/String;)V
    .locals 1

    .line 760
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lorg/apache/commons/io/FileUtils;->readFileToString(Ljava/io/File;)Ljava/lang/String;

    move-result-object p1

    .line 761
    invoke-virtual {p0, p1}, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->configViewFromJson(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 764
    invoke-static {p1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    return-void
.end method

.method public configViewFromJson(Ljava/lang/String;)V
    .locals 7

    .line 770
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 773
    iput-boolean v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->g:Z

    const/4 v0, 0x0

    .line 776
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 777
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p1

    .line 778
    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 780
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 781
    iget-object v3, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->f:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 784
    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 786
    instance-of v5, v4, Landroid/widget/CheckBox;

    if-eqz v5, :cond_3

    .line 788
    check-cast v4, Landroid/widget/CheckBox;

    .line 789
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    .line 790
    :cond_3
    instance-of v5, v4, Landroid/widget/Spinner;

    if-eqz v5, :cond_5

    .line 792
    check-cast v4, Landroid/widget/Spinner;

    .line 793
    invoke-virtual {v4}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v5

    invoke-interface {v5}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v5

    .line 794
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    if-ge v6, v5, :cond_4

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    goto :goto_1

    :cond_4
    const/4 v5, 0x0

    :goto_1
    invoke-virtual {v4, v5}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_0

    .line 795
    :cond_5
    instance-of v5, v4, Landroid/widget/EditText;

    if-eqz v5, :cond_2

    .line 797
    check-cast v4, Landroid/widget/EditText;

    .line 798
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 805
    invoke-static {p1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 807
    :cond_6
    iput-boolean v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->g:Z

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 876
    iget-boolean v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->g:Z

    if-eqz v0, :cond_0

    return-void

    .line 878
    :cond_0
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;

    move-result-object v0

    .line 879
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;->setControlId(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;

    move-result-object v0

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Event_Type;->ON_CLICK:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Event_Type;

    .line 880
    invoke-virtual {v0, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;->setType(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Event_Type;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;

    move-result-object v0

    sget v1, Lcom/cyjh/mqsdk/R$id;->uip_function_key:I

    .line 881
    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;->setEventFunctionName(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;

    move-result-object v0

    .line 882
    invoke-virtual {v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;

    move-result-object v0

    .line 883
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Builder;

    move-result-object v1

    sget-object v2, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Command_Type;->EVENT:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Command_Type;

    .line 884
    invoke-virtual {v1, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Builder;->setCommand(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Command_Type;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Builder;

    move-result-object v1

    const/4 v2, 0x1

    .line 885
    invoke-virtual {v1, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Builder;->setIsSuccess(Z)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Builder;

    move-result-object v1

    .line 886
    invoke-virtual {v1, v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Builder;->setEvent(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand;

    move-result-object v0

    .line 887
    invoke-virtual {v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-static {v0}, Lcom/cyjh/mobileanjian/ipc/uip/UipEventStub;->hasEvent(Lcom/google/protobuf/ByteString;)V

    .line 888
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onClick Function Name: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Lcom/cyjh/mqsdk/R$id;->uip_function_key:I

    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 894
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p4, "isCodeEvent: "

    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean p4, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->g:Z

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 896
    iget-boolean p2, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->g:Z

    if-eqz p2, :cond_0

    return-void

    .line 898
    :cond_0
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;

    move-result-object p2

    .line 899
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getTag()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    invoke-virtual {p2, p4}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;->setControlId(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;

    move-result-object p2

    sget-object p4, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Event_Type;->ON_CLICK:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Event_Type;

    .line 900
    invoke-virtual {p2, p4}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;->setType(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Event_Type;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;

    move-result-object p2

    .line 901
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;->setEventArgs(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;

    move-result-object p2

    sget p3, Lcom/cyjh/mqsdk/R$id;->uip_function_key:I

    .line 902
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p2, p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;->setEventFunctionName(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;

    move-result-object p1

    .line 903
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;

    move-result-object p1

    .line 904
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Builder;

    move-result-object p2

    sget-object p3, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Command_Type;->EVENT:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Command_Type;

    .line 905
    invoke-virtual {p2, p3}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Builder;->setCommand(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Command_Type;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Builder;

    move-result-object p2

    const/4 p3, 0x1

    .line 906
    invoke-virtual {p2, p3}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Builder;->setIsSuccess(Z)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Builder;

    move-result-object p2

    .line 907
    invoke-virtual {p2, p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Builder;->setEvent(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand;

    move-result-object p2

    .line 908
    invoke-virtual {p2}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object p2

    invoke-static {p2}, Lcom/cyjh/mobileanjian/ipc/uip/UipEventStub;->hasEvent(Lcom/google/protobuf/ByteString;)V

    .line 910
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "onItemSelected: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method

.method public parseLayoutFromJson(Ljava/lang/String;Lcom/cyjh/mobileanjian/ipc/uip/IUipJsonParser;)Landroid/widget/LinearLayout;
    .locals 2

    .line 68
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 70
    invoke-direct {p0, p1, p2}, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->c(Ljava/lang/String;Lcom/cyjh/mobileanjian/ipc/uip/IUipJsonParser;)Landroid/widget/LinearLayout;

    move-result-object p1

    return-object p1

    .line 73
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->b(Ljava/lang/String;Lcom/cyjh/mobileanjian/ipc/uip/IUipJsonParser;)Landroid/widget/LinearLayout;

    move-result-object p1

    return-object p1
.end method

.method public restoreConfig()V
    .locals 1

    .line 518
    sget-object v0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->configViewFromFile(Ljava/lang/String;)V

    return-void
.end method

.method public saveConfigToJson()Ljava/lang/String;
    .locals 3

    .line 814
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->i:Lorg/json/JSONObject;

    .line 815
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    .line 817
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 820
    :try_start_0
    invoke-direct {p0, v1}, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->b(Landroid/view/ViewGroup;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 823
    invoke-static {v1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 826
    :cond_0
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->i:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public saveToConfigFile(Ljava/lang/String;)V
    .locals 1

    .line 838
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->saveConfigToJson()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/apache/commons/io/FileUtils;->writeStringToFile(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 841
    invoke-static {p1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    return-void
.end method

.method public transform(I)Landroid/view/View;
    .locals 8

    .line 418
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ScrollView;

    .line 420
    invoke-virtual {v1}, Landroid/widget/ScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 423
    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 425
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "childCount of scrollview: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 429
    new-instance p1, Lcom/cyjh/mobileanjian/ipc/uip/c;

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->b:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/cyjh/mobileanjian/ipc/uip/c;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->e:Lcom/cyjh/mobileanjian/ipc/uip/c;

    .line 430
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->e:Lcom/cyjh/mobileanjian/ipc/uip/c;

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->f:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/cyjh/mobileanjian/ipc/uip/c;->a(Ljava/util/List;)V

    .line 431
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->e:Lcom/cyjh/mobileanjian/ipc/uip/c;

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->c:Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;

    invoke-virtual {v0}, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;->getViewPager()Landroid/support/v4/view/ViewPager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/cyjh/mobileanjian/ipc/uip/c;->setSelectTab(I)V

    .line 433
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->e:Lcom/cyjh/mobileanjian/ipc/uip/c;

    return-object p1

    .line 437
    :cond_2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 438
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 440
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 443
    :cond_3
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 444
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v1, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 445
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, 0x1

    .line 446
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 448
    new-instance v4, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;

    iget-object v5, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->b:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->c:Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;

    .line 449
    iget-object v4, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->c:Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x2

    invoke-direct {v5, v3, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5}, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 450
    iget-object v4, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->c:Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;

    new-array v5, v1, [I

    iget-object v6, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->b:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/cyjh/mqsdk/R$color;->ui_show_blue:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    aput v6, v5, v2

    invoke-virtual {v4, v5}, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;->setSelectedIndicatorColors([I)V

    .line 451
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->c:Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;

    invoke-virtual {v2, v1}, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;->setDistributeEvenly(Z)V

    .line 452
    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->c:Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 454
    new-instance v1, Landroid/support/v4/view/ViewPager;

    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->b:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;)V

    .line 455
    new-instance v2, Landroid/widget/TableLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/TableLayout$LayoutParams;-><init>(II)V

    const/high16 v3, 0x3f800000    # 1.0f

    .line 456
    iput v3, v2, Landroid/widget/TableLayout$LayoutParams;->weight:F

    .line 457
    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 458
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 460
    new-instance v2, Lcom/cyjh/mobileanjian/ipc/uip/f;

    iget-object v3, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->f:Ljava/util/List;

    invoke-direct {v2, v3, p1}, Lcom/cyjh/mobileanjian/ipc/uip/f;-><init>(Ljava/util/List;Ljava/util/List;)V

    .line 461
    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 462
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->e:Lcom/cyjh/mobileanjian/ipc/uip/c;

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/uip/c;->getCurrentItem()I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 463
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->c:Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;

    invoke-virtual {p1, v1}, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    return-object v0
.end method
