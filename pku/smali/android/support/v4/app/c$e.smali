.class Landroid/support/v4/app/c$e;
.super Landroid/view/animation/AnimationSet;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "e"
.end annotation


# instance fields
.field private final a:Landroid/view/ViewGroup;

.field private final b:Landroid/view/View;

.field private c:Z

.field private d:Z

.field private e:Z


# direct methods
.method constructor <init>(Landroid/view/animation/Animation;Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/animation/Animation;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 4072
    invoke-direct {p0, v0}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    const/4 v0, 0x1

    .line 4068
    iput-boolean v0, p0, Landroid/support/v4/app/c$e;->e:Z

    .line 4073
    iput-object p2, p0, Landroid/support/v4/app/c$e;->a:Landroid/view/ViewGroup;

    .line 4074
    iput-object p3, p0, Landroid/support/v4/app/c$e;->b:Landroid/view/View;

    .line 4075
    invoke-virtual {p0, p1}, Landroid/support/v4/app/c$e;->addAnimation(Landroid/view/animation/Animation;)V

    .line 4078
    iget-object p1, p0, Landroid/support/v4/app/c$e;->a:Landroid/view/ViewGroup;

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public getTransformation(JLandroid/view/animation/Transformation;)Z
    .locals 2

    const/4 v0, 0x1

    .line 4083
    iput-boolean v0, p0, Landroid/support/v4/app/c$e;->e:Z

    .line 4084
    iget-boolean v1, p0, Landroid/support/v4/app/c$e;->c:Z

    if-eqz v1, :cond_0

    .line 4085
    iget-boolean p1, p0, Landroid/support/v4/app/c$e;->d:Z

    xor-int/2addr p1, v0

    return p1

    .line 4087
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/animation/AnimationSet;->getTransformation(JLandroid/view/animation/Transformation;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 4089
    iput-boolean v0, p0, Landroid/support/v4/app/c$e;->c:Z

    .line 4090
    iget-object p1, p0, Landroid/support/v4/app/c$e;->a:Landroid/view/ViewGroup;

    invoke-static {p1, p0}, Landroid/support/v4/app/j;->a(Landroid/view/View;Ljava/lang/Runnable;)Landroid/support/v4/app/j;

    :cond_1
    return v0
.end method

.method public getTransformation(JLandroid/view/animation/Transformation;F)Z
    .locals 2

    const/4 v0, 0x1

    .line 4098
    iput-boolean v0, p0, Landroid/support/v4/app/c$e;->e:Z

    .line 4099
    iget-boolean v1, p0, Landroid/support/v4/app/c$e;->c:Z

    if-eqz v1, :cond_0

    .line 4100
    iget-boolean p1, p0, Landroid/support/v4/app/c$e;->d:Z

    xor-int/2addr p1, v0

    return p1

    .line 4102
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/animation/AnimationSet;->getTransformation(JLandroid/view/animation/Transformation;F)Z

    move-result p1

    if-nez p1, :cond_1

    .line 4104
    iput-boolean v0, p0, Landroid/support/v4/app/c$e;->c:Z

    .line 4105
    iget-object p1, p0, Landroid/support/v4/app/c$e;->a:Landroid/view/ViewGroup;

    invoke-static {p1, p0}, Landroid/support/v4/app/j;->a(Landroid/view/View;Ljava/lang/Runnable;)Landroid/support/v4/app/j;

    :cond_1
    return v0
.end method

.method public run()V
    .locals 2

    .line 4112
    iget-boolean v0, p0, Landroid/support/v4/app/c$e;->c:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v4/app/c$e;->e:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 4113
    iput-boolean v0, p0, Landroid/support/v4/app/c$e;->e:Z

    .line 4115
    iget-object v0, p0, Landroid/support/v4/app/c$e;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 4117
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/c$e;->a:Landroid/view/ViewGroup;

    iget-object v1, p0, Landroid/support/v4/app/c$e;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    const/4 v0, 0x1

    .line 4118
    iput-boolean v0, p0, Landroid/support/v4/app/c$e;->d:Z

    :goto_0
    return-void
.end method
