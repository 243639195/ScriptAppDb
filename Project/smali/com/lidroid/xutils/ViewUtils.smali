.class public Lcom/lidroid/xutils/ViewUtils;
.super Ljava/lang/Object;
.source "ViewUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static inject(Landroid/app/Activity;)V
    .locals 1

    .line 49
    new-instance v0, Lcom/lidroid/xutils/view/ViewFinder;

    invoke-direct {v0, p0}, Lcom/lidroid/xutils/view/ViewFinder;-><init>(Landroid/app/Activity;)V

    invoke-static {p0, v0}, Lcom/lidroid/xutils/ViewUtils;->injectObject(Ljava/lang/Object;Lcom/lidroid/xutils/view/ViewFinder;)V

    return-void
.end method

.method public static inject(Landroid/preference/PreferenceActivity;)V
    .locals 1

    .line 53
    new-instance v0, Lcom/lidroid/xutils/view/ViewFinder;

    invoke-direct {v0, p0}, Lcom/lidroid/xutils/view/ViewFinder;-><init>(Landroid/preference/PreferenceActivity;)V

    invoke-static {p0, v0}, Lcom/lidroid/xutils/ViewUtils;->injectObject(Ljava/lang/Object;Lcom/lidroid/xutils/view/ViewFinder;)V

    return-void
.end method

.method public static inject(Landroid/view/View;)V
    .locals 1

    .line 45
    new-instance v0, Lcom/lidroid/xutils/view/ViewFinder;

    invoke-direct {v0, p0}, Lcom/lidroid/xutils/view/ViewFinder;-><init>(Landroid/view/View;)V

    invoke-static {p0, v0}, Lcom/lidroid/xutils/ViewUtils;->injectObject(Ljava/lang/Object;Lcom/lidroid/xutils/view/ViewFinder;)V

    return-void
.end method

.method public static inject(Ljava/lang/Object;Landroid/app/Activity;)V
    .locals 1

    .line 61
    new-instance v0, Lcom/lidroid/xutils/view/ViewFinder;

    invoke-direct {v0, p1}, Lcom/lidroid/xutils/view/ViewFinder;-><init>(Landroid/app/Activity;)V

    invoke-static {p0, v0}, Lcom/lidroid/xutils/ViewUtils;->injectObject(Ljava/lang/Object;Lcom/lidroid/xutils/view/ViewFinder;)V

    return-void
.end method

.method public static inject(Ljava/lang/Object;Landroid/preference/PreferenceActivity;)V
    .locals 1

    .line 69
    new-instance v0, Lcom/lidroid/xutils/view/ViewFinder;

    invoke-direct {v0, p1}, Lcom/lidroid/xutils/view/ViewFinder;-><init>(Landroid/preference/PreferenceActivity;)V

    invoke-static {p0, v0}, Lcom/lidroid/xutils/ViewUtils;->injectObject(Ljava/lang/Object;Lcom/lidroid/xutils/view/ViewFinder;)V

    return-void
.end method

.method public static inject(Ljava/lang/Object;Landroid/preference/PreferenceGroup;)V
    .locals 1

    .line 65
    new-instance v0, Lcom/lidroid/xutils/view/ViewFinder;

    invoke-direct {v0, p1}, Lcom/lidroid/xutils/view/ViewFinder;-><init>(Landroid/preference/PreferenceGroup;)V

    invoke-static {p0, v0}, Lcom/lidroid/xutils/ViewUtils;->injectObject(Ljava/lang/Object;Lcom/lidroid/xutils/view/ViewFinder;)V

    return-void
.end method

.method public static inject(Ljava/lang/Object;Landroid/view/View;)V
    .locals 1

    .line 57
    new-instance v0, Lcom/lidroid/xutils/view/ViewFinder;

    invoke-direct {v0, p1}, Lcom/lidroid/xutils/view/ViewFinder;-><init>(Landroid/view/View;)V

    invoke-static {p0, v0}, Lcom/lidroid/xutils/ViewUtils;->injectObject(Ljava/lang/Object;Lcom/lidroid/xutils/view/ViewFinder;)V

    return-void
.end method

.method private static injectObject(Ljava/lang/Object;Lcom/lidroid/xutils/view/ViewFinder;)V
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 75
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 78
    const-class v4, Lcom/lidroid/xutils/view/annotation/ContentView;

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    check-cast v4, Lcom/lidroid/xutils/view/annotation/ContentView;

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_0

    :try_start_0
    const-string v7, "setContentView"

    .line 81
    new-array v8, v5, [Ljava/lang/Class;

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, v6

    invoke-virtual {v3, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 82
    new-array v8, v5, [Ljava/lang/Object;

    invoke-interface {v4}, Lcom/lidroid/xutils/view/annotation/ContentView;->value()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v8, v6

    invoke-virtual {v7, v1, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v4, v0

    .line 84
    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v4}, Lcom/lidroid/xutils/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 89
    :cond_0
    :goto_0
    invoke-virtual {v3}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 90
    array-length v7, v4

    if-lez v7, :cond_5

    .line 91
    array-length v7, v4

    const/4 v8, 0x0

    :goto_1
    if-lt v8, v7, :cond_1

    goto/16 :goto_3

    :cond_1
    aget-object v9, v4, v8

    .line 92
    const-class v10, Lcom/lidroid/xutils/view/annotation/ViewInject;

    invoke-virtual {v9, v10}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v10

    check-cast v10, Lcom/lidroid/xutils/view/annotation/ViewInject;

    if-eqz v10, :cond_2

    .line 95
    :try_start_1
    invoke-interface {v10}, Lcom/lidroid/xutils/view/annotation/ViewInject;->value()I

    move-result v11

    invoke-interface {v10}, Lcom/lidroid/xutils/view/annotation/ViewInject;->parentId()I

    move-result v10

    invoke-virtual {v2, v11, v10}, Lcom/lidroid/xutils/view/ViewFinder;->findViewById(II)Landroid/view/View;

    move-result-object v10

    if-eqz v10, :cond_4

    .line 97
    invoke-virtual {v9, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 98
    invoke-virtual {v9, v1, v10}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v9, v0

    .line 101
    invoke-virtual {v9}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v9}, Lcom/lidroid/xutils/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 104
    :cond_2
    const-class v10, Lcom/lidroid/xutils/view/annotation/ResInject;

    invoke-virtual {v9, v10}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v10

    check-cast v10, Lcom/lidroid/xutils/view/annotation/ResInject;

    if-eqz v10, :cond_3

    .line 108
    :try_start_2
    invoke-interface {v10}, Lcom/lidroid/xutils/view/annotation/ResInject;->type()Lcom/lidroid/xutils/view/ResType;

    move-result-object v11

    invoke-virtual/range {p1 .. p1}, Lcom/lidroid/xutils/view/ViewFinder;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-interface {v10}, Lcom/lidroid/xutils/view/annotation/ResInject;->id()I

    move-result v10

    .line 107
    invoke-static {v11, v12, v10}, Lcom/lidroid/xutils/view/ResLoader;->loadRes(Lcom/lidroid/xutils/view/ResType;Landroid/content/Context;I)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_4

    .line 110
    invoke-virtual {v9, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 111
    invoke-virtual {v9, v1, v10}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    move-object v9, v0

    .line 114
    invoke-virtual {v9}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v9}, Lcom/lidroid/xutils/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 117
    :cond_3
    const-class v10, Lcom/lidroid/xutils/view/annotation/PreferenceInject;

    invoke-virtual {v9, v10}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v10

    check-cast v10, Lcom/lidroid/xutils/view/annotation/PreferenceInject;

    if-eqz v10, :cond_4

    .line 120
    :try_start_3
    invoke-interface {v10}, Lcom/lidroid/xutils/view/annotation/PreferenceInject;->value()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Lcom/lidroid/xutils/view/ViewFinder;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    if-eqz v10, :cond_4

    .line 122
    invoke-virtual {v9, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 123
    invoke-virtual {v9, v1, v10}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_2

    :catch_3
    move-exception v0

    move-object v9, v0

    .line 126
    invoke-virtual {v9}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v9}, Lcom/lidroid/xutils/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    .line 135
    :cond_5
    :goto_3
    invoke-virtual {v3}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v3

    if-eqz v3, :cond_e

    .line 136
    array-length v4, v3

    if-lez v4, :cond_e

    .line 137
    array-length v4, v3

    const/4 v7, 0x0

    :goto_4
    if-lt v7, v4, :cond_6

    goto/16 :goto_10

    :cond_6
    aget-object v8, v3, v7

    .line 138
    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v9

    if-eqz v9, :cond_d

    .line 139
    array-length v10, v9

    if-lez v10, :cond_d

    .line 140
    array-length v10, v9

    const/4 v11, 0x0

    :goto_5
    if-lt v11, v10, :cond_7

    goto/16 :goto_f

    :cond_7
    aget-object v12, v9, v11

    .line 141
    invoke-interface {v12}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v13

    .line 142
    const-class v14, Lcom/lidroid/xutils/view/annotation/event/EventBase;

    invoke-virtual {v13, v14}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v14

    if-eqz v14, :cond_c

    .line 143
    invoke-virtual {v8, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    :try_start_4
    const-string v14, "value"

    .line 146
    new-array v15, v6, [Ljava/lang/Class;

    invoke-virtual {v13, v14, v15}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v14
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_7

    :try_start_5
    const-string v5, "parentId"

    .line 149
    new-array v15, v6, [Ljava/lang/Class;

    invoke-virtual {v13, v5, v15}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v15
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_6

    :catch_4
    const/4 v15, 0x0

    .line 152
    :goto_6
    :try_start_6
    new-array v5, v6, [Ljava/lang/Object;

    invoke-virtual {v14, v12, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v15, :cond_8

    const/4 v15, 0x0

    goto :goto_7

    .line 153
    :cond_8
    new-array v13, v6, [Ljava/lang/Object;

    invoke-virtual {v15, v12, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    :goto_7
    if-nez v15, :cond_9

    const/4 v13, 0x0

    goto :goto_8

    .line 154
    :cond_9
    invoke-static {v15}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v13

    .line 155
    :goto_8
    invoke-static {v5}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v14
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_7

    :goto_9
    if-lt v6, v14, :cond_a

    goto :goto_d

    :cond_a
    move-object/from16 v16, v3

    .line 157
    :try_start_7
    new-instance v3, Lcom/lidroid/xutils/view/ViewInjectInfo;

    invoke-direct {v3}, Lcom/lidroid/xutils/view/ViewInjectInfo;-><init>()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_6

    move/from16 v17, v4

    .line 158
    :try_start_8
    invoke-static {v5, v6}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, v3, Lcom/lidroid/xutils/view/ViewInjectInfo;->value:Ljava/lang/Object;

    if-le v13, v6, :cond_b

    .line 159
    invoke-static {v15, v6}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    goto :goto_a

    :cond_b
    const/4 v4, 0x0

    :goto_a
    iput v4, v3, Lcom/lidroid/xutils/view/ViewInjectInfo;->parentId:I

    .line 160
    invoke-static {v2, v3, v12, v1, v8}, Lcom/lidroid/xutils/view/EventListenerManager;->addEventMethod(Lcom/lidroid/xutils/view/ViewFinder;Lcom/lidroid/xutils/view/ViewInjectInfo;Ljava/lang/annotation/Annotation;Ljava/lang/Object;Ljava/lang/reflect/Method;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_5

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v3, v16

    move/from16 v4, v17

    goto :goto_9

    :catch_5
    move-exception v0

    goto :goto_c

    :catch_6
    move-exception v0

    goto :goto_b

    :catch_7
    move-exception v0

    move-object/from16 v16, v3

    :goto_b
    move/from16 v17, v4

    :goto_c
    move-object v3, v0

    .line 163
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/lidroid/xutils/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_e

    :cond_c
    :goto_d
    move-object/from16 v16, v3

    move/from16 v17, v4

    :goto_e
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v3, v16

    move/from16 v4, v17

    const/4 v5, 0x1

    const/4 v6, 0x0

    goto/16 :goto_5

    :cond_d
    :goto_f
    move-object/from16 v16, v3

    move/from16 v17, v4

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v3, v16

    move/from16 v4, v17

    const/4 v5, 0x1

    const/4 v6, 0x0

    goto/16 :goto_4

    :cond_e
    :goto_10
    return-void
.end method
