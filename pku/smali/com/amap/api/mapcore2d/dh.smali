.class public Lcom/amap/api/mapcore2d/dh;
.super Lcom/amap/api/mapcore2d/dk;
.source "SourceFile"


# static fields
.field private static b:Z = true


# instance fields
.field private c:[Ljava/lang/String;

.field private d:I

.field private e:Z

.field private f:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method protected constructor <init>(I)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore2d/dk;-><init>(I)V

    const/16 p1, 0xa

    .line 66
    new-array p1, p1, [Ljava/lang/String;

    iput-object p1, p0, Lcom/amap/api/mapcore2d/dh;->c:[Ljava/lang/String;

    const/4 p1, 0x0

    .line 67
    iput p1, p0, Lcom/amap/api/mapcore2d/dh;->d:I

    .line 68
    iput-boolean p1, p0, Lcom/amap/api/mapcore2d/dh;->e:Z

    .line 69
    iput p1, p0, Lcom/amap/api/mapcore2d/dh;->f:I

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 2

    .line 191
    :try_start_0
    iget v0, p0, Lcom/amap/api/mapcore2d/dh;->d:I

    const/16 v1, 0x9

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    .line 192
    iput v0, p0, Lcom/amap/api/mapcore2d/dh;->d:I

    .line 194
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/dh;->c:[Ljava/lang/String;

    iget v1, p0, Lcom/amap/api/mapcore2d/dh;->d:I

    aput-object p1, v0, v1

    .line 195
    iget p1, p0, Lcom/amap/api/mapcore2d/dh;->d:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/amap/api/mapcore2d/dh;->d:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "ANRWriter"

    const-string v1, "addData"

    .line 197
    invoke-static {p1, v0, v1}, Lcom/amap/api/mapcore2d/dd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private e()Ljava/lang/String;
    .locals 4

    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 171
    :try_start_0
    iget v1, p0, Lcom/amap/api/mapcore2d/dh;->d:I

    :goto_0
    const/16 v2, 0xa

    if-ge v1, v2, :cond_1

    const/16 v2, 0x9

    if-le v1, v2, :cond_0

    goto :goto_1

    .line 175
    :cond_0
    iget-object v2, p0, Lcom/amap/api/mapcore2d/dh;->c:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    const/4 v1, 0x0

    .line 177
    :goto_2
    iget v2, p0, Lcom/amap/api/mapcore2d/dh;->d:I

    if-ge v1, v2, :cond_2

    .line 178
    iget-object v2, p0, Lcom/amap/api/mapcore2d/dh;->c:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :catch_0
    move-exception v1

    const-string v2, "ANRWriter"

    const-string v3, "getLogInfo"

    .line 182
    invoke-static {v1, v2, v3}, Lcom/amap/api/mapcore2d/dd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected a(Ljava/util/List;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amap/api/mapcore2d/cy;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 77
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/anr/traces.txt"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 78
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    return-object v0

    .line 81
    :cond_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_14
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_d
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_a
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 82
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v1

    const v3, 0xfa000

    if-le v1, v3, :cond_1

    sub-int/2addr v1, v3

    int-to-long v3, v1

    .line 84
    invoke-virtual {v2, v3, v4}, Ljava/io/InputStream;->skip(J)J

    .line 86
    :cond_1
    new-instance v1, Lcom/amap/api/mapcore2d/en;

    sget-object v3, Lcom/amap/api/mapcore2d/eo;->a:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3}, Lcom/amap/api/mapcore2d/en;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v3, 0x0

    .line 90
    :cond_2
    :goto_0
    :try_start_2
    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/en;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, "pid"

    .line 91
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_4

    :goto_1
    const-string v3, "\"main\""

    .line 92
    invoke-virtual {v4, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 93
    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/en;->a()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_3
    const/4 v3, 0x1

    :cond_4
    const-string v5, ""

    .line 98
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    if-eqz v3, :cond_5

    goto :goto_2

    :cond_5
    if-eqz v3, :cond_2

    .line 102
    invoke-direct {p0, v4}, Lcom/amap/api/mapcore2d/dh;->c(Ljava/lang/String;)V

    .line 103
    iget v5, p0, Lcom/amap/api/mapcore2d/dh;->f:I

    const/4 v7, 0x5

    if-ne v5, v7, :cond_6

    goto :goto_2

    .line 106
    :cond_6
    iget-boolean v5, p0, Lcom/amap/api/mapcore2d/dh;->e:Z

    if-nez v5, :cond_8

    .line 107
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/amap/api/mapcore2d/cy;

    .line 109
    invoke-virtual {v6}, Lcom/amap/api/mapcore2d/cy;->g()[Ljava/lang/String;

    move-result-object v7

    .line 108
    invoke-static {v7, v4}, Lcom/amap/api/mapcore2d/dh;->b([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/amap/api/mapcore2d/dh;->e:Z

    .line 110
    iget-boolean v7, p0, Lcom/amap/api/mapcore2d/dh;->e:Z

    if-eqz v7, :cond_7

    .line 111
    invoke-virtual {p0, v6}, Lcom/amap/api/mapcore2d/dh;->a(Lcom/amap/api/mapcore2d/cy;)V

    goto :goto_0

    .line 116
    :cond_8
    iget v4, p0, Lcom/amap/api/mapcore2d/dh;->f:I

    add-int/2addr v4, v6

    iput v4, p0, Lcom/amap/api/mapcore2d/dh;->f:I
    :try_end_2
    .catch Ljava/io/EOFException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_15
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_4

    :catch_1
    move-exception p1

    goto/16 :goto_6

    .line 137
    :catch_2
    :goto_2
    :try_start_3
    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/en;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception p1

    const-string v1, "ANRWriter"

    const-string v3, "initLog2"

    .line 143
    invoke-static {p1, v1, v3}, Lcom/amap/api/mapcore2d/dd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :catch_4
    move-exception p1

    const-string v1, "ANRWriter"

    const-string v3, "initLog1"

    .line 140
    invoke-static {p1, v1, v3}, Lcom/amap/api/mapcore2d/dd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    :goto_3
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_5

    goto/16 :goto_d

    :catch_5
    move-exception p1

    const-string v1, "ANRWriter"

    const-string v2, "initLog4"

    .line 155
    invoke-static {p1, v1, v2}, Lcom/amap/api/mapcore2d/dd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_d

    :catch_6
    move-exception p1

    const-string v1, "ANRWriter"

    const-string v2, "initLog3"

    .line 152
    invoke-static {p1, v1, v2}, Lcom/amap/api/mapcore2d/dd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_d

    :catchall_0
    move-exception p1

    move-object v1, v0

    goto/16 :goto_8

    :catch_7
    move-exception p1

    move-object v1, v0

    goto :goto_4

    :catch_8
    move-exception p1

    move-object v1, v0

    goto :goto_6

    :catch_9
    move-object v1, v0

    goto/16 :goto_b

    :catchall_1
    move-exception p1

    move-object v1, v0

    move-object v2, v1

    goto :goto_8

    :catch_a
    move-exception p1

    move-object v1, v0

    move-object v2, v1

    :goto_4
    :try_start_5
    const-string v3, "ANRWriter"

    const-string v4, "initLog"

    .line 133
    invoke-static {p1, v3, v4}, Lcom/amap/api/mapcore2d/dd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v1, :cond_9

    .line 137
    :try_start_6
    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/en;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_c
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_b

    goto :goto_5

    :catch_b
    move-exception p1

    const-string v1, "ANRWriter"

    const-string v3, "initLog2"

    .line 143
    invoke-static {p1, v1, v3}, Lcom/amap/api/mapcore2d/dd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :catch_c
    move-exception p1

    const-string v1, "ANRWriter"

    const-string v3, "initLog1"

    .line 140
    invoke-static {p1, v1, v3}, Lcom/amap/api/mapcore2d/dd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    :goto_5
    if-eqz v2, :cond_e

    .line 148
    :try_start_7
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_5

    goto/16 :goto_d

    :catch_d
    move-exception p1

    move-object v1, v0

    move-object v2, v1

    :goto_6
    :try_start_8
    const-string v3, "ANRWriter"

    const-string v4, "initLog"

    .line 130
    invoke-static {p1, v3, v4}, Lcom/amap/api/mapcore2d/dd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    if-eqz v1, :cond_a

    .line 137
    :try_start_9
    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/en;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_f
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_e

    goto :goto_7

    :catch_e
    move-exception p1

    const-string v1, "ANRWriter"

    const-string v3, "initLog2"

    .line 143
    invoke-static {p1, v1, v3}, Lcom/amap/api/mapcore2d/dd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    :catch_f
    move-exception p1

    const-string v1, "ANRWriter"

    const-string v3, "initLog1"

    .line 140
    invoke-static {p1, v1, v3}, Lcom/amap/api/mapcore2d/dd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    :goto_7
    if-eqz v2, :cond_e

    .line 148
    :try_start_a
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_5

    goto :goto_d

    :catchall_2
    move-exception p1

    :goto_8
    if-eqz v1, :cond_b

    .line 137
    :try_start_b
    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/en;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_11
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_10

    goto :goto_9

    :catch_10
    move-exception v0

    const-string v1, "ANRWriter"

    const-string v3, "initLog2"

    .line 143
    invoke-static {v0, v1, v3}, Lcom/amap/api/mapcore2d/dd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    :catch_11
    move-exception v0

    const-string v1, "ANRWriter"

    const-string v3, "initLog1"

    .line 140
    invoke-static {v0, v1, v3}, Lcom/amap/api/mapcore2d/dd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    :goto_9
    if-eqz v2, :cond_c

    .line 148
    :try_start_c
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_13
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_12

    goto :goto_a

    :catch_12
    move-exception v0

    const-string v1, "ANRWriter"

    const-string v2, "initLog4"

    .line 155
    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore2d/dd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    :catch_13
    move-exception v0

    const-string v1, "ANRWriter"

    const-string v2, "initLog3"

    .line 152
    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore2d/dd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    :cond_c
    :goto_a
    throw p1

    :catch_14
    move-object v1, v0

    move-object v2, v1

    :catch_15
    :goto_b
    if-eqz v1, :cond_d

    .line 137
    :try_start_d
    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/en;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_17
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_16

    goto :goto_c

    :catch_16
    move-exception p1

    const-string v1, "ANRWriter"

    const-string v3, "initLog2"

    .line 143
    invoke-static {p1, v1, v3}, Lcom/amap/api/mapcore2d/dd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    :catch_17
    move-exception p1

    const-string v1, "ANRWriter"

    const-string v3, "initLog1"

    .line 140
    invoke-static {p1, v1, v3}, Lcom/amap/api/mapcore2d/dd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    :goto_c
    if-eqz v2, :cond_e

    .line 148
    :try_start_e
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_6
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_5

    .line 160
    :cond_e
    :goto_d
    iget-boolean p1, p0, Lcom/amap/api/mapcore2d/dh;->e:Z

    if-eqz p1, :cond_f

    .line 161
    invoke-direct {p0}, Lcom/amap/api/mapcore2d/dh;->e()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_f
    return-object v0
.end method

.method protected a(Landroid/content/Context;)Z
    .locals 5

    .line 37
    invoke-static {p1}, Lcom/amap/api/mapcore2d/ct;->m(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    sget-boolean v0, Lcom/amap/api/mapcore2d/dh;->b:Z

    if-eqz v0, :cond_2

    .line 39
    sput-boolean v2, Lcom/amap/api/mapcore2d/dh;->b:Z

    .line 40
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    monitor-enter v0

    .line 42
    :try_start_0
    new-instance v3, Lcom/amap/api/mapcore2d/dx;

    invoke-direct {v3, p1}, Lcom/amap/api/mapcore2d/dx;-><init>(Landroid/content/Context;)V

    .line 46
    invoke-virtual {v3}, Lcom/amap/api/mapcore2d/dx;->a()Lcom/amap/api/mapcore2d/dy;

    move-result-object p1

    if-nez p1, :cond_0

    .line 49
    monitor-exit v0

    return v1

    .line 52
    :cond_0
    invoke-virtual {p1}, Lcom/amap/api/mapcore2d/dy;->c()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 53
    invoke-virtual {p1, v2}, Lcom/amap/api/mapcore2d/dy;->c(Z)V

    .line 54
    invoke-virtual {v3, p1}, Lcom/amap/api/mapcore2d/dx;->a(Lcom/amap/api/mapcore2d/dy;)V

    .line 55
    monitor-exit v0

    return v1

    .line 57
    :cond_1
    monitor-exit v0

    return v2

    :catchall_0
    move-exception p1

    .line 59
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_2
    return v2
.end method
