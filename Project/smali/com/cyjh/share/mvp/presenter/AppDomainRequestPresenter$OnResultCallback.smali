.class public interface abstract Lcom/cyjh/share/mvp/presenter/AppDomainRequestPresenter$OnResultCallback;
.super Ljava/lang/Object;
.source "AppDomainRequestPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyjh/share/mvp/presenter/AppDomainRequestPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnResultCallback"
.end annotation


# virtual methods
.method public abstract onFailure(ILjava/lang/String;)V
.end method

.method public abstract onSuccess(Lcom/cyjh/share/bean/response/DomainResult;)V
.end method
