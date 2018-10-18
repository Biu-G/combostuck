.class public Lcom/tencent/bugly/crashreport/BuglyLog;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    if-nez p1, :cond_1

    const-string p1, "null"

    .line 22
    :cond_1
    sget-boolean v0, Lcom/tencent/bugly/b;->a:Z

    if-eqz v0, :cond_2

    .line 23
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const-string v0, "D"

    .line 25
    invoke-static {v0, p0, p1}, Lcom/tencent/bugly/proguard/v;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    if-nez p1, :cond_1

    const-string p1, "null"

    .line 49
    :cond_1
    sget-boolean v0, Lcom/tencent/bugly/b;->a:Z

    if-eqz v0, :cond_2

    .line 50
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const-string v0, "E"

    .line 52
    invoke-static {v0, p0, p1}, Lcom/tencent/bugly/proguard/v;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    if-nez p1, :cond_1

    const-string p1, "null"

    .line 58
    :cond_1
    sget-boolean v0, Lcom/tencent/bugly/b;->a:Z

    if-eqz v0, :cond_2

    .line 59
    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    const-string p1, "E"

    .line 61
    invoke-static {p1, p0, p2}, Lcom/tencent/bugly/proguard/v;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    if-nez p1, :cond_1

    const-string p1, "null"

    .line 31
    :cond_1
    sget-boolean v0, Lcom/tencent/bugly/b;->a:Z

    if-eqz v0, :cond_2

    .line 32
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const-string v0, "I"

    .line 34
    invoke-static {v0, p0, p1}, Lcom/tencent/bugly/proguard/v;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setCache(I)V
    .locals 0

    .line 65
    invoke-static {p0}, Lcom/tencent/bugly/proguard/v;->a(I)V

    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    if-nez p1, :cond_1

    const-string p1, "null"

    .line 13
    :cond_1
    sget-boolean v0, Lcom/tencent/bugly/b;->a:Z

    if-eqz v0, :cond_2

    .line 14
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const-string v0, "V"

    .line 16
    invoke-static {v0, p0, p1}, Lcom/tencent/bugly/proguard/v;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    if-nez p1, :cond_1

    const-string p1, "null"

    .line 40
    :cond_1
    sget-boolean v0, Lcom/tencent/bugly/b;->a:Z

    if-eqz v0, :cond_2

    .line 41
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const-string v0, "W"

    .line 43
    invoke-static {v0, p0, p1}, Lcom/tencent/bugly/proguard/v;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
