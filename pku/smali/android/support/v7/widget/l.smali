.class Landroid/support/v7/widget/l;
.super Landroid/support/v7/widget/n;
.source "SourceFile"


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x11
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Landroid/support/v7/widget/n;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 29
    new-instance v0, Landroid/support/v7/widget/l$1;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/l$1;-><init>(Landroid/support/v7/widget/l;)V

    sput-object v0, Landroid/support/v7/widget/y;->a:Landroid/support/v7/widget/y$a;

    return-void
.end method
