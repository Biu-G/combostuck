.class final Lcom/tencent/bugly/proguard/v$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/bugly/proguard/v;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private synthetic a:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lcom/tencent/bugly/proguard/v$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 153
    invoke-static {}, Lcom/tencent/bugly/proguard/v;->a()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 156
    :try_start_0
    invoke-static {}, Lcom/tencent/bugly/proguard/v;->b()Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-static {}, Lcom/tencent/bugly/proguard/v;->c()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gt v1, v2, :cond_0

    .line 157
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    .line 159
    :cond_0
    :try_start_2
    invoke-static {}, Lcom/tencent/bugly/proguard/v;->d()Lcom/tencent/bugly/proguard/v$a;

    move-result-object v1

    if-nez v1, :cond_1

    .line 161
    new-instance v1, Lcom/tencent/bugly/proguard/v$a;

    invoke-static {}, Lcom/tencent/bugly/proguard/v;->e()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/tencent/bugly/proguard/v$a;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/tencent/bugly/proguard/v;->a(Lcom/tencent/bugly/proguard/v$a;)Lcom/tencent/bugly/proguard/v$a;

    goto :goto_0

    .line 162
    :cond_1
    invoke-static {}, Lcom/tencent/bugly/proguard/v;->d()Lcom/tencent/bugly/proguard/v$a;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/bugly/proguard/v$a;->a(Lcom/tencent/bugly/proguard/v$a;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v1

    invoke-static {}, Lcom/tencent/bugly/proguard/v;->b()Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v1, v3

    invoke-static {}, Lcom/tencent/bugly/proguard/v;->d()Lcom/tencent/bugly/proguard/v$a;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/bugly/proguard/v$a;->b(Lcom/tencent/bugly/proguard/v$a;)J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-lez v1, :cond_2

    .line 164
    invoke-static {}, Lcom/tencent/bugly/proguard/v;->d()Lcom/tencent/bugly/proguard/v$a;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/bugly/proguard/v$a;->c(Lcom/tencent/bugly/proguard/v$a;)Z

    .line 166
    :cond_2
    :goto_0
    invoke-static {}, Lcom/tencent/bugly/proguard/v;->d()Lcom/tencent/bugly/proguard/v$a;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/bugly/proguard/v$a;->d(Lcom/tencent/bugly/proguard/v$a;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 168
    invoke-static {}, Lcom/tencent/bugly/proguard/v;->d()Lcom/tencent/bugly/proguard/v$a;

    move-result-object v1

    invoke-static {}, Lcom/tencent/bugly/proguard/v;->b()Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/tencent/bugly/proguard/v$a;->a(Ljava/lang/String;)Z

    .line 169
    invoke-static {}, Lcom/tencent/bugly/proguard/v;->b()Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_1

    .line 172
    :cond_3
    invoke-static {}, Lcom/tencent/bugly/proguard/v;->b()Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 173
    invoke-static {}, Lcom/tencent/bugly/proguard/v;->b()Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/bugly/proguard/v$1;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    .line 178
    :catch_0
    :goto_1
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-void

    :goto_2
    monitor-exit v0

    throw v1
.end method
