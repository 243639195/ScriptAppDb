.class public Lcom/didi/virtualapk/utils/Reflector$QuietReflector;
.super Lcom/didi/virtualapk/utils/Reflector;
.source "Reflector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/virtualapk/utils/Reflector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "QuietReflector"
.end annotation


# instance fields
.field protected mIgnored:Ljava/lang/Throwable;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 262
    invoke-direct {p0}, Lcom/didi/virtualapk/utils/Reflector;-><init>()V

    return-void
.end method

.method public static on(Ljava/lang/Class;)Lcom/didi/virtualapk/utils/Reflector$QuietReflector;
    .locals 2
    .param p0    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/didi/virtualapk/utils/Reflector$QuietReflector;"
        }
    .end annotation

    if-nez p0, :cond_0

    .line 245
    new-instance v0, Lcom/didi/virtualapk/utils/Reflector$ReflectedException;

    const-string v1, "Type was null!"

    invoke-direct {v0, v1}, Lcom/didi/virtualapk/utils/Reflector$ReflectedException;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {p0, v0}, Lcom/didi/virtualapk/utils/Reflector$QuietReflector;->on(Ljava/lang/Class;Ljava/lang/Throwable;)Lcom/didi/virtualapk/utils/Reflector$QuietReflector;

    move-result-object p0

    return-object p0
.end method

.method private static on(Ljava/lang/Class;Ljava/lang/Throwable;)Lcom/didi/virtualapk/utils/Reflector$QuietReflector;
    .locals 1
    .param p0    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Throwable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Throwable;",
            ")",
            "Lcom/didi/virtualapk/utils/Reflector$QuietReflector;"
        }
    .end annotation

    .line 249
    new-instance v0, Lcom/didi/virtualapk/utils/Reflector$QuietReflector;

    invoke-direct {v0}, Lcom/didi/virtualapk/utils/Reflector$QuietReflector;-><init>()V

    .line 250
    iput-object p0, v0, Lcom/didi/virtualapk/utils/Reflector$QuietReflector;->mType:Ljava/lang/Class;

    .line 251
    iput-object p1, v0, Lcom/didi/virtualapk/utils/Reflector$QuietReflector;->mIgnored:Ljava/lang/Throwable;

    return-object v0
.end method

.method public static on(Ljava/lang/String;)Lcom/didi/virtualapk/utils/Reflector$QuietReflector;
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 226
    const-class v0, Lcom/didi/virtualapk/utils/Reflector$QuietReflector;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v1, v0}, Lcom/didi/virtualapk/utils/Reflector$QuietReflector;->on(Ljava/lang/String;ZLjava/lang/ClassLoader;)Lcom/didi/virtualapk/utils/Reflector$QuietReflector;

    move-result-object p0

    return-object p0
.end method

.method public static on(Ljava/lang/String;Z)Lcom/didi/virtualapk/utils/Reflector$QuietReflector;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 230
    const-class v0, Lcom/didi/virtualapk/utils/Reflector$QuietReflector;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/didi/virtualapk/utils/Reflector$QuietReflector;->on(Ljava/lang/String;ZLjava/lang/ClassLoader;)Lcom/didi/virtualapk/utils/Reflector$QuietReflector;

    move-result-object p0

    return-object p0
.end method

.method public static on(Ljava/lang/String;ZLjava/lang/ClassLoader;)Lcom/didi/virtualapk/utils/Reflector$QuietReflector;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/ClassLoader;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 236
    :try_start_0
    invoke-static {p0, p1, p2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 237
    :try_start_1
    invoke-static {p0, v0}, Lcom/didi/virtualapk/utils/Reflector$QuietReflector;->on(Ljava/lang/Class;Ljava/lang/Throwable;)Lcom/didi/virtualapk/utils/Reflector$QuietReflector;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    move-object p0, v0

    .line 240
    :goto_0
    invoke-static {p0, p1}, Lcom/didi/virtualapk/utils/Reflector$QuietReflector;->on(Ljava/lang/Class;Ljava/lang/Throwable;)Lcom/didi/virtualapk/utils/Reflector$QuietReflector;

    move-result-object p0

    return-object p0
.end method

.method public static with(Ljava/lang/Object;)Lcom/didi/virtualapk/utils/Reflector$QuietReflector;
    .locals 1
    .param p0    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    if-nez p0, :cond_0

    const/4 p0, 0x0

    .line 257
    check-cast p0, Ljava/lang/Class;

    invoke-static {p0}, Lcom/didi/virtualapk/utils/Reflector$QuietReflector;->on(Ljava/lang/Class;)Lcom/didi/virtualapk/utils/Reflector$QuietReflector;

    move-result-object p0

    return-object p0

    .line 259
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/virtualapk/utils/Reflector$QuietReflector;->on(Ljava/lang/Class;)Lcom/didi/virtualapk/utils/Reflector$QuietReflector;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/didi/virtualapk/utils/Reflector$QuietReflector;->bind(Ljava/lang/Object;)Lcom/didi/virtualapk/utils/Reflector$QuietReflector;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bind(Ljava/lang/Object;)Lcom/didi/virtualapk/utils/Reflector$QuietReflector;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 310
    invoke-virtual {p0}, Lcom/didi/virtualapk/utils/Reflector$QuietReflector;->skipAlways()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    .line 314
    :try_start_0
    iput-object v0, p0, Lcom/didi/virtualapk/utils/Reflector$QuietReflector;->mIgnored:Ljava/lang/Throwable;

    .line 315
    invoke-super {p0, p1}, Lcom/didi/virtualapk/utils/Reflector;->bind(Ljava/lang/Object;)Lcom/didi/virtualapk/utils/Reflector;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 317
    iput-object p1, p0, Lcom/didi/virtualapk/utils/Reflector$QuietReflector;->mIgnored:Ljava/lang/Throwable;

    :goto_0
    return-object p0
.end method

.method public bridge synthetic bind(Ljava/lang/Object;)Lcom/didi/virtualapk/utils/Reflector;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/didi/virtualapk/utils/Reflector$ReflectedException;
        }
    .end annotation

    .line 221
    invoke-virtual {p0, p1}, Lcom/didi/virtualapk/utils/Reflector$QuietReflector;->bind(Ljava/lang/Object;)Lcom/didi/virtualapk/utils/Reflector$QuietReflector;

    move-result-object p1

    return-object p1
.end method

.method public varargs call([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1    # [Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/lang/Object;",
            ")TR;"
        }
    .end annotation

    .line 421
    invoke-virtual {p0}, Lcom/didi/virtualapk/utils/Reflector$QuietReflector;->skip()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 425
    :cond_0
    :try_start_0
    iput-object v1, p0, Lcom/didi/virtualapk/utils/Reflector$QuietReflector;->mIgnored:Ljava/lang/Throwable;

    .line 426
    invoke-super {p0, p1}, Lcom/didi/virtualapk/utils/Reflector;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 428
    iput-object p1, p0, Lcom/didi/virtualapk/utils/Reflector$QuietReflector;->mIgnored:Ljava/lang/Throwable;

    return-object v1
.end method

.method public varargs callByCaller(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # [Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Object;",
            ")TR;"
        }
    .end annotation

    .line 436
    invoke-virtual {p0}, Lcom/didi/virtualapk/utils/Reflector$QuietReflector;->skip()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 440
    :cond_0
    :try_start_0
    iput-object v1, p0, Lcom/didi/virtualapk/utils/Reflector$QuietReflector;->mIgnored:Ljava/lang/Throwable;

    .line 441
    invoke-super {p0, p1, p2}, Lcom/didi/virtualapk/utils/Reflector;->callByCaller(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 443
    iput-object p1, p0, Lcom/didi/virtualapk/utils/Reflector$QuietReflector;->mIgnored:Ljava/lang/Throwable;

    return-object v1
.end method

.method public varargs constructor([Ljava/lang/Class;)Lcom/didi/virtualapk/utils/Reflector$QuietReflector;
    .locals 1
    .param p1    # [Ljava/lang/Class;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/didi/virtualapk/utils/Reflector$QuietReflector;"
        }
    .end annotation

    .line 280
    invoke-virtual {p0}, Lcom/didi/virtualapk/utils/Reflector$QuietReflector;->skipAlways()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    .line 284
    :try_start_0
    iput-object v0, p0, Lcom/didi/virtualapk/utils/Reflector$QuietReflector;->mIgnored:Ljava/lang/Throwable;

    .line 285
    invoke-super {p0, p1}, Lcom/didi/virtualapk/utils/Reflector;->constructor([Ljava/lang/Class;)Lcom/didi/virtualapk/utils/Reflector;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 287
    iput-object p1, p0, Lcom/didi/virtualapk/utils/Reflector$QuietReflector;->mIgnored:Ljava/lang/Throwable;

    :goto_0
    return-object p0
.end method

.method public bridge synthetic constructor([Ljava/lang/Class;)Lcom/didi/virtualapk/utils/Reflector;
    .locals 0
    .param p1    # [Ljava/lang/Class;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/didi/virtualapk/utils/Reflector$ReflectedException;
        }
    .end annotation

    .line 221
    invoke-virtual {p0, p1}, Lcom/didi/virtualapk/utils/Reflector$QuietReflector;->constructor([Ljava/lang/Class;)Lcom/didi/virtualapk/utils/Reflector$QuietReflector;

    move-result-object p1

    return-object p1
.end method

.method public field(Ljava/lang/String;)Lcom/didi/virtualapk/utils/Reflector$QuietReflector;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 331
    invoke-virtual {p0}, Lcom/didi/virtualapk/utils/Reflector$QuietReflector;->skipAlways()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    .line 335
    :try_start_0
    iput-object v0, p0, Lcom/didi/virtualapk/utils/Reflector$QuietReflector;->mIgnored:Ljava/lang/Throwable;

    .line 336
    invoke-super {p0, p1}, Lcom/didi/virtualapk/utils/Reflector;->field(Ljava/lang/String;)Lcom/didi/virtualapk/utils/Reflector;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 338
    iput-object p1, p0, Lcom/didi/virtualapk/utils/Reflector$QuietReflector;->mIgnored:Ljava/lang/Throwable;

    :goto_0
    return-object p0
.end method

.method public bridge synthetic field(Ljava/lang/String;)Lcom/didi/virtualapk/utils/Reflector;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/didi/virtualapk/utils/Reflector$ReflectedException;
        }
    .end annotation

    .line 221
    invoke-virtual {p0, p1}, Lcom/didi/virtualapk/utils/Reflector$QuietReflector;->field(Ljava/lang/String;)Lcom/didi/virtualapk/utils/Reflector$QuietReflector;

    move-result-object p1

    return-object p1
.end method

.method public get()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">()TR;"
        }
    .end annotation

    .line 346
    invoke-virtual {p0}, Lcom/didi/virtualapk/utils/Reflector$QuietReflector;->skip()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 350
    :cond_0
    :try_start_0
    iput-object v1, p0, Lcom/didi/virtualapk/utils/Reflector$QuietReflector;->mIgnored:Ljava/lang/Throwable;

    .line 351
    invoke-super {p0}, Lcom/didi/virtualapk/utils/Reflector;->get()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 353
    iput-object v0, p0, Lcom/didi/virtualapk/utils/Reflector$QuietReflector;->mIgnored:Ljava/lang/Throwable;

    return-object v1
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")TR;"
        }
    .end annotation

    .line 361
    invoke-virtual {p0}, Lcom/didi/virtualapk/utils/Reflector$QuietReflector;->skip()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 365
    :cond_0
    :try_start_0
    iput-object v1, p0, Lcom/didi/virtualapk/utils/Reflector$QuietReflector;->mIgnored:Ljava/lang/Throwable;

    .line 366
    invoke-super {p0, p1}, Lcom/didi/virtualapk/utils/Reflector;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 368
    iput-object p1, p0, Lcom/didi/virtualapk/utils/Reflector$QuietReflector;->mIgnored:Ljava/lang/Throwable;

    return-object v1
.end method

.method public getIgnored()Ljava/lang/Throwable;
    .locals 1

    .line 267
    iget-object v0, p0, Lcom/didi/virtualapk/utils/Reflector$QuietReflector;->mIgnored:Ljava/lang/Throwable;

    return-object v0
.end method

.method public varargs method(Ljava/lang/String;[Ljava/lang/Class;)Lcom/didi/virtualapk/utils/Reflector$QuietReflector;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [Ljava/lang/Class;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/didi/virtualapk/utils/Reflector$QuietReflector;"
        }
    .end annotation

    .line 406
    invoke-virtual {p0}, Lcom/didi/virtualapk/utils/Reflector$QuietReflector;->skipAlways()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    .line 410
    :try_start_0
    iput-object v0, p0, Lcom/didi/virtualapk/utils/Reflector$QuietReflector;->mIgnored:Ljava/lang/Throwable;

    .line 411
    invoke-super {p0, p1, p2}, Lcom/didi/virtualapk/utils/Reflector;->method(Ljava/lang/String;[Ljava/lang/Class;)Lcom/didi/virtualapk/utils/Reflector;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 413
    iput-object p1, p0, Lcom/didi/virtualapk/utils/Reflector$QuietReflector;->mIgnored:Ljava/lang/Throwable;

    :goto_0
    return-object p0
.end method

.method public bridge synthetic method(Ljava/lang/String;[Ljava/lang/Class;)Lcom/didi/virtualapk/utils/Reflector;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [Ljava/lang/Class;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/didi/virtualapk/utils/Reflector$ReflectedException;
        }
    .end annotation

    .line 221
    invoke-virtual {p0, p1, p2}, Lcom/didi/virtualapk/utils/Reflector$QuietReflector;->method(Ljava/lang/String;[Ljava/lang/Class;)Lcom/didi/virtualapk/utils/Reflector$QuietReflector;

    move-result-object p1

    return-object p1
.end method

.method public varargs newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1    # [Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/lang/Object;",
            ")TR;"
        }
    .end annotation

    .line 295
    invoke-virtual {p0}, Lcom/didi/virtualapk/utils/Reflector$QuietReflector;->skip()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 299
    :cond_0
    :try_start_0
    iput-object v1, p0, Lcom/didi/virtualapk/utils/Reflector$QuietReflector;->mIgnored:Ljava/lang/Throwable;

    .line 300
    invoke-super {p0, p1}, Lcom/didi/virtualapk/utils/Reflector;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 302
    iput-object p1, p0, Lcom/didi/virtualapk/utils/Reflector$QuietReflector;->mIgnored:Ljava/lang/Throwable;

    return-object v1
.end method

.method public set(Ljava/lang/Object;)Lcom/didi/virtualapk/utils/Reflector$QuietReflector;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 376
    invoke-virtual {p0}, Lcom/didi/virtualapk/utils/Reflector$QuietReflector;->skip()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    .line 380
    :try_start_0
    iput-object v0, p0, Lcom/didi/virtualapk/utils/Reflector$QuietReflector;->mIgnored:Ljava/lang/Throwable;

    .line 381
    invoke-super {p0, p1}, Lcom/didi/virtualapk/utils/Reflector;->set(Ljava/lang/Object;)Lcom/didi/virtualapk/utils/Reflector;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 383
    iput-object p1, p0, Lcom/didi/virtualapk/utils/Reflector$QuietReflector;->mIgnored:Ljava/lang/Throwable;

    :goto_0
    return-object p0
.end method

.method public set(Ljava/lang/Object;Ljava/lang/Object;)Lcom/didi/virtualapk/utils/Reflector$QuietReflector;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 391
    invoke-virtual {p0}, Lcom/didi/virtualapk/utils/Reflector$QuietReflector;->skip()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    .line 395
    :try_start_0
    iput-object v0, p0, Lcom/didi/virtualapk/utils/Reflector$QuietReflector;->mIgnored:Ljava/lang/Throwable;

    .line 396
    invoke-super {p0, p1, p2}, Lcom/didi/virtualapk/utils/Reflector;->set(Ljava/lang/Object;Ljava/lang/Object;)Lcom/didi/virtualapk/utils/Reflector;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 398
    iput-object p1, p0, Lcom/didi/virtualapk/utils/Reflector$QuietReflector;->mIgnored:Ljava/lang/Throwable;

    :goto_0
    return-object p0
.end method

.method public bridge synthetic set(Ljava/lang/Object;)Lcom/didi/virtualapk/utils/Reflector;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/didi/virtualapk/utils/Reflector$ReflectedException;
        }
    .end annotation

    .line 221
    invoke-virtual {p0, p1}, Lcom/didi/virtualapk/utils/Reflector$QuietReflector;->set(Ljava/lang/Object;)Lcom/didi/virtualapk/utils/Reflector$QuietReflector;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)Lcom/didi/virtualapk/utils/Reflector;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/didi/virtualapk/utils/Reflector$ReflectedException;
        }
    .end annotation

    .line 221
    invoke-virtual {p0, p1, p2}, Lcom/didi/virtualapk/utils/Reflector$QuietReflector;->set(Ljava/lang/Object;Ljava/lang/Object;)Lcom/didi/virtualapk/utils/Reflector$QuietReflector;

    move-result-object p1

    return-object p1
.end method

.method protected skip()Z
    .locals 1

    .line 271
    invoke-virtual {p0}, Lcom/didi/virtualapk/utils/Reflector$QuietReflector;->skipAlways()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/didi/virtualapk/utils/Reflector$QuietReflector;->mIgnored:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method protected skipAlways()Z
    .locals 1

    .line 275
    iget-object v0, p0, Lcom/didi/virtualapk/utils/Reflector$QuietReflector;->mType:Ljava/lang/Class;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public unbind()Lcom/didi/virtualapk/utils/Reflector$QuietReflector;
    .locals 0

    .line 325
    invoke-super {p0}, Lcom/didi/virtualapk/utils/Reflector;->unbind()Lcom/didi/virtualapk/utils/Reflector;

    return-object p0
.end method

.method public bridge synthetic unbind()Lcom/didi/virtualapk/utils/Reflector;
    .locals 1

    .line 221
    invoke-virtual {p0}, Lcom/didi/virtualapk/utils/Reflector$QuietReflector;->unbind()Lcom/didi/virtualapk/utils/Reflector$QuietReflector;

    move-result-object v0

    return-object v0
.end method
