.class public final Lcom/tencent/bugly/crashreport/crash/jni/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/bugly/crashreport/crash/jni/NativeExceptionHandler;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/tencent/bugly/crashreport/crash/b;

.field private final c:Lcom/tencent/bugly/crashreport/common/info/a;

.field private final d:Lcom/tencent/bugly/crashreport/common/strategy/a;

.field private final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/tencent/bugly/crashreport/common/info/a;Lcom/tencent/bugly/crashreport/crash/b;Lcom/tencent/bugly/crashreport/common/strategy/a;Ljava/lang/String;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/tencent/bugly/crashreport/crash/jni/a;->a:Landroid/content/Context;

    .line 38
    iput-object p3, p0, Lcom/tencent/bugly/crashreport/crash/jni/a;->b:Lcom/tencent/bugly/crashreport/crash/b;

    .line 39
    iput-object p2, p0, Lcom/tencent/bugly/crashreport/crash/jni/a;->c:Lcom/tencent/bugly/crashreport/common/info/a;

    .line 40
    iput-object p4, p0, Lcom/tencent/bugly/crashreport/crash/jni/a;->d:Lcom/tencent/bugly/crashreport/common/strategy/a;

    .line 41
    iput-object p5, p0, Lcom/tencent/bugly/crashreport/crash/jni/a;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final handleNativeException(IIJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V
    .locals 21

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move/from16 v11, p11

    move-object/from16 v12, p12

    move/from16 v13, p13

    move/from16 v14, p14

    move/from16 v15, p15

    move-object/from16 v16, p16

    move-object/from16 v17, p17

    move-object/from16 v19, v0

    const-string v0, "Native Crash Happen v1"

    move/from16 v20, v1

    const/4 v1, 0x0

    .line 144
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/u;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    const/16 v18, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    .line 145
    invoke-virtual/range {v0 .. v18}, Lcom/tencent/bugly/crashreport/crash/jni/a;->handleNativeException2(IIJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public final handleNativeException2(IIJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 22

    move-object/from16 v15, p0

    move-object/from16 v14, p8

    move-object/from16 v11, p10

    move/from16 v13, p11

    move/from16 v1, p13

    move-object/from16 v2, p18

    const-string v0, "Native Crash Happen v2"

    const/4 v12, 0x0

    .line 156
    new-array v3, v12, [Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/tencent/bugly/proguard/u;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 159
    :try_start_0
    iget-object v0, v15, Lcom/tencent/bugly/crashreport/crash/jni/a;->d:Lcom/tencent/bugly/crashreport/common/strategy/a;

    invoke-virtual {v0}, Lcom/tencent/bugly/crashreport/common/strategy/a;->c()Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;

    .line 160
    iget-object v0, v15, Lcom/tencent/bugly/crashreport/crash/jni/a;->d:Lcom/tencent/bugly/crashreport/common/strategy/a;

    invoke-virtual {v0}, Lcom/tencent/bugly/crashreport/common/strategy/a;->b()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "waiting for remote sync"

    .line 162
    new-array v3, v12, [Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/tencent/bugly/proguard/u;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    const/4 v3, 0x0

    .line 164
    :cond_0
    iget-object v0, v15, Lcom/tencent/bugly/crashreport/crash/jni/a;->d:Lcom/tencent/bugly/crashreport/common/strategy/a;

    invoke-virtual {v0}, Lcom/tencent/bugly/crashreport/common/strategy/a;->b()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3

    if-nez v0, :cond_1

    const-wide/16 v4, 0x1f4

    .line 165
    :try_start_1
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v4, v0

    :try_start_2
    invoke-virtual {v4}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    add-int/lit16 v3, v3, 0x1f4

    const/16 v0, 0x1388

    if-lt v3, v0, :cond_0

    :cond_1
    const-wide/16 v3, 0x3e8

    mul-long v5, p3, v3

    .line 168
    div-long v3, p5, v3

    const/4 v0, 0x0

    add-long v4, v5, v3

    .line 176
    invoke-static/range {p9 .. p9}, Lcom/tencent/bugly/crashreport/crash/jni/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 177
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "UNKNOWN("

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    if-lez v13, :cond_2

    .line 181
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v6, p7

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "("

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v7, p12

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v6, "KERNEL"

    move-object v10, v1

    move-object/from16 v16, v3

    move-object v9, v6

    goto :goto_2

    :cond_2
    move-object/from16 v6, p7

    move-object/from16 v7, p12

    if-lez v1, :cond_3

    .line 187
    iget-object v3, v15, Lcom/tencent/bugly/crashreport/crash/jni/a;->a:Landroid/content/Context;

    invoke-static/range {p13 .. p13}, Lcom/tencent/bugly/crashreport/common/info/AppInfo;->a(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v16, v1

    goto :goto_1

    :cond_3
    move-object/from16 v16, v3

    :goto_1
    move-object v10, v6

    move-object v9, v7

    .line 191
    :goto_2
    iget-object v1, v15, Lcom/tencent/bugly/crashreport/crash/jni/a;->d:Lcom/tencent/bugly/crashreport/common/strategy/a;

    invoke-virtual {v1}, Lcom/tencent/bugly/crashreport/common/strategy/a;->b()Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "no remote but still store!"

    .line 192
    new-array v3, v12, [Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/tencent/bugly/proguard/u;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 195
    :cond_4
    iget-object v1, v15, Lcom/tencent/bugly/crashreport/crash/jni/a;->d:Lcom/tencent/bugly/crashreport/common/strategy/a;

    invoke-virtual {v1}, Lcom/tencent/bugly/crashreport/common/strategy/a;->c()Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;

    move-result-object v1

    .line 196
    iget-boolean v1, v1, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->d:Z

    if-nez v1, :cond_6

    iget-object v1, v15, Lcom/tencent/bugly/crashreport/crash/jni/a;->d:Lcom/tencent/bugly/crashreport/common/strategy/a;

    invoke-virtual {v1}, Lcom/tencent/bugly/crashreport/common/strategy/a;->b()Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "crash report was closed by remote , will not upload to Bugly , print local for helpful!"

    .line 197
    new-array v2, v12, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/u;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v1, "NATIVE_CRASH"

    .line 198
    invoke-static {}, Lcom/tencent/bugly/proguard/a;->n()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v15, Lcom/tencent/bugly/crashreport/crash/jni/a;->c:Lcom/tencent/bugly/crashreport/common/info/a;

    iget-object v3, v3, Lcom/tencent/bugly/crashreport/common/info/a;->d:Ljava/lang/String;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x0

    move-object/from16 p1, v1

    move-object/from16 p2, v2

    move-object/from16 p3, v3

    move-object/from16 p4, v4

    move-object/from16 p5, v0

    move-object/from16 p6, v5

    invoke-static/range {p1 .. p6}, Lcom/tencent/bugly/crashreport/crash/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Thread;Ljava/lang/String;Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;)V

    if-eqz v11, :cond_5

    .line 201
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_5
    return-void

    :cond_6
    const/4 v1, 0x0

    if-eqz v2, :cond_9

    .line 209
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 210
    array-length v3, v2

    const/4 v6, 0x0

    :goto_3
    if-ge v6, v3, :cond_8

    aget-object v7, v2, v6

    const-string v8, "="

    .line 211
    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 212
    array-length v12, v8

    const/4 v2, 0x2

    if-ne v12, v2, :cond_7

    const/4 v2, 0x0

    .line 213
    aget-object v7, v8, v2

    const/4 v2, 0x1

    aget-object v8, v8, v2

    invoke-interface {v1, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_7
    const-string v2, "bad extraMsg %s"

    const/4 v8, 0x1

    .line 215
    new-array v12, v8, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v7, v12, v8

    invoke-static {v2, v12}, Lcom/tencent/bugly/proguard/u;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    :goto_4
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v2, p18

    const/4 v12, 0x0

    goto :goto_3

    :cond_8
    const-string v2, "ExceptionProcessName"

    .line 218
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "ExceptionThreadName"

    .line 219
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object/from16 v21, v2

    move-object v2, v1

    move-object/from16 v1, v21

    goto :goto_5

    :cond_9
    const-string v2, "not found extraMsg"

    const/4 v3, 0x0

    .line 221
    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {v2, v6}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    move-object v2, v1

    :goto_5
    if-eqz v1, :cond_b

    .line 224
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_a

    goto :goto_6

    :cond_a
    const-string v3, "crash process name change to %s"

    const/4 v6, 0x1

    .line 227
    new-array v7, v6, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v7, v6

    invoke-static {v3, v7}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_7

    .line 225
    :cond_b
    :goto_6
    iget-object v1, v15, Lcom/tencent/bugly/crashreport/crash/jni/a;->c:Lcom/tencent/bugly/crashreport/common/info/a;

    iget-object v1, v1, Lcom/tencent/bugly/crashreport/common/info/a;->d:Ljava/lang/String;

    :goto_7
    move-object v3, v1

    if-eqz v2, :cond_d

    .line 230
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_c

    goto :goto_8

    :cond_c
    const-string v1, "crash thread name change to %s"

    const/4 v8, 0x1

    .line 233
    new-array v6, v8, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v2, v6, v12

    invoke-static {v1, v6}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    move-object v6, v2

    goto :goto_9

    :cond_d
    :goto_8
    const/4 v8, 0x1

    const/4 v12, 0x0

    .line 231
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3

    move-object v6, v1

    :goto_9
    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x1

    move-object/from16 v1, p0

    move-object v2, v3

    move-object v3, v6

    move-object v6, v10

    move-object/from16 v7, p8

    move-object v8, v0

    move-object/from16 v20, v10

    move-object/from16 v10, v16

    move-object/from16 v11, p10

    move-object/from16 v12, p17

    move-object/from16 v13, v17

    move-object/from16 v14, v18

    move/from16 v15, v19

    .line 236
    :try_start_3
    invoke-virtual/range {v1 .. v15}, Lcom/tencent/bugly/crashreport/crash/jni/a;->packageCrashDatas(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLjava/util/Map;Z)Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;

    move-result-object v1

    if-nez v1, :cond_e

    const-string v0, "pkg crash datas fail!"

    const/4 v1, 0x0

    .line 241
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/u;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void

    :cond_e
    const-string v2, "NATIVE_CRASH"

    .line 245
    invoke-static {}, Lcom/tencent/bugly/proguard/a;->n()Ljava/lang/String;

    move-result-object v3
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    move-object/from16 v4, p0

    :try_start_4
    iget-object v5, v4, Lcom/tencent/bugly/crashreport/crash/jni/a;->c:Lcom/tencent/bugly/crashreport/common/info/a;

    iget-object v5, v5, Lcom/tencent/bugly/crashreport/common/info/a;->d:Ljava/lang/String;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v8, v20

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v8, p8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 p1, v2

    move-object/from16 p2, v3

    move-object/from16 p3, v5

    move-object/from16 p4, v6

    move-object/from16 p5, v0

    move-object/from16 p6, v1

    invoke-static/range {p1 .. p6}, Lcom/tencent/bugly/crashreport/crash/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Thread;Ljava/lang/String;Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;)V

    .line 248
    iget-object v0, v4, Lcom/tencent/bugly/crashreport/crash/jni/a;->b:Lcom/tencent/bugly/crashreport/crash/b;

    move/from16 v2, p11

    invoke-virtual {v0, v1, v2}, Lcom/tencent/bugly/crashreport/crash/b;->a(Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;I)Z

    move-result v0

    if-nez v0, :cond_f

    .line 249
    iget-object v0, v4, Lcom/tencent/bugly/crashreport/crash/jni/a;->b:Lcom/tencent/bugly/crashreport/crash/b;

    const-wide/16 v2, 0x1388

    const/4 v5, 0x1

    invoke-virtual {v0, v1, v2, v3, v5}, Lcom/tencent/bugly/crashreport/crash/b;->a(Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;JZ)V

    .line 252
    :cond_f
    iget-object v0, v4, Lcom/tencent/bugly/crashreport/crash/jni/a;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/bugly/crashreport/crash/jni/b;->b(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    return-void

    :catch_1
    move-exception v0

    goto :goto_a

    :catch_2
    move-exception v0

    move-object/from16 v4, p0

    goto :goto_a

    :catch_3
    move-exception v0

    move-object v4, v15

    .line 254
    :goto_a
    invoke-static {v0}, Lcom/tencent/bugly/proguard/u;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_10

    .line 255
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_10
    return-void
.end method

.method public final packageCrashDatas(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLjava/util/Map;Z)Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[B",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)",
            "Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p12

    .line 53
    invoke-static {}, Lcom/tencent/bugly/crashreport/crash/c;->a()Lcom/tencent/bugly/crashreport/crash/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/bugly/crashreport/crash/c;->l()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v4, " This Crash Caused By ANR , PLS To Fix ANR , This Trace May Be Not Useful![Bugly]"

    goto :goto_0

    :cond_0
    const-string v4, ""

    :goto_0
    const/4 v5, 0x0

    if-eqz v3, :cond_1

    const-string v3, "This Crash Caused By ANR , PLS To Fix ANR , This Trace May Be Not Useful!"

    .line 58
    new-array v6, v5, [Ljava/lang/Object;

    invoke-static {v3, v6}, Lcom/tencent/bugly/proguard/u;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 61
    :cond_1
    new-instance v3, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;

    invoke-direct {v3}, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;-><init>()V

    const/4 v6, 0x1

    .line 63
    iput v6, v3, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->b:I

    .line 64
    iget-object v7, v0, Lcom/tencent/bugly/crashreport/crash/jni/a;->c:Lcom/tencent/bugly/crashreport/common/info/a;

    invoke-virtual {v7}, Lcom/tencent/bugly/crashreport/common/info/a;->g()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v3, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->e:Ljava/lang/String;

    .line 65
    iget-object v7, v0, Lcom/tencent/bugly/crashreport/crash/jni/a;->c:Lcom/tencent/bugly/crashreport/common/info/a;

    iget-object v7, v7, Lcom/tencent/bugly/crashreport/common/info/a;->i:Ljava/lang/String;

    iput-object v7, v3, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->f:Ljava/lang/String;

    .line 66
    iget-object v7, v0, Lcom/tencent/bugly/crashreport/crash/jni/a;->c:Lcom/tencent/bugly/crashreport/common/info/a;

    invoke-virtual {v7}, Lcom/tencent/bugly/crashreport/common/info/a;->t()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v3, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->g:Ljava/lang/String;

    .line 67
    iget-object v7, v0, Lcom/tencent/bugly/crashreport/crash/jni/a;->c:Lcom/tencent/bugly/crashreport/common/info/a;

    invoke-virtual {v7}, Lcom/tencent/bugly/crashreport/common/info/a;->f()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v3, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->m:Ljava/lang/String;

    move-object v7, p5

    .line 68
    iput-object v7, v3, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->n:Ljava/lang/String;

    .line 69
    iput-object v4, v3, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->o:Ljava/lang/String;

    move-object v4, p6

    .line 70
    iput-object v4, v3, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->p:Ljava/lang/String;

    move-object/from16 v4, p7

    .line 71
    iput-object v4, v3, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->q:Ljava/lang/String;

    move-wide v7, p3

    .line 72
    iput-wide v7, v3, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->r:J

    .line 73
    iget-object v4, v3, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->q:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-static {v4}, Lcom/tencent/bugly/proguard/a;->b([B)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->u:Ljava/lang/String;

    .line 74
    iput-object v1, v3, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->z:Ljava/lang/String;

    move-object v4, p2

    .line 75
    iput-object v4, v3, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->A:Ljava/lang/String;

    .line 76
    iget-object v4, v0, Lcom/tencent/bugly/crashreport/crash/jni/a;->c:Lcom/tencent/bugly/crashreport/common/info/a;

    invoke-virtual {v4}, Lcom/tencent/bugly/crashreport/common/info/a;->v()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->H:Ljava/lang/String;

    .line 77
    iget-object v4, v0, Lcom/tencent/bugly/crashreport/crash/jni/a;->c:Lcom/tencent/bugly/crashreport/common/info/a;

    invoke-virtual {v4}, Lcom/tencent/bugly/crashreport/common/info/a;->s()Ljava/util/Map;

    move-result-object v4

    iput-object v4, v3, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->h:Ljava/util/Map;

    .line 78
    iget-object v4, v0, Lcom/tencent/bugly/crashreport/crash/jni/a;->c:Lcom/tencent/bugly/crashreport/common/info/a;

    invoke-virtual {v4}, Lcom/tencent/bugly/crashreport/common/info/a;->D()Ljava/util/Map;

    move-result-object v4

    iput-object v4, v3, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->i:Ljava/util/Map;

    move-object/from16 v4, p10

    .line 79
    iput-object v4, v3, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->v:Ljava/lang/String;

    move-object/from16 v4, p9

    .line 80
    iput-object v4, v3, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->I:Ljava/lang/String;

    move-object/from16 v4, p8

    .line 81
    iput-object v4, v3, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->J:Ljava/lang/String;

    move-object/from16 v4, p11

    .line 82
    iput-object v4, v3, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->K:Ljava/lang/String;

    .line 85
    iget-object v4, v0, Lcom/tencent/bugly/crashreport/crash/jni/a;->c:Lcom/tencent/bugly/crashreport/common/info/a;

    invoke-virtual {v4}, Lcom/tencent/bugly/crashreport/common/info/a;->o()J

    move-result-wide v7

    iput-wide v7, v3, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->E:J

    .line 86
    iget-object v4, v0, Lcom/tencent/bugly/crashreport/crash/jni/a;->c:Lcom/tencent/bugly/crashreport/common/info/a;

    invoke-virtual {v4}, Lcom/tencent/bugly/crashreport/common/info/a;->n()J

    move-result-wide v7

    iput-wide v7, v3, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->F:J

    .line 87
    iget-object v4, v0, Lcom/tencent/bugly/crashreport/crash/jni/a;->c:Lcom/tencent/bugly/crashreport/common/info/a;

    invoke-virtual {v4}, Lcom/tencent/bugly/crashreport/common/info/a;->p()J

    move-result-wide v7

    iput-wide v7, v3, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->G:J

    const/4 v4, 0x0

    if-eqz p14, :cond_3

    .line 90
    invoke-static {}, Lcom/tencent/bugly/proguard/a;->i()J

    move-result-wide v7

    iput-wide v7, v3, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->B:J

    .line 91
    invoke-static {}, Lcom/tencent/bugly/proguard/a;->g()J

    move-result-wide v7

    iput-wide v7, v3, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->C:J

    .line 92
    invoke-static {}, Lcom/tencent/bugly/proguard/a;->k()J

    move-result-wide v7

    iput-wide v7, v3, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->D:J

    .line 93
    iget-object v2, v0, Lcom/tencent/bugly/crashreport/crash/jni/a;->a:Landroid/content/Context;

    sget v7, Lcom/tencent/bugly/crashreport/crash/c;->d:I

    invoke-static {v2, v7, v4}, Lcom/tencent/bugly/proguard/a;->a(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->w:Ljava/lang/String;

    .line 96
    invoke-static {v6}, Lcom/tencent/bugly/proguard/v;->a(Z)[B

    move-result-object v2

    iput-object v2, v3, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->x:[B

    .line 97
    iget-object v2, v0, Lcom/tencent/bugly/crashreport/crash/jni/a;->c:Lcom/tencent/bugly/crashreport/common/info/a;

    iget-wide v6, v2, Lcom/tencent/bugly/crashreport/common/info/a;->a:J

    iput-wide v6, v3, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->L:J

    .line 98
    iget-object v2, v0, Lcom/tencent/bugly/crashreport/crash/jni/a;->c:Lcom/tencent/bugly/crashreport/common/info/a;

    iget-boolean v2, v2, Lcom/tencent/bugly/crashreport/common/info/a;->n:Z

    iput-boolean v2, v3, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->M:Z

    .line 100
    iget-object v2, v0, Lcom/tencent/bugly/crashreport/crash/jni/a;->c:Lcom/tencent/bugly/crashreport/common/info/a;

    invoke-virtual {v2}, Lcom/tencent/bugly/crashreport/common/info/a;->A()I

    move-result v2

    iput v2, v3, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->O:I

    .line 101
    iget-object v2, v0, Lcom/tencent/bugly/crashreport/crash/jni/a;->c:Lcom/tencent/bugly/crashreport/common/info/a;

    invoke-virtual {v2}, Lcom/tencent/bugly/crashreport/common/info/a;->B()I

    move-result v2

    iput v2, v3, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->P:I

    .line 102
    iget-object v2, v0, Lcom/tencent/bugly/crashreport/crash/jni/a;->c:Lcom/tencent/bugly/crashreport/common/info/a;

    invoke-virtual {v2}, Lcom/tencent/bugly/crashreport/common/info/a;->w()Ljava/util/Map;

    move-result-object v2

    iput-object v2, v3, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->Q:Ljava/util/Map;

    .line 103
    iget-object v2, v0, Lcom/tencent/bugly/crashreport/crash/jni/a;->c:Lcom/tencent/bugly/crashreport/common/info/a;

    invoke-virtual {v2}, Lcom/tencent/bugly/crashreport/common/info/a;->z()Ljava/util/Map;

    move-result-object v2

    iput-object v2, v3, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->R:Ljava/util/Map;

    .line 104
    sget v2, Lcom/tencent/bugly/crashreport/crash/c;->e:I

    invoke-static {v2, v5}, Lcom/tencent/bugly/proguard/a;->a(IZ)Ljava/util/Map;

    move-result-object v2

    iput-object v2, v3, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->y:Ljava/util/Map;

    if-nez v1, :cond_2

    .line 107
    iget-object v1, v0, Lcom/tencent/bugly/crashreport/crash/jni/a;->c:Lcom/tencent/bugly/crashreport/common/info/a;

    iget-object v1, v1, Lcom/tencent/bugly/crashreport/common/info/a;->d:Ljava/lang/String;

    iput-object v1, v3, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->z:Ljava/lang/String;

    .line 110
    :cond_2
    iget-object v1, v0, Lcom/tencent/bugly/crashreport/crash/jni/a;->b:Lcom/tencent/bugly/crashreport/crash/b;

    invoke-virtual {v1, v3}, Lcom/tencent/bugly/crashreport/crash/b;->b(Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;)V

    goto :goto_1

    :cond_3
    const-wide/16 v5, -0x1

    .line 113
    iput-wide v5, v3, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->B:J

    .line 114
    iput-wide v5, v3, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->C:J

    .line 115
    iput-wide v5, v3, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->D:J

    const-string v7, "this crash is occurred at last process! Log is miss, when get an terrible ABRT Native Exception etc."

    .line 116
    iput-object v7, v3, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->w:Ljava/lang/String;

    .line 118
    iput-wide v5, v3, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->L:J

    const/4 v5, -0x1

    .line 119
    iput v5, v3, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->O:I

    .line 120
    iput v5, v3, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->P:I

    move-object/from16 v5, p13

    .line 121
    iput-object v5, v3, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->Q:Ljava/util/Map;

    .line 122
    iput-object v4, v3, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->R:Ljava/util/Map;

    .line 123
    iput-object v4, v3, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->y:Ljava/util/Map;

    if-nez v1, :cond_4

    const-string v1, "unknown(record)"

    .line 125
    iput-object v1, v3, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->z:Ljava/lang/String;

    :cond_4
    if-nez v2, :cond_5

    const-string v1, "this crash is occurred at last process! Log is miss, when get an terrible ABRT Native Exception etc."

    .line 128
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    iput-object v1, v3, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->x:[B

    goto :goto_1

    .line 132
    :cond_5
    iput-object v2, v3, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->x:[B

    :goto_1
    return-object v3
.end method
