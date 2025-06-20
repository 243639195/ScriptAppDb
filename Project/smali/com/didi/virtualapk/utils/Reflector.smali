.class public Lcom/didi/virtualapk/utils/Reflector;
.super Ljava/lang/Object;
.source "Reflector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/virtualapk/utils/Reflector$QuietReflector;,
        Lcom/didi/virtualapk/utils/Reflector$ReflectedException;
    }
.end annotation


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "VA.Reflector"


# instance fields
.field protected mCaller:Ljava/lang/Object;

.field protected mConstructor:Ljava/lang/reflect/Constructor;

.field protected mField:Ljava/lang/reflect/Field;

.field protected mMethod:Ljava/lang/reflect/Method;

.field protected mType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static on(Ljava/lang/Class;)Lcom/didi/virtualapk/utils/Reflector;
    .locals 1
    .param p0    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/didi/virtualapk/utils/Reflector;"
        }
    .end annotation

    .line 56
    new-instance v0, Lcom/didi/virtualapk/utils/Reflector;

    invoke-direct {v0}, Lcom/didi/virtualapk/utils/Reflector;-><init>()V

    .line 57
    iput-object p0, v0, Lcom/didi/virtualapk/utils/Reflector;->mType:Ljava/lang/Class;

    return-object v0
.end method

.method public static on(Ljava/lang/String;)Lcom/didi/virtualapk/utils/Reflector;
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/didi/virtualapk/utils/Reflector$ReflectedException;
        }
    .end annotation

    .line 40
    const-class v0, Lcom/didi/virtualapk/utils/Reflector;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v1, v0}, Lcom/didi/virtualapk/utils/Reflector;->on(Ljava/lang/String;ZLjava/lang/ClassLoader;)Lcom/didi/virtualapk/utils/Reflector;

    move-result-object p0

    return-object p0
.end method

.method public static on(Ljava/lang/String;Z)Lcom/didi/virtualapk/utils/Reflector;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/didi/virtualapk/utils/Reflector$ReflectedException;
        }
    .end annotation

    .line 44
    const-class v0, Lcom/didi/virtualapk/utils/Reflector;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/didi/virtualapk/utils/Reflector;->on(Ljava/lang/String;ZLjava/lang/ClassLoader;)Lcom/didi/virtualapk/utils/Reflector;

    move-result-object p0

    return-object p0
.end method

.method public static on(Ljava/lang/String;ZLjava/lang/ClassLoader;)Lcom/didi/virtualapk/utils/Reflector;
    .locals 0
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/ClassLoader;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/didi/virtualapk/utils/Reflector$ReflectedException;
        }
    .end annotation

    .line 49
    :try_start_0
    invoke-static {p0, p1, p2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Lcom/didi/virtualapk/utils/Reflector;->on(Ljava/lang/Class;)Lcom/didi/virtualapk/utils/Reflector;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 51
    new-instance p1, Lcom/didi/virtualapk/utils/Reflector$ReflectedException;

    const-string p2, "Oops!"

    invoke-direct {p1, p2, p0}, Lcom/didi/virtualapk/utils/Reflector$ReflectedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static with(Ljava/lang/Object;)Lcom/didi/virtualapk/utils/Reflector;
    .locals 1
    .param p0    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/didi/virtualapk/utils/Reflector$ReflectedException;
        }
    .end annotation

    .line 62
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/virtualapk/utils/Reflector;->on(Ljava/lang/Class;)Lcom/didi/virtualapk/utils/Reflector;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/didi/virtualapk/utils/Reflector;->bind(Ljava/lang/Object;)Lcom/didi/virtualapk/utils/Reflector;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bind(Ljava/lang/Object;)Lcom/didi/virtualapk/utils/Reflector;
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

    .line 113
    invoke-virtual {p0, p1}, Lcom/didi/virtualapk/utils/Reflector;->checked(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/didi/virtualapk/utils/Reflector;->mCaller:Ljava/lang/Object;

    return-object p0
.end method

.method public varargs call([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/didi/virtualapk/utils/Reflector$ReflectedException;
        }
    .end annotation

    .line 206
    iget-object v0, p0, Lcom/didi/virtualapk/utils/Reflector;->mCaller:Ljava/lang/Object;

    invoke-virtual {p0, v0, p1}, Lcom/didi/virtualapk/utils/Reflector;->callByCaller(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/didi/virtualapk/utils/Reflector$ReflectedException;
        }
    .end annotation

    .line 211
    iget-object v0, p0, Lcom/didi/virtualapk/utils/Reflector;->mMethod:Ljava/lang/reflect/Method;

    const-string v1, "Method"

    invoke-virtual {p0, p1, v0, v1}, Lcom/didi/virtualapk/utils/Reflector;->check(Ljava/lang/Object;Ljava/lang/reflect/Member;Ljava/lang/String;)V

    .line 213
    :try_start_0
    iget-object v0, p0, Lcom/didi/virtualapk/utils/Reflector;->mMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 217
    new-instance p2, Lcom/didi/virtualapk/utils/Reflector$ReflectedException;

    const-string v0, "Oops!"

    invoke-direct {p2, v0, p1}, Lcom/didi/virtualapk/utils/Reflector$ReflectedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 215
    new-instance p2, Lcom/didi/virtualapk/utils/Reflector$ReflectedException;

    const-string v0, "Oops!"

    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {p2, v0, p1}, Lcom/didi/virtualapk/utils/Reflector$ReflectedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method protected check(Ljava/lang/Object;Ljava/lang/reflect/Member;Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/reflect/Member;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/didi/virtualapk/utils/Reflector$ReflectedException;
        }
    .end annotation

    if-nez p2, :cond_0

    .line 104
    new-instance p1, Lcom/didi/virtualapk/utils/Reflector$ReflectedException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " was null!"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/didi/virtualapk/utils/Reflector$ReflectedException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    if-nez p1, :cond_1

    .line 106
    invoke-interface {p2}, Ljava/lang/reflect/Member;->getModifiers()I

    move-result p2

    invoke-static {p2}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result p2

    if-nez p2, :cond_1

    .line 107
    new-instance p1, Lcom/didi/virtualapk/utils/Reflector$ReflectedException;

    const-string p2, "Need a caller!"

    invoke-direct {p1, p2}, Lcom/didi/virtualapk/utils/Reflector$ReflectedException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 109
    :cond_1
    invoke-virtual {p0, p1}, Lcom/didi/virtualapk/utils/Reflector;->checked(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected checked(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/didi/virtualapk/utils/Reflector$ReflectedException;
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 96
    iget-object v0, p0, Lcom/didi/virtualapk/utils/Reflector;->mType:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 99
    :cond_0
    new-instance v0, Lcom/didi/virtualapk/utils/Reflector$ReflectedException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Caller ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "] is not a instance of type ["

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/didi/virtualapk/utils/Reflector;->mType:Ljava/lang/Class;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "]!"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/didi/virtualapk/utils/Reflector$ReflectedException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-object p1
.end method

.method public varargs constructor([Ljava/lang/Class;)Lcom/didi/virtualapk/utils/Reflector;
    .locals 2
    .param p1    # [Ljava/lang/Class;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/didi/virtualapk/utils/Reflector;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/didi/virtualapk/utils/Reflector$ReflectedException;
        }
    .end annotation

    .line 71
    :try_start_0
    iget-object v0, p0, Lcom/didi/virtualapk/utils/Reflector;->mType:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    iput-object p1, p0, Lcom/didi/virtualapk/utils/Reflector;->mConstructor:Ljava/lang/reflect/Constructor;

    .line 72
    iget-object p1, p0, Lcom/didi/virtualapk/utils/Reflector;->mConstructor:Ljava/lang/reflect/Constructor;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    const/4 p1, 0x0

    .line 73
    iput-object p1, p0, Lcom/didi/virtualapk/utils/Reflector;->mField:Ljava/lang/reflect/Field;

    .line 74
    iput-object p1, p0, Lcom/didi/virtualapk/utils/Reflector;->mMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    .line 77
    new-instance v0, Lcom/didi/virtualapk/utils/Reflector$ReflectedException;

    const-string v1, "Oops!"

    invoke-direct {v0, v1, p1}, Lcom/didi/virtualapk/utils/Reflector$ReflectedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public field(Ljava/lang/String;)Lcom/didi/virtualapk/utils/Reflector;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/didi/virtualapk/utils/Reflector$ReflectedException;
        }
    .end annotation

    .line 124
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/didi/virtualapk/utils/Reflector;->findField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    iput-object p1, p0, Lcom/didi/virtualapk/utils/Reflector;->mField:Ljava/lang/reflect/Field;

    .line 125
    iget-object p1, p0, Lcom/didi/virtualapk/utils/Reflector;->mField:Ljava/lang/reflect/Field;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/4 p1, 0x0

    .line 126
    iput-object p1, p0, Lcom/didi/virtualapk/utils/Reflector;->mConstructor:Ljava/lang/reflect/Constructor;

    .line 127
    iput-object p1, p0, Lcom/didi/virtualapk/utils/Reflector;->mMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    .line 130
    new-instance v0, Lcom/didi/virtualapk/utils/Reflector$ReflectedException;

    const-string v1, "Oops!"

    invoke-direct {v0, v1, p1}, Lcom/didi/virtualapk/utils/Reflector$ReflectedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method protected findField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .line 136
    :try_start_0
    iget-object v0, p0, Lcom/didi/virtualapk/utils/Reflector;->mType:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 138
    iget-object v1, p0, Lcom/didi/virtualapk/utils/Reflector;->mType:Ljava/lang/Class;

    :goto_0
    if-eqz v1, :cond_0

    .line 140
    :try_start_1
    invoke-virtual {v1, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v2

    .line 138
    :catch_1
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    .line 145
    :cond_0
    throw v0
.end method

.method protected varargs findMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 3
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
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .line 192
    :try_start_0
    iget-object v0, p0, Lcom/didi/virtualapk/utils/Reflector;->mType:Ljava/lang/Class;

    invoke-virtual {v0, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 194
    iget-object v1, p0, Lcom/didi/virtualapk/utils/Reflector;->mType:Ljava/lang/Class;

    :goto_0
    if-eqz v1, :cond_0

    .line 196
    :try_start_1
    invoke-virtual {v1, p1, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v2

    .line 194
    :catch_1
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    .line 201
    :cond_0
    throw v0
.end method

.method public get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">()TR;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/didi/virtualapk/utils/Reflector$ReflectedException;
        }
    .end annotation

    .line 151
    iget-object v0, p0, Lcom/didi/virtualapk/utils/Reflector;->mCaller:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/didi/virtualapk/utils/Reflector;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/didi/virtualapk/utils/Reflector$ReflectedException;
        }
    .end annotation

    .line 156
    iget-object v0, p0, Lcom/didi/virtualapk/utils/Reflector;->mField:Ljava/lang/reflect/Field;

    const-string v1, "Field"

    invoke-virtual {p0, p1, v0, v1}, Lcom/didi/virtualapk/utils/Reflector;->check(Ljava/lang/Object;Ljava/lang/reflect/Member;Ljava/lang/String;)V

    .line 158
    :try_start_0
    iget-object v0, p0, Lcom/didi/virtualapk/utils/Reflector;->mField:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 160
    new-instance v0, Lcom/didi/virtualapk/utils/Reflector$ReflectedException;

    const-string v1, "Oops!"

    invoke-direct {v0, v1, p1}, Lcom/didi/virtualapk/utils/Reflector$ReflectedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public varargs method(Ljava/lang/String;[Ljava/lang/Class;)Lcom/didi/virtualapk/utils/Reflector;
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
            "Lcom/didi/virtualapk/utils/Reflector;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/didi/virtualapk/utils/Reflector$ReflectedException;
        }
    .end annotation

    .line 180
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/didi/virtualapk/utils/Reflector;->findMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lcom/didi/virtualapk/utils/Reflector;->mMethod:Ljava/lang/reflect/Method;

    .line 181
    iget-object p1, p0, Lcom/didi/virtualapk/utils/Reflector;->mMethod:Ljava/lang/reflect/Method;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const/4 p1, 0x0

    .line 182
    iput-object p1, p0, Lcom/didi/virtualapk/utils/Reflector;->mConstructor:Ljava/lang/reflect/Constructor;

    .line 183
    iput-object p1, p0, Lcom/didi/virtualapk/utils/Reflector;->mField:Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    .line 186
    new-instance p2, Lcom/didi/virtualapk/utils/Reflector$ReflectedException;

    const-string v0, "Oops!"

    invoke-direct {p2, v0, p1}, Lcom/didi/virtualapk/utils/Reflector$ReflectedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/didi/virtualapk/utils/Reflector$ReflectedException;
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lcom/didi/virtualapk/utils/Reflector;->mConstructor:Ljava/lang/reflect/Constructor;

    if-nez v0, :cond_0

    .line 84
    new-instance p1, Lcom/didi/virtualapk/utils/Reflector$ReflectedException;

    const-string v0, "Constructor was null!"

    invoke-direct {p1, v0}, Lcom/didi/virtualapk/utils/Reflector$ReflectedException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 87
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/didi/virtualapk/utils/Reflector;->mConstructor:Ljava/lang/reflect/Constructor;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 91
    new-instance v0, Lcom/didi/virtualapk/utils/Reflector$ReflectedException;

    const-string v1, "Oops!"

    invoke-direct {v0, v1, p1}, Lcom/didi/virtualapk/utils/Reflector$ReflectedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p1

    .line 89
    new-instance v0, Lcom/didi/virtualapk/utils/Reflector$ReflectedException;

    const-string v1, "Oops!"

    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/didi/virtualapk/utils/Reflector$ReflectedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public set(Ljava/lang/Object;)Lcom/didi/virtualapk/utils/Reflector;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/didi/virtualapk/utils/Reflector$ReflectedException;
        }
    .end annotation

    .line 165
    iget-object v0, p0, Lcom/didi/virtualapk/utils/Reflector;->mCaller:Ljava/lang/Object;

    invoke-virtual {p0, v0, p1}, Lcom/didi/virtualapk/utils/Reflector;->set(Ljava/lang/Object;Ljava/lang/Object;)Lcom/didi/virtualapk/utils/Reflector;

    move-result-object p1

    return-object p1
.end method

.method public set(Ljava/lang/Object;Ljava/lang/Object;)Lcom/didi/virtualapk/utils/Reflector;
    .locals 2
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

    .line 169
    iget-object v0, p0, Lcom/didi/virtualapk/utils/Reflector;->mField:Ljava/lang/reflect/Field;

    const-string v1, "Field"

    invoke-virtual {p0, p1, v0, v1}, Lcom/didi/virtualapk/utils/Reflector;->check(Ljava/lang/Object;Ljava/lang/reflect/Member;Ljava/lang/String;)V

    .line 171
    :try_start_0
    iget-object v0, p0, Lcom/didi/virtualapk/utils/Reflector;->mField:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    .line 174
    new-instance p2, Lcom/didi/virtualapk/utils/Reflector$ReflectedException;

    const-string v0, "Oops!"

    invoke-direct {p2, v0, p1}, Lcom/didi/virtualapk/utils/Reflector$ReflectedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public unbind()Lcom/didi/virtualapk/utils/Reflector;
    .locals 1

    const/4 v0, 0x0

    .line 118
    iput-object v0, p0, Lcom/didi/virtualapk/utils/Reflector;->mCaller:Ljava/lang/Object;

    return-object p0
.end method
