.class public final Lcom/tencent/bugly/proguard/m;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/bugly/proguard/m$a;
    }
.end annotation


# static fields
.field private static a:Lcom/tencent/bugly/proguard/m; = null

.field private static b:Lcom/tencent/bugly/proguard/n; = null

.field private static c:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/tencent/bugly/a;",
            ">;)V"
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Lcom/tencent/bugly/proguard/n;

    invoke-direct {v0, p1, p2}, Lcom/tencent/bugly/proguard/n;-><init>(Landroid/content/Context;Ljava/util/List;)V

    sput-object v0, Lcom/tencent/bugly/proguard/m;->b:Lcom/tencent/bugly/proguard/n;

    return-void
.end method

.method static synthetic a(Lcom/tencent/bugly/proguard/m;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/tencent/bugly/proguard/l;)I
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/tencent/bugly/proguard/m;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/tencent/bugly/proguard/l;)I

    move-result p0

    return p0
.end method

.method private declared-synchronized a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/tencent/bugly/proguard/l;)I
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    .line 198
    :try_start_0
    sget-object v1, Lcom/tencent/bugly/proguard/m;->b:Lcom/tencent/bugly/proguard/n;

    invoke-virtual {v1}, Lcom/tencent/bugly/proguard/n;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 200
    invoke-virtual {v1, p1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, p1

    :cond_0
    if-eqz p4, :cond_2

    .line 208
    :goto_0
    :try_start_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 203
    :try_start_2
    invoke-static {p1}, Lcom/tencent/bugly/proguard/u;->a(Ljava/lang/Throwable;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 204
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    if-eqz p4, :cond_2

    goto :goto_0

    .line 214
    :cond_2
    :goto_1
    monitor-exit p0

    return v0

    :goto_2
    if-eqz p4, :cond_3

    .line 208
    :try_start_3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    goto :goto_3

    :catchall_1
    move-exception p1

    goto :goto_4

    .line 210
    :cond_3
    :goto_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 194
    :goto_4
    monitor-exit p0

    throw p1
.end method

.method static synthetic a(Lcom/tencent/bugly/proguard/m;Ljava/lang/String;Landroid/content/ContentValues;Lcom/tencent/bugly/proguard/l;)J
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/bugly/proguard/m;->a(Ljava/lang/String;Landroid/content/ContentValues;Lcom/tencent/bugly/proguard/l;)J

    move-result-wide p0

    return-wide p0
.end method

.method private declared-synchronized a(Ljava/lang/String;Landroid/content/ContentValues;Lcom/tencent/bugly/proguard/l;)J
    .locals 6

    monitor-enter p0

    const-wide/16 v0, 0x0

    .line 143
    :try_start_0
    sget-object v2, Lcom/tencent/bugly/proguard/m;->b:Lcom/tencent/bugly/proguard/n;

    invoke-virtual {v2}, Lcom/tencent/bugly/proguard/n;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    if-eqz v2, :cond_1

    if-eqz p2, :cond_1

    const-string v3, "_id"

    .line 145
    invoke-virtual {v2, p1, v3, p2}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    cmp-long p2, v2, v0

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ltz p2, :cond_0

    const-string p2, "[db] insert %s success"

    .line 147
    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v4

    invoke-static {p2, v5}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string p2, "[db] replace %s error"

    .line 149
    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v4

    invoke-static {p2, v5}, Lcom/tencent/bugly/proguard/u;->d(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    move-wide v0, v2

    :cond_1
    if-eqz p3, :cond_3

    .line 159
    :goto_1
    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 154
    :try_start_2
    invoke-static {p1}, Lcom/tencent/bugly/proguard/u;->a(Ljava/lang/Throwable;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 155
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    if-eqz p3, :cond_3

    goto :goto_1

    .line 165
    :cond_3
    :goto_2
    monitor-exit p0

    return-wide v0

    :goto_3
    if-eqz p3, :cond_4

    .line 159
    :try_start_3
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    goto :goto_4

    :catchall_1
    move-exception p1

    goto :goto_5

    .line 161
    :cond_4
    :goto_4
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 139
    :goto_5
    monitor-exit p0

    throw p1
.end method

.method static synthetic a(Lcom/tencent/bugly/proguard/m;ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/bugly/proguard/l;)Landroid/database/Cursor;
    .locals 0

    .line 26
    invoke-direct/range {p0 .. p10}, Lcom/tencent/bugly/proguard/m;->a(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/bugly/proguard/l;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method private declared-synchronized a(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/bugly/proguard/l;)Landroid/database/Cursor;
    .locals 13

    monitor-enter p0

    const/4 v2, 0x0

    .line 174
    :try_start_0
    sget-object v0, Lcom/tencent/bugly/proguard/m;->b:Lcom/tencent/bugly/proguard/n;

    invoke-virtual {v0}, Lcom/tencent/bugly/proguard/n;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    if-eqz v3, :cond_0

    move v4, p1

    move-object v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    .line 176
    invoke-virtual/range {v3 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 181
    :try_start_1
    invoke-static {v0}, Lcom/tencent/bugly/proguard/u;->a(Ljava/lang/Throwable;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 182
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 189
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v2

    .line 186
    :goto_1
    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    move-object v1, v0

    .line 170
    monitor-exit p0

    throw v1
.end method

.method public static declared-synchronized a()Lcom/tencent/bugly/proguard/m;
    .locals 2

    const-class v0, Lcom/tencent/bugly/proguard/m;

    monitor-enter v0

    .line 45
    :try_start_0
    sget-object v1, Lcom/tencent/bugly/proguard/m;->a:Lcom/tencent/bugly/proguard/m;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized a(Landroid/content/Context;Ljava/util/List;)Lcom/tencent/bugly/proguard/m;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/tencent/bugly/a;",
            ">;)",
            "Lcom/tencent/bugly/proguard/m;"
        }
    .end annotation

    const-class v0, Lcom/tencent/bugly/proguard/m;

    monitor-enter v0

    .line 38
    :try_start_0
    sget-object v1, Lcom/tencent/bugly/proguard/m;->a:Lcom/tencent/bugly/proguard/m;

    if-nez v1, :cond_0

    .line 39
    new-instance v1, Lcom/tencent/bugly/proguard/m;

    invoke-direct {v1, p0, p1}, Lcom/tencent/bugly/proguard/m;-><init>(Landroid/content/Context;Ljava/util/List;)V

    sput-object v1, Lcom/tencent/bugly/proguard/m;->a:Lcom/tencent/bugly/proguard/m;

    .line 41
    :cond_0
    sget-object p0, Lcom/tencent/bugly/proguard/m;->a:Lcom/tencent/bugly/proguard/m;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 37
    monitor-exit v0

    throw p0
.end method

.method private static a(Landroid/database/Cursor;)Lcom/tencent/bugly/proguard/o;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 538
    :cond_0
    :try_start_0
    new-instance v1, Lcom/tencent/bugly/proguard/o;

    invoke-direct {v1}, Lcom/tencent/bugly/proguard/o;-><init>()V

    const-string v2, "_id"

    .line 539
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/tencent/bugly/proguard/o;->a:J

    const-string v2, "_tp"

    .line 540
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v1, Lcom/tencent/bugly/proguard/o;->b:I

    const-string v2, "_pc"

    .line 541
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/bugly/proguard/o;->c:Ljava/lang/String;

    const-string v2, "_th"

    .line 542
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/bugly/proguard/o;->d:Ljava/lang/String;

    const-string v2, "_tm"

    .line 543
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/tencent/bugly/proguard/o;->e:J

    const-string v2, "_dt"

    .line 544
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object p0

    iput-object p0, v1, Lcom/tencent/bugly/proguard/o;->g:[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p0

    .line 547
    invoke-static {p0}, Lcom/tencent/bugly/proguard/u;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 548
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    return-object v0
.end method

.method private a(ILcom/tencent/bugly/proguard/l;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/tencent/bugly/proguard/l;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 293
    :try_start_0
    invoke-direct {p0, p1}, Lcom/tencent/bugly/proguard/m;->c(I)Ljava/util/List;

    move-result-object p1

    .line 294
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 295
    :try_start_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/bugly/proguard/o;

    .line 296
    iget-object v2, v0, Lcom/tencent/bugly/proguard/o;->g:[B

    if-eqz v2, :cond_0

    .line 298
    iget-object v0, v0, Lcom/tencent/bugly/proguard/o;->f:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    move-object v1, v0

    .line 302
    :goto_1
    :try_start_2
    invoke-static {p1}, Lcom/tencent/bugly/proguard/u;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 303
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    return-object v1

    .line 307
    :goto_2
    throw p1
.end method

.method static synthetic a(Lcom/tencent/bugly/proguard/m;ILcom/tencent/bugly/proguard/l;)Ljava/util/Map;
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/tencent/bugly/proguard/m;->a(ILcom/tencent/bugly/proguard/l;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/bugly/proguard/o;",
            ">;)V"
        }
    .end annotation

    if-eqz p0, :cond_5

    .line 454
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 456
    :cond_0
    sget-object v0, Lcom/tencent/bugly/proguard/m;->b:Lcom/tencent/bugly/proguard/n;

    invoke-virtual {v0}, Lcom/tencent/bugly/proguard/n;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 458
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 459
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/bugly/proguard/o;

    const-string v3, " or _id"

    .line 460
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v2, Lcom/tencent/bugly/proguard/o;->a:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 462
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 463
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    const/4 v2, 0x4

    .line 464
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_2
    const/4 v2, 0x0

    .line 465
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    :try_start_0
    const-string v1, "t_lr"

    const/4 v3, 0x0

    .line 467
    invoke-virtual {v0, v1, p0, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    const-string v0, "deleted %s data %d"

    const/4 v1, 0x2

    .line 468
    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "t_lr"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 470
    :try_start_1
    invoke-static {p0}, Lcom/tencent/bugly/proguard/u;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 471
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    return-void

    .line 474
    :goto_1
    throw p0

    :cond_4
    return-void

    :cond_5
    :goto_2
    return-void
.end method

.method public static a(ILjava/lang/String;Lcom/tencent/bugly/proguard/l;)Z
    .locals 5

    const/4 v0, 0x0

    .line 623
    :try_start_0
    sget-object v1, Lcom/tencent/bugly/proguard/m;->b:Lcom/tencent/bugly/proguard/n;

    invoke-virtual {v1}, Lcom/tencent/bugly/proguard/n;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    if-eqz v1, :cond_2

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    .line 626
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    :goto_0
    if-eqz v3, :cond_1

    .line 627
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v3, "_id = "

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 629
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "_id = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " and _tp"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " = \""

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\""

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_1
    const-string p1, "t_pf"

    const/4 v3, 0x0

    .line 633
    invoke-virtual {v1, p1, p0, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    const-string p1, "deleted %s data %d"

    const/4 v1, 0x2

    .line 634
    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "t_pf"

    aput-object v3, v1, v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p1, v1}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez p0, :cond_2

    const/4 v0, 0x1

    :cond_2
    if-eqz p2, :cond_4

    .line 643
    :goto_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    goto :goto_3

    :catchall_0
    move-exception p0

    goto :goto_4

    :catch_0
    move-exception p0

    .line 638
    :try_start_1
    invoke-static {p0}, Lcom/tencent/bugly/proguard/u;->a(Ljava/lang/Throwable;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 639
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    if-eqz p2, :cond_4

    goto :goto_2

    :cond_4
    :goto_3
    return v0

    :goto_4
    if-eqz p2, :cond_5

    .line 643
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 645
    :cond_5
    throw p0
.end method

.method private a(ILjava/lang/String;[BLcom/tencent/bugly/proguard/l;)Z
    .locals 4

    const/4 v0, 0x0

    .line 272
    :try_start_0
    new-instance v1, Lcom/tencent/bugly/proguard/o;

    invoke-direct {v1}, Lcom/tencent/bugly/proguard/o;-><init>()V

    int-to-long v2, p1

    .line 273
    iput-wide v2, v1, Lcom/tencent/bugly/proguard/o;->a:J

    .line 274
    iput-object p2, v1, Lcom/tencent/bugly/proguard/o;->f:Ljava/lang/String;

    .line 275
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, v1, Lcom/tencent/bugly/proguard/o;->e:J

    .line 276
    iput-object p3, v1, Lcom/tencent/bugly/proguard/o;->g:[B

    .line 277
    invoke-direct {p0, v1}, Lcom/tencent/bugly/proguard/m;->b(Lcom/tencent/bugly/proguard/o;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p4, :cond_2

    .line 284
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 279
    :try_start_1
    invoke-static {p1}, Lcom/tencent/bugly/proguard/u;->a(Ljava/lang/Throwable;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 280
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    if-eqz p4, :cond_1

    .line 284
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    :cond_1
    const/4 p1, 0x0

    :cond_2
    :goto_0
    return p1

    :goto_1
    if-eqz p4, :cond_3

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    :cond_3
    throw p1
.end method

.method static synthetic a(Lcom/tencent/bugly/proguard/m;ILjava/lang/String;[BLcom/tencent/bugly/proguard/l;)Z
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/tencent/bugly/proguard/m;->a(ILjava/lang/String;[BLcom/tencent/bugly/proguard/l;)Z

    move-result p0

    return p0
.end method

.method private static b(Landroid/database/Cursor;)Lcom/tencent/bugly/proguard/o;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 684
    :cond_0
    :try_start_0
    new-instance v1, Lcom/tencent/bugly/proguard/o;

    invoke-direct {v1}, Lcom/tencent/bugly/proguard/o;-><init>()V

    const-string v2, "_id"

    .line 685
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/tencent/bugly/proguard/o;->a:J

    const-string v2, "_tm"

    .line 686
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/tencent/bugly/proguard/o;->e:J

    const-string v2, "_tp"

    .line 687
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/bugly/proguard/o;->f:Ljava/lang/String;

    const-string v2, "_dt"

    .line 688
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object p0

    iput-object p0, v1, Lcom/tencent/bugly/proguard/o;->g:[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p0

    .line 691
    invoke-static {p0}, Lcom/tencent/bugly/proguard/u;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 692
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    return-object v0
.end method

.method public static b(I)V
    .locals 4

    .line 486
    sget-object v0, Lcom/tencent/bugly/proguard/m;->b:Lcom/tencent/bugly/proguard/n;

    invoke-virtual {v0}, Lcom/tencent/bugly/proguard/n;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    if-ltz p0, :cond_0

    .line 489
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "_tp = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    move-object p0, v1

    :goto_0
    const-string v2, "t_lr"

    .line 490
    invoke-virtual {v0, v2, p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    const-string v0, "deleted %s data %d"

    const/4 v1, 0x2

    .line 491
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "t_lr"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 493
    :goto_1
    :try_start_1
    invoke-static {p0}, Lcom/tencent/bugly/proguard/u;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 494
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    return-void

    .line 497
    :goto_2
    throw p0

    :cond_2
    return-void
.end method

.method private b(Lcom/tencent/bugly/proguard/o;)Z
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 362
    :cond_0
    :try_start_0
    sget-object v1, Lcom/tencent/bugly/proguard/m;->b:Lcom/tencent/bugly/proguard/n;

    invoke-virtual {v1}, Lcom/tencent/bugly/proguard/n;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 364
    invoke-static {p1}, Lcom/tencent/bugly/proguard/m;->d(Lcom/tencent/bugly/proguard/o;)Landroid/content/ContentValues;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string v3, "t_pf"

    const-string v4, "_id"

    .line 366
    invoke-virtual {v1, v3, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-ltz v3, :cond_1

    const-string v3, "insert %s success!"

    const/4 v4, 0x1

    .line 368
    new-array v5, v4, [Ljava/lang/Object;

    const-string v6, "t_pf"

    aput-object v6, v5, v0

    invoke-static {v3, v5}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 369
    iput-wide v1, p1, Lcom/tencent/bugly/proguard/o;->a:J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v4

    :cond_1
    return v0

    :cond_2
    return v0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 378
    :try_start_1
    invoke-static {p1}, Lcom/tencent/bugly/proguard/u;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 379
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    return v0

    .line 384
    :goto_0
    throw p1
.end method

.method private static c(Lcom/tencent/bugly/proguard/o;)Landroid/content/ContentValues;
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 512
    :cond_0
    :try_start_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 513
    iget-wide v2, p0, Lcom/tencent/bugly/proguard/o;->a:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    const-string v2, "_id"

    .line 514
    iget-wide v3, p0, Lcom/tencent/bugly/proguard/o;->a:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_1
    const-string v2, "_tp"

    .line 516
    iget v3, p0, Lcom/tencent/bugly/proguard/o;->b:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "_pc"

    .line 517
    iget-object v3, p0, Lcom/tencent/bugly/proguard/o;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "_th"

    .line 518
    iget-object v3, p0, Lcom/tencent/bugly/proguard/o;->d:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "_tm"

    .line 519
    iget-wide v3, p0, Lcom/tencent/bugly/proguard/o;->e:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 520
    iget-object v2, p0, Lcom/tencent/bugly/proguard/o;->g:[B

    if-eqz v2, :cond_2

    const-string v2, "_dt"

    .line 521
    iget-object p0, p0, Lcom/tencent/bugly/proguard/o;->g:[B

    invoke-virtual {v1, v2, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-object v1

    :catch_0
    move-exception p0

    .line 524
    invoke-static {p0}, Lcom/tencent/bugly/proguard/u;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 525
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    return-object v0
.end method

.method private c(I)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/tencent/bugly/proguard/o;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 563
    :try_start_0
    sget-object v1, Lcom/tencent/bugly/proguard/m;->b:Lcom/tencent/bugly/proguard/n;

    invoke-virtual {v1}, Lcom/tencent/bugly/proguard/n;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 565
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "_id = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v3, "t_pf"

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, v1

    move-object v5, v10

    .line 566
    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    if-eqz v2, :cond_0

    .line 569
    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result p1

    if-nez p1, :cond_0

    .line 604
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_0
    return-object v0

    .line 572
    :cond_1
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 573
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 574
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_3

    .line 575
    invoke-static {v2}, Lcom/tencent/bugly/proguard/m;->b(Landroid/database/Cursor;)Lcom/tencent/bugly/proguard/o;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 577
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :cond_2
    :try_start_2
    const-string v5, "_tp"

    .line 581
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v7, " or _tp"

    .line 582
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " = "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catch_0
    :try_start_3
    const-string v5, "unknown id!"

    .line 584
    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/tencent/bugly/proguard/u;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_0

    .line 590
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_4

    const-string v5, " and _id"

    .line 591
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 p1, 0x4

    .line 592
    invoke-virtual {v10, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const-string v3, "t_pf"

    .line 593
    invoke-virtual {v1, v3, p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    const-string v1, "deleted %s illegle data %d"

    const/4 v3, 0x2

    .line 594
    new-array v3, v3, [Ljava/lang/Object;

    const-string v5, "t_pf"

    aput-object v5, v3, v6

    const/4 v5, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v5

    invoke-static {v1, v3}, Lcom/tencent/bugly/proguard/u;->d(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_4
    if-eqz v2, :cond_5

    .line 603
    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result p1

    if-nez p1, :cond_5

    .line 604
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_5
    return-object v4

    :catch_1
    move-exception p1

    goto :goto_1

    :catchall_0
    move-exception p1

    move-object v2, v0

    goto :goto_2

    :catch_2
    move-exception p1

    move-object v2, v0

    .line 599
    :goto_1
    :try_start_4
    invoke-static {p1}, Lcom/tencent/bugly/proguard/u;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 600
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_6
    if-eqz v2, :cond_7

    .line 603
    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result p1

    if-nez p1, :cond_7

    .line 604
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_7
    return-object v0

    :catchall_1
    move-exception p1

    :goto_2
    if-eqz v2, :cond_8

    .line 607
    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_8

    .line 604
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 606
    :cond_8
    throw p1
.end method

.method private static d(Lcom/tencent/bugly/proguard/o;)Landroid/content/ContentValues;
    .locals 6

    const/4 v0, 0x0

    if-eqz p0, :cond_5

    .line 656
    iget-object v1, p0, Lcom/tencent/bugly/proguard/o;->f:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    if-eqz v1, :cond_1

    goto :goto_1

    .line 660
    :cond_1
    :try_start_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 661
    iget-wide v2, p0, Lcom/tencent/bugly/proguard/o;->a:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    const-string v2, "_id"

    .line 662
    iget-wide v3, p0, Lcom/tencent/bugly/proguard/o;->a:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_2
    const-string v2, "_tp"

    .line 664
    iget-object v3, p0, Lcom/tencent/bugly/proguard/o;->f:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "_tm"

    .line 665
    iget-wide v3, p0, Lcom/tencent/bugly/proguard/o;->e:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 666
    iget-object v2, p0, Lcom/tencent/bugly/proguard/o;->g:[B

    if-eqz v2, :cond_3

    const-string v2, "_dt"

    .line 667
    iget-object p0, p0, Lcom/tencent/bugly/proguard/o;->g:[B

    invoke-virtual {v1, v2, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    return-object v1

    :catch_0
    move-exception p0

    .line 670
    invoke-static {p0}, Lcom/tencent/bugly/proguard/u;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 671
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4
    return-object v0

    :cond_5
    :goto_1
    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/tencent/bugly/proguard/l;Z)I
    .locals 0

    const/4 p3, 0x0

    .line 129
    invoke-direct {p0, p1, p2, p3, p3}, Lcom/tencent/bugly/proguard/m;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/tencent/bugly/proguard/l;)I

    move-result p1

    return p1
.end method

.method public final a(Ljava/lang/String;Landroid/content/ContentValues;Lcom/tencent/bugly/proguard/l;Z)J
    .locals 0

    const/4 p3, 0x0

    .line 59
    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/bugly/proguard/m;->a(Ljava/lang/String;Landroid/content/ContentValues;Lcom/tencent/bugly/proguard/l;)J

    move-result-wide p1

    return-wide p1
.end method

.method public final a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/tencent/bugly/proguard/l;Z)Landroid/database/Cursor;
    .locals 11

    const/4 v1, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    .line 81
    invoke-direct/range {v0 .. v10}, Lcom/tencent/bugly/proguard/m;->a(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/bugly/proguard/l;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public final a(I)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/tencent/bugly/proguard/o;",
            ">;"
        }
    .end annotation

    .line 395
    sget-object v0, Lcom/tencent/bugly/proguard/m;->b:Lcom/tencent/bugly/proguard/n;

    invoke-virtual {v0}, Lcom/tencent/bugly/proguard/n;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v9, 0x0

    if-eqz v0, :cond_9

    if-ltz p1, :cond_0

    .line 399
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "_tp = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    move-object v4, p1

    goto :goto_0

    :catchall_0
    move-exception p1

    move-object v0, p1

    move-object p1, v9

    goto/16 :goto_3

    :catch_0
    move-exception p1

    move-object v0, p1

    move-object p1, v9

    goto/16 :goto_2

    :cond_0
    move-object v4, v9

    :goto_0
    const-string v2, "t_lr"

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, v0

    .line 400
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_2

    if-eqz p1, :cond_1

    .line 404
    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 438
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v9

    .line 407
    :cond_2
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 408
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 409
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_4

    .line 410
    invoke-static {p1}, Lcom/tencent/bugly/proguard/m;->a(Landroid/database/Cursor;)Lcom/tencent/bugly/proguard/o;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 412
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :cond_3
    :try_start_2
    const-string v3, "_id"

    .line 416
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    const-string v3, " or _id"

    .line 417
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catch_1
    :try_start_3
    const-string v3, "unknown id!"

    .line 420
    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/tencent/bugly/proguard/u;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_1

    .line 426
    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 427
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_5

    const/4 v3, 0x4

    .line 428
    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "t_lr"

    .line 429
    invoke-virtual {v0, v3, v1, v9}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    const-string v1, "deleted %s illegle data %d"

    const/4 v3, 0x2

    .line 430
    new-array v3, v3, [Ljava/lang/Object;

    const-string v5, "t_lr"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v1, v3}, Lcom/tencent/bugly/proguard/u;->d(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_5
    if-eqz p1, :cond_6

    .line 437
    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_6

    .line 438
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_6
    return-object v2

    :catch_2
    move-exception v0

    .line 434
    :goto_2
    :try_start_4
    invoke-static {v0}, Lcom/tencent/bugly/proguard/u;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 435
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_7
    if-eqz p1, :cond_9

    .line 437
    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_9

    .line 438
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_4

    :catchall_1
    move-exception v0

    :goto_3
    if-eqz p1, :cond_8

    .line 441
    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_8

    .line 438
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 440
    :cond_8
    throw v0

    :cond_9
    :goto_4
    return-object v9
.end method

.method public final a(ILcom/tencent/bugly/proguard/l;Z)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/tencent/bugly/proguard/l;",
            "Z)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation

    const/4 p2, 0x0

    .line 247
    invoke-direct {p0, p1, p2}, Lcom/tencent/bugly/proguard/m;->a(ILcom/tencent/bugly/proguard/l;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public final a(ILjava/lang/String;Lcom/tencent/bugly/proguard/l;Z)Z
    .locals 0

    const/16 p1, 0x22b

    const/4 p3, 0x0

    .line 259
    invoke-static {p1, p2, p3}, Lcom/tencent/bugly/proguard/m;->a(ILjava/lang/String;Lcom/tencent/bugly/proguard/l;)Z

    move-result p1

    return p1
.end method

.method public final a(ILjava/lang/String;[BLcom/tencent/bugly/proguard/l;Z)Z
    .locals 0

    const/4 p4, 0x0

    .line 226
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/tencent/bugly/proguard/m;->a(ILjava/lang/String;[BLcom/tencent/bugly/proguard/l;)Z

    move-result p1

    return p1
.end method

.method public final a(Lcom/tencent/bugly/proguard/o;)Z
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 324
    :cond_0
    :try_start_0
    sget-object v1, Lcom/tencent/bugly/proguard/m;->b:Lcom/tencent/bugly/proguard/n;

    invoke-virtual {v1}, Lcom/tencent/bugly/proguard/n;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 326
    invoke-static {p1}, Lcom/tencent/bugly/proguard/m;->c(Lcom/tencent/bugly/proguard/o;)Landroid/content/ContentValues;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string v3, "t_lr"

    const-string v4, "_id"

    .line 328
    invoke-virtual {v1, v3, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-ltz v3, :cond_1

    const-string v3, "insert %s success!"

    const/4 v4, 0x1

    .line 330
    new-array v5, v4, [Ljava/lang/Object;

    const-string v6, "t_lr"

    aput-object v6, v5, v0

    invoke-static {v3, v5}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 331
    iput-wide v1, p1, Lcom/tencent/bugly/proguard/o;->a:J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v4

    :cond_1
    return v0

    :cond_2
    return v0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 340
    :try_start_1
    invoke-static {p1}, Lcom/tencent/bugly/proguard/u;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 341
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    return v0

    .line 346
    :goto_0
    throw p1
.end method
