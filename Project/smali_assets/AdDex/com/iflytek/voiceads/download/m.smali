.class Lcom/iflytek/voiceads/download/m;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/iflytek/voiceads/download/a/a;


# instance fields
.field final synthetic a:Lcom/iflytek/voiceads/download/d$b;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/iflytek/voiceads/download/d;


# direct methods
.method constructor <init>(Lcom/iflytek/voiceads/download/d;Lcom/iflytek/voiceads/download/d$b;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/voiceads/download/m;->c:Lcom/iflytek/voiceads/download/d;

    iput-object p2, p0, Lcom/iflytek/voiceads/download/m;->a:Lcom/iflytek/voiceads/download/d$b;

    iput-object p3, p0, Lcom/iflytek/voiceads/download/m;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/voiceads/download/m;->c:Lcom/iflytek/voiceads/download/d;

    invoke-static {v0, p1}, Lcom/iflytek/voiceads/download/d;->a(Lcom/iflytek/voiceads/download/d;I)V

    return-void
.end method

.method public a(JJI)V
    .locals 5

    iget-object v0, p0, Lcom/iflytek/voiceads/download/m;->c:Lcom/iflytek/voiceads/download/d;

    const-wide/16 v2, 0x64

    mul-long/2addr v2, p1

    div-long/2addr v2, p3

    long-to-int v1, v2

    invoke-static {v0, p5, v1}, Lcom/iflytek/voiceads/download/d;->a(Lcom/iflytek/voiceads/download/d;II)V

    return-void
.end method

.method public a(Lcom/iflytek/voiceads/download/e/a;I)V
    .locals 3

    const-string v0, "IFLY_AD_SDK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "download failed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/iflytek/voiceads/download/e/a;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/voiceads/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/voiceads/download/m;->c:Lcom/iflytek/voiceads/download/d;

    invoke-static {v0, p2}, Lcom/iflytek/voiceads/download/d;->b(Lcom/iflytek/voiceads/download/d;I)V

    iget-object v0, p0, Lcom/iflytek/voiceads/download/m;->c:Lcom/iflytek/voiceads/download/d;

    invoke-static {v0}, Lcom/iflytek/voiceads/download/d;->d(Lcom/iflytek/voiceads/download/d;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/voiceads/download/m;->a:Lcom/iflytek/voiceads/download/d$b;

    iget-object v1, v1, Lcom/iflytek/voiceads/download/d$b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/iflytek/voiceads/download/m;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    return-void
.end method

.method public b(I)V
    .locals 4

    iget-object v0, p0, Lcom/iflytek/voiceads/download/m;->c:Lcom/iflytek/voiceads/download/d;

    invoke-static {v0}, Lcom/iflytek/voiceads/download/d;->c(Lcom/iflytek/voiceads/download/d;)V

    iget-object v0, p0, Lcom/iflytek/voiceads/download/m;->c:Lcom/iflytek/voiceads/download/d;

    invoke-static {v0, p1}, Lcom/iflytek/voiceads/download/d;->b(Lcom/iflytek/voiceads/download/d;I)V

    iget-object v0, p0, Lcom/iflytek/voiceads/download/m;->c:Lcom/iflytek/voiceads/download/d;

    invoke-static {v0}, Lcom/iflytek/voiceads/download/d;->d(Lcom/iflytek/voiceads/download/d;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/voiceads/download/m;->a:Lcom/iflytek/voiceads/download/d$b;

    iget-object v1, v1, Lcom/iflytek/voiceads/download/d$b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/iflytek/voiceads/download/m;->c:Lcom/iflytek/voiceads/download/d;

    invoke-static {v0}, Lcom/iflytek/voiceads/download/d;->e(Lcom/iflytek/voiceads/download/d;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/voiceads/download/m;->a:Lcom/iflytek/voiceads/download/d$b;

    iget-object v1, v1, Lcom/iflytek/voiceads/download/d$b;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/iflytek/voiceads/download/m;->a:Lcom/iflytek/voiceads/download/d$b;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/iflytek/voiceads/download/m;->c:Lcom/iflytek/voiceads/download/d;

    iget-object v1, p0, Lcom/iflytek/voiceads/download/m;->a:Lcom/iflytek/voiceads/download/d$b;

    iget-object v1, v1, Lcom/iflytek/voiceads/download/d$b;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/iflytek/voiceads/download/d;->b(Lcom/iflytek/voiceads/download/d;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/voiceads/download/m;->c:Lcom/iflytek/voiceads/download/d;

    iget-object v1, p0, Lcom/iflytek/voiceads/download/m;->a:Lcom/iflytek/voiceads/download/d$b;

    iget-object v1, v1, Lcom/iflytek/voiceads/download/d$b;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/iflytek/voiceads/download/d;->c(Lcom/iflytek/voiceads/download/d;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/voiceads/download/m;->c:Lcom/iflytek/voiceads/download/d;

    iget-object v1, p0, Lcom/iflytek/voiceads/download/m;->c:Lcom/iflytek/voiceads/download/d;

    invoke-static {v1}, Lcom/iflytek/voiceads/download/d;->f(Lcom/iflytek/voiceads/download/d;)Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/iflytek/voiceads/download/m;->b:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Lcom/iflytek/voiceads/download/d;->a(Lcom/iflytek/voiceads/download/d;Landroid/content/Context;Ljava/io/File;)V

    return-void
.end method
