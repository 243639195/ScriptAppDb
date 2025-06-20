.class public final Lcom/goldcoast/sdk/a/a;
.super Lcom/goldcoast/sdk/a/c;
.source "CPUInfo.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/goldcoast/sdk/a/c<",
        "Lcom/goldcoast/sdk/a/a;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Lcom/goldcoast/sdk/a/c;-><init>()V

    const-string v0, "0"

    .line 25
    iput-object v0, p0, Lcom/goldcoast/sdk/a/a;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 1

    .line 47
    invoke-direct {p0}, Lcom/goldcoast/sdk/a/c;-><init>()V

    const-string v0, "0"

    .line 25
    iput-object v0, p0, Lcom/goldcoast/sdk/a/a;->a:Ljava/lang/String;

    .line 48
    invoke-direct {p0, p1}, Lcom/goldcoast/sdk/a/a;->a(Ljava/util/Map;)Lcom/goldcoast/sdk/a/a;

    return-void
.end method

.method private a(Ljava/util/Map;)Lcom/goldcoast/sdk/a/a;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/goldcoast/sdk/a/a;"
        }
    .end annotation

    .line 52
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 53
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 54
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 55
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, " "

    const-string v3, ""

    .line 56
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "processorcnt"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 57
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/goldcoast/sdk/a/a;->a:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v2, " "

    const-string v3, ""

    .line 58
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "modelname"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 59
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/goldcoast/sdk/a/a;->b:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string v2, " "

    const-string v3, ""

    .line 60
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "features"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 61
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/goldcoast/sdk/a/a;->c:Ljava/lang/String;

    goto :goto_0

    :cond_3
    const-string v2, " "

    const-string v3, ""

    .line 62
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "cpuimplementer"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 63
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/goldcoast/sdk/a/a;->d:Ljava/lang/String;

    goto :goto_0

    :cond_4
    const-string v2, " "

    const-string v3, ""

    .line 64
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "cpuarchitecture"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 65
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/goldcoast/sdk/a/a;->e:Ljava/lang/String;

    goto/16 :goto_0

    :cond_5
    const-string v2, " "

    const-string v3, ""

    .line 66
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "cpuvariant"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 67
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/goldcoast/sdk/a/a;->f:Ljava/lang/String;

    goto/16 :goto_0

    :cond_6
    const-string v2, " "

    const-string v3, ""

    .line 68
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "cpupart"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 69
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/goldcoast/sdk/a/a;->g:Ljava/lang/String;

    goto/16 :goto_0

    :cond_7
    const-string v2, " "

    const-string v3, ""

    .line 70
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "cpurevision"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 71
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/goldcoast/sdk/a/a;->h:Ljava/lang/String;

    goto/16 :goto_0

    :cond_8
    const-string v2, " "

    const-string v3, ""

    .line 72
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "hardware"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 73
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/goldcoast/sdk/a/a;->i:Ljava/lang/String;

    goto/16 :goto_0

    :cond_9
    const-string v2, " "

    const-string v3, ""

    .line 74
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "revision"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 75
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/goldcoast/sdk/a/a;->j:Ljava/lang/String;

    goto/16 :goto_0

    :cond_a
    const-string v2, " "

    const-string v3, ""

    .line 76
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "serial"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 77
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/goldcoast/sdk/a/a;->k:Ljava/lang/String;

    goto/16 :goto_0

    .line 81
    :cond_b
    :try_start_0
    iget-object p1, p0, Lcom/goldcoast/sdk/a/a;->a:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/goldcoast/sdk/a/a;->a:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 83
    invoke-static {p1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    :goto_1
    return-object p0

    :cond_c
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public final a()Lorg/json/JSONObject;
    .locals 3

    .line 109
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "processorcnt"

    .line 111
    iget-object v2, p0, Lcom/goldcoast/sdk/a/a;->a:Ljava/lang/String;

    if-nez v2, :cond_0

    const-string v2, ""

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/goldcoast/sdk/a/a;->a:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "modelname"

    .line 112
    iget-object v2, p0, Lcom/goldcoast/sdk/a/a;->b:Ljava/lang/String;

    if-nez v2, :cond_1

    const-string v2, ""

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/goldcoast/sdk/a/a;->b:Ljava/lang/String;

    :goto_1
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "features"

    .line 113
    iget-object v2, p0, Lcom/goldcoast/sdk/a/a;->c:Ljava/lang/String;

    if-nez v2, :cond_2

    const-string v2, ""

    goto :goto_2

    :cond_2
    iget-object v2, p0, Lcom/goldcoast/sdk/a/a;->c:Ljava/lang/String;

    :goto_2
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "cpuimplementer"

    .line 114
    iget-object v2, p0, Lcom/goldcoast/sdk/a/a;->d:Ljava/lang/String;

    if-nez v2, :cond_3

    const-string v2, ""

    goto :goto_3

    :cond_3
    iget-object v2, p0, Lcom/goldcoast/sdk/a/a;->d:Ljava/lang/String;

    :goto_3
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "cpuarchitecture"

    .line 115
    iget-object v2, p0, Lcom/goldcoast/sdk/a/a;->e:Ljava/lang/String;

    if-nez v2, :cond_4

    const-string v2, ""

    goto :goto_4

    :cond_4
    iget-object v2, p0, Lcom/goldcoast/sdk/a/a;->e:Ljava/lang/String;

    :goto_4
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "cpuvariant"

    .line 116
    iget-object v2, p0, Lcom/goldcoast/sdk/a/a;->f:Ljava/lang/String;

    if-nez v2, :cond_5

    const-string v2, ""

    goto :goto_5

    :cond_5
    iget-object v2, p0, Lcom/goldcoast/sdk/a/a;->f:Ljava/lang/String;

    :goto_5
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "cpupart"

    .line 117
    iget-object v2, p0, Lcom/goldcoast/sdk/a/a;->g:Ljava/lang/String;

    if-nez v2, :cond_6

    const-string v2, ""

    goto :goto_6

    :cond_6
    iget-object v2, p0, Lcom/goldcoast/sdk/a/a;->g:Ljava/lang/String;

    :goto_6
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "cpurevision"

    .line 118
    iget-object v2, p0, Lcom/goldcoast/sdk/a/a;->h:Ljava/lang/String;

    if-nez v2, :cond_7

    const-string v2, ""

    goto :goto_7

    :cond_7
    iget-object v2, p0, Lcom/goldcoast/sdk/a/a;->h:Ljava/lang/String;

    :goto_7
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "hardware"

    .line 119
    iget-object v2, p0, Lcom/goldcoast/sdk/a/a;->i:Ljava/lang/String;

    if-nez v2, :cond_8

    const-string v2, ""

    goto :goto_8

    :cond_8
    iget-object v2, p0, Lcom/goldcoast/sdk/a/a;->i:Ljava/lang/String;

    :goto_8
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "revision"

    .line 120
    iget-object v2, p0, Lcom/goldcoast/sdk/a/a;->j:Ljava/lang/String;

    if-nez v2, :cond_9

    const-string v2, ""

    goto :goto_9

    :cond_9
    iget-object v2, p0, Lcom/goldcoast/sdk/a/a;->j:Ljava/lang/String;

    :goto_9
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "serial"

    .line 121
    iget-object v2, p0, Lcom/goldcoast/sdk/a/a;->k:Ljava/lang/String;

    if-nez v2, :cond_a

    const-string v2, ""

    goto :goto_a

    :cond_a
    iget-object v2, p0, Lcom/goldcoast/sdk/a/a;->k:Ljava/lang/String;

    :goto_a
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_b

    :catch_0
    move-exception v1

    .line 123
    invoke-static {v1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    :goto_b
    return-object v0
.end method
