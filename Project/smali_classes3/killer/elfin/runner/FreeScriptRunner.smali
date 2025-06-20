.class public Lkiller/elfin/runner/FreeScriptRunner;
.super Ljava/lang/Object;
.source "FreeScriptRunner.java"

# interfaces
.implements Lkiller/elfin/runner/ScriptRunner;


# direct methods
.method public constructor <init>(Lcom/cyjh/elfin/activity/ElfinFreeActivity;)V
    .locals 0
    .param p1, "activity"    # Lcom/cyjh/elfin/activity/ElfinFreeActivity;

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    return-void
.end method


# virtual methods
.method public getScriptCfg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    return-object v0
.end method

.method public getScriptUip()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    return-object v0
.end method

.method public isScriptStarted()Z
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    return v0
.end method

.method public runScript()V
    .locals 0

    .prologue
    .line 14
    return-void
.end method

.method public stopScript()V
    .locals 0

    .prologue
    .line 24
    return-void
.end method

.method public updateUISetting(Ljava/lang/String;)V
    .locals 0
    .param p1, "cfg"    # Ljava/lang/String;

    .prologue
    .line 19
    return-void
.end method
