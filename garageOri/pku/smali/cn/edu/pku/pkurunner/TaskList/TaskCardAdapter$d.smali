.class Lcn/edu/pku/pkurunner/TaskList/TaskCardAdapter$d;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/edu/pku/pkurunner/TaskList/TaskCardAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "d"
.end annotation


# instance fields
.field r:Landroid/widget/TextView;

.field s:Landroid/widget/TextView;

.field t:Landroid/view/View$OnClickListener;

.field u:Lcn/edu/pku/pkurunner/TaskList/BadgeView;

.field v:Landroid/support/constraint/ConstraintLayout;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 143
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f09015b

    .line 144
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/edu/pku/pkurunner/TaskList/TaskCardAdapter$d;->r:Landroid/widget/TextView;

    const v0, 0x7f09015a

    .line 145
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/edu/pku/pkurunner/TaskList/TaskCardAdapter$d;->s:Landroid/widget/TextView;

    const v0, 0x7f090159

    .line 146
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/edu/pku/pkurunner/TaskList/BadgeView;

    iput-object v0, p0, Lcn/edu/pku/pkurunner/TaskList/TaskCardAdapter$d;->u:Lcn/edu/pku/pkurunner/TaskList/BadgeView;

    const v0, 0x7f090158

    .line 147
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/ConstraintLayout;

    iput-object v0, p0, Lcn/edu/pku/pkurunner/TaskList/TaskCardAdapter$d;->v:Landroid/support/constraint/ConstraintLayout;

    .line 149
    new-instance v0, Lcn/edu/pku/pkurunner/TaskList/-$$Lambda$TaskCardAdapter$d$ZGVVPa6wkrObCpC4OyqcqGOCYEE;

    invoke-direct {v0, p0}, Lcn/edu/pku/pkurunner/TaskList/-$$Lambda$TaskCardAdapter$d$ZGVVPa6wkrObCpC4OyqcqGOCYEE;-><init>(Lcn/edu/pku/pkurunner/TaskList/TaskCardAdapter$d;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private synthetic a(Landroid/view/View;)V
    .locals 1

    .line 149
    iget-object v0, p0, Lcn/edu/pku/pkurunner/TaskList/TaskCardAdapter$d;->t:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$ZGVVPa6wkrObCpC4OyqcqGOCYEE(Lcn/edu/pku/pkurunner/TaskList/TaskCardAdapter$d;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/edu/pku/pkurunner/TaskList/TaskCardAdapter$d;->a(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method a(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lcn/edu/pku/pkurunner/TaskList/TaskCardAdapter$d;->t:Landroid/view/View$OnClickListener;

    return-void
.end method

.method a(Lcn/edu/pku/pkurunner/Model/Task;Lcn/edu/pku/pkurunner/TaskList/TaskListContract$Presenter;)V
    .locals 0

    return-void
.end method
