.class Landroid/support/v7/preference/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/preference/a;->a(Landroid/support/v7/preference/PreferenceGroup;Ljava/util/List;)Landroid/support/v7/preference/a$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/preference/PreferenceGroup;

.field final synthetic b:Landroid/support/v7/preference/a;


# direct methods
.method constructor <init>(Landroid/support/v7/preference/a;Landroid/support/v7/preference/PreferenceGroup;)V
    .locals 0

    .line 144
    iput-object p1, p0, Landroid/support/v7/preference/a$1;->b:Landroid/support/v7/preference/a;

    iput-object p2, p0, Landroid/support/v7/preference/a$1;->a:Landroid/support/v7/preference/PreferenceGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 2

    .line 147
    iget-object v0, p0, Landroid/support/v7/preference/a$1;->a:Landroid/support/v7/preference/PreferenceGroup;

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceGroup;->setInitialExpandedChildrenCount(I)V

    .line 148
    iget-object v0, p0, Landroid/support/v7/preference/a$1;->b:Landroid/support/v7/preference/a;

    iget-object v0, v0, Landroid/support/v7/preference/a;->a:Landroid/support/v7/preference/PreferenceGroupAdapter;

    invoke-virtual {v0, p1}, Landroid/support/v7/preference/PreferenceGroupAdapter;->onPreferenceHierarchyChange(Landroid/support/v7/preference/Preference;)V

    .line 149
    iget-object p1, p0, Landroid/support/v7/preference/a$1;->a:Landroid/support/v7/preference/PreferenceGroup;

    .line 150
    invoke-virtual {p1}, Landroid/support/v7/preference/PreferenceGroup;->getOnExpandButtonClickListener()Landroid/support/v7/preference/PreferenceGroup$OnExpandButtonClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 152
    invoke-interface {p1}, Landroid/support/v7/preference/PreferenceGroup$OnExpandButtonClickListener;->onExpandButtonClick()V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
