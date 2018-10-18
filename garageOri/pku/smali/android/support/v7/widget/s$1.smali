.class Landroid/support/v7/widget/s$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/widget/s;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/s;)V
    .locals 0

    .line 123
    iput-object p1, p0, Landroid/support/v7/widget/s$1;->a:Landroid/support/v7/widget/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 126
    iget-object v0, p0, Landroid/support/v7/widget/s$1;->a:Landroid/support/v7/widget/s;

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/s;->b(I)V

    return-void
.end method
