.class public Lcn/edu/pku/pkurunner/RecordList/RecordCardAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "SourceFile"

# interfaces
.implements Lcn/edu/pku/pkurunner/RecordList/ItemTouchHelperCallback$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/edu/pku/pkurunner/RecordList/RecordCardAdapter$c;,
        Lcn/edu/pku/pkurunner/RecordList/RecordCardAdapter$d;,
        Lcn/edu/pku/pkurunner/RecordList/RecordCardAdapter$b;,
        Lcn/edu/pku/pkurunner/RecordList/RecordCardAdapter$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Lcn/edu/pku/pkurunner/RecordList/RecordCardAdapter$b;",
        ">;",
        "Lcn/edu/pku/pkurunner/RecordList/ItemTouchHelperCallback$b;"
    }
.end annotation


# static fields
.field private static final a:Ljava/text/SimpleDateFormat;

.field private static final b:Ljava/text/SimpleDateFormat;


# instance fields
.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcn/edu/pku/pkurunner/Model/Record;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/lang/Boolean;

.field private e:Ljava/lang/Boolean;

.field private f:Lcn/edu/pku/pkurunner/RecordList/RecordListContract$Presenter;

.field private g:Lcn/edu/pku/pkurunner/RecordList/RecordCardAdapter$c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 32
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/edu/pku/pkurunner/RecordList/RecordCardAdapter;->a:Ljava/text/SimpleDateFormat;

    .line 33
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "HH:mm"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/edu/pku/pkurunner/RecordList/RecordCardAdapter;->b:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 30
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x0

    .line 36
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcn/edu/pku/pkurunner/RecordList/RecordCardAdapter;->d:Ljava/lang/Boolean;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcn/edu/pku/pkurunner/RecordList/RecordCardAdapter;->e:Ljava/lang/Boolean;

    return-void
.end method

.method private static synthetic a(Lcn/edu/pku/pkurunner/Model/Record;Lcn/edu/pku/pkurunner/Model/Record;)I
    .locals 0

    .line 53
    invoke-virtual {p0}, Lcn/edu/pku/pkurunner/Model/Record;->getDate()Ljava/util/Date;

    move-result-object p0

    invoke-virtual {p1}, Lcn/edu/pku/pkurunner/Model/Record;->getDate()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result p0

    neg-int p0, p0

    return p0
.end method

.method private a()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcn/edu/pku/pkurunner/Model/Record;",
            ">;"
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lcn/edu/pku/pkurunner/RecordList/RecordCardAdapter;->d:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 50
    invoke-static {}, Lcn/edu/pku/pkurunner/Data;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    invoke-static {}, Lcn/edu/pku/pkurunner/Data;->getRecords()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcn/edu/pku/pkurunner/RecordList/RecordCardAdapter;->c:Ljava/util/ArrayList;

    .line 52
    iget-object v0, p0, Lcn/edu/pku/pkurunner/RecordList/RecordCardAdapter;->c:Ljava/util/ArrayList;

    sget-object v1, Lcn/edu/pku/pkurunner/RecordList/-$$Lambda$RecordCardAdapter$gJmJU-zL1hm4RG_tAJlU73OITJU;->INSTANCE:Lcn/edu/pku/pkurunner/RecordList/-$$Lambda$RecordCardAdapter$gJmJU-zL1hm4RG_tAJlU73OITJU;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0

    .line 56
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/edu/pku/pkurunner/RecordList/RecordCardAdapter;->c:Ljava/util/ArrayList;

    :goto_0
    const/4 v0, 0x1

    .line 58
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcn/edu/pku/pkurunner/RecordList/RecordCardAdapter;->d:Ljava/lang/Boolean;

    .line 60
    :cond_1
    iget-object v0, p0, Lcn/edu/pku/pkurunner/RecordList/RecordCardAdapter;->c:Ljava/util/ArrayList;

    return-object v0
.end method

.method private synthetic a(Lcn/edu/pku/pkurunner/RecordList/RecordCardAdapter$b;Landroid/view/View;)V
    .locals 1

    .line 123
    invoke-virtual {p1}, Lcn/edu/pku/pkurunner/RecordList/RecordCardAdapter$b;->getAdapterPosition()I

    move-result p1

    .line 124
    iget-object p2, p0, Lcn/edu/pku/pkurunner/RecordList/RecordCardAdapter;->f:Lcn/edu/pku/pkurunner/RecordList/RecordListContract$Presenter;

    invoke-direct {p0}, Lcn/edu/pku/pkurunner/RecordList/RecordCardAdapter;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/edu/pku/pkurunner/Model/Record;

    invoke-virtual {v0}, Lcn/edu/pku/pkurunner/Model/Record;->getId()I

    move-result v0

    invoke-interface {p2, v0, p1}, Lcn/edu/pku/pkurunner/RecordList/RecordListContract$Presenter;->uploadVerifyRecord(II)V

    return-void
.end method

.method private static synthetic a(Lcn/edu/pku/pkurunner/RecordList/RecordCardAdapter$b;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 141
    iget-object p0, p0, Lcn/edu/pku/pkurunner/RecordList/RecordCardAdapter$b;->s:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private synthetic b(Lcn/edu/pku/pkurunner/RecordList/RecordCardAdapter$b;Landroid/view/View;)V
    .locals 1

    .line 115
    invoke-virtual {p1}, Lcn/edu/pku/pkurunner/RecordList/RecordCardAdapter$b;->getAdapterPosition()I

    move-result p1

    .line 116
    iget-object p2, p0, Lcn/edu/pku/pkurunner/RecordList/RecordCardAdapter;->f:Lcn/edu/pku/pkurunner/RecordList/RecordListContract$Presenter;

    invoke-direct {p0}, Lcn/edu/pku/pkurunner/RecordList/RecordCardAdapter;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/edu/pku/pkurunner/Model/Record;

    invoke-virtual {p1}, Lcn/edu/pku/pkurunner/Model/Record;->getId()I

    move-result p1

    invoke-interface {p2, p1}, Lcn/edu/pku/pkurunner/RecordList/RecordListContract$Presenter;->showRecordDetail(I)V

    return-void
.end method

.method private b()Z
    .locals 2

    .line 72
    iget-object v0, p0, Lcn/edu/pku/pkurunner/RecordList/RecordCardAdapter;->e:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 73
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcn/edu/pku/pkurunner/RecordList/RecordCardAdapter;->e:Ljava/lang/Boolean;

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method public static synthetic lambda$-si97_09y1gJbVJqgXq0v24WEdI(Lcn/edu/pku/pkurunner/RecordList/RecordCardAdapter$b;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/edu/pku/pkurunner/RecordList/RecordCardAdapter;->a(Lcn/edu/pku/pkurunner/RecordList/RecordCardAdapter$b;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$RbMyWa-Zj0t_59cr6A7hFxCOw8s(Lcn/edu/pku/pkurunner/RecordList/RecordCardAdapter;Lcn/edu/pku/pkurunner/RecordList/RecordCardAdapter$b;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcn/edu/pku/pkurunner/RecordList/RecordCardAdapter;->a(Lcn/edu/pku/pkurunner/RecordList/RecordCardAdapter$b;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$gJmJU-zL1hm4RG_tAJlU73OITJU(Lcn/edu/pku/pkurunner/Model/Record;Lcn/edu/pku/pkurunner/Model/Record;)I
    .locals 0

    invoke-static {p0, p1}, Lcn/edu/pku/pkurunner/RecordList/RecordCardAdapter;->a(Lcn/edu/pku/pkurunner/Model/Record;Lcn/edu/pku/pkurunner/Model/Record;)I

    move-result p0

    return p0
.end method

.method public static synthetic lambda$gMS3ZY47j_drYTSH0sLeUm1krLk(Lcn/edu/pku/pkurunner/RecordList/RecordCardAdapter;Lcn/edu/pku/pkurunner/RecordList/RecordCardAdapter$b;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcn/edu/pku/pkurunner/RecordList/RecordCardAdapter;->b(Lcn/edu/pku/pkurunner/RecordList/RecordCardAdapter$b;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public canBeSwiped(I)Z
    .locals 1

    .line 173
    invoke-direct {p0}, Lcn/edu/pku/pkurunner/RecordList/RecordCardAdapter;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/edu/pku/pkurunner/Model/Record;

    invoke-virtual {p1}, Lcn/edu/pku/pkurunner/Model/Record;->isUploaded()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public getItemCount()I
    .locals 1

    .line 157
    invoke-direct {p0}, Lcn/edu/pku/pkurunner/RecordList/RecordCardAdapter;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 162
    invoke-direct {p0}, Lcn/edu/pku/pkurunner/RecordList/RecordCardAdapter;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/edu/pku/pkurunner/Model/Record;

    .line 163
    invoke-virtual {p1}, Lcn/edu/pku/pkurunner/Model/Record;->isUploaded()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public notifyDataInvalid()V
    .locals 1

    const/4 v0, 0x0

    .line 64
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcn/edu/pku/pkurunner/RecordList/RecordCardAdapter;->d:Ljava/lang/Boolean;

    return-void
.end method

.method public notifyFirstElementElevation()V
    .locals 1

    const/4 v0, 0x1

    .line 68
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcn/edu/pku/pkurunner/RecordList/RecordCardAdapter;->e:Ljava/lang/Boolean;

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 30
    check-cast p1, Lcn/edu/pku/pkurunner/RecordList/RecordCardAdapter$b;

    invoke-virtual {p0, p1, p2}, Lcn/edu/pku/pkurunner/RecordList/RecordCardAdapter;->onBindViewHolder(Lcn/edu/pku/pkurunner/RecordList/RecordCardAdapter$b;I)V

    return-void
.end method

.method public onBindViewHolder(Lcn/edu/pku/pkurunner/RecordList/RecordCardAdapter$b;I)V
    .locals 11

    .line 100
    invoke-direct {p0}, Lcn/edu/pku/pkurunner/RecordList/RecordCardAdapter;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/edu/pku/pkurunner/Model/Record;

    .line 102
    iget-object v1, p1, Lcn/edu/pku/pkurunner/RecordList/RecordCardAdapter$b;->p:Landroid/widget/TextView;

    iget-object v2, p0, Lcn/edu/pku/pkurunner/RecordList/RecordCardAdapter;->g:Lcn/edu/pku/pkurunner/RecordList/RecordCardAdapter$c;

    invoke-interface {v2}, Lcn/edu/pku/pkurunner/RecordList/RecordCardAdapter$c;->getResource()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    .line 103
    invoke-virtual {v0}, Lcn/edu/pku/pkurunner/Model/Record;->getDistance()I

    move-result v5

    int-to-double v5, v5

    const-wide v7, 0x408f400000000000L    # 1000.0

    div-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const v5, 0x7f0f014c

    .line 102
    invoke-virtual {v2, v5, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    invoke-virtual {v0}, Lcn/edu/pku/pkurunner/Model/Record;->getDate()Ljava/util/Date;

    move-result-object v1

    .line 106
    sget-object v2, Lcn/edu/pku/pkurunner/RecordList/RecordCardAdapter;->a:Ljava/text/SimpleDateFormat;

    invoke-virtual {v2, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 107
    sget-object v4, Lcn/edu/pku/pkurunner/RecordList/RecordCardAdapter;->b:Ljava/text/SimpleDateFormat;

    new-instance v5, Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    invoke-virtual {v0}, Lcn/edu/pku/pkurunner/Model/Record;->getDuration()I

    move-result v9

    mul-int/lit16 v9, v9, 0x3e8

    int-to-long v9, v9

    sub-long/2addr v7, v9

    invoke-direct {v5, v7, v8}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    .line 108
    sget-object v5, Lcn/edu/pku/pkurunner/RecordList/RecordCardAdapter;->b:Ljava/text/SimpleDateFormat;

    invoke-virtual {v5, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 110
    iget-object v5, p1, Lcn/edu/pku/pkurunner/RecordList/RecordCardAdapter$b;->r:Landroid/widget/TextView;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    iget-object v2, p1, Lcn/edu/pku/pkurunner/RecordList/RecordCardAdapter$b;->q:Landroid/widget/TextView;

    iget-object v5, p0, Lcn/edu/pku/pkurunner/RecordList/RecordCardAdapter;->g:Lcn/edu/pku/pkurunner/RecordList/RecordCardAdapter$c;

    invoke-interface {v5}, Lcn/edu/pku/pkurunner/RecordList/RecordCardAdapter$c;->getResource()Landroid/content/res/Resources;

    move-result-object v5

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v4, v7, v6

    aput-object v1, v7, v3

    const v1, 0x7f0f014d

    invoke-virtual {v5, v1, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    new-instance v1, Lcn/edu/pku/pkurunner/RecordList/-$$Lambda$RecordCardAdapter$gMS3ZY47j_drYTSH0sLeUm1krLk;

    invoke-direct {v1, p0, p1}, Lcn/edu/pku/pkurunner/RecordList/-$$Lambda$RecordCardAdapter$gMS3ZY47j_drYTSH0sLeUm1krLk;-><init>(Lcn/edu/pku/pkurunner/RecordList/RecordCardAdapter;Lcn/edu/pku/pkurunner/RecordList/RecordCardAdapter$b;)V

    invoke-virtual {p1, v1}, Lcn/edu/pku/pkurunner/RecordList/RecordCardAdapter$b;->a(Lcn/edu/pku/pkurunner/RecordList/RecordCardAdapter$a;)V

    .line 119
    instance-of v1, p1, Lcn/edu/pku/pkurunner/RecordList/RecordCardAdapter$d;

    if-eqz v1, :cond_0

    .line 120
    move-object v0, p1

    check-cast v0, Lcn/edu/pku/pkurunner/RecordList/RecordCardAdapter$d;

    .line 122
    iget-object v0, v0, Lcn/edu/pku/pkurunner/RecordList/RecordCardAdapter$d;->u:Landroid/widget/ImageView;

    new-instance v1, Lcn/edu/pku/pkurunner/RecordList/-$$Lambda$RecordCardAdapter$RbMyWa-Zj0t_59cr6A7hFxCOw8s;

    invoke-direct {v1, p0, p1}, Lcn/edu/pku/pkurunner/RecordList/-$$Lambda$RecordCardAdapter$RbMyWa-Zj0t_59cr6A7hFxCOw8s;-><init>(Lcn/edu/pku/pkurunner/RecordList/RecordCardAdapter;Lcn/edu/pku/pkurunner/RecordList/RecordCardAdapter$b;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_2

    .line 128
    :cond_0
    invoke-virtual {v0}, Lcn/edu/pku/pkurunner/Model/Record;->isVerified()Z

    move-result v1

    if-nez v1, :cond_1

    .line 129
    iget-object v1, p1, Lcn/edu/pku/pkurunner/RecordList/RecordCardAdapter$b;->p:Landroid/widget/TextView;

    iget-object v2, p1, Lcn/edu/pku/pkurunner/RecordList/RecordCardAdapter$b;->p:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v2

    or-int/lit8 v2, v2, 0x10

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 130
    iget-object v1, p1, Lcn/edu/pku/pkurunner/RecordList/RecordCardAdapter$b;->u:Landroid/widget/ImageView;

    const v2, 0x7f080098

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 131
    iget-object v1, p1, Lcn/edu/pku/pkurunner/RecordList/RecordCardAdapter$b;->u:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p0, Lcn/edu/pku/pkurunner/RecordList/RecordCardAdapter;->g:Lcn/edu/pku/pkurunner/RecordList/RecordCardAdapter$c;

    invoke-interface {v2}, Lcn/edu/pku/pkurunner/RecordList/RecordCardAdapter$c;->getResource()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060136

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    goto :goto_0

    .line 133
    :cond_1
    iget-object v1, p1, Lcn/edu/pku/pkurunner/RecordList/RecordCardAdapter$b;->p:Landroid/widget/TextView;

    iget-object v2, p1, Lcn/edu/pku/pkurunner/RecordList/RecordCardAdapter$b;->p:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v2

    and-int/lit8 v2, v2, -0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 134
    iget-object v1, p1, Lcn/edu/pku/pkurunner/RecordList/RecordCardAdapter$b;->u:Landroid/widget/ImageView;

    const v2, 0x7f080096

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 135
    iget-object v1, p1, Lcn/edu/pku/pkurunner/RecordList/RecordCardAdapter$b;->u:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p0, Lcn/edu/pku/pkurunner/RecordList/RecordCardAdapter;->g:Lcn/edu/pku/pkurunner/RecordList/RecordCardAdapter$c;

    invoke-interface {v2}, Lcn/edu/pku/pkurunner/RecordList/RecordCardAdapter$c;->getResource()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0600b6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 138
    :goto_0
    invoke-static {}, Lcn/edu/pku/pkurunner/Data;->getUser()Lcn/edu/pku/pkurunner/Model/User;

    move-result-object v1

    invoke-virtual {v1}, Lcn/edu/pku/pkurunner/Model/User;->isOffline()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 139
    invoke-static {v0}, Lcn/edu/pku/pkurunner/Data;->getRecordPlaceHintForOfflineUser(Lcn/edu/pku/pkurunner/Model/Record;)Lio/reactivex/Observable;

    move-result-object v0

    .line 140
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcn/edu/pku/pkurunner/RecordList/-$$Lambda$RecordCardAdapter$-si97_09y1gJbVJqgXq0v24WEdI;

    invoke-direct {v1, p1}, Lcn/edu/pku/pkurunner/RecordList/-$$Lambda$RecordCardAdapter$-si97_09y1gJbVJqgXq0v24WEdI;-><init>(Lcn/edu/pku/pkurunner/RecordList/RecordCardAdapter$b;)V

    sget-object v2, Lcn/edu/pku/pkurunner/RecordList/-$$Lambda$Jxp4LOjD5wh7hYvpBAWXzgH0LNY;->INSTANCE:Lcn/edu/pku/pkurunner/RecordList/-$$Lambda$Jxp4LOjD5wh7hYvpBAWXzgH0LNY;

    .line 141
    invoke-virtual {v0, v1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    goto :goto_2

    .line 143
    :cond_2
    invoke-virtual {v0}, Lcn/edu/pku/pkurunner/Model/Record;->getPlace()Lcn/edu/pku/pkurunner/Model/Record$RecordPlace;

    move-result-object v0

    .line 144
    iget-object v1, p1, Lcn/edu/pku/pkurunner/RecordList/RecordCardAdapter$b;->s:Landroid/widget/TextView;

    invoke-static {v0}, Lcn/edu/pku/pkurunner/Model/Record;->getPlaceString(Lcn/edu/pku/pkurunner/Model/Record$RecordPlace;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    iget-object v1, p1, Lcn/edu/pku/pkurunner/RecordList/RecordCardAdapter$b;->v:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p0, Lcn/edu/pku/pkurunner/RecordList/RecordCardAdapter;->g:Lcn/edu/pku/pkurunner/RecordList/RecordCardAdapter$c;

    invoke-interface {v2}, Lcn/edu/pku/pkurunner/RecordList/RecordCardAdapter$c;->getResource()Landroid/content/res/Resources;

    move-result-object v2

    sget-object v3, Lcn/edu/pku/pkurunner/Model/Record$RecordPlace;->UNKNOWN:Lcn/edu/pku/pkurunner/Model/Record$RecordPlace;

    if-ne v0, v3, :cond_3

    const v0, 0x7f060046

    goto :goto_1

    :cond_3
    const v0, 0x7f060180

    :goto_1
    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    :goto_2
    if-nez p2, :cond_4

    .line 150
    invoke-direct {p0}, Lcn/edu/pku/pkurunner/RecordList/RecordCardAdapter;->b()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 151
    invoke-virtual {p1}, Lcn/edu/pku/pkurunner/RecordList/RecordCardAdapter$b;->v()V

    :cond_4
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 30
    invoke-virtual {p0, p1, p2}, Lcn/edu/pku/pkurunner/RecordList/RecordCardAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcn/edu/pku/pkurunner/RecordList/RecordCardAdapter$b;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcn/edu/pku/pkurunner/RecordList/RecordCardAdapter$b;
    .locals 2

    const/4 v0, 0x0

    packed-switch p2, :pswitch_data_0

    const/4 p1, 0x0

    return-object p1

    .line 90
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0c006c

    .line 91
    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 92
    new-instance p2, Lcn/edu/pku/pkurunner/RecordList/RecordCardAdapter$d;

    invoke-direct {p2, p1}, Lcn/edu/pku/pkurunner/RecordList/RecordCardAdapter$d;-><init>(Landroid/view/View;)V

    return-object p2

    .line 85
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0c006d

    .line 86
    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 87
    new-instance p2, Lcn/edu/pku/pkurunner/RecordList/RecordCardAdapter$b;

    invoke-direct {p2, p1}, Lcn/edu/pku/pkurunner/RecordList/RecordCardAdapter$b;-><init>(Landroid/view/View;)V

    return-object p2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onItemSwiped(I)V
    .locals 2

    .line 168
    iget-object v0, p0, Lcn/edu/pku/pkurunner/RecordList/RecordCardAdapter;->f:Lcn/edu/pku/pkurunner/RecordList/RecordListContract$Presenter;

    invoke-direct {p0}, Lcn/edu/pku/pkurunner/RecordList/RecordCardAdapter;->a()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/edu/pku/pkurunner/Model/Record;

    invoke-virtual {v1}, Lcn/edu/pku/pkurunner/Model/Record;->getId()I

    move-result v1

    invoke-interface {v0, v1, p1}, Lcn/edu/pku/pkurunner/RecordList/RecordListContract$Presenter;->deleteRecord(II)V

    return-void
.end method

.method public setPresenter(Lcn/edu/pku/pkurunner/RecordList/RecordListContract$Presenter;Lcn/edu/pku/pkurunner/RecordList/RecordCardAdapter$c;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 44
    iput-object p1, p0, Lcn/edu/pku/pkurunner/RecordList/RecordCardAdapter;->f:Lcn/edu/pku/pkurunner/RecordList/RecordListContract$Presenter;

    .line 45
    :cond_0
    iput-object p2, p0, Lcn/edu/pku/pkurunner/RecordList/RecordCardAdapter;->g:Lcn/edu/pku/pkurunner/RecordList/RecordCardAdapter$c;

    return-void
.end method
