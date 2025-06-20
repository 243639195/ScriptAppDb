.class public Lcom/ds/daisi/mvp/presenters/TemplatePresenter;
.super Ljava/lang/Object;
.source "TemplatePresenter.java"

# interfaces
.implements Lcom/ds/daisi/mvp/managers/BaseManager;


# instance fields
.field private templateManager:Lcom/ds/daisi/mvp/managers/TemplateManager;

.field private templateView:Lcom/ds/daisi/mvp/views/TemplateView;


# direct methods
.method public constructor <init>(Lcom/ds/daisi/mvp/views/TemplateView;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/ds/daisi/mvp/presenters/TemplatePresenter;->templateView:Lcom/ds/daisi/mvp/views/TemplateView;

    .line 23
    new-instance p1, Lcom/ds/daisi/mvp/managers/TemplateManager;

    invoke-direct {p1}, Lcom/ds/daisi/mvp/managers/TemplateManager;-><init>()V

    iput-object p1, p0, Lcom/ds/daisi/mvp/presenters/TemplatePresenter;->templateManager:Lcom/ds/daisi/mvp/managers/TemplateManager;

    return-void
.end method

.method static synthetic access$000(Lcom/ds/daisi/mvp/presenters/TemplatePresenter;)Lcom/ds/daisi/mvp/views/TemplateView;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/ds/daisi/mvp/presenters/TemplatePresenter;->templateView:Lcom/ds/daisi/mvp/views/TemplateView;

    return-object p0
.end method


# virtual methods
.method public singleApkOrTemplateChecked(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 32
    iget-object v0, p0, Lcom/ds/daisi/mvp/presenters/TemplatePresenter;->templateManager:Lcom/ds/daisi/mvp/managers/TemplateManager;

    new-instance v1, Lcom/ds/daisi/mvp/presenters/TemplatePresenter$1;

    invoke-direct {v1, p0, p3}, Lcom/ds/daisi/mvp/presenters/TemplatePresenter$1;-><init>(Lcom/ds/daisi/mvp/presenters/TemplatePresenter;Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1, p2, p3}, Lcom/ds/daisi/mvp/managers/TemplateManager;->singleApkOrTemplateChecked(Ljava/lang/String;Lcom/ds/daisi/mvp/managers/Callback;Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
