.class Lcom/lidroid/xutils/task/PriorityAsyncTask$AsyncTaskResult;
.super Ljava/lang/Object;
.source "PriorityAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lidroid/xutils/task/PriorityAsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AsyncTaskResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Data:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final mData:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TData;"
        }
    .end annotation
.end field

.field final mTask:Lcom/lidroid/xutils/task/PriorityAsyncTask;


# direct methods
.method varargs constructor <init>(Lcom/lidroid/xutils/task/PriorityAsyncTask;[Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lidroid/xutils/task/PriorityAsyncTask;",
            "[TData;)V"
        }
    .end annotation

    .line 400
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 401
    iput-object p1, p0, Lcom/lidroid/xutils/task/PriorityAsyncTask$AsyncTaskResult;->mTask:Lcom/lidroid/xutils/task/PriorityAsyncTask;

    .line 402
    iput-object p2, p0, Lcom/lidroid/xutils/task/PriorityAsyncTask$AsyncTaskResult;->mData:[Ljava/lang/Object;

    return-void
.end method
