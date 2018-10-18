.class public final Lcom/tencent/bugly/proguard/v;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/bugly/proguard/v$a;
    }
.end annotation


# static fields
.field public static a:Z = true

.field private static b:Ljava/text/SimpleDateFormat; = null

.field private static c:I = 0x1400

.field private static d:Ljava/lang/StringBuilder;

.field private static e:Ljava/lang/StringBuilder;

.field private static f:Lcom/tencent/bugly/proguard/v$a;

.field private static g:Ljava/lang/String;

.field private static h:Ljava/lang/String;

.field private static i:Landroid/content/Context;

.field private static j:Ljava/lang/String;

.field private static k:Z

.field private static l:I

.field private static m:Ljava/lang/Object;

.field private static n:Ljava/lang/Object;

.field private static o:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 41
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/tencent/bugly/proguard/v;->m:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 43
    sput-object v0, Lcom/tencent/bugly/proguard/v;->n:Ljava/lang/Object;

    .line 44
    sput-object v0, Lcom/tencent/bugly/proguard/v;->o:Ljava/lang/reflect/Method;

    .line 51
    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/tencent/bugly/proguard/v;->b:Ljava/text/SimpleDateFormat;

    const-string v0, "com.tencent.bugly.crashreport.crash.jni.NativeCrashHandler"

    .line 52
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "appendLogToNative"

    const/4 v2, 0x3

    .line 53
    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/tencent/bugly/proguard/v;->o:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    return-void
.end method

.method static synthetic a(Lcom/tencent/bugly/proguard/v$a;)Lcom/tencent/bugly/proguard/v$a;
    .locals 0

    .line 18
    sput-object p0, Lcom/tencent/bugly/proguard/v;->f:Lcom/tencent/bugly/proguard/v$a;

    return-object p0
.end method

.method static synthetic a()Ljava/lang/Object;
    .locals 1

    .line 18
    sget-object v0, Lcom/tencent/bugly/proguard/v;->m:Ljava/lang/Object;

    return-object v0
.end method

.method public static a(I)V
    .locals 2

    .line 105
    sget-object v0, Lcom/tencent/bugly/proguard/v;->m:Ljava/lang/Object;

    monitor-enter v0

    .line 106
    :try_start_0
    sput p0, Lcom/tencent/bugly/proguard/v;->c:I

    if-gez p0, :cond_0

    const/4 p0, 0x0

    .line 108
    sput p0, Lcom/tencent/bugly/proguard/v;->c:I

    goto :goto_0

    :cond_0
    const/16 v1, 0x2800

    if-le p0, v1, :cond_1

    .line 110
    sput v1, Lcom/tencent/bugly/proguard/v;->c:I

    .line 112
    :cond_1
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized a(Landroid/content/Context;)V
    .locals 3

    const-class v0, Lcom/tencent/bugly/proguard/v;

    monitor-enter v0

    .line 83
    :try_start_0
    sget-boolean v1, Lcom/tencent/bugly/proguard/v;->k:Z

    if-nez v1, :cond_1

    if-eqz p0, :cond_1

    sget-boolean v1, Lcom/tencent/bugly/proguard/v;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    goto :goto_0

    .line 87
    :cond_0
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    sput-object v1, Lcom/tencent/bugly/proguard/v;->e:Ljava/lang/StringBuilder;

    .line 88
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    sput-object v1, Lcom/tencent/bugly/proguard/v;->d:Ljava/lang/StringBuilder;

    .line 89
    sput-object p0, Lcom/tencent/bugly/proguard/v;->i:Landroid/content/Context;

    .line 90
    invoke-static {p0}, Lcom/tencent/bugly/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/tencent/bugly/crashreport/common/info/a;

    move-result-object p0

    .line 91
    iget-object v1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->d:Ljava/lang/String;

    sput-object v1, Lcom/tencent/bugly/proguard/v;->g:Ljava/lang/String;

    .line 92
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, ""

    sput-object p0, Lcom/tencent/bugly/proguard/v;->h:Ljava/lang/String;

    .line 93
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/tencent/bugly/proguard/v;->i:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/buglylog_"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/tencent/bugly/proguard/v;->g:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/tencent/bugly/proguard/v;->h:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".txt"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/tencent/bugly/proguard/v;->j:Ljava/lang/String;

    .line 97
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p0

    sput p0, Lcom/tencent/bugly/proguard/v;->l:I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    const/4 p0, 0x1

    .line 101
    :try_start_2
    sput-boolean p0, Lcom/tencent/bugly/proguard/v;->k:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 102
    monitor-exit v0

    return-void

    .line 84
    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 82
    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const-class v0, Lcom/tencent/bugly/proguard/v;

    monitor-enter v0

    .line 133
    :try_start_0
    sget-boolean v1, Lcom/tencent/bugly/proguard/v;->k:Z

    if-eqz v1, :cond_4

    sget-boolean v1, Lcom/tencent/bugly/proguard/v;->a:Z

    if-nez v1, :cond_0

    goto/16 :goto_1

    .line 138
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/tencent/bugly/proguard/v;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 140
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    .line 141
    sget-object v2, Lcom/tencent/bugly/proguard/v;->d:Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x7800

    if-le v2, v3, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p2, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    :cond_1
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    sget-object v3, Lcom/tencent/bugly/proguard/v;->b:Ljava/text/SimpleDateFormat;

    if-eqz v3, :cond_2

    sget-object v3, Lcom/tencent/bugly/proguard/v;->b:Ljava/text/SimpleDateFormat;

    invoke-virtual {v3, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    sget-object v3, Lcom/tencent/bugly/proguard/v;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/tencent/bugly/proguard/v;->l:I

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\u0001\r\n"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lcom/tencent/bugly/proguard/v;->d:Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 143
    sget-object p1, Lcom/tencent/bugly/proguard/v;->m:Ljava/lang/Object;

    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 144
    :try_start_1
    sget-object p2, Lcom/tencent/bugly/proguard/v;->e:Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 146
    :try_start_2
    sget-object p1, Lcom/tencent/bugly/proguard/v;->e:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    sget p2, Lcom/tencent/bugly/proguard/v;->c:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-gt p1, p2, :cond_3

    .line 147
    monitor-exit v0

    return-void

    .line 150
    :cond_3
    :try_start_3
    invoke-static {}, Lcom/tencent/bugly/proguard/t;->a()Lcom/tencent/bugly/proguard/t;

    move-result-object p1

    new-instance p2, Lcom/tencent/bugly/proguard/v$1;

    invoke-direct {p2, p0}, Lcom/tencent/bugly/proguard/v$1;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/tencent/bugly/proguard/t;->a(Ljava/lang/Runnable;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 181
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 145
    :try_start_4
    monitor-exit p1

    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 134
    :cond_4
    :goto_1
    monitor-exit v0

    return-void

    :catchall_1
    move-exception p0

    .line 132
    monitor-exit v0

    throw p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    if-nez p2, :cond_0

    return-void

    .line 125
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, ""

    .line 127
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-nez p2, :cond_2

    const-string p2, ""

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p2, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    invoke-virtual {v2}, Ljava/io/PrintWriter;->flush()V

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_0
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 128
    invoke-static {p0, p1, p2}, Lcom/tencent/bugly/proguard/v;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Z)[B
    .locals 3

    .line 203
    sget-boolean v0, Lcom/tencent/bugly/proguard/v;->a:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 206
    :cond_0
    sget-object v0, Lcom/tencent/bugly/proguard/v;->m:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p0, :cond_1

    .line 211
    :try_start_0
    sget-object p0, Lcom/tencent/bugly/proguard/v;->f:Lcom/tencent/bugly/proguard/v$a;

    if-eqz p0, :cond_1

    sget-object p0, Lcom/tencent/bugly/proguard/v;->f:Lcom/tencent/bugly/proguard/v$a;

    invoke-static {p0}, Lcom/tencent/bugly/proguard/v$a;->d(Lcom/tencent/bugly/proguard/v$a;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 212
    sget-object p0, Lcom/tencent/bugly/proguard/v;->f:Lcom/tencent/bugly/proguard/v$a;

    invoke-static {p0}, Lcom/tencent/bugly/proguard/v$a;->a(Lcom/tencent/bugly/proguard/v$a;)Ljava/io/File;

    move-result-object p0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    move-object p0, v1

    .line 216
    :goto_0
    sget-object v2, Lcom/tencent/bugly/proguard/v;->e:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_2

    if-nez p0, :cond_2

    .line 217
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v1

    .line 219
    :cond_2
    :try_start_2
    sget-object v2, Lcom/tencent/bugly/proguard/v;->e:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/tencent/bugly/proguard/a;->a(Ljava/io/File;Ljava/lang/String;)[B

    move-result-object p0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 220
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-object p0

    .line 225
    :goto_1
    monitor-exit v0

    throw p0

    .line 223
    :catch_0
    monitor-exit v0

    return-object v1
.end method

.method static synthetic b()Ljava/lang/StringBuilder;
    .locals 1

    .line 18
    sget-object v0, Lcom/tencent/bugly/proguard/v;->e:Ljava/lang/StringBuilder;

    return-object v0
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    .line 62
    sget-object v0, Lcom/tencent/bugly/proguard/v;->o:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 65
    :cond_0
    sget-object v0, Lcom/tencent/bugly/proguard/v;->n:Ljava/lang/Object;

    if-nez v0, :cond_1

    const-string v0, "com.tencent.bugly.crashreport.crash.jni.NativeCrashHandler"

    const-string v2, "getInstance"

    const/4 v3, 0x0

    .line 66
    invoke-static {v0, v2, v3, v3, v3}, Lcom/tencent/bugly/proguard/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 69
    sput-object v0, Lcom/tencent/bugly/proguard/v;->n:Ljava/lang/Object;

    if-nez v0, :cond_1

    return v1

    .line 74
    :cond_1
    :try_start_0
    sget-object v0, Lcom/tencent/bugly/proguard/v;->o:Ljava/lang/reflect/Method;

    sget-object v2, Lcom/tencent/bugly/proguard/v;->n:Ljava/lang/Object;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v1

    const/4 p0, 0x1

    aput-object p1, v3, p0

    const/4 p0, 0x2

    aput-object p2, v3, p0

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 76
    sget-object p1, Lcom/tencent/bugly/proguard/u;->b:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method static synthetic c()I
    .locals 1

    .line 18
    sget v0, Lcom/tencent/bugly/proguard/v;->c:I

    return v0
.end method

.method static synthetic d()Lcom/tencent/bugly/proguard/v$a;
    .locals 1

    .line 18
    sget-object v0, Lcom/tencent/bugly/proguard/v;->f:Lcom/tencent/bugly/proguard/v$a;

    return-object v0
.end method

.method static synthetic e()Ljava/lang/String;
    .locals 1

    .line 18
    sget-object v0, Lcom/tencent/bugly/proguard/v;->j:Ljava/lang/String;

    return-object v0
.end method
