.class final Landroid/support/v4/app/c$f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "f"
.end annotation


# instance fields
.field final a:Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;

.field final b:Z


# direct methods
.method constructor <init>(Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;Z)V
    .locals 0

    .line 676
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 677
    iput-object p1, p0, Landroid/support/v4/app/c$f;->a:Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;

    .line 678
    iput-boolean p2, p0, Landroid/support/v4/app/c$f;->b:Z

    return-void
.end method
