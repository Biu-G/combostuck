.class public abstract Lcom/amap/api/mapcore2d/dk;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/mapcore2d/dk$a;,
        Lcom/amap/api/mapcore2d/dk$b;
    }
.end annotation


# static fields
.field static final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amap/api/mapcore2d/dk$b;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private b:Lcom/amap/api/mapcore2d/cy;

.field private c:I

.field private d:Lcom/amap/api/mapcore2d/em;

.field private e:Lcom/amap/api/mapcore2d/el;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/amap/api/mapcore2d/dk;->a:Ljava/util/List;

    return-void
.end method

.method protected constructor <init>(I)V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput p1, p0, Lcom/amap/api/mapcore2d/dk;->c:I

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/amap/api/mapcore2d/cy;)Ljava/lang/String;
    .locals 0

    .line 131
    invoke-static {p0, p1}, Lcom/amap/api/mapcore2d/fd;->a(Landroid/content/Context;Lcom/amap/api/mapcore2d/cy;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 309
    :try_start_0
    invoke-static {p2}, Lcom/amap/api/mapcore2d/cz;->a(Ljava/lang/String;)[B

    move-result-object p2

    .line 310
    invoke-static {p1, p2}, Lcom/amap/api/mapcore2d/cs;->e(Landroid/content/Context;[B)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 312
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private a(Ljava/util/List;Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/amap/api/mapcore2d/dv;",
            ">;",
            "Landroid/content/Context;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 626
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{\"pinfo\":\""

    .line 627
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/amap/api/mapcore2d/dk;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\",\"els\":["

    .line 628
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 630
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 p2, 0x1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/api/mapcore2d/dv;

    .line 631
    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/dv;->b()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/amap/api/mapcore2d/dk;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v3, ""

    .line 635
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 638
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "||"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/dv;->c()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz p2, :cond_2

    const/4 p2, 0x0

    goto :goto_1

    :cond_2
    const-string v2, ","

    .line 642
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    const-string v2, "{\"log\":\""

    .line 644
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\"}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    if-eqz p2, :cond_4

    const/4 p1, 0x0

    return-object p1

    :cond_4
    const-string p1, "]}"

    .line 650
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 651
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amap/api/mapcore2d/dk$b;",
            ">;"
        }
    .end annotation

    .line 53
    sget-object v0, Lcom/amap/api/mapcore2d/dk;->a:Ljava/util/List;

    return-object v0
.end method

.method private a(Lcom/amap/api/mapcore2d/du;I)V
    .locals 2

    const/4 v0, 0x2

    .line 513
    :try_start_0
    invoke-static {p2}, Lcom/amap/api/mapcore2d/de;->a(I)Ljava/lang/Class;

    move-result-object v1

    .line 512
    invoke-virtual {p1, v0, v1}, Lcom/amap/api/mapcore2d/du;->a(ILjava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 514
    invoke-direct {p0, v0, p1, p2}, Lcom/amap/api/mapcore2d/dk;->a(Ljava/util/List;Lcom/amap/api/mapcore2d/du;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "LogProcessor"

    const-string v0, "processDeleteFail"

    .line 517
    invoke-static {p1, p2, v0}, Lcom/amap/api/mapcore2d/dd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private a(Lcom/amap/api/mapcore2d/du;Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 0

    .line 250
    invoke-static {p4}, Lcom/amap/api/mapcore2d/de;->b(I)Lcom/amap/api/mapcore2d/dv;

    move-result-object p4

    const/4 p5, 0x0

    .line 252
    invoke-virtual {p4, p5}, Lcom/amap/api/mapcore2d/dv;->a(I)V

    .line 254
    invoke-virtual {p4, p2}, Lcom/amap/api/mapcore2d/dv;->b(Ljava/lang/String;)V

    .line 255
    invoke-virtual {p4, p3}, Lcom/amap/api/mapcore2d/dv;->a(Ljava/lang/String;)V

    .line 256
    invoke-virtual {p1, p4}, Lcom/amap/api/mapcore2d/du;->a(Lcom/amap/api/mapcore2d/dv;)V

    return-void
.end method

.method private a(Ljava/util/List;Lcom/amap/api/mapcore2d/du;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/amap/api/mapcore2d/dv;",
            ">;",
            "Lcom/amap/api/mapcore2d/du;",
            "I)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 565
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    if-lez p3, :cond_1

    .line 566
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/amap/api/mapcore2d/dv;

    .line 567
    invoke-virtual {p3}, Lcom/amap/api/mapcore2d/dv;->b()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amap/api/mapcore2d/dk;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 569
    invoke-virtual {p3}, Lcom/amap/api/mapcore2d/dv;->b()Ljava/lang/String;

    move-result-object v0

    .line 570
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    .line 569
    invoke-virtual {p2, v0, p3}, Lcom/amap/api/mapcore2d/du;->a(Ljava/lang/String;Ljava/lang/Class;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    .line 572
    invoke-virtual {p3, v0}, Lcom/amap/api/mapcore2d/dv;->a(I)V

    .line 574
    invoke-virtual {p2, p3}, Lcom/amap/api/mapcore2d/du;->b(Lcom/amap/api/mapcore2d/dv;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amap/api/mapcore2d/du;)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 344
    :try_start_0
    invoke-static {p1, p3}, Lcom/amap/api/mapcore2d/de;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 345
    new-instance p3, Ljava/io/File;

    invoke-direct {p3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 346
    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_0

    .line 347
    invoke-virtual {p3}, Ljava/io/File;->mkdirs()Z

    move-result p1

    if-nez p1, :cond_0

    return v1

    :cond_0
    const-wide/16 v2, 0x5000

    const/4 p1, 0x1

    .line 351
    invoke-static {p3, p1, p1, v2, v3}, Lcom/amap/api/mapcore2d/el;->a(Ljava/io/File;IIJ)Lcom/amap/api/mapcore2d/el;

    move-result-object p3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_e
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_b
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 352
    :try_start_1
    invoke-virtual {p0, p5}, Lcom/amap/api/mapcore2d/dk;->a(Lcom/amap/api/mapcore2d/du;)Lcom/amap/api/mapcore2d/em;

    move-result-object p5

    invoke-virtual {p3, p5}, Lcom/amap/api/mapcore2d/el;->a(Lcom/amap/api/mapcore2d/em;)V

    .line 353
    invoke-virtual {p3, p2}, Lcom/amap/api/mapcore2d/el;->a(Ljava/lang/String;)Lcom/amap/api/mapcore2d/el$b;

    move-result-object p5
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_9
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz p5, :cond_3

    if-eqz p5, :cond_1

    .line 382
    :try_start_2
    invoke-virtual {p5}, Lcom/amap/api/mapcore2d/el$b;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 384
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    if-eqz p3, :cond_2

    .line 387
    invoke-virtual {p3}, Lcom/amap/api/mapcore2d/el;->d()Z

    move-result p1

    if-nez p1, :cond_2

    .line 389
    :try_start_3
    invoke-virtual {p3}, Lcom/amap/api/mapcore2d/el;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 391
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_1
    return v1

    .line 359
    :cond_3
    :try_start_4
    invoke-static {p4}, Lcom/amap/api/mapcore2d/cz;->a(Ljava/lang/String;)[B

    move-result-object p4

    .line 361
    invoke-virtual {p3, p2}, Lcom/amap/api/mapcore2d/el;->b(Ljava/lang/String;)Lcom/amap/api/mapcore2d/el$a;

    move-result-object p2

    .line 362
    invoke-virtual {p2, v1}, Lcom/amap/api/mapcore2d/el$a;->a(I)Ljava/io/OutputStream;

    move-result-object v2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_8
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_7
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 363
    :try_start_5
    invoke-virtual {v2, p4}, Ljava/io/OutputStream;->write([B)V

    .line 364
    invoke-virtual {p2}, Lcom/amap/api/mapcore2d/el$a;->a()V

    .line 365
    invoke-virtual {p3}, Lcom/amap/api/mapcore2d/el;->e()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v2, :cond_4

    .line 375
    :try_start_6
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_2

    :catch_2
    move-exception p2

    .line 377
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4
    :goto_2
    if-eqz p5, :cond_5

    .line 382
    :try_start_7
    invoke-virtual {p5}, Lcom/amap/api/mapcore2d/el$b;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_3

    :catch_3
    move-exception p2

    .line 384
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_5
    :goto_3
    if-eqz p3, :cond_6

    .line 387
    invoke-virtual {p3}, Lcom/amap/api/mapcore2d/el;->d()Z

    move-result p2

    if-nez p2, :cond_6

    .line 389
    :try_start_8
    invoke-virtual {p3}, Lcom/amap/api/mapcore2d/el;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_4

    :catch_4
    move-exception p2

    .line 391
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_6
    :goto_4
    return p1

    :catchall_0
    move-exception p1

    move-object v0, v2

    goto/16 :goto_c

    :catch_5
    move-exception p1

    move-object v0, v2

    goto :goto_5

    :catch_6
    move-exception p1

    move-object v0, v2

    goto :goto_8

    :catch_7
    move-exception p1

    goto :goto_5

    :catch_8
    move-exception p1

    goto :goto_8

    :catchall_1
    move-exception p1

    move-object p5, v0

    goto/16 :goto_c

    :catch_9
    move-exception p1

    move-object p5, v0

    goto :goto_5

    :catch_a
    move-exception p1

    move-object p5, v0

    goto :goto_8

    :catchall_2
    move-exception p1

    move-object p3, v0

    move-object p5, p3

    goto :goto_c

    :catch_b
    move-exception p1

    move-object p3, v0

    move-object p5, p3

    .line 371
    :goto_5
    :try_start_9
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    if-eqz v0, :cond_7

    .line 375
    :try_start_a
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_c

    goto :goto_6

    :catch_c
    move-exception p1

    .line 377
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_7
    :goto_6
    if-eqz p5, :cond_8

    .line 382
    :try_start_b
    invoke-virtual {p5}, Lcom/amap/api/mapcore2d/el$b;->close()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_d

    goto :goto_7

    :catch_d
    move-exception p1

    .line 384
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_8
    :goto_7
    if-eqz p3, :cond_b

    .line 387
    invoke-virtual {p3}, Lcom/amap/api/mapcore2d/el;->d()Z

    move-result p1

    if-nez p1, :cond_b

    .line 389
    :try_start_c
    invoke-virtual {p3}, Lcom/amap/api/mapcore2d/el;->close()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_11

    goto :goto_b

    :catch_e
    move-exception p1

    move-object p3, v0

    move-object p5, p3

    .line 368
    :goto_8
    :try_start_d
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    if-eqz v0, :cond_9

    .line 375
    :try_start_e
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_f

    goto :goto_9

    :catch_f
    move-exception p1

    .line 377
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_9
    :goto_9
    if-eqz p5, :cond_a

    .line 382
    :try_start_f
    invoke-virtual {p5}, Lcom/amap/api/mapcore2d/el$b;->close()V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_10

    goto :goto_a

    :catch_10
    move-exception p1

    .line 384
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_a
    :goto_a
    if-eqz p3, :cond_b

    .line 387
    invoke-virtual {p3}, Lcom/amap/api/mapcore2d/el;->d()Z

    move-result p1

    if-nez p1, :cond_b

    .line 389
    :try_start_10
    invoke-virtual {p3}, Lcom/amap/api/mapcore2d/el;->close()V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_11

    goto :goto_b

    :catch_11
    move-exception p1

    .line 391
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_b
    :goto_b
    return v1

    :catchall_3
    move-exception p1

    :goto_c
    if-eqz v0, :cond_c

    .line 375
    :try_start_11
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_12

    goto :goto_d

    :catch_12
    move-exception p2

    .line 377
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_c
    :goto_d
    if-eqz p5, :cond_d

    .line 382
    :try_start_12
    invoke-virtual {p5}, Lcom/amap/api/mapcore2d/el$b;->close()V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_13

    goto :goto_e

    :catch_13
    move-exception p2

    .line 384
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_d
    :goto_e
    if-eqz p3, :cond_e

    .line 387
    invoke-virtual {p3}, Lcom/amap/api/mapcore2d/el;->d()Z

    move-result p2

    if-nez p2, :cond_e

    .line 389
    :try_start_13
    invoke-virtual {p3}, Lcom/amap/api/mapcore2d/el;->close()V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_14

    goto :goto_f

    :catch_14
    move-exception p2

    .line 391
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 392
    :cond_e
    :goto_f
    throw p1
.end method

.method public static a([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    const-string v1, "\n"

    .line 404
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 405
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p1, v2

    .line 406
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 407
    invoke-static {p0, v3}, Lcom/amap/api/mapcore2d/dk;->b([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 412
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    return v0

    :cond_3
    :goto_1
    return v0
.end method

.method public static b(Ljava/lang/String;)I
    .locals 4

    .line 526
    invoke-static {p0}, Lcom/amap/api/mapcore2d/cz;->a(Ljava/lang/String;)[B

    move-result-object p0

    .line 525
    invoke-static {p0}, Lcom/amap/api/mapcore2d/cz;->c([B)[B

    move-result-object p0

    .line 527
    new-instance v0, Lcom/amap/api/mapcore2d/df;

    invoke-direct {v0, p0}, Lcom/amap/api/mapcore2d/df;-><init>([B)V

    const/4 p0, 0x1

    const/4 v1, 0x0

    .line 529
    :try_start_0
    invoke-static {}, Lcom/amap/api/mapcore2d/ep;->a()Lcom/amap/api/mapcore2d/ep;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/amap/api/mapcore2d/ep;->a(Lcom/amap/api/mapcore2d/ev;)[B

    move-result-object v0

    if-nez v0, :cond_0

    return v1

    .line 534
    :cond_0
    invoke-static {v0}, Lcom/amap/api/mapcore2d/cz;->a([B)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lcom/amap/api/mapcore2d/co; {:try_start_0 .. :try_end_0} :catch_1

    .line 536
    :try_start_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "code"

    .line 538
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 539
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/amap/api/mapcore2d/co; {:try_start_1 .. :try_end_1} :catch_1

    move p0, v0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v2, "LogProcessor"

    const-string v3, "processUpdate"

    .line 545
    invoke-static {v0, v2, v3}, Lcom/amap/api/mapcore2d/dd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lcom/amap/api/mapcore2d/co; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 551
    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/co;->e()I

    move-result v2

    const/16 v3, 0x1b

    if-ne v2, v3, :cond_2

    const/4 p0, 0x0

    :cond_2
    const-string v1, "LogProcessor"

    const-string v2, "processUpdate"

    .line 557
    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore2d/dd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return p0
.end method

.method private b(Landroid/content/Context;Ljava/lang/String;)Lcom/amap/api/mapcore2d/el;
    .locals 3

    const/4 v0, 0x0

    .line 726
    :try_start_0
    invoke-static {p1, p2}, Lcom/amap/api/mapcore2d/de;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 727
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 728
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_0

    .line 729
    invoke-virtual {p2}, Ljava/io/File;->mkdirs()Z

    move-result p1

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const-wide/16 v1, 0x5000

    const/4 p1, 0x1

    .line 733
    invoke-static {p2, p1, p1, v1, v2}, Lcom/amap/api/mapcore2d/el;->a(Ljava/io/File;IIJ)Lcom/amap/api/mapcore2d/el;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string p2, "LogProcessor"

    const-string v1, "initDiskLru"

    .line 738
    invoke-static {p1, p2, v1}, Lcom/amap/api/mapcore2d/dd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception p1

    const-string p2, "LogProcessor"

    const-string v1, "initDiskLru"

    .line 735
    invoke-static {p1, p2, v1}, Lcom/amap/api/mapcore2d/dd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    move-object p1, v0

    :goto_1
    return-object p1
.end method

.method public static b(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 0

    .line 752
    invoke-static {p0}, Lcom/amap/api/mapcore2d/cz;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    if-nez p1, :cond_0

    goto :goto_1

    .line 422
    :cond_0
    :try_start_0
    array-length v1, p0

    move-object v2, p1

    const/4 p1, 0x0

    :goto_0
    if-ge p1, v1, :cond_2

    aget-object v3, p0, p1

    .line 423
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v4, "at "

    .line 424
    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 430
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    return v0

    :cond_3
    :goto_1
    return v0
.end method

.method private c(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 0

    .line 332
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private c(Ljava/lang/String;)Z
    .locals 5

    .line 484
    iget-object v0, p0, Lcom/amap/api/mapcore2d/dk;->e:Lcom/amap/api/mapcore2d/el;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 489
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/dk;->e:Lcom/amap/api/mapcore2d/el;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore2d/el;->c(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "LogUpdateProcessor"

    .line 492
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deleteLogData-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v2, p1}, Lcom/amap/api/mapcore2d/dd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static d(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 586
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :try_start_0
    const-string v1, "\"key\":\""

    .line 588
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/amap/api/mapcore2d/cp;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\",\"platform\":\"android\",\"diu\":\""

    .line 589
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/amap/api/mapcore2d/ct;->q(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\",\"pkg\":\""

    .line 590
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/amap/api/mapcore2d/cp;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\",\"model\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 591
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\",\"appname\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/amap/api/mapcore2d/cp;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\",\"appversion\":\""

    .line 592
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/amap/api/mapcore2d/cp;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\",\"sysversion\":\""

    .line 593
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\","

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v1, "CInfo"

    const-string v2, "getPublicJSONInfo"

    .line 596
    invoke-static {p0, v1, v2}, Lcom/amap/api/mapcore2d/dd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 598
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private d(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    .line 660
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/mapcore2d/dk;->e:Lcom/amap/api/mapcore2d/el;

    if-nez v1, :cond_0

    return-object v0

    .line 663
    :cond_0
    iget-object v1, p0, Lcom/amap/api/mapcore2d/dk;->e:Lcom/amap/api/mapcore2d/el;

    invoke-virtual {v1, p1}, Lcom/amap/api/mapcore2d/el;->a(Ljava/lang/String;)Lcom/amap/api/mapcore2d/el$b;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v0

    :cond_1
    const/4 v1, 0x0

    .line 667
    invoke-virtual {p1, v1}, Lcom/amap/api/mapcore2d/el$b;->a(I)Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 669
    :try_start_1
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v3, 0x400

    .line 670
    :try_start_2
    new-array v3, v3, [B

    .line 671
    :goto_0
    invoke-virtual {p1, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    .line 672
    invoke-virtual {v2, v3, v1, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 675
    :cond_2
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-static {v1}, Lcom/amap/api/mapcore2d/cz;->a([B)Ljava/lang/String;

    move-result-object v1
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 684
    :try_start_3
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v2, "LogProcessor"

    const-string v3, "readLog1"

    .line 687
    invoke-static {v0, v2, v3}, Lcom/amap/api/mapcore2d/dd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    if-eqz p1, :cond_3

    .line 693
    :try_start_4
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    const-string v0, "LogProcessor"

    const-string v2, "readLog2"

    .line 696
    invoke-static {p1, v0, v2}, Lcom/amap/api/mapcore2d/dd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_2
    return-object v1

    :catch_2
    move-exception v1

    goto :goto_3

    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto :goto_6

    :catch_3
    move-exception v1

    move-object v2, v0

    goto :goto_3

    :catchall_1
    move-exception p1

    move-object v2, v0

    move-object v0, p1

    move-object p1, v2

    goto :goto_6

    :catch_4
    move-exception v1

    move-object p1, v0

    move-object v2, p1

    :goto_3
    :try_start_5
    const-string v3, "LogProcessor"

    const-string v4, "readLog"

    .line 678
    invoke-static {v1, v3, v4}, Lcom/amap/api/mapcore2d/dd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v2, :cond_4

    .line 684
    :try_start_6
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_4

    :catch_5
    move-exception v1

    const-string v2, "LogProcessor"

    const-string v3, "readLog1"

    .line 687
    invoke-static {v1, v2, v3}, Lcom/amap/api/mapcore2d/dd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_4
    if-eqz p1, :cond_5

    .line 693
    :try_start_7
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_5

    :catch_6
    move-exception p1

    const-string v1, "LogProcessor"

    const-string v2, "readLog2"

    .line 696
    invoke-static {p1, v1, v2}, Lcom/amap/api/mapcore2d/dd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_5
    return-object v0

    :catchall_2
    move-exception v0

    :goto_6
    if-eqz v2, :cond_6

    .line 684
    :try_start_8
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    goto :goto_7

    :catch_7
    move-exception v1

    const-string v2, "LogProcessor"

    const-string v3, "readLog1"

    .line 687
    invoke-static {v1, v2, v3}, Lcom/amap/api/mapcore2d/dd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_7
    if-eqz p1, :cond_7

    .line 693
    :try_start_9
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8

    goto :goto_8

    :catch_8
    move-exception p1

    const-string v1, "LogProcessor"

    const-string v2, "readLog2"

    .line 696
    invoke-static {p1, v1, v2}, Lcom/amap/api/mapcore2d/dd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 698
    :cond_7
    :goto_8
    throw v0
.end method

.method public static e(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    .line 606
    :try_start_0
    invoke-static {p0}, Lcom/amap/api/mapcore2d/dk;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    .line 607
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v0

    .line 610
    :cond_0
    invoke-static {v1}, Lcom/amap/api/mapcore2d/cz;->a(Ljava/lang/String;)[B

    move-result-object v1

    .line 611
    invoke-static {p0, v1}, Lcom/amap/api/mapcore2d/cs;->b(Landroid/content/Context;[B)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v1, "LogProcessor"

    const-string v2, "getPublicInfo"

    .line 615
    invoke-static {p0, v1, v2}, Lcom/amap/api/mapcore2d/dd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method private f(Landroid/content/Context;)V
    .locals 2

    .line 70
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/dk;->b()Ljava/lang/String;

    move-result-object v0

    .line 71
    invoke-direct {p0, p1, v0}, Lcom/amap/api/mapcore2d/dk;->b(Landroid/content/Context;Ljava/lang/String;)Lcom/amap/api/mapcore2d/el;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/mapcore2d/dk;->e:Lcom/amap/api/mapcore2d/el;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "LogProcessor"

    const-string v1, "LogUpDateProcessor"

    .line 73
    invoke-static {p1, v0, v1}, Lcom/amap/api/mapcore2d/dd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private g(Landroid/content/Context;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/amap/api/mapcore2d/cy;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 237
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 238
    :try_start_1
    new-instance v2, Lcom/amap/api/mapcore2d/dw;

    const/4 v3, 0x0

    invoke-direct {v2, p1, v3}, Lcom/amap/api/mapcore2d/dw;-><init>(Landroid/content/Context;Z)V

    .line 240
    invoke-virtual {v2}, Lcom/amap/api/mapcore2d/dw;->a()Ljava/util/List;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 241
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v4, v0

    move-object v0, p1

    move-object p1, v4

    goto :goto_0

    :catchall_1
    move-exception p1

    :goto_0
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw p1
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p1

    .line 243
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    move-object p1, v0

    :goto_1
    return-object p1
.end method


# virtual methods
.method protected a(Lcom/amap/api/mapcore2d/du;)Lcom/amap/api/mapcore2d/em;
    .locals 1

    .line 273
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/dk;->d:Lcom/amap/api/mapcore2d/em;

    if-nez v0, :cond_0

    .line 274
    new-instance v0, Lcom/amap/api/mapcore2d/dk$a;

    invoke-direct {v0, p0, p1}, Lcom/amap/api/mapcore2d/dk$a;-><init>(Lcom/amap/api/mapcore2d/dk;Lcom/amap/api/mapcore2d/du;)V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/dk;->d:Lcom/amap/api/mapcore2d/em;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 278
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 280
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/amap/api/mapcore2d/dk;->d:Lcom/amap/api/mapcore2d/em;

    return-object p1
.end method

.method protected a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 264
    invoke-static {p1}, Lcom/amap/api/mapcore2d/cv;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected a(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 0

    .line 322
    :try_start_0
    invoke-static {p1}, Lcom/amap/api/mapcore2d/dk;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 325
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method protected abstract a(Ljava/util/List;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amap/api/mapcore2d/cy;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method a(Landroid/content/Context;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .line 140
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore2d/dk;->g(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 141
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_2

    .line 145
    :cond_0
    invoke-virtual {p0, p2}, Lcom/amap/api/mapcore2d/dk;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_5

    const-string v2, ""

    .line 146
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    .line 157
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/amap/api/mapcore2d/cy;

    .line 158
    invoke-virtual {v3}, Lcom/amap/api/mapcore2d/cy;->g()[Ljava/lang/String;

    move-result-object v2

    .line 159
    invoke-static {v2, v6}, Lcom/amap/api/mapcore2d/dk;->a([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v0, "\n"

    const-string v2, "<br/>"

    .line 160
    invoke-virtual {v6, v0, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    move-object v7, p3

    move-object v8, p4

    .line 161
    invoke-virtual/range {v2 .. v8}, Lcom/amap/api/mapcore2d/dk;->a(Lcom/amap/api/mapcore2d/cy;Landroid/content/Context;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    const-string v0, "com.amap.api.col"

    .line 171
    invoke-virtual {v6, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 174
    :try_start_0
    invoke-static {}, Lcom/amap/api/mapcore2d/cz;->a()Lcom/amap/api/mapcore2d/cy;

    move-result-object v3

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    move-object v7, p3

    move-object v8, p4

    .line 175
    invoke-virtual/range {v2 .. v8}, Lcom/amap/api/mapcore2d/dk;->a(Lcom/amap/api/mapcore2d/cy;Landroid/content/Context;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/amap/api/mapcore2d/co; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 178
    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/co;->printStackTrace()V

    :cond_4
    :goto_0
    return-void

    :cond_5
    :goto_1
    return-void

    :cond_6
    :goto_2
    return-void
.end method

.method protected a(Lcom/amap/api/mapcore2d/cy;)V
    .locals 0

    .line 230
    iput-object p1, p0, Lcom/amap/api/mapcore2d/dk;->b:Lcom/amap/api/mapcore2d/cy;

    return-void
.end method

.method a(Lcom/amap/api/mapcore2d/cy;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 13

    move-object v7, p0

    move-object v0, p2

    move-object/from16 v5, p3

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    .line 90
    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore2d/dk;->a(Lcom/amap/api/mapcore2d/cy;)V

    .line 91
    invoke-static {}, Lcom/amap/api/mapcore2d/fd;->a()Ljava/lang/String;

    move-result-object v4

    move-object v8, p1

    .line 92
    invoke-static {p2, p1}, Lcom/amap/api/mapcore2d/dk;->a(Landroid/content/Context;Lcom/amap/api/mapcore2d/cy;)Ljava/lang/String;

    move-result-object v6

    .line 93
    invoke-static {p2}, Lcom/amap/api/mapcore2d/cp;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    if-eqz v5, :cond_5

    const-string v10, ""

    .line 95
    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    goto/16 :goto_1

    .line 98
    :cond_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/dk;->c()I

    move-result v10

    .line 99
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v2, :cond_1

    const-string v12, "class:"

    .line 101
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    if-eqz v3, :cond_2

    const-string v2, " method:"

    .line 105
    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "$"

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "<br/>"

    .line 106
    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    :cond_2
    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    invoke-virtual {p0, v1}, Lcom/amap/api/mapcore2d/dk;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 112
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object v1, v9

    move-object v2, v6

    move-object v3, v4

    move v4, v10

    move-object/from16 v5, p3

    move-object v6, v11

    .line 111
    invoke-static/range {v1 .. v6}, Lcom/amap/api/mapcore2d/fd;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    const-string v2, ""

    .line 113
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0

    .line 116
    :cond_3
    invoke-direct {p0, p2, v1}, Lcom/amap/api/mapcore2d/dk;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 119
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/dk;->b()Ljava/lang/String;

    move-result-object v4

    .line 121
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v9

    monitor-enter v9

    .line 122
    :try_start_0
    new-instance v11, Lcom/amap/api/mapcore2d/du;

    invoke-direct {v11, p2}, Lcom/amap/api/mapcore2d/du;-><init>(Landroid/content/Context;)V

    move-object v1, p0

    move-object v2, p2

    move-object v3, v12

    move-object v6, v11

    .line 123
    invoke-direct/range {v1 .. v6}, Lcom/amap/api/mapcore2d/dk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amap/api/mapcore2d/du;)Z

    move-result v0

    .line 125
    invoke-virtual {p1}, Lcom/amap/api/mapcore2d/cy;->a()Ljava/lang/String;

    move-result-object v1

    move-object p1, p0

    move-object p2, v11

    move-object/from16 p3, v1

    move-object/from16 p4, v12

    move/from16 p5, v10

    move/from16 p6, v0

    invoke-direct/range {p1 .. p6}, Lcom/amap/api/mapcore2d/dk;->a(Lcom/amap/api/mapcore2d/du;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 127
    monitor-exit v9

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_4
    :goto_0
    return-void

    :cond_5
    :goto_1
    return-void
.end method

.method a(Lcom/amap/api/mapcore2d/cy;Landroid/content/Context;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 82
    invoke-direct {p0, p3}, Lcom/amap/api/mapcore2d/dk;->c(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/amap/api/mapcore2d/dk;->a(Lcom/amap/api/mapcore2d/cy;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected abstract a(Landroid/content/Context;)Z
.end method

.method protected b()Ljava/lang/String;
    .locals 1

    .line 499
    iget v0, p0, Lcom/amap/api/mapcore2d/dk;->c:I

    invoke-static {v0}, Lcom/amap/api/mapcore2d/de;->c(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method b(Landroid/content/Context;)V
    .locals 13

    .line 189
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore2d/dk;->g(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 190
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_2

    .line 193
    :cond_0
    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore2d/dk;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v1, ""

    .line 194
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 197
    :cond_1
    invoke-static {}, Lcom/amap/api/mapcore2d/fd;->a()Ljava/lang/String;

    move-result-object v4

    .line 198
    iget-object v1, p0, Lcom/amap/api/mapcore2d/dk;->b:Lcom/amap/api/mapcore2d/cy;

    invoke-static {p1, v1}, Lcom/amap/api/mapcore2d/fd;->a(Landroid/content/Context;Lcom/amap/api/mapcore2d/cy;)Ljava/lang/String;

    move-result-object v3

    .line 199
    invoke-static {p1}, Lcom/amap/api/mapcore2d/cp;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v6, "ANR"

    .line 201
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/dk;->c()I

    move-result v11

    move v5, v11

    move-object v7, v0

    .line 202
    invoke-static/range {v2 .. v7}, Lcom/amap/api/mapcore2d/fd;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string v2, ""

    .line 204
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    .line 211
    :cond_2
    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore2d/dk;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 212
    invoke-direct {p0, p1, v1}, Lcom/amap/api/mapcore2d/dk;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 213
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/dk;->b()Ljava/lang/String;

    move-result-object v6

    .line 214
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    monitor-enter v1

    .line 215
    :try_start_0
    new-instance v2, Lcom/amap/api/mapcore2d/du;

    invoke-direct {v2, p1}, Lcom/amap/api/mapcore2d/du;-><init>(Landroid/content/Context;)V

    move-object v3, p0

    move-object v4, p1

    move-object v5, v0

    move-object v8, v2

    .line 216
    invoke-direct/range {v3 .. v8}, Lcom/amap/api/mapcore2d/dk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amap/api/mapcore2d/du;)Z

    move-result v12

    .line 218
    iget-object p1, p0, Lcom/amap/api/mapcore2d/dk;->b:Lcom/amap/api/mapcore2d/cy;

    invoke-virtual {p1}, Lcom/amap/api/mapcore2d/cy;->a()Ljava/lang/String;

    move-result-object v9

    move-object v7, p0

    move-object v8, v2

    move-object v10, v0

    invoke-direct/range {v7 .. v12}, Lcom/amap/api/mapcore2d/dk;->a(Lcom/amap/api/mapcore2d/du;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 220
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_3
    :goto_0
    return-void

    :cond_4
    :goto_1
    return-void

    :cond_5
    :goto_2
    return-void
.end method

.method protected c()I
    .locals 1

    .line 504
    iget v0, p0, Lcom/amap/api/mapcore2d/dk;->c:I

    return v0
.end method

.method c(Landroid/content/Context;)V
    .locals 4

    .line 441
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore2d/dk;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 447
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 448
    :try_start_1
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore2d/dk;->f(Landroid/content/Context;)V

    .line 449
    new-instance v1, Lcom/amap/api/mapcore2d/du;

    invoke-direct {v1, p1}, Lcom/amap/api/mapcore2d/du;-><init>(Landroid/content/Context;)V

    .line 451
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/dk;->c()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/amap/api/mapcore2d/dk;->a(Lcom/amap/api/mapcore2d/du;I)V

    const/4 v2, 0x0

    .line 458
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/dk;->c()I

    move-result v3

    invoke-static {v3}, Lcom/amap/api/mapcore2d/de;->a(I)Ljava/lang/Class;

    move-result-object v3

    .line 457
    invoke-virtual {v1, v2, v3}, Lcom/amap/api/mapcore2d/du;->a(ILjava/lang/Class;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 460
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 464
    :cond_1
    invoke-direct {p0, v2, p1}, Lcom/amap/api/mapcore2d/dk;->a(Ljava/util/List;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    .line 466
    monitor-exit v0

    return-void

    .line 468
    :cond_2
    invoke-static {p1}, Lcom/amap/api/mapcore2d/dk;->b(Ljava/lang/String;)I

    move-result p1

    const/4 v3, 0x1

    if-ne p1, v3, :cond_3

    .line 470
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/dk;->c()I

    move-result p1

    invoke-direct {p0, v2, v1, p1}, Lcom/amap/api/mapcore2d/dk;->a(Ljava/util/List;Lcom/amap/api/mapcore2d/du;I)V

    .line 473
    :cond_3
    monitor-exit v0

    goto :goto_1

    .line 461
    :cond_4
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    .line 473
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p1

    const-string v0, "LogProcessor"

    const-string v1, "processUpdateLog"

    .line 478
    invoke-static {p1, v0, v1}, Lcom/amap/api/mapcore2d/dd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method d()V
    .locals 3

    .line 707
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/dk;->e:Lcom/amap/api/mapcore2d/el;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore2d/dk;->e:Lcom/amap/api/mapcore2d/el;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/el;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 708
    iget-object v0, p0, Lcom/amap/api/mapcore2d/dk;->e:Lcom/amap/api/mapcore2d/el;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/el;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "LogProcessor"

    const-string v2, "closeDiskLru"

    .line 714
    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore2d/dd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "LogProcessor"

    const-string v2, "closeDiskLru"

    .line 711
    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore2d/dd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method
