.class public interface abstract Lorg/wlf/filedownloader/db/ContentDbDao;
.super Ljava/lang/Object;
.source "ContentDbDao.java"

# interfaces
.implements Lorg/wlf/filedownloader/db/DatabaseCallback;


# virtual methods
.method public abstract delete(Ljava/lang/String;[Ljava/lang/String;)I
.end method

.method public abstract getTableIdFieldName()Ljava/lang/String;
.end method

.method public abstract getTableName()Ljava/lang/String;
.end method

.method public abstract insert(Landroid/content/ContentValues;)J
.end method

.method public abstract query([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
.end method

.method public abstract update(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
.end method
