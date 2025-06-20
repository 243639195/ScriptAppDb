.class public Lcom/ds/daisi/dialog/ScriptUIDialog;
.super Lcom/ds/daisi/dialog/BaseDialog;
.source "ScriptUIDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field protected commonLog:Lcom/ds/daisi/log/CommonLog;

.field private mArrayListCheckBox:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/widget/CheckBox;",
            ">;"
        }
    .end annotation
.end field

.field private mArrayListEditText:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/widget/EditText;",
            ">;"
        }
    .end annotation
.end field

.field private mArrayListSpinner:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/widget/Spinner;",
            ">;"
        }
    .end annotation
.end field

.field private mButtonSave:Landroid/widget/Button;

.field public mContext:Landroid/content/Context;

.field private mImageViewSetting:Landroid/widget/ImageView;

.field private mScrollViewUI:Landroid/widget/ScrollView;

.field private mUIPLinearLayout:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const v0, 0x7f0b0131

    .line 62
    invoke-direct {p0, p1, v0}, Lcom/ds/daisi/dialog/BaseDialog;-><init>(Landroid/content/Context;I)V

    .line 54
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/ds/daisi/dialog/ScriptUIDialog;->mArrayListCheckBox:Ljava/util/ArrayList;

    .line 55
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/ds/daisi/dialog/ScriptUIDialog;->mArrayListSpinner:Ljava/util/ArrayList;

    .line 56
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/ds/daisi/dialog/ScriptUIDialog;->mArrayListEditText:Ljava/util/ArrayList;

    .line 57
    new-instance p1, Lcom/ds/daisi/log/CommonLog;

    invoke-direct {p1}, Lcom/ds/daisi/log/CommonLog;-><init>()V

    iput-object p1, p0, Lcom/ds/daisi/dialog/ScriptUIDialog;->commonLog:Lcom/ds/daisi/log/CommonLog;

    .line 71
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1a

    if-lt p1, v0, :cond_0

    .line 72
    invoke-virtual {p0}, Lcom/ds/daisi/dialog/ScriptUIDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x7f6

    invoke-virtual {p1, v0}, Landroid/view/Window;->setType(I)V

    goto :goto_0

    .line 73
    :cond_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x13

    if-lt p1, v0, :cond_1

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x18

    if-ge p1, v0, :cond_1

    .line 74
    invoke-virtual {p0}, Lcom/ds/daisi/dialog/ScriptUIDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 75
    invoke-virtual {p0}, Lcom/ds/daisi/dialog/ScriptUIDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x7d5

    invoke-virtual {p1, v0}, Landroid/view/Window;->setType(I)V

    goto :goto_0

    .line 78
    :cond_1
    invoke-virtual {p0}, Lcom/ds/daisi/dialog/ScriptUIDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 79
    invoke-virtual {p0}, Lcom/ds/daisi/dialog/ScriptUIDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x7d2

    invoke-virtual {p1, v0}, Landroid/view/Window;->setType(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method private ParMainLayout(Landroid/util/JsonReader;)Landroid/widget/LinearLayout;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 214
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/ds/daisi/dialog/ScriptUIDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 215
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, 0x1

    .line 216
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 217
    invoke-virtual {p1}, Landroid/util/JsonReader;->beginObject()V

    .line 218
    :goto_0
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 219
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v1

    .line 221
    invoke-virtual {p0}, Lcom/ds/daisi/dialog/ScriptUIDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f09019e

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 222
    invoke-direct {p0, p1}, Lcom/ds/daisi/dialog/ScriptUIDialog;->ParsHorizontalLayout(Landroid/util/JsonReader;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 223
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 224
    :cond_0
    invoke-virtual {p0}, Lcom/ds/daisi/dialog/ScriptUIDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0901a6

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 225
    invoke-direct {p0, p1}, Lcom/ds/daisi/dialog/ScriptUIDialog;->ParsTextView(Landroid/util/JsonReader;)Landroid/widget/TextView;

    move-result-object v1

    .line 226
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 227
    :cond_1
    invoke-virtual {p0}, Lcom/ds/daisi/dialog/ScriptUIDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f090197

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 228
    invoke-direct {p0, p1}, Lcom/ds/daisi/dialog/ScriptUIDialog;->ParsEditText(Landroid/util/JsonReader;)Landroid/widget/EditText;

    move-result-object v1

    .line 229
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 230
    :cond_2
    invoke-virtual {p0}, Lcom/ds/daisi/dialog/ScriptUIDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f090194

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 231
    invoke-direct {p0, p1}, Lcom/ds/daisi/dialog/ScriptUIDialog;->ParsCheckBox(Landroid/util/JsonReader;)Landroid/widget/CheckBox;

    move-result-object v1

    .line 232
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 233
    :cond_3
    invoke-virtual {p0}, Lcom/ds/daisi/dialog/ScriptUIDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0901a2

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 234
    invoke-direct {p0, p1}, Lcom/ds/daisi/dialog/ScriptUIDialog;->ParSpinner(Landroid/util/JsonReader;)Landroid/widget/Spinner;

    move-result-object v1

    .line 235
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 237
    :cond_4
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    goto/16 :goto_0

    .line 240
    :cond_5
    invoke-virtual {p1}, Landroid/util/JsonReader;->endObject()V

    return-object v0
.end method

.method private ParSpinner(Landroid/util/JsonReader;)Landroid/widget/Spinner;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 497
    new-instance v0, Landroid/widget/Spinner;

    invoke-virtual {p0}, Lcom/ds/daisi/dialog/ScriptUIDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;)V

    .line 498
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 499
    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 500
    invoke-virtual {p1}, Landroid/util/JsonReader;->beginObject()V

    .line 501
    :goto_0
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 502
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v1

    .line 504
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 505
    invoke-virtual {p0}, Lcom/ds/daisi/dialog/ScriptUIDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f09019f

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 506
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    .line 508
    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 509
    :cond_0
    invoke-virtual {p0}, Lcom/ds/daisi/dialog/ScriptUIDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0901a4

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 511
    invoke-virtual {p1}, Landroid/util/JsonReader;->beginArray()V

    .line 512
    :goto_1
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 513
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    .line 515
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 517
    :cond_1
    invoke-virtual {p1}, Landroid/util/JsonReader;->endArray()V

    .line 520
    new-instance v1, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/ds/daisi/dialog/ScriptUIDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x1090008

    invoke-direct {v1, v3, v4, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    const v2, 0x1090009

    .line 521
    invoke-virtual {v1, v2}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 523
    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    goto :goto_0

    .line 525
    :cond_2
    invoke-virtual {p0}, Lcom/ds/daisi/dialog/ScriptUIDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0901a3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 526
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v1

    const/4 v2, 0x1

    .line 528
    :try_start_0
    invoke-virtual {v0, v1, v2}, Landroid/widget/Spinner;->setSelection(IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v1, 0x0

    .line 530
    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_0

    .line 533
    :cond_3
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    goto/16 :goto_0

    .line 536
    :cond_4
    invoke-virtual {p1}, Landroid/util/JsonReader;->endObject()V

    .line 537
    iget-object p1, p0, Lcom/ds/daisi/dialog/ScriptUIDialog;->mArrayListSpinner:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private ParsCheckBox(Landroid/util/JsonReader;)Landroid/widget/CheckBox;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 431
    new-instance v0, Landroid/widget/CheckBox;

    invoke-virtual {p0}, Lcom/ds/daisi/dialog/ScriptUIDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    .line 432
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 433
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v1, 0x7f0d000e

    .line 434
    invoke-direct {p0, v1}, Lcom/ds/daisi/dialog/ScriptUIDialog;->getInteger(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setTextSize(F)V

    .line 436
    invoke-virtual {p1}, Landroid/util/JsonReader;->beginObject()V

    .line 437
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 438
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v1

    .line 440
    invoke-virtual {p0}, Lcom/ds/daisi/dialog/ScriptUIDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f09019f

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 441
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    .line 443
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 444
    :cond_1
    invoke-virtual {p0}, Lcom/ds/daisi/dialog/ScriptUIDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f090196

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 445
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    .line 447
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 448
    :cond_2
    invoke-virtual {p0}, Lcom/ds/daisi/dialog/ScriptUIDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f090195

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 449
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    .line 452
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    .line 454
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    .line 456
    :cond_4
    invoke-virtual {p0}, Lcom/ds/daisi/dialog/ScriptUIDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0901a5

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 457
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v1

    const v2, 0x7f0d000f

    .line 459
    invoke-direct {p0, v2}, Lcom/ds/daisi/dialog/ScriptUIDialog;->getInteger(I)I

    move-result v3

    if-le v1, v3, :cond_5

    int-to-float v1, v1

    .line 460
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setTextSize(F)V

    goto :goto_0

    :cond_5
    const v3, 0x7f0d000d

    .line 461
    invoke-direct {p0, v3}, Lcom/ds/daisi/dialog/ScriptUIDialog;->getInteger(I)I

    move-result v3

    if-eq v1, v3, :cond_0

    .line 462
    invoke-direct {p0, v2}, Lcom/ds/daisi/dialog/ScriptUIDialog;->getInteger(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setTextSize(F)V

    goto/16 :goto_0

    .line 464
    :cond_6
    invoke-virtual {p0}, Lcom/ds/daisi/dialog/ScriptUIDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f09019c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 465
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v1

    const v2, 0x7f0d000b

    .line 467
    invoke-direct {p0, v2}, Lcom/ds/daisi/dialog/ScriptUIDialog;->getInteger(I)I

    move-result v2

    if-le v1, v2, :cond_0

    .line 468
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setHeight(I)V

    goto/16 :goto_0

    .line 470
    :cond_7
    invoke-virtual {p0}, Lcom/ds/daisi/dialog/ScriptUIDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f09019d

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 471
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v1

    const v2, 0x7f0d000c

    .line 473
    invoke-direct {p0, v2}, Lcom/ds/daisi/dialog/ScriptUIDialog;->getInteger(I)I

    move-result v2

    if-le v1, v2, :cond_0

    .line 474
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setWidth(I)V

    goto/16 :goto_0

    .line 479
    :cond_8
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    goto/16 :goto_0

    .line 482
    :cond_9
    iget-object v1, p0, Lcom/ds/daisi/dialog/ScriptUIDialog;->mArrayListCheckBox:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 483
    invoke-virtual {p1}, Landroid/util/JsonReader;->endObject()V

    return-object v0
.end method

.method private ParsEditText(Landroid/util/JsonReader;)Landroid/widget/EditText;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 353
    new-instance v0, Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/ds/daisi/dialog/ScriptUIDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 354
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 355
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v1, 0x7f0d000e

    .line 356
    invoke-direct {p0, v1}, Lcom/ds/daisi/dialog/ScriptUIDialog;->getInteger(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextSize(F)V

    const/4 v1, 0x1

    .line 358
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 359
    invoke-virtual {p1}, Landroid/util/JsonReader;->beginObject()V

    .line 360
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 361
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v2

    .line 363
    invoke-virtual {p0}, Lcom/ds/daisi/dialog/ScriptUIDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f09019f

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 364
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    .line 366
    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 367
    :cond_1
    invoke-virtual {p0}, Lcom/ds/daisi/dialog/ScriptUIDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f090199

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 368
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    .line 370
    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 371
    :cond_2
    invoke-virtual {p0}, Lcom/ds/daisi/dialog/ScriptUIDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0901a5

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 372
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v2

    const v3, 0x7f0d000f

    .line 374
    invoke-direct {p0, v3}, Lcom/ds/daisi/dialog/ScriptUIDialog;->getInteger(I)I

    move-result v4

    if-le v2, v4, :cond_3

    int-to-float v2, v2

    .line 375
    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setTextSize(F)V

    goto :goto_0

    :cond_3
    const v4, 0x7f0d000d

    .line 376
    invoke-direct {p0, v4}, Lcom/ds/daisi/dialog/ScriptUIDialog;->getInteger(I)I

    move-result v4

    if-eq v2, v4, :cond_0

    .line 377
    invoke-direct {p0, v3}, Lcom/ds/daisi/dialog/ScriptUIDialog;->getInteger(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setTextSize(F)V

    goto :goto_0

    .line 379
    :cond_4
    invoke-virtual {p0}, Lcom/ds/daisi/dialog/ScriptUIDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f09019c

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 380
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v2

    const v3, 0x7f0d000b

    .line 382
    invoke-direct {p0, v3}, Lcom/ds/daisi/dialog/ScriptUIDialog;->getInteger(I)I

    move-result v3

    if-le v2, v3, :cond_0

    .line 383
    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setHeight(I)V

    goto/16 :goto_0

    .line 385
    :cond_5
    invoke-virtual {p0}, Lcom/ds/daisi/dialog/ScriptUIDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f09019d

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 386
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v2

    const v3, 0x7f0d000c

    .line 388
    invoke-direct {p0, v3}, Lcom/ds/daisi/dialog/ScriptUIDialog;->getInteger(I)I

    move-result v3

    if-le v2, v3, :cond_0

    .line 389
    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setWidth(I)V

    goto/16 :goto_0

    .line 391
    :cond_6
    invoke-virtual {p0}, Lcom/ds/daisi/dialog/ScriptUIDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f09019b

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_7

    .line 392
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v2

    if-lez v2, :cond_0

    .line 395
    new-array v3, v1, [Landroid/text/InputFilter;

    .line 396
    new-instance v5, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v5, v2}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v5, v3, v4

    .line 397
    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    goto/16 :goto_0

    .line 399
    :cond_7
    invoke-virtual {p0}, Lcom/ds/daisi/dialog/ScriptUIDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    const v5, 0x7f09019a

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 402
    :try_start_0
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_0

    const/4 v2, 0x2

    .line 407
    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setInputType(I)V

    goto/16 :goto_0

    .line 409
    :cond_8
    invoke-virtual {p0}, Lcom/ds/daisi/dialog/ScriptUIDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f090198

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 410
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    .line 411
    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 413
    :cond_9
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    goto/16 :goto_0

    .line 416
    :cond_a
    iget-object v1, p0, Lcom/ds/daisi/dialog/ScriptUIDialog;->mArrayListEditText:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 417
    invoke-virtual {p1}, Landroid/util/JsonReader;->endObject()V

    return-object v0
.end method

.method private ParsHorizontalLayout(Landroid/util/JsonReader;)Landroid/widget/LinearLayout;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 255
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/ds/daisi/dialog/ScriptUIDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 256
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v1, 0x10

    .line 257
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 258
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 260
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 261
    invoke-virtual {p1}, Landroid/util/JsonReader;->beginObject()V

    .line 262
    :goto_0
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 263
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v1

    .line 264
    invoke-virtual {p0}, Lcom/ds/daisi/dialog/ScriptUIDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f09019e

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 265
    invoke-direct {p0, p1}, Lcom/ds/daisi/dialog/ScriptUIDialog;->ParsHorizontalLayout(Landroid/util/JsonReader;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 266
    :cond_0
    invoke-virtual {p0}, Lcom/ds/daisi/dialog/ScriptUIDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0901a6

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 267
    invoke-direct {p0, p1}, Lcom/ds/daisi/dialog/ScriptUIDialog;->ParsTextView(Landroid/util/JsonReader;)Landroid/widget/TextView;

    move-result-object v1

    .line 268
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 269
    :cond_1
    invoke-virtual {p0}, Lcom/ds/daisi/dialog/ScriptUIDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f090197

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 270
    invoke-direct {p0, p1}, Lcom/ds/daisi/dialog/ScriptUIDialog;->ParsEditText(Landroid/util/JsonReader;)Landroid/widget/EditText;

    move-result-object v1

    .line 271
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 272
    :cond_2
    invoke-virtual {p0}, Lcom/ds/daisi/dialog/ScriptUIDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f090194

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 273
    invoke-direct {p0, p1}, Lcom/ds/daisi/dialog/ScriptUIDialog;->ParsCheckBox(Landroid/util/JsonReader;)Landroid/widget/CheckBox;

    move-result-object v1

    .line 274
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 275
    :cond_3
    invoke-virtual {p0}, Lcom/ds/daisi/dialog/ScriptUIDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0901a2

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 276
    invoke-direct {p0, p1}, Lcom/ds/daisi/dialog/ScriptUIDialog;->ParSpinner(Landroid/util/JsonReader;)Landroid/widget/Spinner;

    move-result-object v1

    .line 277
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 279
    :cond_4
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    goto/16 :goto_0

    .line 282
    :cond_5
    invoke-virtual {p1}, Landroid/util/JsonReader;->endObject()V

    return-object v0
.end method

.method private ParsTextView(Landroid/util/JsonReader;)Landroid/widget/TextView;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 296
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/ds/daisi/dialog/ScriptUIDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/16 v1, 0x11

    .line 297
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 298
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 299
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v1, 0x7f0d000e

    .line 300
    invoke-direct {p0, v1}, Lcom/ds/daisi/dialog/ScriptUIDialog;->getInteger(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 302
    invoke-virtual {p1}, Landroid/util/JsonReader;->beginObject()V

    .line 303
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 304
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v1

    .line 306
    invoke-virtual {p0}, Lcom/ds/daisi/dialog/ScriptUIDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f09019f

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 307
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    .line 309
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 310
    :cond_1
    invoke-virtual {p0}, Lcom/ds/daisi/dialog/ScriptUIDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0901a7

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 311
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    .line 313
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 314
    :cond_2
    invoke-virtual {p0}, Lcom/ds/daisi/dialog/ScriptUIDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0901a5

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 315
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v1

    const v2, 0x7f0d000f

    .line 317
    invoke-direct {p0, v2}, Lcom/ds/daisi/dialog/ScriptUIDialog;->getInteger(I)I

    move-result v3

    if-le v1, v3, :cond_3

    int-to-float v1, v1

    .line 318
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    goto :goto_0

    :cond_3
    const v3, 0x7f0d000d

    .line 319
    invoke-direct {p0, v3}, Lcom/ds/daisi/dialog/ScriptUIDialog;->getInteger(I)I

    move-result v3

    if-eq v1, v3, :cond_0

    .line 320
    invoke-direct {p0, v2}, Lcom/ds/daisi/dialog/ScriptUIDialog;->getInteger(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    goto :goto_0

    .line 322
    :cond_4
    invoke-virtual {p0}, Lcom/ds/daisi/dialog/ScriptUIDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f09019c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 323
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v1

    const v2, 0x7f0d000b

    .line 325
    invoke-direct {p0, v2}, Lcom/ds/daisi/dialog/ScriptUIDialog;->getInteger(I)I

    move-result v2

    if-le v1, v2, :cond_0

    .line 326
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHeight(I)V

    goto/16 :goto_0

    .line 328
    :cond_5
    invoke-virtual {p0}, Lcom/ds/daisi/dialog/ScriptUIDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f09019d

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 329
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v1

    const v2, 0x7f0d000c

    .line 331
    invoke-direct {p0, v2}, Lcom/ds/daisi/dialog/ScriptUIDialog;->getInteger(I)I

    move-result v2

    if-le v1, v2, :cond_0

    .line 332
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setWidth(I)V

    goto/16 :goto_0

    .line 335
    :cond_6
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    goto/16 :goto_0

    .line 338
    :cond_7
    invoke-virtual {p1}, Landroid/util/JsonReader;->endObject()V

    return-object v0
.end method

.method private ParsUIFile(Ljava/lang/String;)Landroid/widget/LinearLayout;
    .locals 4

    .line 187
    new-instance v0, Landroid/util/JsonReader;

    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V

    .line 188
    new-instance p1, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/ds/daisi/dialog/ScriptUIDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p1, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 190
    :try_start_0
    invoke-virtual {v0}, Landroid/util/JsonReader;->beginObject()V

    .line 191
    :goto_0
    invoke-virtual {v0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 192
    invoke-virtual {v0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v1

    .line 193
    invoke-virtual {p0}, Lcom/ds/daisi/dialog/ScriptUIDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f090192

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 194
    invoke-direct {p0, v0}, Lcom/ds/daisi/dialog/ScriptUIDialog;->ParMainLayout(Landroid/util/JsonReader;)Landroid/widget/LinearLayout;

    move-result-object v1

    move-object p1, v1

    goto :goto_0

    .line 196
    :cond_0
    invoke-virtual {v0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_0

    .line 199
    :cond_1
    invoke-virtual {v0}, Landroid/util/JsonReader;->endObject()V

    .line 200
    invoke-virtual {v0}, Landroid/util/JsonReader;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object p1
.end method

.method static synthetic access$000(Lcom/ds/daisi/dialog/ScriptUIDialog;FFIZ)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ds/daisi/dialog/ScriptUIDialog;->convertScreen(FFIZ)V

    return-void
.end method

.method static synthetic access$100(Lcom/ds/daisi/dialog/ScriptUIDialog;IZ)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/ds/daisi/dialog/ScriptUIDialog;->initUIFile(IZ)V

    return-void
.end method

.method private convertScreen(FFIZ)V
    .locals 8

    .line 657
    invoke-virtual {p0}, Lcom/ds/daisi/dialog/ScriptUIDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 658
    invoke-virtual {p0}, Lcom/ds/daisi/dialog/ScriptUIDialog;->dismiss()V

    .line 659
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v7, Lcom/ds/daisi/dialog/ScriptUIDialog$3;

    move-object v1, v7

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/ds/daisi/dialog/ScriptUIDialog$3;-><init>(Lcom/ds/daisi/dialog/ScriptUIDialog;FFIZ)V

    const-wide/16 p1, 0x1f4

    invoke-virtual {v0, v7, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method private generateUIConfigFile(Ljava/io/File;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p1, :cond_5

    .line 591
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    .line 595
    :cond_0
    iget-object v0, p0, Lcom/ds/daisi/dialog/ScriptUIDialog;->mAppContext:Lcom/ds/daisi/AppContext;

    iget-object v0, v0, Lcom/ds/daisi/AppContext;->mScript:Lcom/ds/daisi/entity/Script;

    invoke-virtual {v0}, Lcom/ds/daisi/entity/Script;->getUipFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ds/daisi/dialog/ScriptUIDialog;->mAppContext:Lcom/ds/daisi/AppContext;

    iget-object v0, v0, Lcom/ds/daisi/AppContext;->mScript:Lcom/ds/daisi/entity/Script;

    invoke-virtual {v0}, Lcom/ds/daisi/entity/Script;->getUipFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    .line 597
    iget-object p1, p0, Lcom/ds/daisi/dialog/ScriptUIDialog;->mAppContext:Lcom/ds/daisi/AppContext;

    iget-object p1, p1, Lcom/ds/daisi/AppContext;->mUipHelper:Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;

    iget-object v0, p0, Lcom/ds/daisi/dialog/ScriptUIDialog;->mAppContext:Lcom/ds/daisi/AppContext;

    iget-object v0, v0, Lcom/ds/daisi/AppContext;->mScript:Lcom/ds/daisi/entity/Script;

    invoke-virtual {v0}, Lcom/ds/daisi/entity/Script;->getCfgFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->saveToConfigFile(Ljava/lang/String;)V

    return-void

    .line 601
    :cond_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 602
    iget-object v1, p0, Lcom/ds/daisi/dialog/ScriptUIDialog;->mArrayListCheckBox:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 603
    invoke-virtual {v2}, Landroid/widget/CheckBox;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    goto :goto_0

    .line 605
    :cond_2
    iget-object v1, p0, Lcom/ds/daisi/dialog/ScriptUIDialog;->mArrayListSpinner:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    .line 606
    invoke-virtual {v2}, Landroid/widget/Spinner;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_1

    .line 608
    :cond_3
    iget-object v1, p0, Lcom/ds/daisi/dialog/ScriptUIDialog;->mArrayListEditText:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 609
    invoke-virtual {v2}, Landroid/widget/EditText;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2

    .line 611
    :cond_4
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-static {p1, v0, v1}, Lorg/apache/commons/io/FileUtils;->writeStringToFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_5
    :goto_3
    return-void
.end method

.method private getInteger(I)I
    .locals 1

    .line 615
    invoke-virtual {p0}, Lcom/ds/daisi/dialog/ScriptUIDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    return p1
.end method

.method private initEvent()V
    .locals 2

    .line 105
    iget-object v0, p0, Lcom/ds/daisi/dialog/ScriptUIDialog;->mAppContext:Lcom/ds/daisi/AppContext;

    new-instance v1, Lcom/ds/daisi/dialog/ScriptUIDialog$1;

    invoke-direct {v1, p0}, Lcom/ds/daisi/dialog/ScriptUIDialog$1;-><init>(Lcom/ds/daisi/dialog/ScriptUIDialog;)V

    invoke-virtual {v0, v1}, Lcom/ds/daisi/AppContext;->setScreenConversion(Lcom/ds/daisi/AppContext$ScreenOrientationConversion;)V

    return-void
.end method

.method private initUIFile(IZ)V
    .locals 7

    .line 138
    new-instance v0, Lcom/cyjh/mqm/MiscUtilities;

    invoke-direct {v0}, Lcom/cyjh/mqm/MiscUtilities;-><init>()V

    .line 139
    iget-object v1, p0, Lcom/ds/daisi/dialog/ScriptUIDialog;->mAppContext:Lcom/ds/daisi/AppContext;

    iget-object v1, v1, Lcom/ds/daisi/AppContext;->mScript:Lcom/ds/daisi/entity/Script;

    invoke-virtual {v1}, Lcom/ds/daisi/entity/Script;->getUipFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/ds/daisi/dialog/ScriptUIDialog;->mAppContext:Lcom/ds/daisi/AppContext;

    iget-object v1, v1, Lcom/ds/daisi/AppContext;->mScript:Lcom/ds/daisi/entity/Script;

    invoke-virtual {v1}, Lcom/ds/daisi/entity/Script;->getUipFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-lez v1, :cond_1

    .line 140
    iget-object v1, p0, Lcom/ds/daisi/dialog/ScriptUIDialog;->mAppContext:Lcom/ds/daisi/AppContext;

    iget-object v1, v1, Lcom/ds/daisi/AppContext;->mScript:Lcom/ds/daisi/entity/Script;

    invoke-virtual {v1}, Lcom/ds/daisi/entity/Script;->getUipFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/cyjh/mqm/MiscUtilities;->LoadUIFile(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 141
    iget-object v1, p0, Lcom/ds/daisi/dialog/ScriptUIDialog;->commonLog:Lcom/ds/daisi/log/CommonLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u8f6c\u6362\u540e>>>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ds/daisi/log/CommonLog;->e(Ljava/lang/Object;)V

    if-eqz p2, :cond_0

    .line 143
    iget-object p1, p0, Lcom/ds/daisi/dialog/ScriptUIDialog;->mAppContext:Lcom/ds/daisi/AppContext;

    iget-object p1, p1, Lcom/ds/daisi/AppContext;->mUipHelper:Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;

    const/4 p2, 0x0

    invoke-virtual {p1, v0, p2}, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->parseLayoutFromJson(Ljava/lang/String;Lcom/cyjh/mobileanjian/ipc/uip/IUipJsonParser;)Landroid/widget/LinearLayout;

    move-result-object p1

    .line 144
    iget-object p2, p0, Lcom/ds/daisi/dialog/ScriptUIDialog;->mUIPLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 145
    iget-object p2, p0, Lcom/ds/daisi/dialog/ScriptUIDialog;->mUIPLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 147
    :try_start_0
    iget-object p1, p0, Lcom/ds/daisi/dialog/ScriptUIDialog;->mAppContext:Lcom/ds/daisi/AppContext;

    iget-object p1, p1, Lcom/ds/daisi/AppContext;->mScript:Lcom/ds/daisi/entity/Script;

    invoke-virtual {p1}, Lcom/ds/daisi/entity/Script;->getCfgFile()Ljava/io/File;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ds/daisi/dialog/ScriptUIDialog;->parseUIConfigFile(Ljava/io/File;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception p1

    .line 149
    invoke-static {p1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 152
    :cond_0
    iget-object p2, p0, Lcom/ds/daisi/dialog/ScriptUIDialog;->mUIPLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout$LayoutParams;

    .line 153
    invoke-virtual {p0}, Lcom/ds/daisi/dialog/ScriptUIDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ds/daisi/util/AppDeviceUtils;->getResolution(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    const v1, 0x3f666666    # 0.9f

    mul-float v0, v0, v1

    float-to-int v0, v0

    iput v0, p2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 154
    iget-object v0, p0, Lcom/ds/daisi/dialog/ScriptUIDialog;->mUIPLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 155
    iget-object p2, p0, Lcom/ds/daisi/dialog/ScriptUIDialog;->mAppContext:Lcom/ds/daisi/AppContext;

    iget-object p2, p2, Lcom/ds/daisi/AppContext;->mUipHelper:Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;

    invoke-virtual {p2, p1}, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->transform(I)Landroid/view/View;

    move-result-object p1

    .line 156
    iget-object p2, p0, Lcom/ds/daisi/dialog/ScriptUIDialog;->mUIPLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 157
    iget-object p2, p0, Lcom/ds/daisi/dialog/ScriptUIDialog;->mUIPLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 160
    :cond_1
    iget-object p1, p0, Lcom/ds/daisi/dialog/ScriptUIDialog;->mAppContext:Lcom/ds/daisi/AppContext;

    iget-object p1, p1, Lcom/ds/daisi/AppContext;->mScript:Lcom/ds/daisi/entity/Script;

    invoke-virtual {p1}, Lcom/ds/daisi/entity/Script;->getUiFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, v2}, Lcom/cyjh/mqm/MiscUtilities;->LoadUIFile(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    .line 161
    iget-object p2, p0, Lcom/ds/daisi/dialog/ScriptUIDialog;->commonLog:Lcom/ds/daisi/log/CommonLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u8f6c\u6362\u540e>>>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/ds/daisi/log/CommonLog;->e(Ljava/lang/Object;)V

    .line 162
    invoke-direct {p0, p1}, Lcom/ds/daisi/dialog/ScriptUIDialog;->ParsUIFile(Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object p1

    .line 163
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p2

    if-lez p2, :cond_2

    .line 164
    iget-object p2, p0, Lcom/ds/daisi/dialog/ScriptUIDialog;->mScrollViewUI:Landroid/widget/ScrollView;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/ScrollView;->removeViewAt(I)V

    .line 165
    iget-object p2, p0, Lcom/ds/daisi/dialog/ScriptUIDialog;->mScrollViewUI:Landroid/widget/ScrollView;

    invoke-virtual {p2, p1}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 168
    :cond_2
    :try_start_1
    iget-object p1, p0, Lcom/ds/daisi/dialog/ScriptUIDialog;->mAppContext:Lcom/ds/daisi/AppContext;

    iget-object p1, p1, Lcom/ds/daisi/AppContext;->mScript:Lcom/ds/daisi/entity/Script;

    invoke-virtual {p1}, Lcom/ds/daisi/entity/Script;->getCfgFile()Ljava/io/File;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ds/daisi/dialog/ScriptUIDialog;->parseUIConfigFile(Ljava/io/File;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 170
    invoke-static {p1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private initView()V
    .locals 3

    const v0, 0x7f10013a

    .line 119
    invoke-virtual {p0, v0}, Lcom/ds/daisi/dialog/ScriptUIDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ds/daisi/dialog/ScriptUIDialog;->mImageViewSetting:Landroid/widget/ImageView;

    const v0, 0x7f10013e

    .line 121
    invoke-virtual {p0, v0}, Lcom/ds/daisi/dialog/ScriptUIDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ds/daisi/dialog/ScriptUIDialog;->mButtonSave:Landroid/widget/Button;

    const v0, 0x7f10013c

    .line 123
    invoke-virtual {p0, v0}, Lcom/ds/daisi/dialog/ScriptUIDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/ds/daisi/dialog/ScriptUIDialog;->mScrollViewUI:Landroid/widget/ScrollView;

    .line 125
    iget-object v0, p0, Lcom/ds/daisi/dialog/ScriptUIDialog;->mImageViewSetting:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    iget-object v0, p0, Lcom/ds/daisi/dialog/ScriptUIDialog;->mButtonSave:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f10013b

    .line 128
    invoke-virtual {p0, v0}, Lcom/ds/daisi/dialog/ScriptUIDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/ds/daisi/dialog/ScriptUIDialog;->mUIPLinearLayout:Landroid/widget/LinearLayout;

    .line 129
    iget-object v0, p0, Lcom/ds/daisi/dialog/ScriptUIDialog;->mUIPLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 130
    invoke-virtual {p0}, Lcom/ds/daisi/dialog/ScriptUIDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/ds/daisi/util/AppDeviceUtils;->getResolution(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    const v2, 0x3f666666    # 0.9f

    mul-float v1, v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 131
    iget-object v1, p0, Lcom/ds/daisi/dialog/ScriptUIDialog;->mUIPLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private parseUIConfigFile(Ljava/io/File;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    if-eqz p1, :cond_5

    .line 549
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_4

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "UTF-8"

    .line 555
    invoke-static {p1, v1}, Lorg/apache/commons/io/FileUtils;->readFileToString(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 557
    invoke-static {p1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    move-object p1, v0

    .line 559
    :goto_0
    iget-object v0, p0, Lcom/ds/daisi/dialog/ScriptUIDialog;->commonLog:Lcom/ds/daisi/log/CommonLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "json>>>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ds/daisi/log/CommonLog;->e(Ljava/lang/Object;)V

    .line 560
    iget-object v0, p0, Lcom/ds/daisi/dialog/ScriptUIDialog;->mAppContext:Lcom/ds/daisi/AppContext;

    iget-object v0, v0, Lcom/ds/daisi/AppContext;->mScript:Lcom/ds/daisi/entity/Script;

    invoke-virtual {v0}, Lcom/ds/daisi/entity/Script;->getUipFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ds/daisi/dialog/ScriptUIDialog;->mAppContext:Lcom/ds/daisi/AppContext;

    iget-object v0, v0, Lcom/ds/daisi/AppContext;->mScript:Lcom/ds/daisi/entity/Script;

    invoke-virtual {v0}, Lcom/ds/daisi/entity/Script;->getUipFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    .line 562
    iget-object v0, p0, Lcom/ds/daisi/dialog/ScriptUIDialog;->mAppContext:Lcom/ds/daisi/AppContext;

    iget-object v0, v0, Lcom/ds/daisi/AppContext;->mUipHelper:Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;

    invoke-virtual {v0, p1}, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->configViewFromJson(Ljava/lang/String;)V

    .line 563
    iget-object v0, p0, Lcom/ds/daisi/dialog/ScriptUIDialog;->commonLog:Lcom/ds/daisi/log/CommonLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "configViewFromJson>>>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ds/daisi/log/CommonLog;->e(Ljava/lang/Object;)V

    return-void

    .line 567
    :cond_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 568
    iget-object p1, p0, Lcom/ds/daisi/dialog/ScriptUIDialog;->mArrayListSpinner:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    .line 569
    invoke-virtual {v1}, Landroid/widget/Spinner;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 570
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 571
    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_1

    .line 573
    :cond_2
    iget-object p1, p0, Lcom/ds/daisi/dialog/ScriptUIDialog;->mArrayListCheckBox:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 574
    invoke-virtual {v1}, Landroid/widget/CheckBox;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 575
    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_2

    .line 577
    :cond_3
    iget-object p1, p0, Lcom/ds/daisi/dialog/ScriptUIDialog;->mArrayListEditText:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 578
    invoke-virtual {v1}, Landroid/widget/EditText;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 579
    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_4
    return-void

    :cond_5
    :goto_4
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 620
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f10013a

    if-eq p1, v0, :cond_1

    const v0, 0x7f10013e

    if-eq p1, v0, :cond_0

    goto :goto_1

    .line 644
    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/ds/daisi/dialog/ScriptUIDialog;->mAppContext:Lcom/ds/daisi/AppContext;

    iget-object p1, p1, Lcom/ds/daisi/AppContext;->mScript:Lcom/ds/daisi/entity/Script;

    invoke-virtual {p1}, Lcom/ds/daisi/entity/Script;->getCfgFile()Ljava/io/File;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ds/daisi/dialog/ScriptUIDialog;->generateUIConfigFile(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 646
    invoke-static {p1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 648
    :goto_0
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/ds/daisi/entity/MsgItem;

    const/16 v1, 0x3ec

    invoke-direct {v0, v1}, Lcom/ds/daisi/entity/MsgItem;-><init>(I)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 649
    invoke-virtual {p0}, Lcom/ds/daisi/dialog/ScriptUIDialog;->dismiss()V

    goto :goto_1

    .line 622
    :cond_1
    invoke-virtual {p0}, Lcom/ds/daisi/dialog/ScriptUIDialog;->dismiss()V

    .line 623
    new-instance p1, Lcom/ds/daisi/dialog/SettingDialog;

    invoke-virtual {p0}, Lcom/ds/daisi/dialog/ScriptUIDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/ds/daisi/dialog/SettingDialog;-><init>(Landroid/content/Context;)V

    .line 624
    iget-object v0, p0, Lcom/ds/daisi/dialog/ScriptUIDialog;->mContext:Landroid/content/Context;

    iput-object v0, p1, Lcom/ds/daisi/dialog/SettingDialog;->mContext:Landroid/content/Context;

    .line 625
    new-instance v0, Lcom/ds/daisi/dialog/ScriptUIDialog$2;

    invoke-direct {v0, p0, p1}, Lcom/ds/daisi/dialog/ScriptUIDialog$2;-><init>(Lcom/ds/daisi/dialog/ScriptUIDialog;Lcom/ds/daisi/dialog/SettingDialog;)V

    invoke-virtual {p1, v0}, Lcom/ds/daisi/dialog/SettingDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 634
    invoke-virtual {p1}, Lcom/ds/daisi/dialog/SettingDialog;->show()V

    :goto_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 86
    invoke-super {p0, p1}, Lcom/ds/daisi/dialog/BaseDialog;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f040058

    .line 87
    invoke-virtual {p0, p1}, Lcom/ds/daisi/dialog/ScriptUIDialog;->setContentView(I)V

    const p1, 0x3dcccccd    # 0.1f

    .line 88
    invoke-virtual {p0, p1}, Lcom/ds/daisi/dialog/ScriptUIDialog;->setBlurEffect(F)V

    .line 90
    iget-object p1, p0, Lcom/ds/daisi/dialog/ScriptUIDialog;->mAppContext:Lcom/ds/daisi/AppContext;

    iget-boolean p1, p1, Lcom/ds/daisi/AppContext;->checkedScreenOrientation:Z

    const v0, 0x3f666666    # 0.9f

    if-eqz p1, :cond_0

    const p1, 0x3f4ccccd    # 0.8f

    .line 91
    invoke-virtual {p0, v0, p1}, Lcom/ds/daisi/dialog/ScriptUIDialog;->setDialogSize(FF)V

    goto :goto_0

    :cond_0
    const p1, 0x3f19999a    # 0.6f

    .line 93
    invoke-virtual {p0, v0, p1}, Lcom/ds/daisi/dialog/ScriptUIDialog;->setDialogSize(FF)V

    .line 95
    :goto_0
    invoke-direct {p0}, Lcom/ds/daisi/dialog/ScriptUIDialog;->initView()V

    const/4 p1, 0x2

    const/4 v0, 0x1

    .line 96
    invoke-direct {p0, p1, v0}, Lcom/ds/daisi/dialog/ScriptUIDialog;->initUIFile(IZ)V

    .line 97
    invoke-direct {p0}, Lcom/ds/daisi/dialog/ScriptUIDialog;->initEvent()V

    return-void
.end method
