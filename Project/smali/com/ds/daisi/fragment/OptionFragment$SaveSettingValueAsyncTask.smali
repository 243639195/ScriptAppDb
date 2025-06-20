.class Lcom/ds/daisi/fragment/OptionFragment$SaveSettingValueAsyncTask;
.super Landroid/os/AsyncTask;
.source "OptionFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ds/daisi/fragment/OptionFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SaveSettingValueAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ds/daisi/fragment/OptionFragment;


# direct methods
.method constructor <init>(Lcom/ds/daisi/fragment/OptionFragment;)V
    .locals 0

    .line 1085
    iput-object p1, p0, Lcom/ds/daisi/fragment/OptionFragment$SaveSettingValueAsyncTask;->this$0:Lcom/ds/daisi/fragment/OptionFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1085
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/ds/daisi/fragment/OptionFragment$SaveSettingValueAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 0

    .line 1090
    :try_start_0
    iget-object p1, p0, Lcom/ds/daisi/fragment/OptionFragment$SaveSettingValueAsyncTask;->this$0:Lcom/ds/daisi/fragment/OptionFragment;

    invoke-virtual {p1}, Lcom/ds/daisi/fragment/OptionFragment;->generateOptionJson()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1092
    invoke-static {p1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method
