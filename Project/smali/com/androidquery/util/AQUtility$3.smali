.class Lcom/androidquery/util/AQUtility$3;
.super Ljava/lang/Object;
.source "AQUtility.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/androidquery/util/AQUtility;->postAsync(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$handler:Ljava/lang/Object;

.field private final synthetic val$method:Ljava/lang/String;

.field private final synthetic val$params:[Ljava/lang/Object;

.field private final synthetic val$sig:[Ljava/lang/Class;


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/androidquery/util/AQUtility$3;->val$handler:Ljava/lang/Object;

    iput-object p2, p0, Lcom/androidquery/util/AQUtility$3;->val$method:Ljava/lang/String;

    iput-object p3, p0, Lcom/androidquery/util/AQUtility$3;->val$sig:[Ljava/lang/Class;

    iput-object p4, p0, Lcom/androidquery/util/AQUtility$3;->val$params:[Ljava/lang/Object;

    .line 332
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 337
    iget-object v0, p0, Lcom/androidquery/util/AQUtility$3;->val$handler:Ljava/lang/Object;

    iget-object v1, p0, Lcom/androidquery/util/AQUtility$3;->val$method:Ljava/lang/String;

    iget-object v4, p0, Lcom/androidquery/util/AQUtility$3;->val$sig:[Ljava/lang/Class;

    iget-object v5, p0, Lcom/androidquery/util/AQUtility$3;->val$params:[Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static/range {v0 .. v5}, Lcom/androidquery/util/AQUtility;->invokeHandler(Ljava/lang/Object;Ljava/lang/String;ZZ[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
