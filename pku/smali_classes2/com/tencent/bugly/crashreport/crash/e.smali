.class public final Lcom/tencent/bugly/crashreport/crash/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# static fields
.field private static f:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private static h:Z

.field private static final i:Ljava/lang/Object;

.field private static j:I


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/tencent/bugly/crashreport/crash/b;

.field private c:Lcom/tencent/bugly/crashreport/common/strategy/a;

.field private d:Lcom/tencent/bugly/crashreport/common/info/a;

.field private e:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/tencent/bugly/crashreport/crash/e;->i:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/tencent/bugly/crashreport/crash/b;Lcom/tencent/bugly/crashreport/common/strategy/a;Lcom/tencent/bugly/crashreport/common/info/a;)V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 33
    iput-boolean v0, p0, Lcom/tencent/bugly/crashreport/crash/e;->g:Z

    .line 41
    iput-object p1, p0, Lcom/tencent/bugly/crashreport/crash/e;->a:Landroid/content/Context;

    .line 42
    iput-object p2, p0, Lcom/tencent/bugly/crashreport/crash/e;->b:Lcom/tencent/bugly/crashreport/crash/b;

    .line 43
    iput-object p3, p0, Lcom/tencent/bugly/crashreport/crash/e;->c:Lcom/tencent/bugly/crashreport/common/strategy/a;

    .line 44
    iput-object p4, p0, Lcom/tencent/bugly/crashreport/crash/e;->d:Lcom/tencent/bugly/crashreport/common/info/a;

    return-void
.end method

.method private static a(Ljava/lang/Throwable;I)Ljava/lang/String;
    .locals 6

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 401
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 403
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 404
    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p0

    array-length v2, p0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, p0, v3

    if-lez p1, :cond_1

    .line 405
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lt v5, p1, :cond_1

    .line 407
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v2, "\n[Stack over limit size :"

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " , has been cutted !]"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 411
    :cond_1
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "gen stack error %s"

    const/4 v2, 0x1

    .line 415
    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v2, v1

    invoke-static {p1, v2}, Lcom/tencent/bugly/proguard/u;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 417
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private declared-synchronized a(Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .locals 0

    monitor-enter p0

    .line 117
    :try_start_0
    iput-object p1, p0, Lcom/tencent/bugly/crashreport/crash/e;->e:Ljava/lang/Thread$UncaughtExceptionHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 116
    monitor-exit p0

    throw p1
.end method

.method private b(Ljava/lang/Thread;Ljava/lang/Throwable;ZLjava/lang/String;[B)Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    .line 135
    invoke-static {}, Lcom/tencent/bugly/crashreport/crash/c;->a()Lcom/tencent/bugly/crashreport/crash/c;

    move-result-object v5

    invoke-virtual {v5}, Lcom/tencent/bugly/crashreport/crash/c;->l()Z

    move-result v5

    if-eqz v5, :cond_0

    if-eqz p3, :cond_0

    const-string v6, " This Crash Caused By ANR , PLS To Fix ANR , This Trace May Be Not Useful![Bugly]"

    goto :goto_0

    :cond_0
    const-string v6, ""

    :goto_0
    const/4 v7, 0x0

    if-eqz v5, :cond_1

    if-eqz p3, :cond_1

    const-string v5, "This Crash Caused By ANR , PLS To Fix ANR , This Trace May Be Not Useful!"

    .line 140
    new-array v8, v7, [Ljava/lang/Object;

    invoke-static {v5, v8}, Lcom/tencent/bugly/proguard/u;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 143
    :cond_1
    new-instance v5, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;

    invoke-direct {v5}, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;-><init>()V

    const-string v8, "3"

    .line 144
    new-array v9, v7, [Ljava/lang/Object;

    invoke-static {v8, v9}, Lcom/tencent/bugly/proguard/u;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 146
    invoke-static {}, Lcom/tencent/bugly/proguard/a;->i()J

    move-result-wide v8

    iput-wide v8, v5, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->B:J

    .line 147
    invoke-static {}, Lcom/tencent/bugly/proguard/a;->g()J

    move-result-wide v8

    iput-wide v8, v5, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->C:J

    .line 148
    invoke-static {}, Lcom/tencent/bugly/proguard/a;->k()J

    move-result-wide v8

    iput-wide v8, v5, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->D:J

    .line 149
    iget-object v8, v1, Lcom/tencent/bugly/crashreport/crash/e;->d:Lcom/tencent/bugly/crashreport/common/info/a;

    invoke-virtual {v8}, Lcom/tencent/bugly/crashreport/common/info/a;->o()J

    move-result-wide v8

    iput-wide v8, v5, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->E:J

    .line 150
    iget-object v8, v1, Lcom/tencent/bugly/crashreport/crash/e;->d:Lcom/tencent/bugly/crashreport/common/info/a;

    invoke-virtual {v8}, Lcom/tencent/bugly/crashreport/common/info/a;->n()J

    move-result-wide v8

    iput-wide v8, v5, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->F:J

    .line 151
    iget-object v8, v1, Lcom/tencent/bugly/crashreport/crash/e;->d:Lcom/tencent/bugly/crashreport/common/info/a;

    invoke-virtual {v8}, Lcom/tencent/bugly/crashreport/common/info/a;->p()J

    move-result-wide v8

    iput-wide v8, v5, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->G:J

    .line 152
    iget-object v8, v1, Lcom/tencent/bugly/crashreport/crash/e;->a:Landroid/content/Context;

    sget v9, Lcom/tencent/bugly/crashreport/crash/c;->d:I

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Lcom/tencent/bugly/proguard/a;->a(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v5, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->w:Ljava/lang/String;

    .line 155
    invoke-static/range {p3 .. p3}, Lcom/tencent/bugly/proguard/v;->a(Z)[B

    move-result-object v8

    iput-object v8, v5, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->x:[B

    const-string v8, "user log size:%d"

    const/4 v9, 0x1

    .line 156
    new-array v11, v9, [Ljava/lang/Object;

    iget-object v12, v5, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->x:[B

    if-nez v12, :cond_2

    const/4 v12, 0x0

    goto :goto_1

    :cond_2
    iget-object v12, v5, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->x:[B

    array-length v12, v12

    :goto_1
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v7

    invoke-static {v8, v11}, Lcom/tencent/bugly/proguard/u;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    const/4 v8, 0x2

    if-eqz p3, :cond_3

    const/4 v11, 0x0

    goto :goto_2

    :cond_3
    const/4 v11, 0x2

    .line 157
    :goto_2
    iput v11, v5, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->b:I

    .line 159
    iget-object v11, v1, Lcom/tencent/bugly/crashreport/crash/e;->d:Lcom/tencent/bugly/crashreport/common/info/a;

    invoke-virtual {v11}, Lcom/tencent/bugly/crashreport/common/info/a;->g()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v5, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->e:Ljava/lang/String;

    .line 160
    iget-object v11, v1, Lcom/tencent/bugly/crashreport/crash/e;->d:Lcom/tencent/bugly/crashreport/common/info/a;

    iget-object v11, v11, Lcom/tencent/bugly/crashreport/common/info/a;->i:Ljava/lang/String;

    iput-object v11, v5, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->f:Ljava/lang/String;

    .line 161
    iget-object v11, v1, Lcom/tencent/bugly/crashreport/crash/e;->d:Lcom/tencent/bugly/crashreport/common/info/a;

    invoke-virtual {v11}, Lcom/tencent/bugly/crashreport/common/info/a;->t()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v5, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->g:Ljava/lang/String;

    .line 162
    iget-object v11, v1, Lcom/tencent/bugly/crashreport/crash/e;->d:Lcom/tencent/bugly/crashreport/common/info/a;

    invoke-virtual {v11}, Lcom/tencent/bugly/crashreport/common/info/a;->f()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v5, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->m:Ljava/lang/String;

    if-nez v0, :cond_4

    return-object v10

    :cond_4
    move-object v10, v0

    .line 168
    :goto_3
    invoke-virtual {v10}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v11

    if-eqz v11, :cond_5

    .line 169
    invoke-virtual {v10}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v10

    goto :goto_3

    .line 172
    :cond_5
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x3e8

    .line 173
    invoke-static {v0, v12}, Lcom/tencent/bugly/crashreport/crash/e;->b(Ljava/lang/Throwable;I)Ljava/lang/String;

    move-result-object v13

    if-nez v13, :cond_6

    const-string v13, ""

    :cond_6
    const-string v14, "stack frame :%d, has cause %b"

    .line 177
    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v15

    array-length v15, v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v8, v7

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v15

    if-eqz v15, :cond_7

    const/4 v15, 0x1

    goto :goto_4

    :cond_7
    const/4 v15, 0x0

    :goto_4
    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    aput-object v15, v8, v9

    invoke-static {v14, v8}, Lcom/tencent/bugly/proguard/u;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v8, ""

    .line 180
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v14

    array-length v14, v14

    if-lez v14, :cond_8

    .line 181
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v8

    aget-object v8, v8, v7

    invoke-virtual {v8}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v8

    :cond_8
    if-eq v10, v0, :cond_a

    .line 186
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->n:Ljava/lang/String;

    .line 187
    invoke-static {v10, v12}, Lcom/tencent/bugly/crashreport/crash/e;->b(Ljava/lang/Throwable;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->o:Ljava/lang/String;

    .line 188
    iget-object v0, v5, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->o:Ljava/lang/String;

    if-nez v0, :cond_9

    const-string v0, ""

    .line 189
    iput-object v0, v5, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->o:Ljava/lang/String;

    .line 190
    :cond_9
    invoke-virtual {v10}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    aget-object v0, v0, v7

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->p:Ljava/lang/String;

    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 193
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ":"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\n"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\n......"

    .line 195
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\nCaused by:\n"

    .line 196
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    iget-object v6, v5, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->n:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ":"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v5, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->o:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\n"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    sget v6, Lcom/tencent/bugly/crashreport/crash/c;->e:I

    invoke-static {v10, v6}, Lcom/tencent/bugly/crashreport/crash/e;->a(Ljava/lang/Throwable;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->q:Ljava/lang/String;

    goto :goto_5

    .line 203
    :cond_a
    iput-object v11, v5, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->n:Ljava/lang/String;

    .line 204
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->o:Ljava/lang/String;

    .line 205
    iget-object v6, v5, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->o:Ljava/lang/String;

    if-nez v6, :cond_b

    const-string v6, ""

    .line 206
    iput-object v6, v5, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->o:Ljava/lang/String;

    .line 207
    :cond_b
    iput-object v8, v5, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->p:Ljava/lang/String;

    .line 208
    sget v6, Lcom/tencent/bugly/crashreport/crash/c;->e:I

    invoke-static {v0, v6}, Lcom/tencent/bugly/crashreport/crash/e;->a(Ljava/lang/Throwable;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->q:Ljava/lang/String;

    .line 212
    :goto_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iput-wide v10, v5, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->r:J

    .line 214
    iget-object v0, v5, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->q:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/bugly/proguard/a;->b([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->u:Ljava/lang/String;

    .line 216
    :try_start_0
    sget v0, Lcom/tencent/bugly/crashreport/crash/c;->e:I

    invoke-static {v0, v7}, Lcom/tencent/bugly/proguard/a;->a(IZ)Ljava/util/Map;

    move-result-object v0

    iput-object v0, v5, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->y:Ljava/util/Map;

    .line 218
    iget-object v0, v1, Lcom/tencent/bugly/crashreport/crash/e;->d:Lcom/tencent/bugly/crashreport/common/info/a;

    iget-object v0, v0, Lcom/tencent/bugly/crashreport/common/info/a;->d:Ljava/lang/String;

    iput-object v0, v5, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->z:Ljava/lang/String;

    .line 219
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->A:Ljava/lang/String;

    .line 220
    iget-object v0, v1, Lcom/tencent/bugly/crashreport/crash/e;->d:Lcom/tencent/bugly/crashreport/common/info/a;

    invoke-virtual {v0}, Lcom/tencent/bugly/crashreport/common/info/a;->v()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->H:Ljava/lang/String;

    .line 221
    iget-object v0, v1, Lcom/tencent/bugly/crashreport/crash/e;->d:Lcom/tencent/bugly/crashreport/common/info/a;

    invoke-virtual {v0}, Lcom/tencent/bugly/crashreport/common/info/a;->s()Ljava/util/Map;

    move-result-object v0

    iput-object v0, v5, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->h:Ljava/util/Map;

    .line 222
    iget-object v0, v1, Lcom/tencent/bugly/crashreport/crash/e;->d:Lcom/tencent/bugly/crashreport/common/info/a;

    invoke-virtual {v0}, Lcom/tencent/bugly/crashreport/common/info/a;->D()Ljava/util/Map;

    move-result-object v0

    iput-object v0, v5, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->i:Ljava/util/Map;

    .line 223
    iget-object v0, v1, Lcom/tencent/bugly/crashreport/crash/e;->d:Lcom/tencent/bugly/crashreport/common/info/a;

    iget-wide v10, v0, Lcom/tencent/bugly/crashreport/common/info/a;->a:J

    iput-wide v10, v5, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->L:J

    .line 224
    iget-object v0, v1, Lcom/tencent/bugly/crashreport/crash/e;->d:Lcom/tencent/bugly/crashreport/common/info/a;

    iget-boolean v0, v0, Lcom/tencent/bugly/crashreport/common/info/a;->n:Z

    iput-boolean v0, v5, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->M:Z

    .line 227
    iget-object v0, v1, Lcom/tencent/bugly/crashreport/crash/e;->d:Lcom/tencent/bugly/crashreport/common/info/a;

    invoke-virtual {v0}, Lcom/tencent/bugly/crashreport/common/info/a;->A()I

    move-result v0

    iput v0, v5, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->O:I

    .line 228
    iget-object v0, v1, Lcom/tencent/bugly/crashreport/crash/e;->d:Lcom/tencent/bugly/crashreport/common/info/a;

    invoke-virtual {v0}, Lcom/tencent/bugly/crashreport/common/info/a;->B()I

    move-result v0

    iput v0, v5, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->P:I

    .line 229
    iget-object v0, v1, Lcom/tencent/bugly/crashreport/crash/e;->d:Lcom/tencent/bugly/crashreport/common/info/a;

    invoke-virtual {v0}, Lcom/tencent/bugly/crashreport/common/info/a;->w()Ljava/util/Map;

    move-result-object v0

    iput-object v0, v5, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->Q:Ljava/util/Map;

    .line 230
    iget-object v0, v1, Lcom/tencent/bugly/crashreport/crash/e;->d:Lcom/tencent/bugly/crashreport/common/info/a;

    invoke-virtual {v0}, Lcom/tencent/bugly/crashreport/common/info/a;->z()Ljava/util/Map;

    move-result-object v0

    iput-object v0, v5, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->R:Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    move-exception v0

    const-string v6, "handle crash error %s"

    .line 233
    new-array v8, v9, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v8, v7

    invoke-static {v6, v8}, Lcom/tencent/bugly/proguard/u;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    :goto_6
    if-eqz p3, :cond_c

    .line 236
    iget-object v0, v1, Lcom/tencent/bugly/crashreport/crash/e;->b:Lcom/tencent/bugly/crashreport/crash/b;

    invoke-virtual {v0, v5}, Lcom/tencent/bugly/crashreport/crash/b;->b(Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;)V

    goto :goto_8

    :cond_c
    if-eqz v3, :cond_d

    .line 238
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_d

    const/4 v0, 0x1

    goto :goto_7

    :cond_d
    const/4 v0, 0x0

    :goto_7
    if-eqz v4, :cond_e

    .line 239
    array-length v2, v4

    if-lez v2, :cond_e

    const/4 v7, 0x1

    :cond_e
    if-eqz v0, :cond_f

    .line 241
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v9}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, v5, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->N:Ljava/util/Map;

    .line 242
    iget-object v0, v5, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->N:Ljava/util/Map;

    const-string v2, "UserData"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_f
    if-eqz v7, :cond_10

    .line 245
    iput-object v4, v5, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->S:[B

    :cond_10
    :goto_8
    return-object v5
.end method

.method private static b(Ljava/lang/Throwable;I)Ljava/lang/String;
    .locals 2

    .line 424
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p0, ""

    return-object p0

    .line 427
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v0, 0x3e8

    if-gt p1, v0, :cond_1

    .line 428
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 430
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\n[Message over limit size:1000"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", has been cutted!]"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static b(Ljava/lang/Thread$UncaughtExceptionHandler;)Z
    .locals 8

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    .line 365
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v1, "uncaughtException"

    .line 367
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    .line 368
    array-length v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_2

    aget-object v6, v2, v5

    .line 369
    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v7

    .line 370
    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v6

    .line 371
    invoke-virtual {p0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    return v4

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method private declared-synchronized c()Z
    .locals 1

    monitor-enter p0

    .line 103
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static d()Z
    .locals 3

    .line 254
    sget-object v0, Lcom/tencent/bugly/crashreport/crash/e;->i:Ljava/lang/Object;

    monitor-enter v0

    .line 255
    :try_start_0
    sget-boolean v1, Lcom/tencent/bugly/crashreport/crash/e;->h:Z

    const/4 v2, 0x1

    .line 256
    sput-boolean v2, Lcom/tencent/bugly/crashreport/crash/e;->h:Z

    .line 257
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 6

    monitor-enter p0

    .line 51
    :try_start_0
    sget v0, Lcom/tencent/bugly/crashreport/crash/e;->j:I

    const/16 v1, 0xa

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lt v0, v1, :cond_0

    const-string v0, "java crash handler over %d, no need set."

    .line 52
    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v2

    invoke-static {v0, v3}, Lcom/tencent/bugly/proguard/u;->a(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    monitor-exit p0

    return-void

    .line 56
    :cond_0
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    .line 58
    monitor-exit p0

    return-void

    .line 60
    :cond_1
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 61
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    .line 62
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_2

    .line 63
    monitor-exit p0

    return-void

    :cond_2
    :try_start_3
    const-string v1, "com.android.internal.os.RuntimeInit$UncaughtHandler"

    .line 65
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "backup system java handler: %s"

    .line 67
    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v1, v4}, Lcom/tencent/bugly/proguard/u;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 68
    sput-object v0, Lcom/tencent/bugly/crashreport/crash/e;->f:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 69
    iput-object v0, p0, Lcom/tencent/bugly/crashreport/crash/e;->e:Ljava/lang/Thread$UncaughtExceptionHandler;

    goto :goto_0

    :cond_3
    const-string v1, "backup java handler: %s"

    .line 71
    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v1, v4}, Lcom/tencent/bugly/proguard/u;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 72
    iput-object v0, p0, Lcom/tencent/bugly/crashreport/crash/e;->e:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 78
    :goto_0
    invoke-direct {p0, v0}, Lcom/tencent/bugly/crashreport/crash/e;->a(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 79
    invoke-static {p0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 80
    iput-boolean v3, p0, Lcom/tencent/bugly/crashreport/crash/e;->g:Z

    .line 81
    sget v0, Lcom/tencent/bugly/crashreport/crash/e;->j:I

    add-int/2addr v0, v3

    sput v0, Lcom/tencent/bugly/crashreport/crash/e;->j:I

    const-string v0, "registered java monitor: %s"

    .line 82
    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/u;->a(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 83
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 50
    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;)V
    .locals 4

    monitor-enter p0

    if-eqz p1, :cond_1

    .line 384
    :try_start_0
    iget-boolean v0, p1, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->d:Z

    invoke-direct {p0}, Lcom/tencent/bugly/crashreport/crash/e;->c()Z

    move-result v1

    if-eq v0, v1, :cond_1

    const-string v0, "java changed to %b"

    const/4 v1, 0x1

    .line 385
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-boolean v3, p1, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->d:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/u;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 386
    iget-boolean p1, p1, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->d:Z

    if-eqz p1, :cond_0

    .line 387
    invoke-virtual {p0}, Lcom/tencent/bugly/crashreport/crash/e;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 389
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/tencent/bugly/crashreport/crash/e;->b()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 383
    monitor-exit p0

    throw p1

    .line 392
    :cond_1
    :goto_0
    monitor-exit p0

    return-void
.end method

.method public final a(Ljava/lang/Thread;Ljava/lang/Throwable;ZLjava/lang/String;[B)V
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p3, :cond_1

    const-string v2, "Java Crash Happen cause by %s(%d)"

    const/4 v3, 0x2

    .line 272
    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-virtual {p1}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v2, v3}, Lcom/tencent/bugly/proguard/u;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 273
    invoke-static {}, Lcom/tencent/bugly/crashreport/crash/e;->d()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "this class has handled this exception"

    .line 274
    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/tencent/bugly/proguard/u;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 276
    sget-object v2, Lcom/tencent/bugly/crashreport/crash/e;->f:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v2, :cond_0

    const-string v2, "call system handler"

    .line 277
    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/tencent/bugly/proguard/u;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 278
    sget-object v2, Lcom/tencent/bugly/crashreport/crash/e;->f:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v2, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    const-string v2, "current process die"

    .line 280
    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/tencent/bugly/proguard/u;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-static {v2}, Landroid/os/Process;->killProcess(I)V

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    goto :goto_0

    :cond_1
    const-string v2, "Java Catch Happen"

    .line 284
    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/tencent/bugly/proguard/u;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 286
    :cond_2
    :goto_0
    :try_start_0
    iget-boolean v2, p0, Lcom/tencent/bugly/crashreport/crash/e;->g:Z

    if-nez v2, :cond_6

    const-string p4, "Java crash handler is disable. Just return."

    .line 289
    new-array p5, v1, [Ljava/lang/Object;

    invoke-static {p4, p5}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p3, :cond_3

    :goto_1
    const-string p1, "not to shut down return"

    .line 336
    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/tencent/bugly/proguard/u;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void

    .line 340
    :cond_3
    iget-object p3, p0, Lcom/tencent/bugly/crashreport/crash/e;->e:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz p3, :cond_4

    iget-object p3, p0, Lcom/tencent/bugly/crashreport/crash/e;->e:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-static {p3}, Lcom/tencent/bugly/crashreport/crash/e;->b(Ljava/lang/Thread$UncaughtExceptionHandler;)Z

    move-result p3

    if-eqz p3, :cond_4

    :goto_2
    const-string p3, "sys default last handle start!"

    .line 346
    new-array p4, v1, [Ljava/lang/Object;

    invoke-static {p3, p4}, Lcom/tencent/bugly/proguard/u;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 347
    iget-object p3, p0, Lcom/tencent/bugly/crashreport/crash/e;->e:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {p3, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    const-string p1, "sys default last handle end!"

    .line 348
    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/tencent/bugly/proguard/u;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void

    .line 349
    :cond_4
    sget-object p3, Lcom/tencent/bugly/crashreport/crash/e;->f:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz p3, :cond_5

    :goto_3
    const-string p3, "system handle start!"

    .line 350
    new-array p4, v1, [Ljava/lang/Object;

    invoke-static {p3, p4}, Lcom/tencent/bugly/proguard/u;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 351
    sget-object p3, Lcom/tencent/bugly/crashreport/crash/e;->f:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {p3, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    const-string p1, "system handle end!"

    .line 352
    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/tencent/bugly/proguard/u;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void

    :cond_5
    const-string p1, "crashreport last handle start!"

    .line 354
    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/tencent/bugly/proguard/u;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string p1, "current process die"

    .line 355
    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/tencent/bugly/proguard/u;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p1

    invoke-static {p1}, Landroid/os/Process;->killProcess(I)V

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    const-string p1, "crashreport last handle end!"

    .line 356
    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/tencent/bugly/proguard/u;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void

    .line 293
    :cond_6
    :try_start_1
    iget-object v2, p0, Lcom/tencent/bugly/crashreport/crash/e;->c:Lcom/tencent/bugly/crashreport/common/strategy/a;

    invoke-virtual {v2}, Lcom/tencent/bugly/crashreport/common/strategy/a;->b()Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "waiting for remote sync"

    .line 295
    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/tencent/bugly/proguard/u;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    const/4 v2, 0x0

    .line 297
    :cond_7
    iget-object v3, p0, Lcom/tencent/bugly/crashreport/crash/e;->c:Lcom/tencent/bugly/crashreport/common/strategy/a;

    invoke-virtual {v3}, Lcom/tencent/bugly/crashreport/common/strategy/a;->b()Z

    move-result v3
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v3, :cond_8

    const-wide/16 v3, 0x1f4

    .line 298
    :try_start_2
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    :catch_0
    move-exception v3

    :try_start_3
    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_4
    add-int/lit16 v2, v2, 0x1f4

    const/16 v3, 0x1388

    if-lt v2, v3, :cond_7

    .line 301
    :cond_8
    iget-object v2, p0, Lcom/tencent/bugly/crashreport/crash/e;->c:Lcom/tencent/bugly/crashreport/common/strategy/a;

    invoke-virtual {v2}, Lcom/tencent/bugly/crashreport/common/strategy/a;->b()Z

    move-result v2

    if-nez v2, :cond_9

    const-string v2, "no remote but still store!"

    .line 306
    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/tencent/bugly/proguard/u;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 309
    :cond_9
    iget-object v2, p0, Lcom/tencent/bugly/crashreport/crash/e;->c:Lcom/tencent/bugly/crashreport/common/strategy/a;

    invoke-virtual {v2}, Lcom/tencent/bugly/crashreport/common/strategy/a;->c()Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;

    move-result-object v2

    .line 310
    iget-boolean v2, v2, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->d:Z

    if-nez v2, :cond_d

    iget-object v2, p0, Lcom/tencent/bugly/crashreport/crash/e;->c:Lcom/tencent/bugly/crashreport/common/strategy/a;

    invoke-virtual {v2}, Lcom/tencent/bugly/crashreport/common/strategy/a;->b()Z

    move-result v2

    if-eqz v2, :cond_d

    const-string p4, "crash report was closed by remote , will not upload to Bugly , print local for helpful!"

    .line 311
    new-array p5, v1, [Ljava/lang/Object;

    invoke-static {p4, p5}, Lcom/tencent/bugly/proguard/u;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    if-eqz p3, :cond_a

    const-string p4, "JAVA_CRASH"

    goto :goto_5

    :cond_a
    const-string p4, "JAVA_CATCH"

    :goto_5
    move-object v2, p4

    .line 312
    invoke-static {}, Lcom/tencent/bugly/proguard/a;->n()Ljava/lang/String;

    move-result-object v3

    iget-object p4, p0, Lcom/tencent/bugly/crashreport/crash/e;->d:Lcom/tencent/bugly/crashreport/common/info/a;

    iget-object v4, p4, Lcom/tencent/bugly/crashreport/common/info/a;->d:Ljava/lang/String;

    invoke-static {p2}, Lcom/tencent/bugly/proguard/a;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    move-object v5, p1

    invoke-static/range {v2 .. v7}, Lcom/tencent/bugly/crashreport/crash/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Thread;Ljava/lang/String;Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez p3, :cond_b

    goto/16 :goto_1

    .line 340
    :cond_b
    iget-object p3, p0, Lcom/tencent/bugly/crashreport/crash/e;->e:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz p3, :cond_c

    iget-object p3, p0, Lcom/tencent/bugly/crashreport/crash/e;->e:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-static {p3}, Lcom/tencent/bugly/crashreport/crash/e;->b(Ljava/lang/Thread$UncaughtExceptionHandler;)Z

    move-result p3

    if-eqz p3, :cond_c

    goto/16 :goto_2

    .line 349
    :cond_c
    sget-object p3, Lcom/tencent/bugly/crashreport/crash/e;->f:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz p3, :cond_5

    goto/16 :goto_3

    .line 318
    :cond_d
    :try_start_4
    invoke-direct/range {p0 .. p5}, Lcom/tencent/bugly/crashreport/crash/e;->b(Ljava/lang/Thread;Ljava/lang/Throwable;ZLjava/lang/String;[B)Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;

    move-result-object p4

    if-nez p4, :cond_10

    const-string p4, "pkg crash datas fail!"

    .line 320
    new-array p5, v1, [Ljava/lang/Object;

    invoke-static {p4, p5}, Lcom/tencent/bugly/proguard/u;->e(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-nez p3, :cond_e

    goto/16 :goto_1

    .line 340
    :cond_e
    iget-object p3, p0, Lcom/tencent/bugly/crashreport/crash/e;->e:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz p3, :cond_f

    iget-object p3, p0, Lcom/tencent/bugly/crashreport/crash/e;->e:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-static {p3}, Lcom/tencent/bugly/crashreport/crash/e;->b(Ljava/lang/Thread$UncaughtExceptionHandler;)Z

    move-result p3

    if-eqz p3, :cond_f

    goto/16 :goto_2

    .line 349
    :cond_f
    sget-object p3, Lcom/tencent/bugly/crashreport/crash/e;->f:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz p3, :cond_5

    goto/16 :goto_3

    :cond_10
    if-eqz p3, :cond_11

    :try_start_5
    const-string p5, "JAVA_CRASH"

    goto :goto_6

    :cond_11
    const-string p5, "JAVA_CATCH"

    :goto_6
    move-object v2, p5

    .line 324
    invoke-static {}, Lcom/tencent/bugly/proguard/a;->n()Ljava/lang/String;

    move-result-object v3

    iget-object p5, p0, Lcom/tencent/bugly/crashreport/crash/e;->d:Lcom/tencent/bugly/crashreport/common/info/a;

    iget-object v4, p5, Lcom/tencent/bugly/crashreport/common/info/a;->d:Ljava/lang/String;

    invoke-static {p2}, Lcom/tencent/bugly/proguard/a;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    move-object v5, p1

    move-object v7, p4

    invoke-static/range {v2 .. v7}, Lcom/tencent/bugly/crashreport/crash/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Thread;Ljava/lang/String;Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;)V

    .line 327
    iget-object p5, p0, Lcom/tencent/bugly/crashreport/crash/e;->b:Lcom/tencent/bugly/crashreport/crash/b;

    invoke-virtual {p5, p4}, Lcom/tencent/bugly/crashreport/crash/b;->a(Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;)Z

    move-result p5

    if-nez p5, :cond_12

    .line 328
    iget-object p5, p0, Lcom/tencent/bugly/crashreport/crash/e;->b:Lcom/tencent/bugly/crashreport/crash/b;

    const-wide/16 v2, 0x1388

    invoke-virtual {p5, p4, v2, v3, p3}, Lcom/tencent/bugly/crashreport/crash/b;->a(Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;JZ)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_12
    if-nez p3, :cond_13

    goto/16 :goto_1

    .line 340
    :cond_13
    iget-object p3, p0, Lcom/tencent/bugly/crashreport/crash/e;->e:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz p3, :cond_14

    iget-object p3, p0, Lcom/tencent/bugly/crashreport/crash/e;->e:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-static {p3}, Lcom/tencent/bugly/crashreport/crash/e;->b(Ljava/lang/Thread$UncaughtExceptionHandler;)Z

    move-result p3

    if-eqz p3, :cond_14

    goto/16 :goto_2

    .line 349
    :cond_14
    sget-object p3, Lcom/tencent/bugly/crashreport/crash/e;->f:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz p3, :cond_15

    goto/16 :goto_3

    :cond_15
    const-string p1, "crashreport last handle start!"

    .line 354
    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/tencent/bugly/proguard/u;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string p1, "current process die"

    .line 355
    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/tencent/bugly/proguard/u;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p1

    invoke-static {p1}, Landroid/os/Process;->killProcess(I)V

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    const-string p1, "crashreport last handle end!"

    .line 356
    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/tencent/bugly/proguard/u;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void

    :catchall_0
    move-exception p4

    goto :goto_7

    :catch_1
    move-exception p4

    .line 331
    :try_start_6
    invoke-static {p4}, Lcom/tencent/bugly/proguard/u;->a(Ljava/lang/Throwable;)Z

    move-result p5

    if-nez p5, :cond_16

    .line 332
    invoke-virtual {p4}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_16
    if-nez p3, :cond_17

    goto/16 :goto_1

    .line 340
    :cond_17
    iget-object p3, p0, Lcom/tencent/bugly/crashreport/crash/e;->e:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz p3, :cond_18

    iget-object p3, p0, Lcom/tencent/bugly/crashreport/crash/e;->e:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-static {p3}, Lcom/tencent/bugly/crashreport/crash/e;->b(Ljava/lang/Thread$UncaughtExceptionHandler;)Z

    move-result p3

    if-eqz p3, :cond_18

    goto/16 :goto_2

    .line 349
    :cond_18
    sget-object p3, Lcom/tencent/bugly/crashreport/crash/e;->f:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz p3, :cond_15

    goto/16 :goto_3

    :goto_7
    if-nez p3, :cond_19

    goto/16 :goto_1

    .line 340
    :cond_19
    iget-object p3, p0, Lcom/tencent/bugly/crashreport/crash/e;->e:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz p3, :cond_1b

    iget-object p3, p0, Lcom/tencent/bugly/crashreport/crash/e;->e:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-static {p3}, Lcom/tencent/bugly/crashreport/crash/e;->b(Ljava/lang/Thread$UncaughtExceptionHandler;)Z

    move-result p3

    if-nez p3, :cond_1a

    goto :goto_8

    .line 346
    :cond_1a
    new-array p3, v1, [Ljava/lang/Object;

    const-string p5, "sys default last handle start!"

    invoke-static {p5, p3}, Lcom/tencent/bugly/proguard/u;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 347
    iget-object p3, p0, Lcom/tencent/bugly/crashreport/crash/e;->e:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {p3, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 348
    new-array p1, v1, [Ljava/lang/Object;

    const-string p2, "sys default last handle end!"

    invoke-static {p2, p1}, Lcom/tencent/bugly/proguard/u;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_9

    .line 349
    :cond_1b
    :goto_8
    sget-object p3, Lcom/tencent/bugly/crashreport/crash/e;->f:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz p3, :cond_1c

    .line 350
    new-array p3, v1, [Ljava/lang/Object;

    const-string p5, "system handle start!"

    invoke-static {p5, p3}, Lcom/tencent/bugly/proguard/u;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 351
    sget-object p3, Lcom/tencent/bugly/crashreport/crash/e;->f:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {p3, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 352
    new-array p1, v1, [Ljava/lang/Object;

    const-string p2, "system handle end!"

    invoke-static {p2, p1}, Lcom/tencent/bugly/proguard/u;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_9

    .line 354
    :cond_1c
    new-array p1, v1, [Ljava/lang/Object;

    const-string p2, "crashreport last handle start!"

    invoke-static {p2, p1}, Lcom/tencent/bugly/proguard/u;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 355
    new-array p1, v1, [Ljava/lang/Object;

    const-string p2, "current process die"

    invoke-static {p2, p1}, Lcom/tencent/bugly/proguard/u;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p1

    invoke-static {p1}, Landroid/os/Process;->killProcess(I)V

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 356
    new-array p1, v1, [Ljava/lang/Object;

    const-string p2, "crashreport last handle end!"

    invoke-static {p2, p1}, Lcom/tencent/bugly/proguard/u;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    :goto_9
    throw p4
.end method

.method public final declared-synchronized b()V
    .locals 5

    monitor-enter p0

    const/4 v0, 0x0

    .line 89
    :try_start_0
    iput-boolean v0, p0, Lcom/tencent/bugly/crashreport/crash/e;->g:Z

    const-string v1, "close java monitor!"

    .line 90
    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/u;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 91
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v1

    .line 92
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "bugly"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Java monitor to unregister: %s"

    const/4 v2, 0x1

    .line 93
    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v1, v3}, Lcom/tencent/bugly/proguard/u;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 94
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/e;->e:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 95
    sget v0, Lcom/tencent/bugly/crashreport/crash/e;->j:I

    sub-int/2addr v0, v2

    sput v0, Lcom/tencent/bugly/crashreport/crash/e;->j:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 88
    monitor-exit p0

    throw v0
.end method

.method public final uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 6

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 380
    invoke-virtual/range {v0 .. v5}, Lcom/tencent/bugly/crashreport/crash/e;->a(Ljava/lang/Thread;Ljava/lang/Throwable;ZLjava/lang/String;[B)V

    return-void
.end method
