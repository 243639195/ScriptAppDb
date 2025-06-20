.class public Landroid/databinding/DataBinderMapperProxy;
.super Landroid/databinding/DataBinderMapper;
.source "DataBinderMapperProxy.java"

# interfaces
.implements Lcom/didi/virtualapk/PluginManager$Callback;


# static fields
.field public static final TAG:Ljava/lang/String; = "VA.DataBinderMapperProxy"


# instance fields
.field private mCache:[Landroid/databinding/DataBinderMapper;

.field private final mMappers:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Landroid/databinding/DataBinderMapper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 23
    invoke-direct {p0}, Landroid/databinding/DataBinderMapper;-><init>()V

    .line 24
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Landroid/databinding/DataBinderMapperProxy;->mMappers:Ljava/util/LinkedList;

    .line 26
    check-cast p1, Landroid/databinding/DataBinderMapper;

    invoke-direct {p0, p1}, Landroid/databinding/DataBinderMapperProxy;->addMapper(Landroid/databinding/DataBinderMapper;)V

    return-void
.end method

.method private addMapper(Landroid/databinding/DataBinderMapper;)V
    .locals 4

    .line 106
    iget-object v0, p0, Landroid/databinding/DataBinderMapperProxy;->mMappers:Ljava/util/LinkedList;

    monitor-enter v0

    .line 107
    :try_start_0
    iget-object v1, p0, Landroid/databinding/DataBinderMapperProxy;->mMappers:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    .line 108
    iput-object v1, p0, Landroid/databinding/DataBinderMapperProxy;->mCache:[Landroid/databinding/DataBinderMapper;

    .line 109
    iget-object v1, p0, Landroid/databinding/DataBinderMapperProxy;->mMappers:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    .line 110
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "VA.DataBinderMapperProxy"

    .line 112
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Added mapper: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", size: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception p1

    .line 110
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private getCache()[Landroid/databinding/DataBinderMapper;
    .locals 3

    .line 116
    iget-object v0, p0, Landroid/databinding/DataBinderMapperProxy;->mMappers:Ljava/util/LinkedList;

    monitor-enter v0

    .line 117
    :try_start_0
    iget-object v1, p0, Landroid/databinding/DataBinderMapperProxy;->mCache:[Landroid/databinding/DataBinderMapper;

    if-nez v1, :cond_0

    .line 118
    iget-object v1, p0, Landroid/databinding/DataBinderMapperProxy;->mMappers:Ljava/util/LinkedList;

    iget-object v2, p0, Landroid/databinding/DataBinderMapperProxy;->mMappers:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    new-array v2, v2, [Landroid/databinding/DataBinderMapper;

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/databinding/DataBinderMapper;

    iput-object v1, p0, Landroid/databinding/DataBinderMapperProxy;->mCache:[Landroid/databinding/DataBinderMapper;

    .line 120
    :cond_0
    iget-object v1, p0, Landroid/databinding/DataBinderMapperProxy;->mCache:[Landroid/databinding/DataBinderMapper;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 121
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public convertBrIdToString(I)Ljava/lang/String;
    .locals 4

    .line 78
    invoke-direct {p0}, Landroid/databinding/DataBinderMapperProxy;->getCache()[Landroid/databinding/DataBinderMapper;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 79
    invoke-virtual {v3, p1}, Landroid/databinding/DataBinderMapper;->convertBrIdToString(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getDataBinder(Landroid/databinding/DataBindingComponent;Landroid/view/View;I)Landroid/databinding/ViewDataBinding;
    .locals 4

    .line 33
    invoke-direct {p0}, Landroid/databinding/DataBinderMapperProxy;->getCache()[Landroid/databinding/DataBinderMapper;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 34
    invoke-virtual {v3, p1, p2, p3}, Landroid/databinding/DataBinderMapper;->getDataBinder(Landroid/databinding/DataBindingComponent;Landroid/view/View;I)Landroid/databinding/ViewDataBinding;

    move-result-object v3

    if-eqz v3, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getDataBinder(Landroid/databinding/DataBindingComponent;[Landroid/view/View;I)Landroid/databinding/ViewDataBinding;
    .locals 4

    .line 48
    invoke-direct {p0}, Landroid/databinding/DataBinderMapperProxy;->getCache()[Landroid/databinding/DataBinderMapper;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 49
    invoke-virtual {v3, p1, p2, p3}, Landroid/databinding/DataBinderMapper;->getDataBinder(Landroid/databinding/DataBindingComponent;[Landroid/view/View;I)Landroid/databinding/ViewDataBinding;

    move-result-object v3

    if-eqz v3, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getLayoutId(Ljava/lang/String;)I
    .locals 5

    .line 63
    invoke-direct {p0}, Landroid/databinding/DataBinderMapperProxy;->getCache()[Landroid/databinding/DataBinderMapper;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 64
    invoke-virtual {v4, p1}, Landroid/databinding/DataBinderMapper;->getLayoutId(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_0

    return v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public onAddedLoadedPlugin(Lcom/didi/virtualapk/internal/LoadedPlugin;)V
    .locals 4

    .line 92
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android.databinding.DataBinderMapper_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/didi/virtualapk/internal/LoadedPlugin;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2e

    const/16 v3, 0x5f

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VA.DataBinderMapperProxy"

    .line 93
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Try to find the class: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    .line 94
    invoke-virtual {p1}, Lcom/didi/virtualapk/internal/LoadedPlugin;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    invoke-static {v0, v1, p1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p1

    .line 95
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1

    .line 97
    check-cast p1, Landroid/databinding/DataBinderMapper;

    invoke-direct {p0, p1}, Landroid/databinding/DataBinderMapperProxy;->addMapper(Landroid/databinding/DataBinderMapper;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "VA.DataBinderMapperProxy"

    .line 100
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
