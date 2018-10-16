.class Lorg/xutils/x$a;
.super Landroid/app/Application;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xutils/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 131
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 132
    invoke-virtual {p0, p1}, Lorg/xutils/x$a;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method
