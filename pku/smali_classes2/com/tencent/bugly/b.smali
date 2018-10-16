.class public final Lcom/tencent/bugly/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Z

.field public static b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/bugly/a;",
            ">;"
        }
    .end annotation
.end field

.field private static final d:Ljava/lang/String;

.field private static final e:Ljava/lang/String;

.field private static final f:Ljava/lang/String;

.field private static final g:Ljava/lang/String;

.field private static h:[Ljava/lang/String;

.field private static i:[Ljava/lang/String;

.field private static j:Ljava/lang/Boolean;

.field private static k:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/tencent/bugly/b;->c:Ljava/util/List;

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "com.tencent.bugly"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/bugly/b;->d:Ljava/lang/String;

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/tencent/bugly/b;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".CrashModule"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/bugly/b;->e:Ljava/lang/String;

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/tencent/bugly/b;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".beta.Beta"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/bugly/b;->f:Ljava/lang/String;

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/tencent/bugly/b;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".feedback.BFeedback"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/bugly/b;->g:Ljava/lang/String;

    const/4 v0, 0x3

    .line 44
    new-array v1, v0, [Ljava/lang/String;

    sget-object v2, Lcom/tencent/bugly/b;->e:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "com.tencent.feedback.eup.CrashReport"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    sget-object v2, Lcom/tencent/bugly/b;->f:Ljava/lang/String;

    const/4 v5, 0x2

    aput-object v2, v1, v5

    sput-object v1, Lcom/tencent/bugly/b;->h:[Ljava/lang/String;

    const/4 v1, 0x4

    .line 45
    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "com.tencent.feedback.eup.CrashReport"

    aput-object v2, v1, v3

    sget-object v2, Lcom/tencent/bugly/b;->e:Ljava/lang/String;

    aput-object v2, v1, v4

    sget-object v2, Lcom/tencent/bugly/b;->f:Ljava/lang/String;

    aput-object v2, v1, v5

    sget-object v2, Lcom/tencent/bugly/b;->g:Ljava/lang/String;

    aput-object v2, v1, v0

    sput-object v1, Lcom/tencent/bugly/b;->i:[Ljava/lang/String;

    const/4 v0, 0x0

    .line 62
    sput-object v0, Lcom/tencent/bugly/b;->b:Ljava/util/Map;

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)V
    .locals 2

    const-class v0, Lcom/tencent/bugly/b;

    monitor-enter v0

    const/4 v1, 0x0

    .line 87
    :try_start_0
    invoke-static {p0, v1}, Lcom/tencent/bugly/b;->a(Landroid/content/Context;Lcom/tencent/bugly/BuglyStrategy;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 86
    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized a(Landroid/content/Context;Lcom/tencent/bugly/BuglyStrategy;)V
    .locals 4

    const-class v0, Lcom/tencent/bugly/b;

    monitor-enter v0

    .line 91
    :try_start_0
    sget-boolean v1, Lcom/tencent/bugly/b;->k:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const-string p0, "[init] initial Multi-times, ignore this."

    .line 92
    new-array p1, v2, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/tencent/bugly/proguard/u;->d(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    monitor-exit v0

    return-void

    :cond_0
    if-nez p0, :cond_1

    .line 96
    :try_start_1
    sget-object p0, Lcom/tencent/bugly/proguard/u;->b:Ljava/lang/String;

    const-string p1, "[init] context of init() is null, check it."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 97
    monitor-exit v0

    return-void

    .line 99
    :cond_1
    :try_start_2
    invoke-static {p0}, Lcom/tencent/bugly/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/tencent/bugly/crashreport/common/info/a;

    move-result-object v1

    .line 102
    invoke-static {v1}, Lcom/tencent/bugly/b;->a(Lcom/tencent/bugly/crashreport/common/info/a;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 103
    sput-boolean v2, Lcom/tencent/bugly/Bugly;->enable:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 104
    monitor-exit v0

    return-void

    .line 108
    :cond_2
    :try_start_3
    invoke-virtual {v1}, Lcom/tencent/bugly/crashreport/common/info/a;->e()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 113
    iget-boolean v1, v1, Lcom/tencent/bugly/crashreport/common/info/a;->t:Z

    invoke-static {p0, v2, v1, p1}, Lcom/tencent/bugly/b;->a(Landroid/content/Context;Ljava/lang/String;ZLcom/tencent/bugly/BuglyStrategy;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 114
    monitor-exit v0

    return-void

    .line 110
    :cond_3
    :try_start_4
    new-instance p0, Lcom/tencent/bugly/crashreport/BuglyHintException;

    const-string p1, "[init] meta data of BUGLY_APPID in AndroidManifest.xml should be set."

    invoke-direct {p0, p1}, Lcom/tencent/bugly/crashreport/BuglyHintException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception p0

    .line 90
    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized a(Landroid/content/Context;Ljava/lang/String;ZLcom/tencent/bugly/BuglyStrategy;)V
    .locals 10

    const-class v0, Lcom/tencent/bugly/b;

    monitor-enter v0

    .line 118
    :try_start_0
    sget-boolean v1, Lcom/tencent/bugly/b;->k:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const-string p0, "[init] initial Multi-times, ignore this."

    .line 119
    new-array p1, v2, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/tencent/bugly/proguard/u;->d(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    monitor-exit v0

    return-void

    :cond_0
    if-nez p0, :cond_1

    .line 123
    :try_start_1
    sget-object p0, Lcom/tencent/bugly/proguard/u;->b:Ljava/lang/String;

    const-string p1, "[init] context of init() is null, check it."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 124
    monitor-exit v0

    return-void

    :cond_1
    if-eqz p1, :cond_17

    const/4 v1, 0x1

    .line 130
    :try_start_2
    sput-boolean v1, Lcom/tencent/bugly/b;->k:Z

    if-eqz p2, :cond_2

    .line 133
    sput-boolean v1, Lcom/tencent/bugly/b;->a:Z

    .line 134
    sput-boolean v1, Lcom/tencent/bugly/proguard/u;->c:Z

    const-string v3, "Bugly debug\u6a21\u5f0f\u5f00\u542f\uff0c\u8bf7\u5728\u53d1\u5e03\u65f6\u628aisDebug\u5173\u95ed\u3002 -- Running in debug model for \'isDebug\' is enabled. Please disable it when you release."

    .line 135
    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/tencent/bugly/proguard/u;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v3, "--------------------------------------------------------------------------------------------"

    .line 136
    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/tencent/bugly/proguard/u;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v3, "Bugly debug\u6a21\u5f0f\u5c06\u6709\u4ee5\u4e0b\u884c\u4e3a\u7279\u6027 -- The following list shows the behaviour of debug model: "

    .line 137
    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/tencent/bugly/proguard/u;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v3, "[1] \u8f93\u51fa\u8be6\u7ec6\u7684Bugly SDK\u7684Log -- More detailed log of Bugly SDK will be output to logcat;"

    .line 138
    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/tencent/bugly/proguard/u;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v3, "[2] \u6bcf\u4e00\u6761Crash\u90fd\u4f1a\u88ab\u7acb\u5373\u4e0a\u62a5 -- Every crash caught by Bugly will be uploaded immediately."

    .line 139
    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/tencent/bugly/proguard/u;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v3, "[3] \u81ea\u5b9a\u4e49\u65e5\u5fd7\u5c06\u4f1a\u5728Logcat\u4e2d\u8f93\u51fa -- Custom log will be output to logcat."

    .line 140
    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/tencent/bugly/proguard/u;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v3, "--------------------------------------------------------------------------------------------"

    .line 141
    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/tencent/bugly/proguard/u;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v3, "[init] bugly in debug mode."

    .line 142
    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/tencent/bugly/proguard/u;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    :cond_2
    if-nez p0, :cond_3

    goto :goto_0

    .line 145
    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    if-nez v3, :cond_4

    goto :goto_0

    :cond_4
    move-object p0, v3

    .line 149
    :goto_0
    sget-object v3, Lcom/tencent/bugly/b;->j:Ljava/lang/Boolean;

    if-nez v3, :cond_5

    const-string v3, "false"

    const-string v4, "@"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    sput-object v3, Lcom/tencent/bugly/b;->j:Ljava/lang/Boolean;

    :cond_5
    sget-object v3, Lcom/tencent/bugly/b;->j:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 150
    sget-object v3, Lcom/tencent/bugly/b;->i:[Ljava/lang/String;

    sput-object v3, Lcom/tencent/bugly/b;->h:[Ljava/lang/String;

    .line 154
    :cond_6
    sget-object v3, Lcom/tencent/bugly/b;->h:[Ljava/lang/String;

    array-length v4, v3

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_8

    aget-object v6, v3, v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    const-string v7, "getInstance"

    const/4 v8, 0x0

    .line 156
    invoke-static {v6, v7, v8, v8, v8}, Lcom/tencent/bugly/proguard/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/tencent/bugly/a;

    if-eqz v7, :cond_7

    .line 160
    sget-object v8, Lcom/tencent/bugly/b;->c:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v7, "[module] load: %s"

    .line 161
    new-array v8, v1, [Ljava/lang/Object;

    aput-object v6, v8, v2

    invoke-static {v7, v8}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catch_0
    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 169
    :cond_8
    :try_start_4
    invoke-static {p0}, Lcom/tencent/bugly/proguard/v;->a(Landroid/content/Context;)V

    .line 170
    sget-object v3, Lcom/tencent/bugly/b;->c:Ljava/util/List;

    invoke-static {p0, v3}, Lcom/tencent/bugly/proguard/m;->a(Landroid/content/Context;Ljava/util/List;)Lcom/tencent/bugly/proguard/m;

    .line 171
    invoke-static {p0}, Lcom/tencent/bugly/proguard/r;->a(Landroid/content/Context;)Lcom/tencent/bugly/proguard/r;

    .line 172
    sget-object v3, Lcom/tencent/bugly/b;->c:Ljava/util/List;

    invoke-static {p0, v3}, Lcom/tencent/bugly/crashreport/common/strategy/a;->a(Landroid/content/Context;Ljava/util/List;)Lcom/tencent/bugly/crashreport/common/strategy/a;

    .line 173
    invoke-static {p0}, Lcom/tencent/bugly/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/tencent/bugly/crashreport/common/info/a;

    move-result-object v3

    .line 176
    invoke-static {v3}, Lcom/tencent/bugly/b;->a(Lcom/tencent/bugly/crashreport/common/info/a;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 177
    sput-boolean v2, Lcom/tencent/bugly/Bugly;->enable:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 178
    monitor-exit v0

    return-void

    .line 181
    :cond_9
    :try_start_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v5, " crash report start init!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/tencent/bugly/proguard/u;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v4, "[init] bugly start init..."

    .line 182
    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/tencent/bugly/proguard/u;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 184
    invoke-virtual {v3, p1}, Lcom/tencent/bugly/crashreport/common/info/a;->a(Ljava/lang/String;)V

    const-string v4, "[param] setted APPID:%s"

    .line 185
    new-array v5, v1, [Ljava/lang/Object;

    aput-object p1, v5, v2

    invoke-static {v4, v5}, Lcom/tencent/bugly/proguard/u;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    if-eqz p3, :cond_12

    .line 187
    invoke-virtual {p3}, Lcom/tencent/bugly/BuglyStrategy;->getAppVersion()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v5, 0x2

    const/4 v6, 0x3

    const/16 v7, 0x64

    if-nez v4, :cond_b

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v7, :cond_a

    invoke-virtual {p1, v2, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const-string v8, "appVersion %s length is over limit %d substring to %s"

    new-array v9, v6, [Ljava/lang/Object;

    aput-object p1, v9, v2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v9, v1

    aput-object v4, v9, v5

    invoke-static {v8, v9}, Lcom/tencent/bugly/proguard/u;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    move-object p1, v4

    :cond_a
    iput-object p1, v3, Lcom/tencent/bugly/crashreport/common/info/a;->i:Ljava/lang/String;

    const-string p1, "setted APPVERSION:%s"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual {p3}, Lcom/tencent/bugly/BuglyStrategy;->getAppVersion()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v2

    invoke-static {p1, v4}, Lcom/tencent/bugly/proguard/u;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    :cond_b
    invoke-virtual {p3}, Lcom/tencent/bugly/BuglyStrategy;->getAppChannel()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_d

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v7, :cond_c

    invoke-virtual {p1, v2, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const-string v8, "appChannel %s length is over limit %d substring to %s"

    new-array v9, v6, [Ljava/lang/Object;

    aput-object p1, v9, v2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v9, v1

    aput-object v4, v9, v5

    invoke-static {v8, v9}, Lcom/tencent/bugly/proguard/u;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    move-object p1, v4

    :cond_c
    iput-object p1, v3, Lcom/tencent/bugly/crashreport/common/info/a;->j:Ljava/lang/String;

    const-string p1, "setted APPCHANNEL:%s"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual {p3}, Lcom/tencent/bugly/BuglyStrategy;->getAppChannel()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v2

    invoke-static {p1, v4}, Lcom/tencent/bugly/proguard/u;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    :cond_d
    invoke-virtual {p3}, Lcom/tencent/bugly/BuglyStrategy;->getAppPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_f

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v7, :cond_e

    invoke-virtual {p1, v2, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const-string v8, "appPackageName %s length is over limit %d substring to %s"

    new-array v9, v6, [Ljava/lang/Object;

    aput-object p1, v9, v2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v9, v1

    aput-object v4, v9, v5

    invoke-static {v8, v9}, Lcom/tencent/bugly/proguard/u;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    move-object p1, v4

    :cond_e
    iput-object p1, v3, Lcom/tencent/bugly/crashreport/common/info/a;->c:Ljava/lang/String;

    const-string p1, "setted PACKAGENAME:%s"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual {p3}, Lcom/tencent/bugly/BuglyStrategy;->getAppPackageName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v2

    invoke-static {p1, v4}, Lcom/tencent/bugly/proguard/u;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    :cond_f
    invoke-virtual {p3}, Lcom/tencent/bugly/BuglyStrategy;->getDeviceID()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_11

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v7, :cond_10

    invoke-virtual {p1, v2, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const-string v8, "deviceId %s length is over limit %d substring to %s"

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v6, v1

    aput-object v4, v6, v5

    invoke-static {v8, v6}, Lcom/tencent/bugly/proguard/u;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    move-object p1, v4

    :cond_10
    invoke-virtual {v3, p1}, Lcom/tencent/bugly/crashreport/common/info/a;->c(Ljava/lang/String;)V

    const-string v3, "setted deviceId :%s"

    new-array v4, v1, [Ljava/lang/Object;

    aput-object p1, v4, v2

    invoke-static {v3, v4}, Lcom/tencent/bugly/proguard/u;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    :cond_11
    invoke-virtual {p3}, Lcom/tencent/bugly/BuglyStrategy;->isBuglyLogUpload()Z

    move-result p1

    sput-boolean p1, Lcom/tencent/bugly/proguard/v;->a:Z

    :cond_12
    if-eqz p3, :cond_13

    .line 191
    invoke-virtual {p3}, Lcom/tencent/bugly/BuglyStrategy;->isEnableUserInfo()Z

    move-result v1

    :cond_13
    const-wide/16 v3, 0x0

    if-eqz p3, :cond_14

    .line 194
    invoke-virtual {p3}, Lcom/tencent/bugly/BuglyStrategy;->getAppReportDelay()J

    move-result-wide v5

    cmp-long p1, v5, v3

    if-lez p1, :cond_14

    .line 195
    invoke-virtual {p3}, Lcom/tencent/bugly/BuglyStrategy;->getAppReportDelay()J

    move-result-wide v3

    .line 197
    :cond_14
    invoke-static {p0, v1, v3, v4}, Lcom/tencent/bugly/crashreport/biz/b;->a(Landroid/content/Context;ZJ)V

    const/4 p1, 0x0

    .line 200
    :goto_2
    sget-object v1, Lcom/tencent/bugly/b;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-ge p1, v1, :cond_16

    .line 202
    :try_start_6
    sget-object v1, Lcom/tencent/bugly/b;->c:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/bugly/a;

    invoke-virtual {v1, p0, p2, p3}, Lcom/tencent/bugly/a;->init(Landroid/content/Context;ZLcom/tencent/bugly/BuglyStrategy;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_3

    :catch_1
    move-exception v1

    .line 204
    :try_start_7
    invoke-static {v1}, Lcom/tencent/bugly/proguard/u;->a(Ljava/lang/Throwable;)Z

    move-result v3

    if-nez v3, :cond_15

    .line 205
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_15
    :goto_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_16
    const-string p0, "crash report inited!"

    .line 209
    new-array p1, v2, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/tencent/bugly/proguard/u;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string p0, "[init] bugly init finished."

    .line 210
    new-array p1, v2, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/tencent/bugly/proguard/u;->b(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 211
    monitor-exit v0

    return-void

    .line 128
    :cond_17
    :try_start_8
    new-instance p0, Lcom/tencent/bugly/crashreport/BuglyHintException;

    const-string p1, "init arg \'crashReportAppID\' should not be null!"

    invoke-direct {p0, p1}, Lcom/tencent/bugly/crashreport/BuglyHintException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :catchall_0
    move-exception p0

    .line 117
    monitor-exit v0

    throw p0
.end method

.method private static a(Lcom/tencent/bugly/crashreport/common/info/a;)Z
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->m:Ljava/util/List;

    .line 79
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "bugly"

    if-eqz v0, :cond_0

    .line 80
    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
