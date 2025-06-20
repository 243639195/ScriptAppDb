.class public Lcom/iflytek/voiceads/videolib/a;
.super Ljava/lang/Object;


# instance fields
.field public final a:Ljava/lang/String;

.field public b:I

.field public c:Ljava/util/LinkedHashMap;

.field public d:Ljava/lang/String;

.field public e:Ljava/util/HashMap;

.field public f:Z

.field public g:[Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "URL_KEY_DEFAULT"

    iput-object v0, p0, Lcom/iflytek/voiceads/videolib/a;->a:Ljava/lang/String;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/iflytek/voiceads/videolib/a;->c:Ljava/util/LinkedHashMap;

    const-string v0, ""

    iput-object v0, p0, Lcom/iflytek/voiceads/videolib/a;->d:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/iflytek/voiceads/videolib/a;->e:Ljava/util/HashMap;

    iput-boolean v2, p0, Lcom/iflytek/voiceads/videolib/a;->f:Z

    iget-object v0, p0, Lcom/iflytek/voiceads/videolib/a;->c:Ljava/util/LinkedHashMap;

    const-string v1, "URL_KEY_DEFAULT"

    invoke-virtual {v0, v1, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p2, p0, Lcom/iflytek/voiceads/videolib/a;->d:Ljava/lang/String;

    iput v2, p0, Lcom/iflytek/voiceads/videolib/a;->b:I

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/iflytek/voiceads/videolib/a;->b:I

    invoke-virtual {p0, v0}, Lcom/iflytek/voiceads/videolib/a;->a(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public a(I)Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/iflytek/voiceads/videolib/a;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/iflytek/voiceads/videolib/a;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public a(Ljava/lang/Object;)Z
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/iflytek/voiceads/videolib/a;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
