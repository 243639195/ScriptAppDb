.class public interface abstract Lcom/cyjh/share/mvp/view/VersionUpdateView;
.super Ljava/lang/Object;
.source "VersionUpdateView.java"

# interfaces
.implements Lcom/cyjh/share/mvp/base/BaseView;


# virtual methods
.method public abstract onUpdateEmpty()V
.end method

.method public abstract onUpdateFailure(Ljava/lang/String;)V
.end method

.method public abstract onUpdateSuccessful(Lcom/cyjh/share/bean/response/VersionUpdateInfo;)V
.end method
