.class public Lkiller/FreeActivity;
.super Landroid/app/Activity;
.source "FreeActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public created()V
    .locals 0

    .prologue
    .line 8
    invoke-static {}, Lkiller/App;->onScriptStart()V

    .line 9
    invoke-static {}, Lkiller/App;->onScriptStop()V

    .line 11
    return-void
.end method
