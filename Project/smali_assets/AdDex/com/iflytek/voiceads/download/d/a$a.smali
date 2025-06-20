.class public final Lcom/iflytek/voiceads/download/d/a$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/voiceads/download/d/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/iflytek/voiceads/download/d/a$a;
    .locals 0

    iput-object p1, p0, Lcom/iflytek/voiceads/download/d/a$a;->a:Ljava/lang/String;

    return-object p0
.end method

.method public a()Lcom/iflytek/voiceads/download/d/a;
    .locals 2

    new-instance v0, Lcom/iflytek/voiceads/download/d/a;

    invoke-direct {v0}, Lcom/iflytek/voiceads/download/d/a;-><init>()V

    iget-object v1, p0, Lcom/iflytek/voiceads/download/d/a$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/iflytek/voiceads/download/d/a;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/iflytek/voiceads/download/d/a$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/iflytek/voiceads/download/d/a;->b(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/iflytek/voiceads/download/d/a$a;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/iflytek/voiceads/download/d/a;->b(I)V

    return-object v0
.end method

.method public b(Ljava/lang/String;)Lcom/iflytek/voiceads/download/d/a$a;
    .locals 0

    iput-object p1, p0, Lcom/iflytek/voiceads/download/d/a$a;->b:Ljava/lang/String;

    return-object p0
.end method
