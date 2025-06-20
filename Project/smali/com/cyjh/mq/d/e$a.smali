.class public final Lcom/cyjh/mq/d/e$a;
.super Ljava/lang/Object;
.source "ShellUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyjh/mq/d/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;


# direct methods
.method private constructor <init>(I)V
    .locals 0

    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 226
    iput p1, p0, Lcom/cyjh/mq/d/e$a;->a:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 230
    iput p1, p0, Lcom/cyjh/mq/d/e$a;->a:I

    .line 231
    iput-object p2, p0, Lcom/cyjh/mq/d/e$a;->b:Ljava/lang/String;

    .line 232
    iput-object p3, p0, Lcom/cyjh/mq/d/e$a;->c:Ljava/lang/String;

    return-void
.end method
