.class Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment$3;
.super Ljava/lang/Thread;
.source "ImageSelectFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;


# direct methods
.method constructor <init>(Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;)V
    .locals 0

    .line 145
    iput-object p1, p0, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment$3;->this$0:Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 148
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 149
    iget-object v0, p0, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment$3;->this$0:Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;

    invoke-virtual {v0}, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "mime_type= ? or mime_type=?"

    const/4 v2, 0x2

    .line 153
    new-array v4, v2, [Ljava/lang/String;

    const-string v2, "image/jpeg"

    const/4 v6, 0x0

    aput-object v2, v4, v6

    const-string v2, "image/png"

    const/4 v5, 0x1

    aput-object v2, v4, v5

    const-string v5, "date_modified"

    const/4 v2, 0x0

    .line 154
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 156
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 158
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "_data"

    .line 160
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 161
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 167
    :cond_0
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    .line 171
    invoke-interface {v1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_0

    .line 174
    :cond_1
    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 175
    new-instance v5, Lcom/cyjh/feedback/lib/entities/FolderBean;

    invoke-direct {v5}, Lcom/cyjh/feedback/lib/entities/FolderBean;-><init>()V

    .line 176
    invoke-virtual {v5, v4}, Lcom/cyjh/feedback/lib/entities/FolderBean;->setDirPath(Ljava/lang/String;)V

    .line 178
    invoke-virtual {v5, v2}, Lcom/cyjh/feedback/lib/entities/FolderBean;->setFirstImgPath(Ljava/lang/String;)V

    .line 181
    invoke-virtual {v3}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    goto :goto_0

    .line 185
    :cond_2
    new-instance v2, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment$3$1;

    invoke-direct {v2, p0}, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment$3$1;-><init>(Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment$3;)V

    invoke-virtual {v3, v2}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    .line 192
    iget-object v4, p0, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment$3;->this$0:Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;

    invoke-static {v4}, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;->access$400(Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;)I

    move-result v4

    if-le v2, v4, :cond_3

    .line 193
    iget-object v4, p0, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment$3;->this$0:Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;

    invoke-static {v4, v2}, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;->access$402(Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;I)I

    .line 194
    iget-object v4, p0, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment$3;->this$0:Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;

    invoke-static {v4, v3}, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;->access$502(Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;Ljava/io/File;)Ljava/io/File;

    .line 196
    :cond_3
    invoke-virtual {v5, v2}, Lcom/cyjh/feedback/lib/entities/FolderBean;->setDirCount(I)V

    .line 197
    iget-object v2, p0, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment$3;->this$0:Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;

    invoke-static {v2}, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;->access$600(Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 200
    :cond_4
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 203
    new-instance v0, Lcom/cyjh/feedback/lib/entities/FolderBean;

    invoke-direct {v0}, Lcom/cyjh/feedback/lib/entities/FolderBean;-><init>()V

    .line 206
    iget-object v1, p0, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment$3;->this$0:Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;

    invoke-static {v1}, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;->access$600(Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment$3;->this$0:Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;

    invoke-static {v1}, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;->access$600(Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_5

    .line 207
    iget-object v1, p0, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment$3;->this$0:Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;

    sget v2, Lcom/cyjh/feedback/libraryfeedbackinfo/R$string;->all_photo_mobile:I

    invoke-virtual {v1, v2}, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cyjh/feedback/lib/entities/FolderBean;->setDirName(Ljava/lang/String;)V

    .line 208
    iget-object v1, p0, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment$3;->this$0:Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;

    invoke-static {v1}, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;->access$600(Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cyjh/feedback/lib/entities/FolderBean;

    invoke-virtual {v1}, Lcom/cyjh/feedback/lib/entities/FolderBean;->getFirstImgPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cyjh/feedback/lib/entities/FolderBean;->setFirstImgPath(Ljava/lang/String;)V

    :cond_5
    const-string v1, ""

    .line 212
    iget-object v2, p0, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment$3;->this$0:Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;

    invoke-static {v2}, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;->access$600(Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/cyjh/feedback/lib/entities/FolderBean;

    .line 213
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/cyjh/feedback/lib/entities/FolderBean;->getDirPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 214
    invoke-virtual {v4}, Lcom/cyjh/feedback/lib/entities/FolderBean;->getDirCount()I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_1

    .line 216
    :cond_6
    invoke-virtual {v0, v3}, Lcom/cyjh/feedback/lib/entities/FolderBean;->setDirCount(I)V

    .line 217
    invoke-virtual {v0, v1}, Lcom/cyjh/feedback/lib/entities/FolderBean;->setDirPath(Ljava/lang/String;)V

    .line 218
    iget-object v1, p0, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment$3;->this$0:Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;

    invoke-static {v1}, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;->access$600(Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v6, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 219
    iget-object v1, p0, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment$3;->this$0:Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;

    invoke-static {v1, v0}, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;->access$700(Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;Lcom/cyjh/feedback/lib/entities/FolderBean;)V

    .line 220
    iget-object v1, p0, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment$3;->this$0:Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;

    invoke-static {v1}, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;->access$800(Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    const/16 v2, 0x110

    .line 221
    iput v2, v1, Landroid/os/Message;->what:I

    .line 222
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 223
    iget-object v0, p0, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment$3;->this$0:Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;

    invoke-static {v0}, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;->access$800(Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
