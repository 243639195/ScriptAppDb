.class public Lcom/iflytek/voiceads/download/d/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:Ljava/lang/String;

.field private b:J

.field private c:J

.field private d:J


# direct methods
.method public constructor <init>(Ljava/lang/String;JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/iflytek/voiceads/download/d/b;->a:Ljava/lang/String;

    iput-wide p2, p0, Lcom/iflytek/voiceads/download/d/b;->b:J

    iput-wide p4, p0, Lcom/iflytek/voiceads/download/d/b;->c:J

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/voiceads/download/d/b;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(J)V
    .locals 1

    iput-wide p1, p0, Lcom/iflytek/voiceads/download/d/b;->d:J

    return-void
.end method

.method public b()J
    .locals 2

    iget-wide v0, p0, Lcom/iflytek/voiceads/download/d/b;->b:J

    return-wide v0
.end method

.method public c()J
    .locals 2

    iget-wide v0, p0, Lcom/iflytek/voiceads/download/d/b;->c:J

    return-wide v0
.end method

.method public d()J
    .locals 2

    iget-wide v0, p0, Lcom/iflytek/voiceads/download/d/b;->d:J

    return-wide v0
.end method
