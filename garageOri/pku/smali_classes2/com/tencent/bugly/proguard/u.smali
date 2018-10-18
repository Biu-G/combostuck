.class public final Lcom/tencent/bugly/proguard/u;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Ljava/lang/String; = "CrashReportInfo"

.field public static b:Ljava/lang/String; = "CrashReport"

.field public static c:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private static varargs a(ILjava/lang/String;[Ljava/lang/Object;)Z
    .locals 2

    .line 29
    sget-boolean v0, Lcom/tencent/bugly/proguard/u;->c:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-nez p1, :cond_1

    const-string p1, "null"

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_3

    .line 32
    array-length v0, p2

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0, p1, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :cond_3
    :goto_0
    const/4 p2, 0x5

    const/4 v0, 0x1

    if-eq p0, p2, :cond_4

    packed-switch p0, :pswitch_data_0

    return v1

    .line 50
    :pswitch_0
    sget-object p0, Lcom/tencent/bugly/proguard/u;->b:Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 46
    :pswitch_1
    sget-object p0, Lcom/tencent/bugly/proguard/u;->b:Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 43
    :pswitch_2
    sget-object p0, Lcom/tencent/bugly/proguard/u;->b:Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 36
    :pswitch_3
    sget-object p0, Lcom/tencent/bugly/proguard/u;->b:Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 39
    :cond_4
    sget-object p0, Lcom/tencent/bugly/proguard/u;->a:Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static varargs a(Ljava/lang/String;[Ljava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x0

    .line 66
    invoke-static {v0, p0, p1}, Lcom/tencent/bugly/proguard/u;->a(ILjava/lang/String;[Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static a(Ljava/lang/Throwable;)Z
    .locals 2

    .line 82
    sget-boolean v0, Lcom/tencent/bugly/proguard/u;->c:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {p0}, Lcom/tencent/bugly/proguard/a;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x2

    invoke-static {v1, p0, v0}, Lcom/tencent/bugly/proguard/u;->a(ILjava/lang/String;[Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static varargs b(Ljava/lang/String;[Ljava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x5

    .line 70
    invoke-static {v0, p0, p1}, Lcom/tencent/bugly/proguard/u;->a(ILjava/lang/String;[Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static b(Ljava/lang/Throwable;)Z
    .locals 2

    .line 90
    sget-boolean v0, Lcom/tencent/bugly/proguard/u;->c:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {p0}, Lcom/tencent/bugly/proguard/a;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x3

    invoke-static {v1, p0, v0}, Lcom/tencent/bugly/proguard/u;->a(ILjava/lang/String;[Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static varargs c(Ljava/lang/String;[Ljava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x1

    .line 74
    invoke-static {v0, p0, p1}, Lcom/tencent/bugly/proguard/u;->a(ILjava/lang/String;[Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static varargs d(Ljava/lang/String;[Ljava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x2

    .line 78
    invoke-static {v0, p0, p1}, Lcom/tencent/bugly/proguard/u;->a(ILjava/lang/String;[Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static varargs e(Ljava/lang/String;[Ljava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x3

    .line 86
    invoke-static {v0, p0, p1}, Lcom/tencent/bugly/proguard/u;->a(ILjava/lang/String;[Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
