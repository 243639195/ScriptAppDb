.class Lcom/iflytek/voiceads/e/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/iflytek/voiceads/b/a$a;


# instance fields
.field final synthetic a:Lcom/iflytek/voiceads/e/a;


# direct methods
.method constructor <init>(Lcom/iflytek/voiceads/e/a;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/voiceads/e/d;->a:Lcom/iflytek/voiceads/e/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/iflytek/voiceads/e/d;->a:Lcom/iflytek/voiceads/e/a;

    iget-object v0, v0, Lcom/iflytek/voiceads/e/a;->a:Lcom/iflytek/voiceads/videolib/JZVPStandard;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/voiceads/e/d;->a:Lcom/iflytek/voiceads/e/a;

    iget-object v0, v0, Lcom/iflytek/voiceads/e/a;->a:Lcom/iflytek/voiceads/videolib/JZVPStandard;

    iget-object v0, v0, Lcom/iflytek/voiceads/videolib/JZVPStandard;->V:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method
