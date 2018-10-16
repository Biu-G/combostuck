.class Lcn/edu/pku/pkurunner/RecordList/RecordCardAdapter$b;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/edu/pku/pkurunner/RecordList/RecordCardAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field protected p:Landroid/widget/TextView;

.field protected q:Landroid/widget/TextView;

.field protected r:Landroid/widget/TextView;

.field protected s:Landroid/widget/TextView;

.field protected t:Lcn/edu/pku/pkurunner/RecordList/RecordCardAdapter$a;

.field protected u:Landroid/widget/ImageView;

.field protected v:Landroid/widget/ImageView;

.field protected w:Landroid/support/v7/widget/CardView;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 187
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f090154

    .line 188
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/edu/pku/pkurunner/RecordList/RecordCardAdapter$b;->p:Landroid/widget/TextView;

    const v0, 0x7f090156

    .line 189
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/edu/pku/pkurunner/RecordList/RecordCardAdapter$b;->q:Landroid/widget/TextView;

    const v0, 0x7f090153

    .line 190
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/edu/pku/pkurunner/RecordList/RecordCardAdapter$b;->r:Landroid/widget/TextView;

    const v0, 0x7f090152

    .line 191
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/edu/pku/pkurunner/RecordList/RecordCardAdapter$b;->u:Landroid/widget/ImageView;

    const v0, 0x7f09015c

    .line 192
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/CardView;

    iput-object v0, p0, Lcn/edu/pku/pkurunner/RecordList/RecordCardAdapter$b;->w:Landroid/support/v7/widget/CardView;

    const v0, 0x7f090155

    .line 193
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/edu/pku/pkurunner/RecordList/RecordCardAdapter$b;->s:Landroid/widget/TextView;

    const v0, 0x7f090151

    .line 194
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/edu/pku/pkurunner/RecordList/RecordCardAdapter$b;->v:Landroid/widget/ImageView;

    .line 196
    new-instance v0, Lcn/edu/pku/pkurunner/RecordList/-$$Lambda$RecordCardAdapter$b$Ep9SoLeqd-5mRuOD47g4F_FODIc;

    invoke-direct {v0, p0}, Lcn/edu/pku/pkurunner/RecordList/-$$Lambda$RecordCardAdapter$b$Ep9SoLeqd-5mRuOD47g4F_FODIc;-><init>(Lcn/edu/pku/pkurunner/RecordList/RecordCardAdapter$b;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private synthetic a(Landroid/view/View;)V
    .locals 1

    .line 197
    iget-object v0, p0, Lcn/edu/pku/pkurunner/RecordList/RecordCardAdapter$b;->t:Lcn/edu/pku/pkurunner/RecordList/RecordCardAdapter$a;

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcn/edu/pku/pkurunner/RecordList/RecordCardAdapter$b;->t:Lcn/edu/pku/pkurunner/RecordList/RecordCardAdapter$a;

    invoke-interface {v0, p1}, Lcn/edu/pku/pkurunner/RecordList/RecordCardAdapter$a;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$Ep9SoLeqd-5mRuOD47g4F_FODIc(Lcn/edu/pku/pkurunner/RecordList/RecordCardAdapter$b;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/edu/pku/pkurunner/RecordList/RecordCardAdapter$b;->a(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method a(Lcn/edu/pku/pkurunner/RecordList/RecordCardAdapter$a;)V
    .locals 0

    .line 204
    iput-object p1, p0, Lcn/edu/pku/pkurunner/RecordList/RecordCardAdapter$b;->t:Lcn/edu/pku/pkurunner/RecordList/RecordCardAdapter$a;

    return-void
.end method

.method v()V
    .locals 13

    .line 208
    iget-object v0, p0, Lcn/edu/pku/pkurunner/RecordList/RecordCardAdapter$b;->w:Landroid/support/v7/widget/CardView;

    invoke-virtual {v0}, Landroid/support/v7/widget/CardView;->getCardElevation()F

    move-result v0

    .line 209
    iget-object v1, p0, Lcn/edu/pku/pkurunner/RecordList/RecordCardAdapter$b;->w:Landroid/support/v7/widget/CardView;

    const-string v2, "cardElevation"

    const/4 v3, 0x2

    new-array v4, v3, [F

    const/4 v5, 0x0

    aput v0, v4, v5

    const/high16 v6, 0x40800000    # 4.0f

    mul-float v6, v6, v0

    const/4 v7, 0x1

    aput v6, v4, v7

    invoke-static {v1, v2, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 211
    new-instance v2, Landroid/support/v4/view/animation/LinearOutSlowInInterpolator;

    invoke-direct {v2}, Landroid/support/v4/view/animation/LinearOutSlowInInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v8, 0xfa

    .line 212
    invoke-virtual {v1, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const-wide/16 v10, 0x3e8

    .line 213
    invoke-virtual {v1, v10, v11}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 215
    iget-object v2, p0, Lcn/edu/pku/pkurunner/RecordList/RecordCardAdapter$b;->w:Landroid/support/v7/widget/CardView;

    const-string v4, "cardElevation"

    new-array v12, v3, [F

    aput v6, v12, v5

    aput v0, v12, v7

    invoke-static {v2, v4, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 217
    new-instance v2, Landroid/support/v4/view/animation/FastOutSlowInInterpolator;

    invoke-direct {v2}, Landroid/support/v4/view/animation/FastOutSlowInInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 218
    invoke-virtual {v0, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 219
    invoke-virtual {v0, v10, v11}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 221
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 222
    new-array v3, v3, [Landroid/animation/Animator;

    aput-object v1, v3, v5

    aput-object v0, v3, v7

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 223
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public w()Landroid/view/View;
    .locals 1

    .line 227
    iget-object v0, p0, Lcn/edu/pku/pkurunner/RecordList/RecordCardAdapter$b;->p:Landroid/widget/TextView;

    return-object v0
.end method

.method public x()Landroid/view/View;
    .locals 1

    .line 231
    iget-object v0, p0, Lcn/edu/pku/pkurunner/RecordList/RecordCardAdapter$b;->r:Landroid/widget/TextView;

    return-object v0
.end method

.method public y()Landroid/view/View;
    .locals 1

    .line 235
    iget-object v0, p0, Lcn/edu/pku/pkurunner/RecordList/RecordCardAdapter$b;->u:Landroid/widget/ImageView;

    return-object v0
.end method
