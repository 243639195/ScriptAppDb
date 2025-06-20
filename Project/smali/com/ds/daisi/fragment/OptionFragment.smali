.class public Lcom/ds/daisi/fragment/OptionFragment;
.super Lcom/ds/daisi/fragment/BaseFragement;
.source "OptionFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/ds/daisi/mvp/views/VerifyPermissionView;
.implements Lcom/ds/daisi/dialog/DownloadDialogFragment$OnDownloadClickListener;
.implements Lcom/ds/daisi/pay/PayConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ds/daisi/fragment/OptionFragment$SaveSettingValueAsyncTask;,
        Lcom/ds/daisi/fragment/OptionFragment$DueTimeReceiver;,
        Lcom/ds/daisi/fragment/OptionFragment$copyScriptFilesTask;
    }
.end annotation


# static fields
.field public static final ACCOUNT_FREEZE:I = 0x0

.field public static final ACCOUNT_NORMAL:I = 0x1

.field public static final ACCOUNT_SYSTEM_EXCEPTION:I = -0x1

.field public static final ACTION_DUETIME:Ljava/lang/String; = "action_com.cyjh.elfin.fragment.OptionFragment_duetime"

.field public static final ACTION_IS_LOGIN:Ljava/lang/String; = "com.cyjh.elfin.fragment.OptionFragment_is_login"

.field private static final HONEYCOMB_PACAKGE:Ljava/lang/String; = "com.cyjh.gundam"

.field public static final INTENT_EXTRA_DUETIME:Ljava/lang/String; = "com.cyjh.elfin.fragment.OptionFragment_duetime"

.field private static final NID:I = 0x1337959

.field public static final RESULT_DEFAULT:I = 0x0

.field public static final RESULT_ENTRY_REFRESH:I = 0x3

.field public static final RESULT_FLOAT_WINDOW:I = 0x5

.field public static final RESULT_MORE_TIME:I = 0x4

.field private static final URL_HONEYCOMB:Ljava/lang/String; = "http://m.anjian.com/help/jiaoben/youxifengwo-xiaojl.apk"


# instance fields
.field private CheckBoxList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/widget/CheckBox;",
            ">;"
        }
    .end annotation
.end field

.field private EditTextList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/widget/EditText;",
            ">;"
        }
    .end annotation
.end field

.field private final MESSAGE_WHAT_ACCOUNT_FREEZR:I

.field private final MESSAGE_WHAT_LOADSCRIPT:I

.field private SpinnerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/widget/Spinner;",
            ">;"
        }
    .end annotation
.end field

.field private btnGetMoreTime:Landroid/widget/Button;

.field private btnRun:Landroid/widget/Button;

.field private downloadDialog:Lcom/ds/daisi/dialog/DownloadDialogFragment;

.field private downloadHandler:Lcom/lidroid/xutils/http/HttpHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lidroid/xutils/http/HttpHandler<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private dueTimeReceiver:Lcom/ds/daisi/fragment/OptionFragment$DueTimeReceiver;

.field private elfinPayActivity:Lcom/ds/daisi/activity/ElfinPayActivity;

.field private handler:Landroid/os/Handler;

.field private isLogin:Z

.field public isUIVlide:Z

.field private mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

.field private mNotifyManager:Landroid/app/NotificationManager;

.field private regCode:Ljava/lang/String;

.field private scrollViewUI:Landroid/widget/ScrollView;

.field private tvDueTime:Landroid/widget/TextView;

.field private typeVerifyFreeze:I

.field private uipFileLength:J

.field private uipLinearLayoutUI:Landroid/widget/LinearLayout;

.field private verifyPermissionPresenter:Lcom/ds/daisi/mvp/presenters/VerifyPermissionPresenter;

.field private viewParent:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 95
    invoke-direct {p0}, Lcom/ds/daisi/fragment/BaseFragement;-><init>()V

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ds/daisi/fragment/OptionFragment;->CheckBoxList:Ljava/util/ArrayList;

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ds/daisi/fragment/OptionFragment;->SpinnerList:Ljava/util/ArrayList;

    .line 109
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ds/daisi/fragment/OptionFragment;->EditTextList:Ljava/util/ArrayList;

    const/16 v0, 0x64

    .line 111
    iput v0, p0, Lcom/ds/daisi/fragment/OptionFragment;->MESSAGE_WHAT_LOADSCRIPT:I

    const/16 v0, 0x65

    .line 112
    iput v0, p0, Lcom/ds/daisi/fragment/OptionFragment;->MESSAGE_WHAT_ACCOUNT_FREEZR:I

    const/4 v0, 0x0

    .line 129
    iput-boolean v0, p0, Lcom/ds/daisi/fragment/OptionFragment;->isUIVlide:Z

    const-wide/16 v0, -0x1

    .line 131
    iput-wide v0, p0, Lcom/ds/daisi/fragment/OptionFragment;->uipFileLength:J

    .line 913
    new-instance v0, Lcom/ds/daisi/fragment/OptionFragment$2;

    invoke-direct {v0, p0}, Lcom/ds/daisi/fragment/OptionFragment$2;-><init>(Lcom/ds/daisi/fragment/OptionFragment;)V

    iput-object v0, p0, Lcom/ds/daisi/fragment/OptionFragment;->handler:Landroid/os/Handler;

    return-void
.end method

.method private ParMainLayout(Landroid/util/JsonReader;)Landroid/widget/LinearLayout;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 452
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/ds/daisi/fragment/OptionFragment;->elfinPayActivity:Lcom/ds/daisi/activity/ElfinPayActivity;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 453
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, 0x1

    .line 454
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 455
    invoke-virtual {p1}, Landroid/util/JsonReader;->beginObject()V

    .line 456
    :goto_0
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 457
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f09019e

    .line 459
    invoke-virtual {p0, v2}, Lcom/ds/daisi/fragment/OptionFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 460
    invoke-direct {p0, p1}, Lcom/ds/daisi/fragment/OptionFragment;->ParsHorizontalLayout(Landroid/util/JsonReader;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 461
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    const v2, 0x7f0901a6

    .line 462
    invoke-virtual {p0, v2}, Lcom/ds/daisi/fragment/OptionFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 463
    invoke-direct {p0, p1}, Lcom/ds/daisi/fragment/OptionFragment;->ParsTextView(Landroid/util/JsonReader;)Landroid/widget/TextView;

    move-result-object v1

    .line 464
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    const v2, 0x7f090197

    .line 465
    invoke-virtual {p0, v2}, Lcom/ds/daisi/fragment/OptionFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 466
    invoke-direct {p0, p1}, Lcom/ds/daisi/fragment/OptionFragment;->ParsEditText(Landroid/util/JsonReader;)Landroid/widget/EditText;

    move-result-object v1

    .line 467
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_2
    const v2, 0x7f090194

    .line 468
    invoke-virtual {p0, v2}, Lcom/ds/daisi/fragment/OptionFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 469
    invoke-direct {p0, p1}, Lcom/ds/daisi/fragment/OptionFragment;->ParsCheckBox(Landroid/util/JsonReader;)Landroid/widget/CheckBox;

    move-result-object v1

    .line 470
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_3
    const v2, 0x7f0901a2

    .line 471
    invoke-virtual {p0, v2}, Lcom/ds/daisi/fragment/OptionFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 472
    invoke-direct {p0, p1}, Lcom/ds/daisi/fragment/OptionFragment;->ParSpinner(Landroid/util/JsonReader;)Landroid/widget/Spinner;

    move-result-object v1

    .line 473
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 475
    :cond_4
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 476
    iget-object v1, p0, Lcom/ds/daisi/fragment/OptionFragment;->commonLog:Lcom/ds/daisi/log/CommonLog;

    const-string v2, "ParMainLayout\u6ca1\u6709\u6b64\u8282\u70b9"

    invoke-virtual {v1, v2}, Lcom/ds/daisi/log/CommonLog;->e(Ljava/lang/Object;)V

    goto :goto_0

    .line 479
    :cond_5
    invoke-virtual {p1}, Landroid/util/JsonReader;->endObject()V

    return-object v0
.end method

.method private ParSpinner(Landroid/util/JsonReader;)Landroid/widget/Spinner;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 743
    new-instance v0, Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/ds/daisi/fragment/OptionFragment;->elfinPayActivity:Lcom/ds/daisi/activity/ElfinPayActivity;

    invoke-direct {v0, v1}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;)V

    .line 744
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 745
    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v1, 0x7f02006e

    .line 746
    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setBackgroundResource(I)V

    const/4 v1, 0x0

    const/4 v2, 0x5

    .line 747
    invoke-virtual {v0, v1, v1, v2, v1}, Landroid/widget/Spinner;->setPadding(IIII)V

    const/4 v2, 0x3

    .line 748
    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setGravity(I)V

    .line 749
    invoke-virtual {p1}, Landroid/util/JsonReader;->beginObject()V

    .line 750
    :goto_0
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 751
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v2

    .line 753
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const v4, 0x7f09019f

    .line 754
    invoke-virtual {p0, v4}, Lcom/ds/daisi/fragment/OptionFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 755
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    .line 757
    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const v4, 0x7f0901a4

    .line 758
    invoke-virtual {p0, v4}, Lcom/ds/daisi/fragment/OptionFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 760
    invoke-virtual {p1}, Landroid/util/JsonReader;->beginArray()V

    .line 761
    :goto_1
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 762
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    .line 764
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 766
    :cond_1
    invoke-virtual {p1}, Landroid/util/JsonReader;->endArray()V

    .line 767
    new-instance v2, Landroid/widget/ArrayAdapter;

    iget-object v4, p0, Lcom/ds/daisi/fragment/OptionFragment;->elfinPayActivity:Lcom/ds/daisi/activity/ElfinPayActivity;

    const v5, 0x1090008

    invoke-direct {v2, v4, v5, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    const v3, 0x1090009

    .line 768
    invoke-virtual {v2, v3}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 769
    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    goto :goto_0

    :cond_2
    const v3, 0x7f0901a3

    .line 771
    invoke-virtual {p0, v3}, Lcom/ds/daisi/fragment/OptionFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 772
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v2

    const/4 v3, 0x1

    .line 774
    :try_start_0
    invoke-virtual {v0, v2, v3}, Landroid/widget/Spinner;->setSelection(IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 776
    :catch_0
    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_0

    .line 779
    :cond_3
    iget-object v2, p0, Lcom/ds/daisi/fragment/OptionFragment;->commonLog:Lcom/ds/daisi/log/CommonLog;

    const-string v3, "ParSpinner\u6ca1\u6709\u6b64\u8282\u70b9"

    invoke-virtual {v2, v3}, Lcom/ds/daisi/log/CommonLog;->e(Ljava/lang/Object;)V

    .line 780
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_0

    .line 783
    :cond_4
    invoke-virtual {p1}, Landroid/util/JsonReader;->endObject()V

    .line 784
    iget-object p1, p0, Lcom/ds/daisi/fragment/OptionFragment;->SpinnerList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private ParsCheckBox(Landroid/util/JsonReader;)Landroid/widget/CheckBox;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 677
    new-instance v0, Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/ds/daisi/fragment/OptionFragment;->elfinPayActivity:Lcom/ds/daisi/activity/ElfinPayActivity;

    invoke-direct {v0, v1}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    .line 678
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 679
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 680
    iget-object v1, p0, Lcom/ds/daisi/fragment/OptionFragment;->appContext:Lcom/ds/daisi/AppContext;

    const v2, 0x7f0d000e

    invoke-virtual {v1, v2}, Lcom/ds/daisi/AppContext;->getInteger(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setTextSize(F)V

    .line 681
    invoke-virtual {p1}, Landroid/util/JsonReader;->beginObject()V

    .line 682
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 683
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f09019f

    .line 685
    invoke-virtual {p0, v2}, Lcom/ds/daisi/fragment/OptionFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 686
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    .line 687
    iget-object v2, p0, Lcom/ds/daisi/fragment/OptionFragment;->commonLog:Lcom/ds/daisi/log/CommonLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u540d\u79f0>>>>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ds/daisi/log/CommonLog;->e(Ljava/lang/Object;)V

    .line 688
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const v2, 0x7f090196

    .line 689
    invoke-virtual {p0, v2}, Lcom/ds/daisi/fragment/OptionFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 690
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    .line 692
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    const v2, 0x7f090195

    .line 693
    invoke-virtual {p0, v2}, Lcom/ds/daisi/fragment/OptionFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 694
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    .line 697
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    .line 699
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    :cond_4
    const v2, 0x7f0901a5

    .line 701
    invoke-virtual {p0, v2}, Lcom/ds/daisi/fragment/OptionFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 702
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v1

    .line 704
    iget-object v2, p0, Lcom/ds/daisi/fragment/OptionFragment;->appContext:Lcom/ds/daisi/AppContext;

    const v3, 0x7f0d000f

    invoke-virtual {v2, v3}, Lcom/ds/daisi/AppContext;->getInteger(I)I

    move-result v2

    if-le v1, v2, :cond_5

    int-to-float v1, v1

    .line 705
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setTextSize(F)V

    goto/16 :goto_0

    .line 706
    :cond_5
    iget-object v2, p0, Lcom/ds/daisi/fragment/OptionFragment;->appContext:Lcom/ds/daisi/AppContext;

    const v4, 0x7f0d000d

    invoke-virtual {v2, v4}, Lcom/ds/daisi/AppContext;->getInteger(I)I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 707
    iget-object v1, p0, Lcom/ds/daisi/fragment/OptionFragment;->appContext:Lcom/ds/daisi/AppContext;

    invoke-virtual {v1, v3}, Lcom/ds/daisi/AppContext;->getInteger(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setTextSize(F)V

    goto/16 :goto_0

    :cond_6
    const v2, 0x7f09019c

    .line 709
    invoke-virtual {p0, v2}, Lcom/ds/daisi/fragment/OptionFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 710
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v1

    .line 712
    iget-object v2, p0, Lcom/ds/daisi/fragment/OptionFragment;->appContext:Lcom/ds/daisi/AppContext;

    const v3, 0x7f0d000b

    invoke-virtual {v2, v3}, Lcom/ds/daisi/AppContext;->getInteger(I)I

    move-result v2

    if-le v1, v2, :cond_0

    .line 713
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setHeight(I)V

    goto/16 :goto_0

    :cond_7
    const v2, 0x7f09019d

    .line 715
    invoke-virtual {p0, v2}, Lcom/ds/daisi/fragment/OptionFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 716
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v1

    .line 718
    iget-object v2, p0, Lcom/ds/daisi/fragment/OptionFragment;->appContext:Lcom/ds/daisi/AppContext;

    const v3, 0x7f0d000c

    invoke-virtual {v2, v3}, Lcom/ds/daisi/AppContext;->getInteger(I)I

    move-result v2

    if-le v1, v2, :cond_0

    .line 719
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setWidth(I)V

    goto/16 :goto_0

    .line 724
    :cond_8
    iget-object v1, p0, Lcom/ds/daisi/fragment/OptionFragment;->commonLog:Lcom/ds/daisi/log/CommonLog;

    const-string v2, "ParsCheckBox\u6ca1\u6709\u6b64\u8282\u70b9"

    invoke-virtual {v1, v2}, Lcom/ds/daisi/log/CommonLog;->e(Ljava/lang/Object;)V

    .line 725
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    goto/16 :goto_0

    .line 728
    :cond_9
    invoke-virtual {p1}, Landroid/util/JsonReader;->endObject()V

    .line 729
    iget-object p1, p0, Lcom/ds/daisi/fragment/OptionFragment;->CheckBoxList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private ParsEditText(Landroid/util/JsonReader;)Landroid/widget/EditText;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 598
    new-instance v0, Landroid/widget/EditText;

    iget-object v1, p0, Lcom/ds/daisi/fragment/OptionFragment;->elfinPayActivity:Lcom/ds/daisi/activity/ElfinPayActivity;

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 599
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 600
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 601
    iget-object v1, p0, Lcom/ds/daisi/fragment/OptionFragment;->appContext:Lcom/ds/daisi/AppContext;

    const v2, 0x7f0d000e

    invoke-virtual {v1, v2}, Lcom/ds/daisi/AppContext;->getInteger(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextSize(F)V

    const/4 v1, 0x1

    .line 602
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 603
    invoke-virtual {p1}, Landroid/util/JsonReader;->beginObject()V

    .line 604
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 605
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f09019f

    .line 607
    invoke-virtual {p0, v3}, Lcom/ds/daisi/fragment/OptionFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 608
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    .line 610
    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const v3, 0x7f090199

    .line 611
    invoke-virtual {p0, v3}, Lcom/ds/daisi/fragment/OptionFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 612
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    .line 614
    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    const v3, 0x7f0901a5

    .line 615
    invoke-virtual {p0, v3}, Lcom/ds/daisi/fragment/OptionFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 616
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v2

    .line 618
    iget-object v3, p0, Lcom/ds/daisi/fragment/OptionFragment;->appContext:Lcom/ds/daisi/AppContext;

    const v4, 0x7f0d000f

    invoke-virtual {v3, v4}, Lcom/ds/daisi/AppContext;->getInteger(I)I

    move-result v3

    if-le v2, v3, :cond_3

    int-to-float v2, v2

    .line 619
    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setTextSize(F)V

    goto :goto_0

    .line 620
    :cond_3
    iget-object v3, p0, Lcom/ds/daisi/fragment/OptionFragment;->appContext:Lcom/ds/daisi/AppContext;

    const v5, 0x7f0d000d

    invoke-virtual {v3, v5}, Lcom/ds/daisi/AppContext;->getInteger(I)I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 621
    iget-object v2, p0, Lcom/ds/daisi/fragment/OptionFragment;->appContext:Lcom/ds/daisi/AppContext;

    invoke-virtual {v2, v4}, Lcom/ds/daisi/AppContext;->getInteger(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setTextSize(F)V

    goto :goto_0

    :cond_4
    const v3, 0x7f09019c

    .line 623
    invoke-virtual {p0, v3}, Lcom/ds/daisi/fragment/OptionFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 624
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v2

    .line 626
    iget-object v3, p0, Lcom/ds/daisi/fragment/OptionFragment;->appContext:Lcom/ds/daisi/AppContext;

    const v4, 0x7f0d000b

    invoke-virtual {v3, v4}, Lcom/ds/daisi/AppContext;->getInteger(I)I

    move-result v3

    if-le v2, v3, :cond_0

    .line 627
    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setHeight(I)V

    goto/16 :goto_0

    :cond_5
    const v3, 0x7f09019d

    .line 629
    invoke-virtual {p0, v3}, Lcom/ds/daisi/fragment/OptionFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 630
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v2

    .line 632
    iget-object v3, p0, Lcom/ds/daisi/fragment/OptionFragment;->appContext:Lcom/ds/daisi/AppContext;

    const v4, 0x7f0d000c

    invoke-virtual {v3, v4}, Lcom/ds/daisi/AppContext;->getInteger(I)I

    move-result v3

    if-le v2, v3, :cond_0

    .line 633
    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setWidth(I)V

    goto/16 :goto_0

    :cond_6
    const v3, 0x7f09019b

    .line 635
    invoke-virtual {p0, v3}, Lcom/ds/daisi/fragment/OptionFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_7

    .line 636
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v2

    if-lez v2, :cond_0

    .line 639
    new-array v3, v1, [Landroid/text/InputFilter;

    .line 640
    new-instance v5, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v5, v2}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v5, v3, v4

    .line 641
    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    goto/16 :goto_0

    :cond_7
    const v3, 0x7f09019a

    .line 643
    invoke-virtual {p0, v3}, Lcom/ds/daisi/fragment/OptionFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 646
    :try_start_0
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 648
    :catch_0
    iget-object v2, p0, Lcom/ds/daisi/fragment/OptionFragment;->commonLog:Lcom/ds/daisi/log/CommonLog;

    const-string v3, "EditText\u89e3\u6790\u5f02\u5e38\u4e86"

    invoke-virtual {v2, v3}, Lcom/ds/daisi/log/CommonLog;->e(Ljava/lang/Object;)V

    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_0

    const/4 v2, 0x2

    .line 652
    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setInputType(I)V

    goto/16 :goto_0

    :cond_8
    const v3, 0x7f090198

    .line 654
    invoke-virtual {p0, v3}, Lcom/ds/daisi/fragment/OptionFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 655
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    .line 656
    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 658
    :cond_9
    iget-object v2, p0, Lcom/ds/daisi/fragment/OptionFragment;->commonLog:Lcom/ds/daisi/log/CommonLog;

    const-string v3, "ParsEditText\u6ca1\u6709\u6b64\u8282\u70b9"

    invoke-virtual {v2, v3}, Lcom/ds/daisi/log/CommonLog;->e(Ljava/lang/Object;)V

    .line 659
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    goto/16 :goto_0

    .line 662
    :cond_a
    iget-object v1, p0, Lcom/ds/daisi/fragment/OptionFragment;->EditTextList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 663
    invoke-virtual {p1}, Landroid/util/JsonReader;->endObject()V

    return-object v0
.end method

.method private ParsHorizontalLayout(Landroid/util/JsonReader;)Landroid/widget/LinearLayout;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 495
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/ds/daisi/fragment/OptionFragment;->elfinPayActivity:Lcom/ds/daisi/activity/ElfinPayActivity;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 496
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v1, 0x10

    .line 497
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 498
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 500
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 501
    invoke-virtual {p1}, Landroid/util/JsonReader;->beginObject()V

    .line 502
    :goto_0
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 503
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f09019e

    .line 505
    invoke-virtual {p0, v2}, Lcom/ds/daisi/fragment/OptionFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 506
    invoke-direct {p0, p1}, Lcom/ds/daisi/fragment/OptionFragment;->ParsHorizontalLayout(Landroid/util/JsonReader;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    const v2, 0x7f0901a6

    .line 507
    invoke-virtual {p0, v2}, Lcom/ds/daisi/fragment/OptionFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 508
    invoke-direct {p0, p1}, Lcom/ds/daisi/fragment/OptionFragment;->ParsTextView(Landroid/util/JsonReader;)Landroid/widget/TextView;

    move-result-object v1

    .line 509
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    const v2, 0x7f090197

    .line 510
    invoke-virtual {p0, v2}, Lcom/ds/daisi/fragment/OptionFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 511
    invoke-direct {p0, p1}, Lcom/ds/daisi/fragment/OptionFragment;->ParsEditText(Landroid/util/JsonReader;)Landroid/widget/EditText;

    move-result-object v1

    .line 512
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_2
    const v2, 0x7f090194

    .line 513
    invoke-virtual {p0, v2}, Lcom/ds/daisi/fragment/OptionFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 514
    invoke-direct {p0, p1}, Lcom/ds/daisi/fragment/OptionFragment;->ParsCheckBox(Landroid/util/JsonReader;)Landroid/widget/CheckBox;

    move-result-object v1

    .line 515
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_3
    const v2, 0x7f0901a2

    .line 516
    invoke-virtual {p0, v2}, Lcom/ds/daisi/fragment/OptionFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 517
    invoke-direct {p0, p1}, Lcom/ds/daisi/fragment/OptionFragment;->ParSpinner(Landroid/util/JsonReader;)Landroid/widget/Spinner;

    move-result-object v1

    .line 518
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 520
    :cond_4
    iget-object v1, p0, Lcom/ds/daisi/fragment/OptionFragment;->commonLog:Lcom/ds/daisi/log/CommonLog;

    const-string v2, "ParsHorizontalLayout\u6ca1\u6709\u6b64\u8282\u70b9"

    invoke-virtual {v1, v2}, Lcom/ds/daisi/log/CommonLog;->e(Ljava/lang/Object;)V

    .line 521
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_0

    .line 524
    :cond_5
    invoke-virtual {p1}, Landroid/util/JsonReader;->endObject()V

    return-object v0
.end method

.method private ParsTextView(Landroid/util/JsonReader;)Landroid/widget/TextView;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 539
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ds/daisi/fragment/OptionFragment;->elfinPayActivity:Lcom/ds/daisi/activity/ElfinPayActivity;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/16 v1, 0x11

    .line 540
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 541
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 542
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 543
    iget-object v1, p0, Lcom/ds/daisi/fragment/OptionFragment;->appContext:Lcom/ds/daisi/AppContext;

    const v2, 0x7f0d000e

    invoke-virtual {v1, v2}, Lcom/ds/daisi/AppContext;->getInteger(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 544
    invoke-virtual {p1}, Landroid/util/JsonReader;->beginObject()V

    .line 545
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 546
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f09019f

    .line 548
    invoke-virtual {p0, v2}, Lcom/ds/daisi/fragment/OptionFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 549
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    .line 551
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const v2, 0x7f0901a7

    .line 552
    invoke-virtual {p0, v2}, Lcom/ds/daisi/fragment/OptionFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 553
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    .line 555
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    const v2, 0x7f0901a5

    .line 556
    invoke-virtual {p0, v2}, Lcom/ds/daisi/fragment/OptionFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 557
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v1

    .line 559
    iget-object v2, p0, Lcom/ds/daisi/fragment/OptionFragment;->appContext:Lcom/ds/daisi/AppContext;

    const v3, 0x7f0d000f

    invoke-virtual {v2, v3}, Lcom/ds/daisi/AppContext;->getInteger(I)I

    move-result v2

    if-le v1, v2, :cond_3

    int-to-float v1, v1

    .line 560
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    goto :goto_0

    .line 561
    :cond_3
    iget-object v2, p0, Lcom/ds/daisi/fragment/OptionFragment;->appContext:Lcom/ds/daisi/AppContext;

    const v4, 0x7f0d000d

    invoke-virtual {v2, v4}, Lcom/ds/daisi/AppContext;->getInteger(I)I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 562
    iget-object v1, p0, Lcom/ds/daisi/fragment/OptionFragment;->appContext:Lcom/ds/daisi/AppContext;

    invoke-virtual {v1, v3}, Lcom/ds/daisi/AppContext;->getInteger(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    goto :goto_0

    :cond_4
    const v2, 0x7f09019c

    .line 564
    invoke-virtual {p0, v2}, Lcom/ds/daisi/fragment/OptionFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 565
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v1

    .line 567
    iget-object v2, p0, Lcom/ds/daisi/fragment/OptionFragment;->appContext:Lcom/ds/daisi/AppContext;

    const v3, 0x7f0d000b

    invoke-virtual {v2, v3}, Lcom/ds/daisi/AppContext;->getInteger(I)I

    move-result v2

    if-le v1, v2, :cond_0

    .line 568
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHeight(I)V

    goto/16 :goto_0

    :cond_5
    const v2, 0x7f09019d

    .line 570
    invoke-virtual {p0, v2}, Lcom/ds/daisi/fragment/OptionFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 571
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v1

    .line 573
    iget-object v2, p0, Lcom/ds/daisi/fragment/OptionFragment;->appContext:Lcom/ds/daisi/AppContext;

    const v3, 0x7f0d000c

    invoke-virtual {v2, v3}, Lcom/ds/daisi/AppContext;->getInteger(I)I

    move-result v2

    if-le v1, v2, :cond_0

    .line 574
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setWidth(I)V

    goto/16 :goto_0

    .line 579
    :cond_6
    iget-object v1, p0, Lcom/ds/daisi/fragment/OptionFragment;->commonLog:Lcom/ds/daisi/log/CommonLog;

    const-string v2, "ParsTextView\u6ca1\u6709\u6b64\u8282\u70b9"

    invoke-virtual {v1, v2}, Lcom/ds/daisi/log/CommonLog;->e(Ljava/lang/Object;)V

    .line 580
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    goto/16 :goto_0

    .line 583
    :cond_7
    invoke-virtual {p1}, Landroid/util/JsonReader;->endObject()V

    return-object v0
.end method

.method private ParsUIFile(Ljava/lang/String;)Landroid/widget/LinearLayout;
    .locals 3

    .line 429
    new-instance v0, Landroid/util/JsonReader;

    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V

    .line 430
    new-instance p1, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/ds/daisi/fragment/OptionFragment;->elfinPayActivity:Lcom/ds/daisi/activity/ElfinPayActivity;

    invoke-direct {p1, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 432
    :try_start_0
    invoke-virtual {v0}, Landroid/util/JsonReader;->beginObject()V

    .line 433
    :goto_0
    invoke-virtual {v0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 434
    invoke-virtual {v0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f090192

    .line 436
    invoke-virtual {p0, v2}, Lcom/ds/daisi/fragment/OptionFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 437
    invoke-direct {p0, v0}, Lcom/ds/daisi/fragment/OptionFragment;->ParMainLayout(Landroid/util/JsonReader;)Landroid/widget/LinearLayout;

    move-result-object v1

    move-object p1, v1

    goto :goto_0

    .line 439
    :cond_0
    invoke-virtual {v0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_0

    .line 442
    :cond_1
    invoke-virtual {v0}, Landroid/util/JsonReader;->endObject()V

    .line 443
    invoke-virtual {v0}, Landroid/util/JsonReader;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 445
    :catch_0
    iget-object v0, p0, Lcom/ds/daisi/fragment/OptionFragment;->commonLog:Lcom/ds/daisi/log/CommonLog;

    const-string v1, "\u754c\u9762\u6807\u7b7e\u89e3\u6790\u51fa\u9519\u4e86\uff01\uff01"

    invoke-virtual {v0, v1}, Lcom/ds/daisi/log/CommonLog;->e(Ljava/lang/Object;)V

    :goto_1
    return-object p1
.end method

.method static synthetic access$100(Lcom/ds/daisi/fragment/OptionFragment;)V
    .locals 0

    .line 95
    invoke-direct {p0}, Lcom/ds/daisi/fragment/OptionFragment;->initQUI()V

    return-void
.end method

.method static synthetic access$200(Lcom/ds/daisi/fragment/OptionFragment;)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 0

    .line 95
    iget-object p0, p0, Lcom/ds/daisi/fragment/OptionFragment;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    return-object p0
.end method

.method static synthetic access$300(Lcom/ds/daisi/fragment/OptionFragment;)Landroid/app/NotificationManager;
    .locals 0

    .line 95
    iget-object p0, p0, Lcom/ds/daisi/fragment/OptionFragment;->mNotifyManager:Landroid/app/NotificationManager;

    return-object p0
.end method

.method static synthetic access$400(Lcom/ds/daisi/fragment/OptionFragment;)Lcom/ds/daisi/dialog/DownloadDialogFragment;
    .locals 0

    .line 95
    iget-object p0, p0, Lcom/ds/daisi/fragment/OptionFragment;->downloadDialog:Lcom/ds/daisi/dialog/DownloadDialogFragment;

    return-object p0
.end method

.method static synthetic access$500(Lcom/ds/daisi/fragment/OptionFragment;)Lcom/ds/daisi/activity/ElfinPayActivity;
    .locals 0

    .line 95
    iget-object p0, p0, Lcom/ds/daisi/fragment/OptionFragment;->elfinPayActivity:Lcom/ds/daisi/activity/ElfinPayActivity;

    return-object p0
.end method

.method static synthetic access$600(Lcom/ds/daisi/fragment/OptionFragment;)Lcom/ds/daisi/mvp/presenters/VerifyPermissionPresenter;
    .locals 0

    .line 95
    iget-object p0, p0, Lcom/ds/daisi/fragment/OptionFragment;->verifyPermissionPresenter:Lcom/ds/daisi/mvp/presenters/VerifyPermissionPresenter;

    return-object p0
.end method

.method static synthetic access$700(Lcom/ds/daisi/fragment/OptionFragment;)V
    .locals 0

    .line 95
    invoke-direct {p0}, Lcom/ds/daisi/fragment/OptionFragment;->onStartFloatWindow()V

    return-void
.end method

.method static synthetic access$800(Lcom/ds/daisi/fragment/OptionFragment;)Landroid/widget/TextView;
    .locals 0

    .line 95
    iget-object p0, p0, Lcom/ds/daisi/fragment/OptionFragment;->tvDueTime:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$900(Lcom/ds/daisi/fragment/OptionFragment;)V
    .locals 0

    .line 95
    invoke-direct {p0}, Lcom/ds/daisi/fragment/OptionFragment;->isUserLogin()V

    return-void
.end method

.method private initNotification()V
    .locals 2

    .line 798
    invoke-virtual {p0}, Lcom/ds/daisi/fragment/OptionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/ds/daisi/fragment/OptionFragment;->mNotifyManager:Landroid/app/NotificationManager;

    .line 799
    new-instance v0, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {p0}, Lcom/ds/daisi/fragment/OptionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ds/daisi/fragment/OptionFragment;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    .line 800
    iget-object v0, p0, Lcom/ds/daisi/fragment/OptionFragment;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    const-string v1, "\u4e0b\u8f7d"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    const-string v1, "\u6e38\u620f\u8702\u7a9d\u4e0b\u8f7d"

    .line 801
    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    const v1, 0x7f0200cb

    .line 802
    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    return-void
.end method

.method private initQUI()V
    .locals 7

    .line 400
    new-instance v0, Lcom/cyjh/mqm/MiscUtilities;

    invoke-direct {v0}, Lcom/cyjh/mqm/MiscUtilities;-><init>()V

    .line 402
    iget-object v1, p0, Lcom/ds/daisi/fragment/OptionFragment;->appContext:Lcom/ds/daisi/AppContext;

    iget-object v1, v1, Lcom/ds/daisi/AppContext;->mScript:Lcom/ds/daisi/entity/Script;

    invoke-virtual {v1}, Lcom/ds/daisi/entity/Script;->getUipFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/ds/daisi/fragment/OptionFragment;->uipFileLength:J

    .line 403
    iget-object v1, p0, Lcom/ds/daisi/fragment/OptionFragment;->appContext:Lcom/ds/daisi/AppContext;

    iget-object v1, v1, Lcom/ds/daisi/AppContext;->mScript:Lcom/ds/daisi/entity/Script;

    invoke-virtual {v1}, Lcom/ds/daisi/entity/Script;->getUipFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iget-wide v3, p0, Lcom/ds/daisi/fragment/OptionFragment;->uipFileLength:J

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-lez v1, :cond_0

    .line 405
    iget-object v1, p0, Lcom/ds/daisi/fragment/OptionFragment;->appContext:Lcom/ds/daisi/AppContext;

    iget-object v1, v1, Lcom/ds/daisi/AppContext;->mScript:Lcom/ds/daisi/entity/Script;

    invoke-virtual {v1}, Lcom/ds/daisi/entity/Script;->getUipFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/cyjh/mqm/MiscUtilities;->LoadUIFile(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 406
    iget-object v1, p0, Lcom/ds/daisi/fragment/OptionFragment;->commonLog:Lcom/ds/daisi/log/CommonLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u8f6c\u6362\u540e>>>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/ds/daisi/log/CommonLog;->e(Ljava/lang/Object;)V

    .line 407
    iget-object v1, p0, Lcom/ds/daisi/fragment/OptionFragment;->appContext:Lcom/ds/daisi/AppContext;

    iget-object v1, v1, Lcom/ds/daisi/AppContext;->mUipHelper:Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3}, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->parseLayoutFromJson(Ljava/lang/String;Lcom/cyjh/mobileanjian/ipc/uip/IUipJsonParser;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 408
    iget-object v1, p0, Lcom/ds/daisi/fragment/OptionFragment;->uipLinearLayoutUI:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 409
    iget-object v1, p0, Lcom/ds/daisi/fragment/OptionFragment;->uipLinearLayoutUI:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 412
    :cond_0
    iget-object v1, p0, Lcom/ds/daisi/fragment/OptionFragment;->appContext:Lcom/ds/daisi/AppContext;

    iget-object v1, v1, Lcom/ds/daisi/AppContext;->mScript:Lcom/ds/daisi/entity/Script;

    invoke-virtual {v1}, Lcom/ds/daisi/entity/Script;->getUiFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/cyjh/mqm/MiscUtilities;->LoadUIFile(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 413
    iget-object v1, p0, Lcom/ds/daisi/fragment/OptionFragment;->commonLog:Lcom/ds/daisi/log/CommonLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u8f6c\u6362\u540e>>>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/ds/daisi/log/CommonLog;->e(Ljava/lang/Object;)V

    .line 414
    invoke-direct {p0, v0}, Lcom/ds/daisi/fragment/OptionFragment;->ParsUIFile(Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 415
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 416
    iget-object v1, p0, Lcom/ds/daisi/fragment/OptionFragment;->scrollViewUI:Landroid/widget/ScrollView;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/ScrollView;->removeViewAt(I)V

    .line 417
    iget-object v1, p0, Lcom/ds/daisi/fragment/OptionFragment;->scrollViewUI:Landroid/widget/ScrollView;

    invoke-virtual {v1, v0}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 421
    :cond_1
    :goto_0
    :try_start_0
    invoke-direct {p0}, Lcom/ds/daisi/fragment/OptionFragment;->parseOptionJson()V

    .line 422
    iput-boolean v2, p0, Lcom/ds/daisi/fragment/OptionFragment;->isUIVlide:Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 424
    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method private initView()V
    .locals 3

    .line 379
    iget-object v0, p0, Lcom/ds/daisi/fragment/OptionFragment;->viewParent:Landroid/view/View;

    const v1, 0x7f100188

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/ds/daisi/fragment/OptionFragment;->scrollViewUI:Landroid/widget/ScrollView;

    .line 380
    iget-object v0, p0, Lcom/ds/daisi/fragment/OptionFragment;->viewParent:Landroid/view/View;

    const v1, 0x7f10018c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ds/daisi/fragment/OptionFragment;->tvDueTime:Landroid/widget/TextView;

    .line 381
    iget-object v0, p0, Lcom/ds/daisi/fragment/OptionFragment;->viewParent:Landroid/view/View;

    const v1, 0x7f10018b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ds/daisi/fragment/OptionFragment;->btnGetMoreTime:Landroid/widget/Button;

    .line 382
    iget-object v0, p0, Lcom/ds/daisi/fragment/OptionFragment;->viewParent:Landroid/view/View;

    const v1, 0x7f10018a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ds/daisi/fragment/OptionFragment;->btnRun:Landroid/widget/Button;

    .line 384
    iget-object v0, p0, Lcom/ds/daisi/fragment/OptionFragment;->btnRun:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 386
    iget-object v0, p0, Lcom/ds/daisi/fragment/OptionFragment;->btnGetMoreTime:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 387
    iget-object v0, p0, Lcom/ds/daisi/fragment/OptionFragment;->viewParent:Landroid/view/View;

    const v1, 0x7f100187

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/ds/daisi/fragment/OptionFragment;->uipLinearLayoutUI:Landroid/widget/LinearLayout;

    .line 388
    iget-object v0, p0, Lcom/ds/daisi/fragment/OptionFragment;->uipLinearLayoutUI:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 389
    invoke-virtual {p0}, Lcom/ds/daisi/fragment/OptionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/ds/daisi/util/AppDeviceUtils;->getResolution(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    const v2, 0x3f666666    # 0.9f

    mul-float v1, v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 390
    iget-object v1, p0, Lcom/ds/daisi/fragment/OptionFragment;->uipLinearLayoutUI:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private isUserLogin()V
    .locals 3

    .line 195
    invoke-virtual {p0}, Lcom/ds/daisi/fragment/OptionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "user_message"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "is_login"

    .line 196
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ds/daisi/fragment/OptionFragment;->isLogin:Z

    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u662f\u5426\u767b\u5f55:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/ds/daisi/fragment/OptionFragment;->isLogin:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/orhanobut/logger/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private onStartFloatWindow()V
    .locals 2

    .line 334
    iget-object v0, p0, Lcom/ds/daisi/fragment/OptionFragment;->appContext:Lcom/ds/daisi/AppContext;

    iget v0, v0, Lcom/ds/daisi/AppContext;->STATE_SCRIPT:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 335
    iget-object v0, p0, Lcom/ds/daisi/fragment/OptionFragment;->appContext:Lcom/ds/daisi/AppContext;

    iput v1, v0, Lcom/ds/daisi/AppContext;->STATE_SCRIPT:I

    .line 337
    :cond_0
    iget-object v0, p0, Lcom/ds/daisi/fragment/OptionFragment;->elfinPayActivity:Lcom/ds/daisi/activity/ElfinPayActivity;

    invoke-virtual {v0, v1}, Lcom/ds/daisi/activity/ElfinPayActivity;->moveTaskToBack(Z)Z

    .line 338
    iget-object v0, p0, Lcom/ds/daisi/fragment/OptionFragment;->appContext:Lcom/ds/daisi/AppContext;

    invoke-virtual {v0}, Lcom/ds/daisi/AppContext;->showFloatView()V

    .line 339
    iget-object v0, p0, Lcom/ds/daisi/fragment/OptionFragment;->appContext:Lcom/ds/daisi/AppContext;

    iget-object v0, v0, Lcom/ds/daisi/AppContext;->mElfinFloatView:Lcom/ds/daisi/floatview/ElfinFloatView;

    invoke-virtual {p0}, Lcom/ds/daisi/fragment/OptionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iput-object v1, v0, Lcom/ds/daisi/floatview/ElfinFloatView;->mContext:Landroid/content/Context;

    return-void
.end method

.method private parseOptionJson()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 992
    iget-object v0, p0, Lcom/ds/daisi/fragment/OptionFragment;->appContext:Lcom/ds/daisi/AppContext;

    iget-object v0, v0, Lcom/ds/daisi/AppContext;->mScript:Lcom/ds/daisi/entity/Script;

    invoke-virtual {v0}, Lcom/ds/daisi/entity/Script;->getCfgFile()Ljava/io/File;

    move-result-object v0

    .line 993
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 996
    :cond_0
    invoke-static {v0}, Lcom/ds/daisi/util/FileUtils;->readTextFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 997
    iget-object v1, p0, Lcom/ds/daisi/fragment/OptionFragment;->commonLog:Lcom/ds/daisi/log/CommonLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "json>>>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ds/daisi/log/CommonLog;->e(Ljava/lang/Object;)V

    .line 998
    iget-object v1, p0, Lcom/ds/daisi/fragment/OptionFragment;->appContext:Lcom/ds/daisi/AppContext;

    iget-object v1, v1, Lcom/ds/daisi/AppContext;->mScript:Lcom/ds/daisi/entity/Script;

    invoke-virtual {v1}, Lcom/ds/daisi/entity/Script;->getUipFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-wide v1, p0, Lcom/ds/daisi/fragment/OptionFragment;->uipFileLength:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_1

    .line 1000
    iget-object v1, p0, Lcom/ds/daisi/fragment/OptionFragment;->appContext:Lcom/ds/daisi/AppContext;

    iget-object v1, v1, Lcom/ds/daisi/AppContext;->mUipHelper:Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;

    invoke-virtual {v1, v0}, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->configViewFromJson(Ljava/lang/String;)V

    return-void

    .line 1004
    :cond_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1005
    iget-object v0, p0, Lcom/ds/daisi/fragment/OptionFragment;->SpinnerList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    .line 1006
    invoke-virtual {v2}, Landroid/widget/Spinner;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1007
    iget-object v4, p0, Lcom/ds/daisi/fragment/OptionFragment;->commonLog:Lcom/ds/daisi/log/CommonLog;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "tag>>>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/ds/daisi/log/CommonLog;->e(Ljava/lang/Object;)V

    .line 1008
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 1009
    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_0

    .line 1011
    :cond_2
    iget-object v0, p0, Lcom/ds/daisi/fragment/OptionFragment;->CheckBoxList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 1012
    invoke-virtual {v2}, Landroid/widget/CheckBox;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 1013
    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1

    .line 1015
    :cond_3
    iget-object v0, p0, Lcom/ds/daisi/fragment/OptionFragment;->EditTextList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 1016
    invoke-virtual {v2}, Landroid/widget/EditText;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1017
    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_4
    return-void
.end method


# virtual methods
.method public accountCheckedResult(Lcom/ds/daisi/entity/AccountResult;)V
    .locals 1

    const-string v0, "OptionFragment accountCheckedResult"

    .line 271
    invoke-static {v0}, Lcom/ds/daisi/util/LogUtils;->logError(Ljava/lang/String;)V

    .line 272
    iget-object v0, p1, Lcom/ds/daisi/entity/AccountResult;->Msg:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 273
    iget-object v0, p1, Lcom/ds/daisi/entity/AccountResult;->Code:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 281
    :pswitch_0
    iget p1, p0, Lcom/ds/daisi/fragment/OptionFragment;->typeVerifyFreeze:I

    packed-switch p1, :pswitch_data_1

    goto :goto_0

    .line 302
    :pswitch_1
    iget-object p1, p0, Lcom/ds/daisi/fragment/OptionFragment;->handler:Landroid/os/Handler;

    const/16 v0, 0x64

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :pswitch_2
    const-string p1, "OptionFragment RESULT_ENTRY_REFRESH"

    .line 283
    invoke-static {p1}, Lcom/ds/daisi/util/LogUtils;->logError(Ljava/lang/String;)V

    :goto_0
    :pswitch_3
    const/4 p1, 0x0

    .line 305
    iput p1, p0, Lcom/ds/daisi/fragment/OptionFragment;->typeVerifyFreeze:I

    goto :goto_1

    .line 276
    :pswitch_4
    invoke-virtual {p0}, Lcom/ds/daisi/fragment/OptionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object p1, p1, Lcom/ds/daisi/entity/AccountResult;->Msg:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/ds/daisi/util/ToastUtils;->showToastLong(Landroid/content/Context;Ljava/lang/String;)V

    .line 277
    iget-object p1, p0, Lcom/ds/daisi/fragment/OptionFragment;->tvDueTime:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 278
    iget-object p1, p0, Lcom/ds/daisi/fragment/OptionFragment;->appContext:Lcom/ds/daisi/AppContext;

    const/16 v0, -0x64

    iput v0, p1, Lcom/ds/daisi/AppContext;->dueTime:I

    goto :goto_1

    .line 308
    :pswitch_5
    invoke-virtual {p0}, Lcom/ds/daisi/fragment/OptionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object p1, p1, Lcom/ds/daisi/entity/AccountResult;->Msg:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/ds/daisi/util/ToastUtils;->showToastLong(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_5
        :pswitch_4
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method public copyScriptFiles()V
    .locals 18

    move-object/from16 v0, p0

    .line 233
    iget-object v1, v0, Lcom/ds/daisi/fragment/OptionFragment;->appContext:Lcom/ds/daisi/AppContext;

    invoke-virtual {v1}, Lcom/ds/daisi/AppContext;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    .line 234
    iget-object v2, v0, Lcom/ds/daisi/fragment/OptionFragment;->appContext:Lcom/ds/daisi/AppContext;

    iget-object v2, v2, Lcom/ds/daisi/AppContext;->mScript:Lcom/ds/daisi/entity/Script;

    invoke-virtual {v2}, Lcom/ds/daisi/entity/Script;->getLcFile()Ljava/io/File;

    move-result-object v2

    .line 235
    iget-object v3, v0, Lcom/ds/daisi/fragment/OptionFragment;->appContext:Lcom/ds/daisi/AppContext;

    iget-object v3, v3, Lcom/ds/daisi/AppContext;->mScript:Lcom/ds/daisi/entity/Script;

    invoke-virtual {v3}, Lcom/ds/daisi/entity/Script;->getPropFile()Ljava/io/File;

    move-result-object v3

    .line 236
    iget-object v4, v0, Lcom/ds/daisi/fragment/OptionFragment;->appContext:Lcom/ds/daisi/AppContext;

    iget-object v4, v4, Lcom/ds/daisi/AppContext;->mScript:Lcom/ds/daisi/entity/Script;

    invoke-virtual {v4}, Lcom/ds/daisi/entity/Script;->getAtcFile()Ljava/io/File;

    move-result-object v4

    .line 237
    iget-object v5, v0, Lcom/ds/daisi/fragment/OptionFragment;->appContext:Lcom/ds/daisi/AppContext;

    iget-object v5, v5, Lcom/ds/daisi/AppContext;->mScript:Lcom/ds/daisi/entity/Script;

    invoke-virtual {v5}, Lcom/ds/daisi/entity/Script;->getUiFile()Ljava/io/File;

    move-result-object v5

    .line 238
    iget-object v6, v0, Lcom/ds/daisi/fragment/OptionFragment;->appContext:Lcom/ds/daisi/AppContext;

    iget-object v6, v6, Lcom/ds/daisi/AppContext;->mScript:Lcom/ds/daisi/entity/Script;

    invoke-virtual {v6}, Lcom/ds/daisi/entity/Script;->getUipFile()Ljava/io/File;

    move-result-object v6

    .line 239
    iget-object v7, v0, Lcom/ds/daisi/fragment/OptionFragment;->appContext:Lcom/ds/daisi/AppContext;

    iget-object v7, v7, Lcom/ds/daisi/AppContext;->mScript:Lcom/ds/daisi/entity/Script;

    invoke-virtual {v7}, Lcom/ds/daisi/entity/Script;->getRtdFile()Ljava/io/File;

    move-result-object v7

    const/4 v13, 0x0

    :try_start_0
    const-string v15, "script.lc"

    .line 249
    invoke-virtual {v1, v15}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v15
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    :try_start_1
    const-string v14, "script.prop"

    .line 250
    invoke-virtual {v1, v14}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v14
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    :try_start_2
    const-string v8, "script.atc"

    .line 251
    invoke-virtual {v1, v8}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v8
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    const-string v9, "script.ui"

    .line 252
    invoke-virtual {v1, v9}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v9
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :try_start_4
    const-string v10, "script.uip"

    .line 253
    invoke-virtual {v1, v10}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v10
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    :try_start_5
    const-string v11, "script.rtd"

    .line 254
    invoke-virtual {v1, v11}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 255
    new-instance v11, Lcom/ds/daisi/fragment/OptionFragment$copyScriptFilesTask;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    const/4 v12, 0x6

    move-object/from16 v17, v10

    :try_start_6
    new-array v10, v12, [Ljava/io/File;

    aput-object v2, v10, v13

    const/16 v16, 0x1

    aput-object v3, v10, v16

    const/16 v16, 0x2

    aput-object v4, v10, v16

    const/16 v16, 0x3

    aput-object v5, v10, v16

    const/16 v16, 0x4

    aput-object v7, v10, v16

    const/4 v7, 0x5

    aput-object v6, v10, v7

    invoke-direct {v11, v0, v10}, Lcom/ds/daisi/fragment/OptionFragment$copyScriptFilesTask;-><init>(Lcom/ds/daisi/fragment/OptionFragment;[Ljava/io/File;)V

    new-array v7, v12, [Ljava/io/InputStream;

    aput-object v15, v7, v13

    const/4 v10, 0x1

    aput-object v14, v7, v10

    const/4 v10, 0x2

    aput-object v8, v7, v10

    const/4 v10, 0x3

    aput-object v9, v7, v10

    const/4 v10, 0x4

    aput-object v1, v7, v10

    const/4 v1, 0x5

    aput-object v17, v7, v1

    invoke-virtual {v11, v7}, Lcom/ds/daisi/fragment/OptionFragment$copyScriptFilesTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_2

    :catch_0
    move-object/from16 v17, v10

    goto :goto_1

    :catch_1
    const/4 v8, 0x0

    :catch_2
    const/4 v9, 0x0

    goto :goto_0

    :catch_3
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v14, 0x0

    goto :goto_0

    :catch_4
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    :catch_5
    :goto_0
    const/16 v17, 0x0

    .line 259
    :catch_6
    :goto_1
    new-instance v1, Lcom/ds/daisi/fragment/OptionFragment$copyScriptFilesTask;

    const/4 v7, 0x5

    new-array v10, v7, [Ljava/io/File;

    aput-object v2, v10, v13

    const/4 v2, 0x1

    aput-object v3, v10, v2

    const/4 v3, 0x2

    aput-object v4, v10, v3

    const/4 v4, 0x3

    aput-object v5, v10, v4

    const/4 v5, 0x4

    aput-object v6, v10, v5

    invoke-direct {v1, v0, v10}, Lcom/ds/daisi/fragment/OptionFragment$copyScriptFilesTask;-><init>(Lcom/ds/daisi/fragment/OptionFragment;[Ljava/io/File;)V

    new-array v6, v7, [Ljava/io/InputStream;

    aput-object v15, v6, v13

    aput-object v14, v6, v2

    aput-object v8, v6, v3

    aput-object v9, v6, v4

    aput-object v17, v6, v5

    invoke-virtual {v1, v6}, Lcom/ds/daisi/fragment/OptionFragment$copyScriptFilesTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_2
    return-void
.end method

.method public downloadOnClick(Lcom/cyjh/share/view/SubmitProcessButton;)V
    .locals 5

    .line 808
    invoke-virtual {p0}, Lcom/ds/daisi/fragment/OptionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "com.cyjh.gundam"

    invoke-static {v0, v1}, Lcom/ds/daisi/util/AppDeviceUtils;->isAInstallPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 809
    invoke-virtual {p0}, Lcom/ds/daisi/fragment/OptionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    const-string v0, "com.cyjh.gundam"

    invoke-static {p1, v0}, Lcom/ds/daisi/util/AppDeviceUtils;->openApp(Landroid/content/Context;Ljava/lang/String;)Z

    return-void

    .line 812
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "youxifengwo.apk"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 813
    iget-object v1, p0, Lcom/ds/daisi/fragment/OptionFragment;->downloadHandler:Lcom/lidroid/xutils/http/HttpHandler;

    if-eqz v1, :cond_1

    .line 814
    iget-object v1, p0, Lcom/ds/daisi/fragment/OptionFragment;->commonLog:Lcom/ds/daisi/log/CommonLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "downloadHandler.getState()>>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/ds/daisi/fragment/OptionFragment;->downloadHandler:Lcom/lidroid/xutils/http/HttpHandler;

    invoke-virtual {v3}, Lcom/lidroid/xutils/http/HttpHandler;->getState()Lcom/lidroid/xutils/http/HttpHandler$State;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ds/daisi/log/CommonLog;->e(Ljava/lang/Object;)V

    .line 815
    sget-object v1, Lcom/ds/daisi/fragment/OptionFragment$3;->$SwitchMap$com$lidroid$xutils$http$HttpHandler$State:[I

    iget-object v2, p0, Lcom/ds/daisi/fragment/OptionFragment;->downloadHandler:Lcom/lidroid/xutils/http/HttpHandler;

    invoke-virtual {v2}, Lcom/lidroid/xutils/http/HttpHandler;->getState()Lcom/lidroid/xutils/http/HttpHandler$State;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lidroid/xutils/http/HttpHandler$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 827
    :pswitch_0
    invoke-virtual {p0}, Lcom/ds/daisi/fragment/OptionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/ds/daisi/util/AppDeviceUtils;->installAPK(Landroid/content/Context;Ljava/io/File;)V

    .line 828
    iget-object p1, p0, Lcom/ds/daisi/fragment/OptionFragment;->downloadDialog:Lcom/ds/daisi/dialog/DownloadDialogFragment;

    invoke-virtual {p1}, Lcom/ds/daisi/dialog/DownloadDialogFragment;->dismiss()V

    return-void

    :pswitch_1
    return-void

    .line 818
    :pswitch_2
    iget-object v1, p0, Lcom/ds/daisi/fragment/OptionFragment;->downloadHandler:Lcom/lidroid/xutils/http/HttpHandler;

    invoke-virtual {v1}, Lcom/lidroid/xutils/http/HttpHandler;->cancel()V

    .line 819
    iget-object v1, p0, Lcom/ds/daisi/fragment/OptionFragment;->downloadHandler:Lcom/lidroid/xutils/http/HttpHandler;

    invoke-virtual {v1}, Lcom/lidroid/xutils/http/HttpHandler;->cancel()V

    .line 837
    :cond_1
    :goto_0
    :pswitch_3
    invoke-virtual {p0}, Lcom/ds/daisi/fragment/OptionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/ds/daisi/net/xutils/XUtilsHttpClient;->getInstence(Landroid/content/Context;)Lcom/lidroid/xutils/HttpUtils;

    move-result-object v1

    const-string v2, "http://m.anjian.com/help/jiaoben/youxifengwo-xiaojl.apk"

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/ds/daisi/fragment/OptionFragment$1;

    invoke-direct {v4, p0, v0, p1}, Lcom/ds/daisi/fragment/OptionFragment$1;-><init>(Lcom/ds/daisi/fragment/OptionFragment;Ljava/io/File;Lcom/cyjh/share/view/SubmitProcessButton;)V

    invoke-virtual {v1, v2, v3, v4}, Lcom/lidroid/xutils/HttpUtils;->download(Ljava/lang/String;Ljava/lang/String;Lcom/lidroid/xutils/http/callback/RequestCallBack;)Lcom/lidroid/xutils/http/HttpHandler;

    move-result-object p1

    iput-object p1, p0, Lcom/ds/daisi/fragment/OptionFragment;->downloadHandler:Lcom/lidroid/xutils/http/HttpHandler;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method public generateOptionJson()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 953
    iget-object v0, p0, Lcom/ds/daisi/fragment/OptionFragment;->appContext:Lcom/ds/daisi/AppContext;

    iget-object v0, v0, Lcom/ds/daisi/AppContext;->mScript:Lcom/ds/daisi/entity/Script;

    invoke-virtual {v0}, Lcom/ds/daisi/entity/Script;->getUipFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/ds/daisi/fragment/OptionFragment;->uipFileLength:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 955
    iget-object v0, p0, Lcom/ds/daisi/fragment/OptionFragment;->appContext:Lcom/ds/daisi/AppContext;

    iget-object v0, v0, Lcom/ds/daisi/AppContext;->mUipHelper:Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;

    iget-object v1, p0, Lcom/ds/daisi/fragment/OptionFragment;->appContext:Lcom/ds/daisi/AppContext;

    iget-object v1, v1, Lcom/ds/daisi/AppContext;->mScript:Lcom/ds/daisi/entity/Script;

    invoke-virtual {v1}, Lcom/ds/daisi/entity/Script;->getCfgFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->saveToConfigFile(Ljava/lang/String;)V

    return-void

    .line 959
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 960
    iget-object v1, p0, Lcom/ds/daisi/fragment/OptionFragment;->CheckBoxList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 961
    invoke-virtual {v2}, Landroid/widget/CheckBox;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    goto :goto_0

    .line 963
    :cond_1
    iget-object v1, p0, Lcom/ds/daisi/fragment/OptionFragment;->SpinnerList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    .line 964
    invoke-virtual {v2}, Landroid/widget/Spinner;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_1

    .line 966
    :cond_2
    iget-object v1, p0, Lcom/ds/daisi/fragment/OptionFragment;->EditTextList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 967
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

    .line 973
    :cond_3
    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v2, p0, Lcom/ds/daisi/fragment/OptionFragment;->appContext:Lcom/ds/daisi/AppContext;

    iget-object v2, v2, Lcom/ds/daisi/AppContext;->mScript:Lcom/ds/daisi/entity/Script;

    invoke-virtual {v2}, Lcom/ds/daisi/entity/Script;->getCfgFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 979
    new-instance v2, Ljava/io/OutputStreamWriter;

    const-string v3, "UTF-8"

    invoke-direct {v2, v1, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 980
    new-instance v1, Ljava/io/BufferedWriter;

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 981
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 982
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V

    return-void
.end method

.method public getFragmentLayoutId()I
    .locals 1

    const v0, 0x7f040068

    return v0
.end method

.method public getTime(I)Ljava/lang/String;
    .locals 7

    .line 1063
    iget-object v0, p0, Lcom/ds/daisi/fragment/OptionFragment;->commonLog:Lcom/ds/daisi/log/CommonLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getTime>>>\u7684\u65f6\u95f4"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ds/daisi/log/CommonLog;->e(Ljava/lang/Object;)V

    .line 1064
    invoke-virtual {p0}, Lcom/ds/daisi/fragment/OptionFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x5a0

    const/16 v4, 0x3c

    if-lt p1, v3, :cond_0

    .line 1066
    iget-object v3, p0, Lcom/ds/daisi/fragment/OptionFragment;->commonLog:Lcom/ds/daisi/log/CommonLog;

    const-string v5, "dueTime >= 1440"

    invoke-virtual {v3, v5}, Lcom/ds/daisi/log/CommonLog;->e(Ljava/lang/Object;)V

    const v3, 0x7f09010d

    .line 1067
    invoke-virtual {p0, v3}, Lcom/ds/daisi/fragment/OptionFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    div-int/lit16 v6, p1, 0x5a0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    rem-int/lit16 v2, p1, 0x5a0

    div-int/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v1

    rem-int/2addr p1, v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v5, v0

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    if-le p1, v4, :cond_1

    if-ge p1, v3, :cond_1

    .line 1069
    iget-object v3, p0, Lcom/ds/daisi/fragment/OptionFragment;->commonLog:Lcom/ds/daisi/log/CommonLog;

    const-string v5, "dueTime > 60 && dueTime < 1440"

    invoke-virtual {v3, v5}, Lcom/ds/daisi/log/CommonLog;->e(Ljava/lang/Object;)V

    const v3, 0x7f09010e

    .line 1070
    invoke-virtual {p0, v3}, Lcom/ds/daisi/fragment/OptionFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v0, v0, [Ljava/lang/Object;

    div-int/lit8 v5, p1, 0x3c

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v2

    rem-int/2addr p1, v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    if-gt p1, v4, :cond_2

    if-lez p1, :cond_2

    .line 1072
    iget-object v0, p0, Lcom/ds/daisi/fragment/OptionFragment;->commonLog:Lcom/ds/daisi/log/CommonLog;

    const-string v3, "dueTime <= 60 && dueTime > 0"

    invoke-virtual {v0, v3}, Lcom/ds/daisi/log/CommonLog;->e(Ljava/lang/Object;)V

    const v0, 0x7f09010f

    .line 1073
    invoke-virtual {p0, v0}, Lcom/ds/daisi/fragment/OptionFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    if-gez p1, :cond_3

    .line 1075
    iget-object p1, p0, Lcom/ds/daisi/fragment/OptionFragment;->commonLog:Lcom/ds/daisi/log/CommonLog;

    const-string v0, "dueTime < 0"

    invoke-virtual {p1, v0}, Lcom/ds/daisi/log/CommonLog;->e(Ljava/lang/Object;)V

    const p1, 0x7f090110

    .line 1076
    invoke-virtual {p0, p1}, Lcom/ds/daisi/fragment/OptionFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public getTryCountResult(Lcom/ds/daisi/entity/AccountResult;)V
    .locals 3

    .line 323
    iget-object v0, p1, Lcom/ds/daisi/entity/AccountResult;->Code:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 324
    iget-object v0, p0, Lcom/ds/daisi/fragment/OptionFragment;->appContext:Lcom/ds/daisi/AppContext;

    iget-object v0, v0, Lcom/ds/daisi/AppContext;->mSharedUsed:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "sciprt_user_type"

    iget-object v2, p1, Lcom/ds/daisi/entity/AccountResult;->Code:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 325
    iget-object v0, p0, Lcom/ds/daisi/fragment/OptionFragment;->appContext:Lcom/ds/daisi/AppContext;

    iget-object v0, v0, Lcom/ds/daisi/AppContext;->mSharedUsed:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "script_try_count"

    iget-object p1, p1, Lcom/ds/daisi/entity/AccountResult;->TryCount:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 327
    :cond_0
    invoke-direct {p0}, Lcom/ds/daisi/fragment/OptionFragment;->onStartFloatWindow()V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .line 146
    invoke-super {p0, p1}, Lcom/ds/daisi/fragment/BaseFragement;->onActivityCreated(Landroid/os/Bundle;)V

    .line 147
    invoke-virtual {p0}, Lcom/ds/daisi/fragment/OptionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/ds/daisi/activity/ElfinPayActivity;

    iput-object p1, p0, Lcom/ds/daisi/fragment/OptionFragment;->elfinPayActivity:Lcom/ds/daisi/activity/ElfinPayActivity;

    .line 148
    iget-object p1, p0, Lcom/ds/daisi/fragment/OptionFragment;->elfinPayActivity:Lcom/ds/daisi/activity/ElfinPayActivity;

    invoke-virtual {p1}, Lcom/ds/daisi/activity/ElfinPayActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/ds/daisi/AppContext;

    iput-object p1, p0, Lcom/ds/daisi/fragment/OptionFragment;->appContext:Lcom/ds/daisi/AppContext;

    .line 149
    new-instance p1, Lcom/ds/daisi/mvp/presenters/VerifyPermissionPresenter;

    invoke-direct {p1, p0}, Lcom/ds/daisi/mvp/presenters/VerifyPermissionPresenter;-><init>(Lcom/ds/daisi/mvp/views/VerifyPermissionView;)V

    iput-object p1, p0, Lcom/ds/daisi/fragment/OptionFragment;->verifyPermissionPresenter:Lcom/ds/daisi/mvp/presenters/VerifyPermissionPresenter;

    .line 150
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 151
    invoke-virtual {p0}, Lcom/ds/daisi/fragment/OptionFragment;->getView()Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/ds/daisi/fragment/OptionFragment;->viewParent:Landroid/view/View;

    .line 152
    invoke-direct {p0}, Lcom/ds/daisi/fragment/OptionFragment;->initView()V

    .line 153
    invoke-virtual {p0}, Lcom/ds/daisi/fragment/OptionFragment;->copyScriptFiles()V

    .line 154
    invoke-direct {p0}, Lcom/ds/daisi/fragment/OptionFragment;->initNotification()V

    const-string p1, "regCode"

    .line 155
    invoke-virtual {p0}, Lcom/ds/daisi/fragment/OptionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/cyjh/share/util/AppUtils;->getFileContent(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ds/daisi/fragment/OptionFragment;->regCode:Ljava/lang/String;

    const-string p1, "zzz"

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OptionFragment--onActivityCreated:regCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ds/daisi/fragment/OptionFragment;->regCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    new-instance p1, Lcom/ds/daisi/fragment/OptionFragment$DueTimeReceiver;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/ds/daisi/fragment/OptionFragment$DueTimeReceiver;-><init>(Lcom/ds/daisi/fragment/OptionFragment;Lcom/ds/daisi/fragment/OptionFragment$1;)V

    iput-object p1, p0, Lcom/ds/daisi/fragment/OptionFragment;->dueTimeReceiver:Lcom/ds/daisi/fragment/OptionFragment$DueTimeReceiver;

    .line 158
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "action_com.cyjh.elfin.fragment.OptionFragment_duetime"

    .line 159
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.cyjh.elfin.fragment.OptionFragment_is_login"

    .line 160
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 161
    iget-object v0, p0, Lcom/ds/daisi/fragment/OptionFragment;->elfinPayActivity:Lcom/ds/daisi/activity/ElfinPayActivity;

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/ds/daisi/fragment/OptionFragment;->dueTimeReceiver:Lcom/ds/daisi/fragment/OptionFragment$DueTimeReceiver;

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 875
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 892
    :pswitch_0
    invoke-virtual {p0}, Lcom/ds/daisi/fragment/OptionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/ds/daisi/fragment/OptionFragment;->regCode:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/ds/daisi/util/IntentUtils;->toCallRegisterCodeActivity(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 877
    :pswitch_1
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/utils/RootUtil;->isRoot()Z

    move-result p1

    if-nez p1, :cond_0

    .line 878
    new-instance p1, Lcom/ds/daisi/dialog/NoRootDialog;

    invoke-virtual {p0}, Lcom/ds/daisi/fragment/OptionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/ds/daisi/dialog/NoRootDialog;-><init>(Landroid/content/Context;)V

    .line 879
    invoke-virtual {p1}, Lcom/ds/daisi/dialog/NoRootDialog;->show()V

    return-void

    :cond_0
    const/4 p1, 0x5

    .line 882
    iput p1, p0, Lcom/ds/daisi/fragment/OptionFragment;->typeVerifyFreeze:I

    .line 883
    iget-object p1, p0, Lcom/ds/daisi/fragment/OptionFragment;->verifyPermissionPresenter:Lcom/ds/daisi/mvp/presenters/VerifyPermissionPresenter;

    invoke-virtual {p0}, Lcom/ds/daisi/fragment/OptionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ds/daisi/mvp/presenters/VerifyPermissionPresenter;->checkedUserFreeze(Landroid/content/Context;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x7f10018a
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 141
    invoke-super {p0, p1}, Lcom/ds/daisi/fragment/BaseFragement;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 226
    invoke-super {p0}, Lcom/ds/daisi/fragment/BaseFragement;->onDestroy()V

    .line 227
    invoke-virtual {p0}, Lcom/ds/daisi/fragment/OptionFragment;->hideProgressDialog()V

    .line 228
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 229
    iget-object v0, p0, Lcom/ds/daisi/fragment/OptionFragment;->elfinPayActivity:Lcom/ds/daisi/activity/ElfinPayActivity;

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/ds/daisi/fragment/OptionFragment;->dueTimeReceiver:Lcom/ds/daisi/fragment/OptionFragment$DueTimeReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onMessageThreadMain(Lcom/ds/daisi/entity/MsgItem;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 216
    invoke-virtual {p1}, Lcom/ds/daisi/entity/MsgItem;->getMsgType()I

    move-result p1

    const/16 v0, 0x3ec

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 219
    :cond_0
    invoke-direct {p0}, Lcom/ds/daisi/fragment/OptionFragment;->initQUI()V

    :goto_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 202
    invoke-super {p0}, Lcom/ds/daisi/fragment/BaseFragement;->onPause()V

    .line 203
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/analytics/MobclickAgent;->onPageEnd(Ljava/lang/String;)V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 171
    invoke-super {p0}, Lcom/ds/daisi/fragment/BaseFragement;->onResume()V

    .line 173
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/analytics/MobclickAgent;->onPageStart(Ljava/lang/String;)V

    .line 183
    invoke-direct {p0}, Lcom/ds/daisi/fragment/OptionFragment;->isUserLogin()V

    .line 185
    iget-boolean v0, p0, Lcom/ds/daisi/fragment/OptionFragment;->isLogin:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    .line 186
    iput v0, p0, Lcom/ds/daisi/fragment/OptionFragment;->typeVerifyFreeze:I

    .line 187
    iget-object v0, p0, Lcom/ds/daisi/fragment/OptionFragment;->verifyPermissionPresenter:Lcom/ds/daisi/mvp/presenters/VerifyPermissionPresenter;

    invoke-virtual {p0}, Lcom/ds/daisi/fragment/OptionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ds/daisi/mvp/presenters/VerifyPermissionPresenter;->checkedUserFreeze(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .line 135
    invoke-super {p0, p1}, Lcom/ds/daisi/fragment/BaseFragement;->onSaveInstanceState(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 136
    invoke-virtual {p0, p1}, Lcom/ds/daisi/fragment/OptionFragment;->setUserVisibleHint(Z)V

    return-void
.end method

.method public onStop()V
    .locals 3

    .line 208
    invoke-super {p0}, Lcom/ds/daisi/fragment/BaseFragement;->onStop()V

    const-string v0, "onStop\u662f\u5426\u6267\u884c\u4e86"

    const/4 v1, 0x0

    .line 209
    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/orhanobut/logger/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 210
    new-instance v0, Lcom/ds/daisi/fragment/OptionFragment$SaveSettingValueAsyncTask;

    invoke-direct {v0, p0}, Lcom/ds/daisi/fragment/OptionFragment$SaveSettingValueAsyncTask;-><init>(Lcom/ds/daisi/fragment/OptionFragment;)V

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/ds/daisi/fragment/OptionFragment$SaveSettingValueAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
