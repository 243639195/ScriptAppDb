.class public Lcom/lidroid/xutils/view/ViewFinder;
.super Ljava/lang/Object;
.source "ViewFinder.java"


# instance fields
.field private activity:Landroid/app/Activity;

.field private preferenceActivity:Landroid/preference/PreferenceActivity;

.field private preferenceGroup:Landroid/preference/PreferenceGroup;

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/lidroid/xutils/view/ViewFinder;->activity:Landroid/app/Activity;

    return-void
.end method

.method public constructor <init>(Landroid/preference/PreferenceActivity;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/lidroid/xutils/view/ViewFinder;->preferenceActivity:Landroid/preference/PreferenceActivity;

    .line 36
    iput-object p1, p0, Lcom/lidroid/xutils/view/ViewFinder;->activity:Landroid/app/Activity;

    return-void
.end method

.method public constructor <init>(Landroid/preference/PreferenceGroup;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/lidroid/xutils/view/ViewFinder;->preferenceGroup:Landroid/preference/PreferenceGroup;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/lidroid/xutils/view/ViewFinder;->view:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/lidroid/xutils/view/ViewFinder;->preferenceGroup:Landroid/preference/PreferenceGroup;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lidroid/xutils/view/ViewFinder;->preferenceActivity:Landroid/preference/PreferenceActivity;

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/lidroid/xutils/view/ViewFinder;->preferenceGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    return-object p1
.end method

.method public findViewById(I)Landroid/view/View;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/lidroid/xutils/view/ViewFinder;->activity:Landroid/app/Activity;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lidroid/xutils/view/ViewFinder;->view:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/lidroid/xutils/view/ViewFinder;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public findViewById(II)Landroid/view/View;
    .locals 0

    if-lez p2, :cond_0

    .line 50
    invoke-virtual {p0, p2}, Lcom/lidroid/xutils/view/ViewFinder;->findViewById(I)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_1

    .line 55
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    goto :goto_1

    .line 57
    :cond_1
    invoke-virtual {p0, p1}, Lcom/lidroid/xutils/view/ViewFinder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    :goto_1
    return-object p1
.end method

.method public findViewByInfo(Lcom/lidroid/xutils/view/ViewInjectInfo;)Landroid/view/View;
    .locals 1

    .line 44
    iget-object v0, p1, Lcom/lidroid/xutils/view/ViewInjectInfo;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget p1, p1, Lcom/lidroid/xutils/view/ViewInjectInfo;->parentId:I

    invoke-virtual {p0, v0, p1}, Lcom/lidroid/xutils/view/ViewFinder;->findViewById(II)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/lidroid/xutils/view/ViewFinder;->view:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lidroid/xutils/view/ViewFinder;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/lidroid/xutils/view/ViewFinder;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lidroid/xutils/view/ViewFinder;->activity:Landroid/app/Activity;

    return-object v0

    .line 70
    :cond_1
    iget-object v0, p0, Lcom/lidroid/xutils/view/ViewFinder;->preferenceActivity:Landroid/preference/PreferenceActivity;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/lidroid/xutils/view/ViewFinder;->preferenceActivity:Landroid/preference/PreferenceActivity;

    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method
