.class Landroid/support/v7/app/d$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/app/d;


# direct methods
.method constructor <init>(Landroid/support/v7/app/d;)V
    .locals 0

    .line 53
    iput-object p1, p0, Landroid/support/v7/app/d$1;->a:Landroid/support/v7/app/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 56
    iget-object v0, p0, Landroid/support/v7/app/d$1;->a:Landroid/support/v7/app/d;

    invoke-virtual {v0}, Landroid/support/v7/app/d;->c()V

    return-void
.end method
