.class Landroid/support/design/widget/TabLayout$c$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/design/widget/TabLayout$c;->b(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Landroid/support/design/widget/TabLayout$c;


# direct methods
.method constructor <init>(Landroid/support/design/widget/TabLayout$c;I)V
    .locals 0

    .line 2608
    iput-object p1, p0, Landroid/support/design/widget/TabLayout$c$2;->b:Landroid/support/design/widget/TabLayout$c;

    iput p2, p0, Landroid/support/design/widget/TabLayout$c$2;->a:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 2611
    iget-object p1, p0, Landroid/support/design/widget/TabLayout$c$2;->b:Landroid/support/design/widget/TabLayout$c;

    iget v0, p0, Landroid/support/design/widget/TabLayout$c$2;->a:I

    iput v0, p1, Landroid/support/design/widget/TabLayout$c;->a:I

    .line 2612
    iget-object p1, p0, Landroid/support/design/widget/TabLayout$c$2;->b:Landroid/support/design/widget/TabLayout$c;

    const/4 v0, 0x0

    iput v0, p1, Landroid/support/design/widget/TabLayout$c;->b:F

    return-void
.end method