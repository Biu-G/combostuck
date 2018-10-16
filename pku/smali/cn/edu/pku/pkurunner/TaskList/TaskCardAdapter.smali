.class public Lcn/edu/pku/pkurunner/TaskList/TaskCardAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/edu/pku/pkurunner/TaskList/TaskCardAdapter$b;,
        Lcn/edu/pku/pkurunner/TaskList/TaskCardAdapter$c;,
        Lcn/edu/pku/pkurunner/TaskList/TaskCardAdapter$d;,
        Lcn/edu/pku/pkurunner/TaskList/TaskCardAdapter$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Lcn/edu/pku/pkurunner/TaskList/TaskCardAdapter$d;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcn/edu/pku/pkurunner/Model/Task;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/Boolean;

.field private c:Lcn/edu/pku/pkurunner/TaskList/TaskListContract$View;

.field private d:Lcn/edu/pku/pkurunner/TaskList/TaskListContract$Presenter;

.field private e:Lcn/edu/pku/pkurunner/TaskList/TaskCardAdapter$b;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x0

    .line 30
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcn/edu/pku/pkurunner/TaskList/TaskCardAdapter;->b:Ljava/lang/Boolean;

    return-void
.end method

.method private a(I)I
    .locals 1
    .annotation build Landroid/support/annotation/LayoutRes;
    .end annotation

    const v0, 0x133edc4

    if-eq p1, v0, :cond_0

    const p1, 0x7f0c0072

    return p1

    :cond_0
    const p1, 0x7f0c0073

    return p1
.end method

.method private static synthetic a(Lcn/edu/pku/pkurunner/Model/Task;Lcn/edu/pku/pkurunner/Model/Task;)I
    .locals 4

    .line 59
    invoke-virtual {p0}, Lcn/edu/pku/pkurunner/Model/Task;->getActivityId()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 60
    :goto_0
    invoke-virtual {p1}, Lcn/edu/pku/pkurunner/Model/Task;->getActivityId()I

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x1

    :cond_1
    if-ne v0, v1, :cond_2

    .line 62
    invoke-virtual {p0}, Lcn/edu/pku/pkurunner/Model/Task;->getId()I

    move-result p0

    invoke-virtual {p1}, Lcn/edu/pku/pkurunner/Model/Task;->getId()I

    move-result p1

    sub-int/2addr p0, p1

    return p0

    :cond_2
    if-eqz v0, :cond_3

    const/4 p0, -0x1

    return p0

    :cond_3
    return v2
.end method

.method private a(Landroid/view/View;I)Lcn/edu/pku/pkurunner/TaskList/TaskCardAdapter$d;
    .locals 1

    const v0, 0x133edc4

    if-eq p2, v0, :cond_0

    .line 91
    new-instance p2, Lcn/edu/pku/pkurunner/TaskList/TaskCardAdapter$d;

    invoke-direct {p2, p1}, Lcn/edu/pku/pkurunner/TaskList/TaskCardAdapter$d;-><init>(Landroid/view/View;)V

    return-object p2

    .line 89
    :cond_0
    new-instance p2, Lcn/edu/pku/pkurunner/TaskList/TaskCardAdapter$c;

    invoke-direct {p2, p1}, Lcn/edu/pku/pkurunner/TaskList/TaskCardAdapter$c;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method private a()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcn/edu/pku/pkurunner/Model/Task;",
            ">;"
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lcn/edu/pku/pkurunner/TaskList/TaskCardAdapter;->b:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 57
    invoke-static {}, Lcn/edu/pku/pkurunner/Data;->getTasks()Ljava/util/ArrayList;

    move-result-object v0

    sget-object v1, Lcn/edu/pku/pkurunner/TaskList/-$$Lambda$TaskCardAdapter$Wb4h2o8ADN_WN1BM704fE0CH62A;->INSTANCE:Lcn/edu/pku/pkurunner/TaskList/-$$Lambda$TaskCardAdapter$Wb4h2o8ADN_WN1BM704fE0CH62A;

    invoke-direct {p0, v0, v1}, Lcn/edu/pku/pkurunner/TaskList/TaskCardAdapter;->a(Ljava/util/ArrayList;Lcn/edu/pku/pkurunner/TaskList/TaskCardAdapter$a;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcn/edu/pku/pkurunner/TaskList/TaskCardAdapter;->a:Ljava/util/ArrayList;

    .line 58
    iget-object v0, p0, Lcn/edu/pku/pkurunner/TaskList/TaskCardAdapter;->a:Ljava/util/ArrayList;

    sget-object v1, Lcn/edu/pku/pkurunner/TaskList/-$$Lambda$TaskCardAdapter$AUoZuCnoXUPxeN7m7Sil3SJK6U0;->INSTANCE:Lcn/edu/pku/pkurunner/TaskList/-$$Lambda$TaskCardAdapter$AUoZuCnoXUPxeN7m7Sil3SJK6U0;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 v0, 0x1

    .line 70
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcn/edu/pku/pkurunner/TaskList/TaskCardAdapter;->b:Ljava/lang/Boolean;

    .line 72
    :cond_0
    iget-object v0, p0, Lcn/edu/pku/pkurunner/TaskList/TaskCardAdapter;->a:Ljava/util/ArrayList;

    return-object v0
.end method

.method private a(Ljava/util/ArrayList;Lcn/edu/pku/pkurunner/TaskList/TaskCardAdapter$a;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/ArrayList<",
            "TT;>;",
            "Lcn/edu/pku/pkurunner/TaskList/TaskCardAdapter$a<",
            "TT;>;)",
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 47
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 48
    invoke-interface {p2, v1}, Lcn/edu/pku/pkurunner/TaskList/TaskCardAdapter$a;->test(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 49
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private synthetic a(Lcn/edu/pku/pkurunner/Model/Task;Landroid/view/View;)V
    .locals 5

    .line 115
    iget-object p2, p0, Lcn/edu/pku/pkurunner/TaskList/TaskCardAdapter;->c:Lcn/edu/pku/pkurunner/TaskList/TaskListContract$View;

    const-string v0, "Detail"

    const-string v1, "Id: %d\n%s\n%s\n%s"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcn/edu/pku/pkurunner/Model/Task;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {p1}, Lcn/edu/pku/pkurunner/Model/Task;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-virtual {p1}, Lcn/edu/pku/pkurunner/Model/Task;->getDescription()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    invoke-virtual {p1}, Lcn/edu/pku/pkurunner/Model/Task;->getRequirement()Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x3

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Lcn/edu/pku/pkurunner/TaskList/TaskListContract$View;->showTaskDetailDialog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic a(Lcn/edu/pku/pkurunner/Model/Task;)Z
    .locals 0

    .line 57
    invoke-virtual {p0}, Lcn/edu/pku/pkurunner/Model/Task;->getStatus()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic lambda$AUoZuCnoXUPxeN7m7Sil3SJK6U0(Lcn/edu/pku/pkurunner/Model/Task;Lcn/edu/pku/pkurunner/Model/Task;)I
    .locals 0

    invoke-static {p0, p1}, Lcn/edu/pku/pkurunner/TaskList/TaskCardAdapter;->a(Lcn/edu/pku/pkurunner/Model/Task;Lcn/edu/pku/pkurunner/Model/Task;)I

    move-result p0

    return p0
.end method

.method public static synthetic lambda$Wb4h2o8ADN_WN1BM704fE0CH62A(Lcn/edu/pku/pkurunner/Model/Task;)Z
    .locals 0

    invoke-static {p0}, Lcn/edu/pku/pkurunner/TaskList/TaskCardAdapter;->a(Lcn/edu/pku/pkurunner/Model/Task;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$lI872FYBXvRIOlIiRIMI92D8npk(Lcn/edu/pku/pkurunner/TaskList/TaskCardAdapter;Lcn/edu/pku/pkurunner/Model/Task;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcn/edu/pku/pkurunner/TaskList/TaskCardAdapter;->a(Lcn/edu/pku/pkurunner/Model/Task;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 133
    invoke-direct {p0}, Lcn/edu/pku/pkurunner/TaskList/TaskCardAdapter;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 105
    invoke-direct {p0}, Lcn/edu/pku/pkurunner/TaskList/TaskCardAdapter;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/edu/pku/pkurunner/Model/Task;

    invoke-virtual {p1}, Lcn/edu/pku/pkurunner/Model/Task;->getActivityId()I

    move-result p1

    return p1
.end method

.method public notifyDataInvalid()V
    .locals 1

    const/4 v0, 0x0

    .line 76
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcn/edu/pku/pkurunner/TaskList/TaskCardAdapter;->b:Ljava/lang/Boolean;

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 27
    check-cast p1, Lcn/edu/pku/pkurunner/TaskList/TaskCardAdapter$d;

    invoke-virtual {p0, p1, p2}, Lcn/edu/pku/pkurunner/TaskList/TaskCardAdapter;->onBindViewHolder(Lcn/edu/pku/pkurunner/TaskList/TaskCardAdapter$d;I)V

    return-void
.end method

.method public onBindViewHolder(Lcn/edu/pku/pkurunner/TaskList/TaskCardAdapter$d;I)V
    .locals 3

    .line 110
    invoke-direct {p0}, Lcn/edu/pku/pkurunner/TaskList/TaskCardAdapter;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcn/edu/pku/pkurunner/Model/Task;

    .line 112
    iget-object v0, p1, Lcn/edu/pku/pkurunner/TaskList/TaskCardAdapter$d;->r:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcn/edu/pku/pkurunner/Model/Task;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcn/edu/pku/pkurunner/Model/Task;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    iget-object v0, p1, Lcn/edu/pku/pkurunner/TaskList/TaskCardAdapter$d;->s:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcn/edu/pku/pkurunner/Model/Task;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    new-instance v0, Lcn/edu/pku/pkurunner/TaskList/-$$Lambda$TaskCardAdapter$lI872FYBXvRIOlIiRIMI92D8npk;

    invoke-direct {v0, p0, p2}, Lcn/edu/pku/pkurunner/TaskList/-$$Lambda$TaskCardAdapter$lI872FYBXvRIOlIiRIMI92D8npk;-><init>(Lcn/edu/pku/pkurunner/TaskList/TaskCardAdapter;Lcn/edu/pku/pkurunner/Model/Task;)V

    invoke-virtual {p1, v0}, Lcn/edu/pku/pkurunner/TaskList/TaskCardAdapter$d;->a(Landroid/view/View$OnClickListener;)V

    .line 117
    iget-object v0, p1, Lcn/edu/pku/pkurunner/TaskList/TaskCardAdapter$d;->u:Lcn/edu/pku/pkurunner/TaskList/BadgeView;

    const-string v1, "daily"

    invoke-virtual {v0, v1}, Lcn/edu/pku/pkurunner/TaskList/BadgeView;->setBadgeSeries(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p2}, Lcn/edu/pku/pkurunner/Model/Task;->getStatus()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 123
    :pswitch_0
    iget-object v0, p1, Lcn/edu/pku/pkurunner/TaskList/TaskCardAdapter$d;->u:Lcn/edu/pku/pkurunner/TaskList/BadgeView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/edu/pku/pkurunner/TaskList/BadgeView;->setStatus(Z)V

    goto :goto_0

    .line 120
    :pswitch_1
    iget-object v0, p1, Lcn/edu/pku/pkurunner/TaskList/TaskCardAdapter$d;->u:Lcn/edu/pku/pkurunner/TaskList/BadgeView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/edu/pku/pkurunner/TaskList/BadgeView;->setStatus(Z)V

    .line 128
    :goto_0
    iget-object v0, p0, Lcn/edu/pku/pkurunner/TaskList/TaskCardAdapter;->d:Lcn/edu/pku/pkurunner/TaskList/TaskListContract$Presenter;

    invoke-virtual {p1, p2, v0}, Lcn/edu/pku/pkurunner/TaskList/TaskCardAdapter$d;->a(Lcn/edu/pku/pkurunner/Model/Task;Lcn/edu/pku/pkurunner/TaskList/TaskListContract$Presenter;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 27
    invoke-virtual {p0, p1, p2}, Lcn/edu/pku/pkurunner/TaskList/TaskCardAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcn/edu/pku/pkurunner/TaskList/TaskCardAdapter$d;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcn/edu/pku/pkurunner/TaskList/TaskCardAdapter$d;
    .locals 3

    .line 98
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 99
    invoke-direct {p0, p2}, Lcn/edu/pku/pkurunner/TaskList/TaskCardAdapter;->a(I)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 100
    invoke-direct {p0, p1, p2}, Lcn/edu/pku/pkurunner/TaskList/TaskCardAdapter;->a(Landroid/view/View;I)Lcn/edu/pku/pkurunner/TaskList/TaskCardAdapter$d;

    move-result-object p1

    return-object p1
.end method

.method public setPresenter(Lcn/edu/pku/pkurunner/TaskList/TaskListContract$View;Lcn/edu/pku/pkurunner/TaskList/TaskListContract$Presenter;Lcn/edu/pku/pkurunner/TaskList/TaskCardAdapter$b;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcn/edu/pku/pkurunner/TaskList/TaskCardAdapter;->c:Lcn/edu/pku/pkurunner/TaskList/TaskListContract$View;

    .line 37
    iput-object p2, p0, Lcn/edu/pku/pkurunner/TaskList/TaskCardAdapter;->d:Lcn/edu/pku/pkurunner/TaskList/TaskListContract$Presenter;

    .line 38
    iput-object p3, p0, Lcn/edu/pku/pkurunner/TaskList/TaskCardAdapter;->e:Lcn/edu/pku/pkurunner/TaskList/TaskCardAdapter$b;

    return-void
.end method
