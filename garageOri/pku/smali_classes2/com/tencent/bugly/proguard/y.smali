.class public final Lcom/tencent/bugly/proguard/y;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(I)Lcom/tencent/bugly/proguard/z;
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 16
    new-instance p0, Lcom/tencent/bugly/proguard/ab;

    invoke-direct {p0}, Lcom/tencent/bugly/proguard/ab;-><init>()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    .line 19
    new-instance p0, Lcom/tencent/bugly/proguard/aa;

    invoke-direct {p0}, Lcom/tencent/bugly/proguard/aa;-><init>()V

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method
