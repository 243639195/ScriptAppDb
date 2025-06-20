.class Lcom/ds/daisi/activity/news/SplashActivity$MyAsyncTask;
.super Landroid/os/AsyncTask;
.source "SplashActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ds/daisi/activity/news/SplashActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ds/daisi/activity/news/SplashActivity;


# direct methods
.method private constructor <init>(Lcom/ds/daisi/activity/news/SplashActivity;)V
    .locals 0

    .line 1197
    iput-object p1, p0, Lcom/ds/daisi/activity/news/SplashActivity$MyAsyncTask;->this$0:Lcom/ds/daisi/activity/news/SplashActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ds/daisi/activity/news/SplashActivity;Lcom/ds/daisi/activity/news/SplashActivity$1;)V
    .locals 0

    .line 1197
    invoke-direct {p0, p1}, Lcom/ds/daisi/activity/news/SplashActivity$MyAsyncTask;-><init>(Lcom/ds/daisi/activity/news/SplashActivity;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1197
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/ds/daisi/activity/news/SplashActivity$MyAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 0

    .line 1202
    :try_start_0
    invoke-static {}, Lcom/cyjh/share/util/CommonUtils;->getPublicInternetIP()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1204
    invoke-static {p1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1197
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/ds/daisi/activity/news/SplashActivity$MyAsyncTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 1

    .line 1211
    iget-object v0, p0, Lcom/ds/daisi/activity/news/SplashActivity$MyAsyncTask;->this$0:Lcom/ds/daisi/activity/news/SplashActivity;

    invoke-static {v0, p1}, Lcom/ds/daisi/activity/news/SplashActivity;->access$3100(Lcom/ds/daisi/activity/news/SplashActivity;Ljava/lang/String;)V

    return-void
.end method
