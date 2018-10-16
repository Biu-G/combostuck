.class public final Lcom/tencent/bugly/proguard/v$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/bugly/proguard/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Z

.field private b:Ljava/io/File;

.field private c:Ljava/lang/String;

.field private d:J

.field private e:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x7800

    .line 233
    iput-wide v0, p0, Lcom/tencent/bugly/proguard/v$a;->e:J

    if-eqz p1, :cond_1

    const-string v0, ""

    .line 236
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 239
    :cond_0
    iput-object p1, p0, Lcom/tencent/bugly/proguard/v$a;->c:Ljava/lang/String;

    .line 240
    invoke-direct {p0}, Lcom/tencent/bugly/proguard/v$a;->a()Z

    move-result p1

    iput-boolean p1, p0, Lcom/tencent/bugly/proguard/v$a;->a:Z

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/tencent/bugly/proguard/v$a;)Ljava/io/File;
    .locals 0

    .line 228
    iget-object p0, p0, Lcom/tencent/bugly/proguard/v$a;->b:Ljava/io/File;

    return-object p0
.end method

.method private declared-synchronized a()Z
    .locals 3

    monitor-enter p0

    const/4 v0, 0x0

    .line 245
    :try_start_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/tencent/bugly/proguard/v$a;->c:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/tencent/bugly/proguard/v$a;->b:Ljava/io/File;

    .line 246
    iget-object v1, p0, Lcom/tencent/bugly/proguard/v$a;->b:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 247
    iget-object v1, p0, Lcom/tencent/bugly/proguard/v$a;->b:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_0

    .line 249
    iput-boolean v0, p0, Lcom/tencent/bugly/proguard/v$a;->a:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 250
    monitor-exit p0

    return v0

    .line 253
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/tencent/bugly/proguard/v$a;->b:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    move-result v1

    if-nez v1, :cond_1

    .line 255
    iput-boolean v0, p0, Lcom/tencent/bugly/proguard/v$a;->a:Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 256
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    goto :goto_0

    .line 259
    :catch_0
    :try_start_2
    iput-boolean v0, p0, Lcom/tencent/bugly/proguard/v$a;->a:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    const/4 v0, 0x1

    .line 264
    monitor-exit p0

    return v0

    .line 244
    :goto_0
    monitor-exit p0

    throw v0
.end method

.method static synthetic b(Lcom/tencent/bugly/proguard/v$a;)J
    .locals 2

    .line 228
    iget-wide v0, p0, Lcom/tencent/bugly/proguard/v$a;->e:J

    return-wide v0
.end method

.method static synthetic c(Lcom/tencent/bugly/proguard/v$a;)Z
    .locals 0

    .line 228
    invoke-direct {p0}, Lcom/tencent/bugly/proguard/v$a;->a()Z

    move-result p0

    return p0
.end method

.method static synthetic d(Lcom/tencent/bugly/proguard/v$a;)Z
    .locals 0

    .line 228
    iget-boolean p0, p0, Lcom/tencent/bugly/proguard/v$a;->a:Z

    return p0
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/lang/String;)Z
    .locals 8

    monitor-enter p0

    .line 268
    :try_start_0
    iget-boolean v0, p0, Lcom/tencent/bugly/proguard/v$a;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 269
    monitor-exit p0

    return v1

    .line 272
    :cond_0
    :try_start_1
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v2, p0, Lcom/tencent/bugly/proguard/v$a;->b:Ljava/io/File;

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    const-string v2, "UTF-8"

    .line 273
    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    .line 274
    invoke-virtual {v0, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 275
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    .line 276
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 277
    iget-wide v4, p0, Lcom/tencent/bugly/proguard/v$a;->d:J

    array-length p1, p1

    int-to-long v6, p1

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/tencent/bugly/proguard/v$a;->d:J
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 282
    monitor-exit p0

    return v3

    .line 279
    :catch_0
    :try_start_2
    iput-boolean v1, p0, Lcom/tencent/bugly/proguard/v$a;->a:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 280
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    .line 267
    monitor-exit p0

    throw p1
.end method
