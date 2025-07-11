.class public abstract Landroid/content/ContentResolverWrapper;
.super Landroid/content/ContentResolver;
.source "ContentResolverWrapper.java"


# instance fields
.field mBase:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Landroid/content/ContentResolver;-><init>(Landroid/content/Context;)V

    .line 16
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Landroid/content/ContentResolverWrapper;->mBase:Landroid/content/ContentResolver;

    return-void
.end method


# virtual methods
.method protected acquireExistingProvider(Landroid/content/Context;Ljava/lang/String;)Landroid/content/IContentProvider;
    .locals 1

    .line 26
    iget-object v0, p0, Landroid/content/ContentResolverWrapper;->mBase:Landroid/content/ContentResolver;

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentResolver;->acquireExistingProvider(Landroid/content/Context;Ljava/lang/String;)Landroid/content/IContentProvider;

    move-result-object p1

    return-object p1
.end method

.method protected acquireProvider(Landroid/content/Context;Ljava/lang/String;)Landroid/content/IContentProvider;
    .locals 1

    .line 21
    iget-object v0, p0, Landroid/content/ContentResolverWrapper;->mBase:Landroid/content/ContentResolver;

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentResolver;->acquireProvider(Landroid/content/Context;Ljava/lang/String;)Landroid/content/IContentProvider;

    move-result-object p1

    return-object p1
.end method

.method protected acquireUnstableProvider(Landroid/content/Context;Ljava/lang/String;)Landroid/content/IContentProvider;
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .line 32
    iget-object v0, p0, Landroid/content/ContentResolverWrapper;->mBase:Landroid/content/ContentResolver;

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentResolver;->acquireUnstableProvider(Landroid/content/Context;Ljava/lang/String;)Landroid/content/IContentProvider;

    move-result-object p1

    return-object p1
.end method

.method public appNotRespondingViaProvider(Landroid/content/IContentProvider;)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x14
    .end annotation

    return-void
.end method

.method public releaseProvider(Landroid/content/IContentProvider;)Z
    .locals 1

    .line 37
    iget-object v0, p0, Landroid/content/ContentResolverWrapper;->mBase:Landroid/content/ContentResolver;

    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    move-result p1

    return p1
.end method

.method public releaseUnstableProvider(Landroid/content/IContentProvider;)Z
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .line 43
    iget-object v0, p0, Landroid/content/ContentResolverWrapper;->mBase:Landroid/content/ContentResolver;

    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->releaseUnstableProvider(Landroid/content/IContentProvider;)Z

    move-result p1

    return p1
.end method

.method public unstableProviderDied(Landroid/content/IContentProvider;)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .line 49
    iget-object v0, p0, Landroid/content/ContentResolverWrapper;->mBase:Landroid/content/ContentResolver;

    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->unstableProviderDied(Landroid/content/IContentProvider;)V

    return-void
.end method
