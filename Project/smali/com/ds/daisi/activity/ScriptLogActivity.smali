.class public Lcom/ds/daisi/activity/ScriptLogActivity;
.super Lcom/ds/daisi/activity/BaseActivity;
.source "ScriptLogActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ds/daisi/activity/ScriptLogActivity$OnRightImageViewListener;,
        Lcom/ds/daisi/activity/ScriptLogActivity$OnLeftImageViewListener;
    }
.end annotation


# instance fields
.field private btnRemoveAll:Landroid/widget/Button;

.field private btnSelectAll:Landroid/widget/Button;

.field private isManage:Z

.field private listviewScriptlog:Landroid/widget/ListView;

.field private scriptLogList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/ds/daisi/entity/ScriptLog;",
            ">;"
        }
    .end annotation
.end field

.field private scriptLogListViewAdapter:Lcom/ds/daisi/adpter/ScriptLogListViewAdapter;

.field private titleView:Lcom/ds/daisi/customview/TitleView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Lcom/ds/daisi/activity/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 35
    iput-boolean v0, p0, Lcom/ds/daisi/activity/ScriptLogActivity;->isManage:Z

    return-void
.end method

.method static synthetic access$200(Lcom/ds/daisi/activity/ScriptLogActivity;)Z
    .locals 0

    .line 26
    iget-boolean p0, p0, Lcom/ds/daisi/activity/ScriptLogActivity;->isManage:Z

    return p0
.end method

.method static synthetic access$202(Lcom/ds/daisi/activity/ScriptLogActivity;Z)Z
    .locals 0

    .line 26
    iput-boolean p1, p0, Lcom/ds/daisi/activity/ScriptLogActivity;->isManage:Z

    return p1
.end method

.method static synthetic access$300(Lcom/ds/daisi/activity/ScriptLogActivity;)Landroid/widget/Button;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/ds/daisi/activity/ScriptLogActivity;->btnRemoveAll:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$400(Lcom/ds/daisi/activity/ScriptLogActivity;)Landroid/widget/Button;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/ds/daisi/activity/ScriptLogActivity;->btnSelectAll:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$500(Lcom/ds/daisi/activity/ScriptLogActivity;)Lcom/ds/daisi/customview/TitleView;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/ds/daisi/activity/ScriptLogActivity;->titleView:Lcom/ds/daisi/customview/TitleView;

    return-object p0
.end method

.method static synthetic access$600(Lcom/ds/daisi/activity/ScriptLogActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/ds/daisi/activity/ScriptLogActivity;->scriptLogList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$700(Lcom/ds/daisi/activity/ScriptLogActivity;)Lcom/ds/daisi/adpter/ScriptLogListViewAdapter;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/ds/daisi/activity/ScriptLogActivity;->scriptLogListViewAdapter:Lcom/ds/daisi/adpter/ScriptLogListViewAdapter;

    return-object p0
.end method

.method private deleteScriptLogs()V
    .locals 6

    .line 160
    iget-object v0, p0, Lcom/ds/daisi/activity/ScriptLogActivity;->scriptLogList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    const/4 v1, 0x0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ds/daisi/entity/ScriptLog;

    .line 161
    invoke-virtual {v1}, Lcom/ds/daisi/entity/ScriptLog;->isSelect()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :cond_1
    if-nez v1, :cond_2

    .line 170
    iget-object v0, p0, Lcom/ds/daisi/activity/ScriptLogActivity;->appContext:Lcom/ds/daisi/AppContext;

    const v1, 0x7f090159

    invoke-virtual {v0, v1}, Lcom/ds/daisi/AppContext;->showToast(I)V

    return-void

    .line 174
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 176
    iget-object v1, p0, Lcom/ds/daisi/activity/ScriptLogActivity;->commonLog:Lcom/ds/daisi/log/CommonLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "scriptLog>>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/ds/daisi/activity/ScriptLogActivity;->scriptLogList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ds/daisi/log/CommonLog;->e(Ljava/lang/Object;)V

    .line 177
    iget-object v1, p0, Lcom/ds/daisi/activity/ScriptLogActivity;->scriptLogList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ds/daisi/entity/ScriptLog;

    .line 178
    invoke-virtual {v2}, Lcom/ds/daisi/entity/ScriptLog;->isSelect()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 179
    invoke-virtual {v2}, Lcom/ds/daisi/entity/ScriptLog;->getFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 180
    iget-object v3, p0, Lcom/ds/daisi/activity/ScriptLogActivity;->commonLog:Lcom/ds/daisi/log/CommonLog;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "scriptLog>>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/ds/daisi/entity/ScriptLog;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/ds/daisi/log/CommonLog;->e(Ljava/lang/Object;)V

    .line 181
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 185
    :cond_4
    iget-object v1, p0, Lcom/ds/daisi/activity/ScriptLogActivity;->scriptLogList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 186
    iget-object v0, p0, Lcom/ds/daisi/activity/ScriptLogActivity;->scriptLogListViewAdapter:Lcom/ds/daisi/adpter/ScriptLogListViewAdapter;

    invoke-virtual {v0}, Lcom/ds/daisi/adpter/ScriptLogListViewAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private getScriptLogListData()V
    .locals 7

    .line 92
    new-instance v0, Lcom/ds/daisi/util/FileUtils$FileSuffixrFilter;

    const-string v1, ".log"

    invoke-direct {v0, v1}, Lcom/ds/daisi/util/FileUtils$FileSuffixrFilter;-><init>(Ljava/lang/String;)V

    .line 93
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/ds/daisi/activity/ScriptLogActivity;->appContext:Lcom/ds/daisi/AppContext;

    iget-object v2, v2, Lcom/ds/daisi/AppContext;->mPathPackagenameLog:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    .line 94
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/ds/daisi/activity/ScriptLogActivity;->scriptLogList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 97
    new-instance v1, Lcom/ds/daisi/util/FileComparator;

    invoke-direct {v1}, Lcom/ds/daisi/util/FileComparator;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 98
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 99
    new-instance v4, Lcom/ds/daisi/entity/ScriptLog;

    invoke-direct {v4}, Lcom/ds/daisi/entity/ScriptLog;-><init>()V

    .line 100
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/ds/daisi/util/FileUtils;->formetFileSize(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/ds/daisi/entity/ScriptLog;->setSize(Ljava/lang/String;)V

    .line 101
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/ds/daisi/entity/ScriptLog;->setName(Ljava/lang/String;)V

    .line 102
    invoke-virtual {v4, v3}, Lcom/ds/daisi/entity/ScriptLog;->setFile(Ljava/io/File;)V

    .line 103
    iget-object v3, p0, Lcom/ds/daisi/activity/ScriptLogActivity;->scriptLogList:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private initListView()V
    .locals 2

    const v0, 0x7f1000c2

    .line 80
    invoke-virtual {p0, v0}, Lcom/ds/daisi/activity/ScriptLogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/ds/daisi/activity/ScriptLogActivity;->listviewScriptlog:Landroid/widget/ListView;

    .line 81
    iget-object v0, p0, Lcom/ds/daisi/activity/ScriptLogActivity;->listviewScriptlog:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 82
    invoke-direct {p0}, Lcom/ds/daisi/activity/ScriptLogActivity;->getScriptLogListData()V

    .line 83
    new-instance v0, Lcom/ds/daisi/adpter/ScriptLogListViewAdapter;

    iget-object v1, p0, Lcom/ds/daisi/activity/ScriptLogActivity;->scriptLogList:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1}, Lcom/ds/daisi/adpter/ScriptLogListViewAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/ds/daisi/activity/ScriptLogActivity;->scriptLogListViewAdapter:Lcom/ds/daisi/adpter/ScriptLogListViewAdapter;

    .line 84
    iget-object v0, p0, Lcom/ds/daisi/activity/ScriptLogActivity;->listviewScriptlog:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/ds/daisi/activity/ScriptLogActivity;->scriptLogListViewAdapter:Lcom/ds/daisi/adpter/ScriptLogListViewAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method private initTitle()V
    .locals 3

    const v0, 0x7f1000c1

    .line 69
    invoke-virtual {p0, v0}, Lcom/ds/daisi/activity/ScriptLogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ds/daisi/customview/TitleView;

    iput-object v0, p0, Lcom/ds/daisi/activity/ScriptLogActivity;->titleView:Lcom/ds/daisi/customview/TitleView;

    .line 70
    iget-object v0, p0, Lcom/ds/daisi/activity/ScriptLogActivity;->titleView:Lcom/ds/daisi/customview/TitleView;

    const v1, 0x7f090156

    invoke-virtual {v0, v1}, Lcom/ds/daisi/customview/TitleView;->setTitleText(I)V

    .line 71
    iget-object v0, p0, Lcom/ds/daisi/activity/ScriptLogActivity;->titleView:Lcom/ds/daisi/customview/TitleView;

    const v1, 0x7f0200c2

    invoke-virtual {v0, v1}, Lcom/ds/daisi/customview/TitleView;->setleftImage(I)V

    .line 72
    iget-object v0, p0, Lcom/ds/daisi/activity/ScriptLogActivity;->titleView:Lcom/ds/daisi/customview/TitleView;

    new-instance v1, Lcom/ds/daisi/activity/ScriptLogActivity$OnLeftImageViewListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/ds/daisi/activity/ScriptLogActivity$OnLeftImageViewListener;-><init>(Lcom/ds/daisi/activity/ScriptLogActivity;Lcom/ds/daisi/activity/ScriptLogActivity$1;)V

    invoke-virtual {v0, v1}, Lcom/ds/daisi/customview/TitleView;->setOnLeftImageViewListener(Lcom/ds/daisi/customview/TitleView$OnLeftImageViewListener;)V

    .line 74
    iget-object v0, p0, Lcom/ds/daisi/activity/ScriptLogActivity;->titleView:Lcom/ds/daisi/customview/TitleView;

    const v1, 0x7f0200cc

    invoke-virtual {v0, v1}, Lcom/ds/daisi/customview/TitleView;->setRightImage(I)V

    .line 75
    iget-object v0, p0, Lcom/ds/daisi/activity/ScriptLogActivity;->titleView:Lcom/ds/daisi/customview/TitleView;

    new-instance v1, Lcom/ds/daisi/activity/ScriptLogActivity$OnRightImageViewListener;

    invoke-direct {v1, p0, v2}, Lcom/ds/daisi/activity/ScriptLogActivity$OnRightImageViewListener;-><init>(Lcom/ds/daisi/activity/ScriptLogActivity;Lcom/ds/daisi/activity/ScriptLogActivity$1;)V

    invoke-virtual {v0, v1}, Lcom/ds/daisi/customview/TitleView;->setOnRightImageViewListener(Lcom/ds/daisi/customview/TitleView$OnRightImageViewListener;)V

    return-void
.end method

.method private initView()V
    .locals 1

    .line 58
    invoke-direct {p0}, Lcom/ds/daisi/activity/ScriptLogActivity;->initTitle()V

    .line 59
    invoke-direct {p0}, Lcom/ds/daisi/activity/ScriptLogActivity;->initListView()V

    const v0, 0x7f1000c3

    .line 60
    invoke-virtual {p0, v0}, Lcom/ds/daisi/activity/ScriptLogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ds/daisi/activity/ScriptLogActivity;->btnRemoveAll:Landroid/widget/Button;

    const v0, 0x7f1000c4

    .line 61
    invoke-virtual {p0, v0}, Lcom/ds/daisi/activity/ScriptLogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ds/daisi/activity/ScriptLogActivity;->btnSelectAll:Landroid/widget/Button;

    .line 63
    iget-object v0, p0, Lcom/ds/daisi/activity/ScriptLogActivity;->btnRemoveAll:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    iget-object v0, p0, Lcom/ds/daisi/activity/ScriptLogActivity;->btnSelectAll:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 139
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    .line 144
    :pswitch_0
    iget-object p1, p0, Lcom/ds/daisi/activity/ScriptLogActivity;->scriptLogList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ds/daisi/entity/ScriptLog;

    const/4 v1, 0x1

    .line 145
    invoke-virtual {v0, v1}, Lcom/ds/daisi/entity/ScriptLog;->setSelect(Z)V

    goto :goto_0

    .line 147
    :cond_0
    iget-object p1, p0, Lcom/ds/daisi/activity/ScriptLogActivity;->scriptLogListViewAdapter:Lcom/ds/daisi/adpter/ScriptLogListViewAdapter;

    invoke-virtual {p1}, Lcom/ds/daisi/adpter/ScriptLogListViewAdapter;->notifyDataSetChanged()V

    goto :goto_1

    .line 141
    :pswitch_1
    invoke-direct {p0}, Lcom/ds/daisi/activity/ScriptLogActivity;->deleteScriptLogs()V

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7f1000c3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 39
    invoke-super {p0, p1}, Lcom/ds/daisi/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f04002d

    .line 40
    invoke-virtual {p0, p1}, Lcom/ds/daisi/activity/ScriptLogActivity;->setContentView(I)V

    .line 41
    invoke-direct {p0}, Lcom/ds/daisi/activity/ScriptLogActivity;->initView()V

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
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

    .line 191
    iget-boolean p1, p0, Lcom/ds/daisi/activity/ScriptLogActivity;->isManage:Z

    if-nez p1, :cond_0

    .line 192
    iget-object p1, p0, Lcom/ds/daisi/activity/ScriptLogActivity;->scriptLogList:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ds/daisi/entity/ScriptLog;

    .line 193
    new-instance p2, Landroid/content/Intent;

    const-class p3, Lcom/ds/daisi/activity/ScriptLogDetailActivity;

    invoke-direct {p2, p0, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p3, "com.cyjh.elfin.activity.SettingActivity.FlagLastLog"

    const/4 p4, 0x0

    .line 194
    invoke-virtual {p2, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p3, "ScriptLogActivity.ScriptLog"

    .line 195
    invoke-virtual {p2, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 196
    invoke-virtual {p0, p2}, Lcom/ds/daisi/activity/ScriptLogActivity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 52
    invoke-super {p0}, Lcom/ds/daisi/activity/BaseActivity;->onPause()V

    .line 53
    const-class v0, Lcom/ds/daisi/activity/ScriptLogActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/analytics/MobclickAgent;->onPageEnd(Ljava/lang/String;)V

    .line 54
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 46
    invoke-super {p0}, Lcom/ds/daisi/activity/BaseActivity;->onResume()V

    .line 47
    const-class v0, Lcom/ds/daisi/activity/ScriptLogActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/analytics/MobclickAgent;->onPageStart(Ljava/lang/String;)V

    .line 48
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    return-void
.end method
