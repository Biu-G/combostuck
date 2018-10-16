.class Lcn/edu/pku/pkurunner/Map/MapFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/edu/pku/pkurunner/Map/MapFragment;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/edu/pku/pkurunner/Map/MapFragment;


# direct methods
.method constructor <init>(Lcn/edu/pku/pkurunner/Map/MapFragment;)V
    .locals 0

    .line 493
    iput-object p1, p0, Lcn/edu/pku/pkurunner/Map/MapFragment$2;->a:Lcn/edu/pku/pkurunner/Map/MapFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 500
    iget-object p1, p0, Lcn/edu/pku/pkurunner/Map/MapFragment$2;->a:Lcn/edu/pku/pkurunner/Map/MapFragment;

    invoke-static {p1}, Lcn/edu/pku/pkurunner/Map/MapFragment;->a(Lcn/edu/pku/pkurunner/Map/MapFragment;)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 501
    iget-object p1, p0, Lcn/edu/pku/pkurunner/Map/MapFragment$2;->a:Lcn/edu/pku/pkurunner/Map/MapFragment;

    invoke-static {p1}, Lcn/edu/pku/pkurunner/Map/MapFragment;->b(Lcn/edu/pku/pkurunner/Map/MapFragment;)Lcn/edu/pku/pkurunner/View/GPSInfoView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcn/edu/pku/pkurunner/View/GPSInfoView;->setAppear(Z)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
