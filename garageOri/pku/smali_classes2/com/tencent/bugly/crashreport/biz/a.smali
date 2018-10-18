.class public final Lcom/tencent/bugly/crashreport/biz/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/bugly/crashreport/biz/a$b;,
        Lcom/tencent/bugly/crashreport/biz/a$a;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:J

.field private c:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/tencent/bugly/crashreport/biz/a;->a:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/tencent/bugly/crashreport/biz/a;)J
    .locals 2

    .line 27
    iget-wide v0, p0, Lcom/tencent/bugly/crashreport/biz/a;->b:J

    return-wide v0
.end method

.method private static a(Lcom/tencent/bugly/crashreport/biz/UserInfoBean;)Landroid/content/ContentValues;
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 415
    :cond_0
    :try_start_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 416
    iget-wide v2, p0, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->a:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    const-string v2, "_id"

    .line 417
    iget-wide v3, p0, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->a:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_1
    const-string v2, "_tm"

    .line 419
    iget-wide v3, p0, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->e:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "_ut"

    .line 420
    iget-wide v3, p0, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->f:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "_tp"

    .line 421
    iget v3, p0, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->b:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "_pc"

    .line 422
    iget-object v3, p0, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "_dt"

    .line 423
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {p0, v3, v4}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    invoke-virtual {v3}, Landroid/os/Parcel;->marshall()[B

    move-result-object p0

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v1, v2, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p0

    .line 426
    invoke-static {p0}, Lcom/tencent/bugly/proguard/u;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 427
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    return-object v0
.end method

.method private static a(Landroid/database/Cursor;)Lcom/tencent/bugly/crashreport/biz/UserInfoBean;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    const-string v1, "_dt"

    .line 440
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    const-string v2, "_id"

    .line 443
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 444
    sget-object p0, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, p0}, Lcom/tencent/bugly/proguard/a;->a([BLandroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;

    if-eqz p0, :cond_2

    .line 446
    iput-wide v2, p0, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->a:J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-object p0

    :catch_0
    move-exception p0

    .line 450
    invoke-static {p0}, Lcom/tencent/bugly/proguard/u;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 451
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    return-object v0
.end method

.method private a(Ljava/lang/String;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/tencent/bugly/crashreport/biz/UserInfoBean;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 333
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :catchall_0
    move-exception p1

    move-object v0, p1

    move-object p1, v2

    goto/16 :goto_4

    :catch_0
    move-exception p1

    move-object v0, p1

    move-object p1, v2

    goto/16 :goto_3

    :cond_0
    const/4 v3, 0x1

    :goto_0
    if-eqz v3, :cond_1

    move-object v6, v2

    goto :goto_1

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "_pc = \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    move-object v6, p1

    .line 336
    :goto_1
    invoke-static {}, Lcom/tencent/bugly/proguard/m;->a()Lcom/tencent/bugly/proguard/m;

    move-result-object v3

    const-string v4, "t_ui"

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-virtual/range {v3 .. v9}, Lcom/tencent/bugly/proguard/m;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/tencent/bugly/proguard/l;Z)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_3

    if-eqz p1, :cond_2

    .line 340
    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 374
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object v2

    .line 342
    :cond_3
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 343
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 344
    :goto_2
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 345
    invoke-static {p1}, Lcom/tencent/bugly/crashreport/biz/a;->a(Landroid/database/Cursor;)Lcom/tencent/bugly/crashreport/biz/UserInfoBean;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 347
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :cond_4
    :try_start_2
    const-string v5, "_id"

    .line 351
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    const-string v7, " or _id"

    .line 352
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " = "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catch_1
    :try_start_3
    const-string v5, "unknown id!"

    .line 354
    new-array v6, v1, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/tencent/bugly/proguard/u;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_2

    .line 360
    :cond_5
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 361
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_6

    const/4 v5, 0x4

    .line 362
    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 363
    invoke-static {}, Lcom/tencent/bugly/proguard/m;->a()Lcom/tencent/bugly/proguard/m;

    move-result-object v6

    const-string v7, "t_ui"

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-virtual/range {v6 .. v11}, Lcom/tencent/bugly/proguard/m;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/tencent/bugly/proguard/l;Z)I

    move-result v3

    const-string v5, "[session] deleted %s error data %d"

    const/4 v6, 0x2

    .line 366
    new-array v6, v6, [Ljava/lang/Object;

    const-string v7, "t_ui"

    aput-object v7, v6, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v0

    invoke-static {v5, v6}, Lcom/tencent/bugly/proguard/u;->d(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_6
    if-eqz p1, :cond_7

    .line 373
    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_7

    .line 374
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_7
    return-object v4

    :catch_2
    move-exception v0

    .line 370
    :goto_3
    :try_start_4
    invoke-static {v0}, Lcom/tencent/bugly/proguard/u;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 371
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_8
    if-eqz p1, :cond_9

    .line 373
    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_9

    .line 374
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_9
    return-object v2

    :catchall_1
    move-exception v0

    :goto_4
    if-eqz p1, :cond_a

    .line 373
    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_a

    .line 374
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 375
    :cond_a
    throw v0
.end method

.method static synthetic a(Lcom/tencent/bugly/crashreport/biz/a;Lcom/tencent/bugly/crashreport/biz/UserInfoBean;)V
    .locals 6

    if-eqz p1, :cond_0

    .line 27
    invoke-static {p1}, Lcom/tencent/bugly/crashreport/biz/a;->a(Lcom/tencent/bugly/crashreport/biz/UserInfoBean;)Landroid/content/ContentValues;

    move-result-object p0

    invoke-static {}, Lcom/tencent/bugly/proguard/m;->a()Lcom/tencent/bugly/proguard/m;

    move-result-object v0

    const-string v1, "t_ui"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, p0, v2, v3}, Lcom/tencent/bugly/proguard/m;->a(Ljava/lang/String;Landroid/content/ContentValues;Lcom/tencent/bugly/proguard/l;Z)J

    move-result-wide v0

    const-wide/16 v4, 0x0

    cmp-long p0, v0, v4

    if-ltz p0, :cond_0

    const-string p0, "insert %s success! %d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "t_ui"

    aput-object v5, v2, v4

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {p0, v2}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    iput-wide v0, p1, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->a:J

    :cond_0
    return-void
.end method

.method private static a(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/bugly/crashreport/biz/UserInfoBean;",
            ">;)V"
        }
    .end annotation

    if-eqz p0, :cond_4

    .line 385
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 388
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 389
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;

    const-string v2, " or _id"

    .line 390
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, v1, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 392
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 393
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    const/4 v1, 0x4

    .line 394
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_2
    move-object v3, p0

    const/4 p0, 0x0

    .line 395
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 397
    :try_start_0
    invoke-static {}, Lcom/tencent/bugly/proguard/m;->a()Lcom/tencent/bugly/proguard/m;

    move-result-object v1

    const-string v2, "t_ui"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lcom/tencent/bugly/proguard/m;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/tencent/bugly/proguard/l;Z)I

    move-result v0

    const-string v1, "deleted %s data %d"

    const/4 v2, 0x2

    .line 400
    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "t_ui"

    aput-object v3, v2, p0

    const/4 p0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, p0

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 402
    invoke-static {p0}, Lcom/tencent/bugly/proguard/u;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 403
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    return-void

    :cond_4
    :goto_1
    return-void
.end method

.method static synthetic b(Lcom/tencent/bugly/crashreport/biz/a;)I
    .locals 2

    .line 27
    iget v0, p0, Lcom/tencent/bugly/crashreport/biz/a;->c:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/tencent/bugly/crashreport/biz/a;->c:I

    return v0
.end method


# virtual methods
.method public final a()V
    .locals 6

    .line 99
    invoke-static {}, Lcom/tencent/bugly/proguard/a;->o()J

    move-result-wide v0

    const-wide/32 v2, 0x5265c00

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/tencent/bugly/crashreport/biz/a;->b:J

    .line 100
    invoke-static {}, Lcom/tencent/bugly/proguard/t;->a()Lcom/tencent/bugly/proguard/t;

    move-result-object v0

    new-instance v1, Lcom/tencent/bugly/crashreport/biz/a$b;

    invoke-direct {v1, p0}, Lcom/tencent/bugly/crashreport/biz/a$b;-><init>(Lcom/tencent/bugly/crashreport/biz/a;)V

    iget-wide v2, p0, Lcom/tencent/bugly/crashreport/biz/a;->b:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x1388

    add-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/bugly/proguard/t;->a(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final a(IZJ)V
    .locals 5

    .line 68
    invoke-static {}, Lcom/tencent/bugly/crashreport/common/strategy/a;->a()Lcom/tencent/bugly/crashreport/common/strategy/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/bugly/crashreport/common/strategy/a;->c()Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 73
    iget-boolean v0, v0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->e:Z

    if-nez v0, :cond_0

    if-eq p1, v2, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const-string p1, "UserInfo is disable"

    .line 75
    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/tencent/bugly/proguard/u;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void

    :cond_0
    if-ne p1, v2, :cond_1

    .line 80
    iget v0, p0, Lcom/tencent/bugly/crashreport/biz/a;->c:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/tencent/bugly/crashreport/biz/a;->c:I

    .line 83
    :cond_1
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/biz/a;->a:Landroid/content/Context;

    if-ne p1, v2, :cond_2

    const/4 v1, 0x1

    :cond_2
    invoke-static {v0}, Lcom/tencent/bugly/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/tencent/bugly/crashreport/common/info/a;

    move-result-object v0

    new-instance v2, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;

    invoke-direct {v2}, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;-><init>()V

    iput p1, v2, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->b:I

    iget-object p1, v0, Lcom/tencent/bugly/crashreport/common/info/a;->d:Ljava/lang/String;

    iput-object p1, v2, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->c:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/tencent/bugly/crashreport/common/info/a;->f()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v2, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->d:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->e:J

    const-wide/16 v3, -0x1

    iput-wide v3, v2, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->f:J

    iget-object p1, v0, Lcom/tencent/bugly/crashreport/common/info/a;->i:Ljava/lang/String;

    iput-object p1, v2, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->n:Ljava/lang/String;

    iput v1, v2, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->o:I

    iget-boolean p1, v0, Lcom/tencent/bugly/crashreport/common/info/a;->n:Z

    iput-boolean p1, v2, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->l:Z

    iget-object p1, v0, Lcom/tencent/bugly/crashreport/common/info/a;->o:Ljava/lang/String;

    iput-object p1, v2, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->m:Ljava/lang/String;

    iget-wide v3, v0, Lcom/tencent/bugly/crashreport/common/info/a;->p:J

    iput-wide v3, v2, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->g:J

    iget-wide v3, v0, Lcom/tencent/bugly/crashreport/common/info/a;->q:J

    iput-wide v3, v2, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->h:J

    iget-wide v3, v0, Lcom/tencent/bugly/crashreport/common/info/a;->r:J

    iput-wide v3, v2, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->i:J

    iget-wide v3, v0, Lcom/tencent/bugly/crashreport/common/info/a;->s:J

    iput-wide v3, v2, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->k:J

    invoke-virtual {v0}, Lcom/tencent/bugly/crashreport/common/info/a;->w()Ljava/util/Map;

    move-result-object p1

    iput-object p1, v2, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->r:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/tencent/bugly/crashreport/common/info/a;->A()I

    move-result p1

    iput p1, v2, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->p:I

    invoke-virtual {v0}, Lcom/tencent/bugly/crashreport/common/info/a;->B()I

    move-result p1

    iput p1, v2, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->q:I

    .line 84
    invoke-static {}, Lcom/tencent/bugly/proguard/t;->a()Lcom/tencent/bugly/proguard/t;

    move-result-object p1

    new-instance v0, Lcom/tencent/bugly/crashreport/biz/a$a;

    invoke-direct {v0, p0, v2, p2}, Lcom/tencent/bugly/crashreport/biz/a$a;-><init>(Lcom/tencent/bugly/crashreport/biz/a;Lcom/tencent/bugly/crashreport/biz/UserInfoBean;Z)V

    invoke-virtual {p1, v0, p3, p4}, Lcom/tencent/bugly/proguard/t;->a(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final declared-synchronized b()V
    .locals 13

    monitor-enter p0

    .line 155
    :try_start_0
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/biz/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/bugly/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/tencent/bugly/crashreport/common/info/a;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/bugly/crashreport/common/info/a;->d:Ljava/lang/String;

    .line 157
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 160
    invoke-direct {p0, v0}, Lcom/tencent/bugly/crashreport/biz/a;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_8

    .line 164
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0xa

    if-lez v4, :cond_3

    const/4 v5, 0x0

    .line 168
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v3

    if-ge v5, v6, :cond_2

    add-int/lit8 v6, v5, 0x1

    move v7, v6

    .line 169
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_1

    .line 170
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;

    iget-wide v8, v8, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->e:J

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;

    iget-wide v10, v10, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->e:J

    cmp-long v8, v8, v10

    if-lez v8, :cond_0

    .line 171
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;

    .line 172
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v0, v5, v9}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 173
    invoke-interface {v0, v7, v8}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    move v5, v6

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    :goto_2
    if-ge v5, v4, :cond_3

    .line 180
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 186
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v5, 0x0

    .line 187
    :cond_4
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 188
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;

    .line 189
    iget-wide v7, v6, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->f:J

    const-wide/16 v9, -0x1

    cmp-long v7, v7, v9

    if-eqz v7, :cond_5

    .line 191
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    .line 194
    iget-wide v7, v6, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->e:J

    invoke-static {}, Lcom/tencent/bugly/proguard/a;->o()J

    move-result-wide v9

    cmp-long v7, v7, v9

    if-gez v7, :cond_5

    .line 195
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 200
    :cond_5
    iget-wide v7, v6, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->e:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    const-wide/32 v11, 0x927c0

    sub-long/2addr v9, v11

    cmp-long v7, v7, v9

    if-lez v7, :cond_4

    .line 201
    iget v7, v6, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->b:I

    if-eq v7, v3, :cond_6

    iget v6, v6, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->b:I

    const/4 v7, 0x4

    if-ne v6, v7, :cond_4

    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_7
    const/16 v4, 0xf

    if-le v5, v4, :cond_9

    const-string v4, "[userinfo] userinfo too many times in 10 min: %d"

    .line 210
    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v6, v2

    invoke-static {v4, v6}, Lcom/tencent/bugly/proguard/u;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    const/4 v4, 0x0

    goto :goto_4

    .line 213
    :cond_8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_9
    const/4 v4, 0x1

    .line 217
    :goto_4
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_a

    .line 218
    invoke-static {v1}, Lcom/tencent/bugly/crashreport/biz/a;->a(Ljava/util/List;)V

    :cond_a
    if-eqz v4, :cond_10

    if-eqz v0, :cond_10

    .line 221
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_b

    goto :goto_6

    :cond_b
    const-string v1, "[userinfo] do userinfo, size: %d"

    .line 226
    new-array v4, v3, [Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v1, v4}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 229
    iget v1, p0, Lcom/tencent/bugly/crashreport/biz/a;->c:I

    if-ne v1, v3, :cond_c

    goto :goto_5

    :cond_c
    const/4 v3, 0x2

    .line 232
    :goto_5
    invoke-static {v0, v3}, Lcom/tencent/bugly/proguard/a;->a(Ljava/util/List;I)Lcom/tencent/bugly/proguard/ap;

    move-result-object v1

    if-nez v1, :cond_d

    const-string v0, "[biz] create uPkg fail!"

    .line 234
    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/u;->d(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 235
    monitor-exit p0

    return-void

    .line 238
    :cond_d
    :try_start_1
    invoke-static {v1}, Lcom/tencent/bugly/proguard/a;->a(Lcom/tencent/bugly/proguard/j;)[B

    move-result-object v1

    if-nez v1, :cond_e

    const-string v0, "[biz] send encode fail!"

    .line 240
    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/u;->d(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 241
    monitor-exit p0

    return-void

    .line 244
    :cond_e
    :try_start_2
    iget-object v3, p0, Lcom/tencent/bugly/crashreport/biz/a;->a:Landroid/content/Context;

    const/16 v4, 0x280

    invoke-static {v3, v4, v1}, Lcom/tencent/bugly/proguard/a;->a(Landroid/content/Context;I[B)Lcom/tencent/bugly/proguard/ak;

    move-result-object v1

    if-nez v1, :cond_f

    const-string v0, "request package is null."

    .line 249
    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/u;->d(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 250
    monitor-exit p0

    return-void

    .line 256
    :cond_f
    :try_start_3
    new-instance v2, Lcom/tencent/bugly/crashreport/biz/a$1;

    invoke-direct {v2, p0, v0}, Lcom/tencent/bugly/crashreport/biz/a$1;-><init>(Lcom/tencent/bugly/crashreport/biz/a;Ljava/util/List;)V

    .line 276
    invoke-static {}, Lcom/tencent/bugly/proguard/r;->a()Lcom/tencent/bugly/proguard/r;

    move-result-object v0

    const/16 v3, 0x3e9

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v1, v4, v2}, Lcom/tencent/bugly/proguard/r;->a(ILcom/tencent/bugly/proguard/ak;Ljava/lang/String;Lcom/tencent/bugly/proguard/q;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 277
    monitor-exit p0

    return-void

    .line 222
    :cond_10
    :goto_6
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 153
    monitor-exit p0

    throw v0
.end method
