.class Landroid/support/v14/preference/PreferenceFragment$b;
.super Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v14/preference/PreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private final a:Landroid/support/v7/widget/RecyclerView$Adapter;

.field private final b:Landroid/support/v7/widget/RecyclerView;

.field private final c:Landroid/support/v7/preference/Preference;

.field private final d:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/RecyclerView$Adapter;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/preference/Preference;Ljava/lang/String;)V
    .locals 0

    .line 717
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;-><init>()V

    .line 718
    iput-object p1, p0, Landroid/support/v14/preference/PreferenceFragment$b;->a:Landroid/support/v7/widget/RecyclerView$Adapter;

    .line 719
    iput-object p2, p0, Landroid/support/v14/preference/PreferenceFragment$b;->b:Landroid/support/v7/widget/RecyclerView;

    .line 720
    iput-object p3, p0, Landroid/support/v14/preference/PreferenceFragment$b;->c:Landroid/support/v7/preference/Preference;

    .line 721
    iput-object p4, p0, Landroid/support/v14/preference/PreferenceFragment$b;->d:Ljava/lang/String;

    return-void
.end method

.method private a()V
    .locals 2

    .line 725
    iget-object v0, p0, Landroid/support/v14/preference/PreferenceFragment$b;->a:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/RecyclerView$Adapter;->unregisterAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V

    .line 727
    iget-object v0, p0, Landroid/support/v14/preference/PreferenceFragment$b;->c:Landroid/support/v7/preference/Preference;

    if-eqz v0, :cond_0

    .line 728
    iget-object v0, p0, Landroid/support/v14/preference/PreferenceFragment$b;->a:Landroid/support/v7/widget/RecyclerView$Adapter;

    check-cast v0, Landroid/support/v7/preference/PreferenceGroup$PreferencePositionCallback;

    iget-object v1, p0, Landroid/support/v14/preference/PreferenceFragment$b;->c:Landroid/support/v7/preference/Preference;

    .line 729
    invoke-interface {v0, v1}, Landroid/support/v7/preference/PreferenceGroup$PreferencePositionCallback;->getPreferenceAdapterPosition(Landroid/support/v7/preference/Preference;)I

    move-result v0

    goto :goto_0

    .line 731
    :cond_0
    iget-object v0, p0, Landroid/support/v14/preference/PreferenceFragment$b;->a:Landroid/support/v7/widget/RecyclerView$Adapter;

    check-cast v0, Landroid/support/v7/preference/PreferenceGroup$PreferencePositionCallback;

    iget-object v1, p0, Landroid/support/v14/preference/PreferenceFragment$b;->d:Ljava/lang/String;

    .line 732
    invoke-interface {v0, v1}, Landroid/support/v7/preference/PreferenceGroup$PreferencePositionCallback;->getPreferenceAdapterPosition(Ljava/lang/String;)I

    move-result v0

    :goto_0
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 735
    iget-object v1, p0, Landroid/support/v14/preference/PreferenceFragment$b;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->scrollToPosition(I)V

    :cond_1
    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 0

    .line 741
    invoke-direct {p0}, Landroid/support/v14/preference/PreferenceFragment$b;->a()V

    return-void
.end method

.method public onItemRangeChanged(II)V
    .locals 0

    .line 746
    invoke-direct {p0}, Landroid/support/v14/preference/PreferenceFragment$b;->a()V

    return-void
.end method

.method public onItemRangeChanged(IILjava/lang/Object;)V
    .locals 0

    .line 751
    invoke-direct {p0}, Landroid/support/v14/preference/PreferenceFragment$b;->a()V

    return-void
.end method

.method public onItemRangeInserted(II)V
    .locals 0

    .line 756
    invoke-direct {p0}, Landroid/support/v14/preference/PreferenceFragment$b;->a()V

    return-void
.end method

.method public onItemRangeMoved(III)V
    .locals 0

    .line 766
    invoke-direct {p0}, Landroid/support/v14/preference/PreferenceFragment$b;->a()V

    return-void
.end method

.method public onItemRangeRemoved(II)V
    .locals 0

    .line 761
    invoke-direct {p0}, Landroid/support/v14/preference/PreferenceFragment$b;->a()V

    return-void
.end method
