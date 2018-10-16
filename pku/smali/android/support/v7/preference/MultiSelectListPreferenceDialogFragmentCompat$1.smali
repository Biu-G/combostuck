.class Landroid/support/v7/preference/MultiSelectListPreferenceDialogFragmentCompat$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/preference/MultiSelectListPreferenceDialogFragmentCompat;->onPrepareDialogBuilder(Landroid/support/v7/app/AlertDialog$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/preference/MultiSelectListPreferenceDialogFragmentCompat;


# direct methods
.method constructor <init>(Landroid/support/v7/preference/MultiSelectListPreferenceDialogFragmentCompat;)V
    .locals 0

    .line 109
    iput-object p1, p0, Landroid/support/v7/preference/MultiSelectListPreferenceDialogFragmentCompat$1;->a:Landroid/support/v7/preference/MultiSelectListPreferenceDialogFragmentCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;IZ)V
    .locals 2

    if-eqz p3, :cond_0

    .line 113
    iget-object p1, p0, Landroid/support/v7/preference/MultiSelectListPreferenceDialogFragmentCompat$1;->a:Landroid/support/v7/preference/MultiSelectListPreferenceDialogFragmentCompat;

    iget-boolean p3, p1, Landroid/support/v7/preference/MultiSelectListPreferenceDialogFragmentCompat;->k:Z

    iget-object v0, p0, Landroid/support/v7/preference/MultiSelectListPreferenceDialogFragmentCompat$1;->a:Landroid/support/v7/preference/MultiSelectListPreferenceDialogFragmentCompat;

    iget-object v0, v0, Landroid/support/v7/preference/MultiSelectListPreferenceDialogFragmentCompat;->j:Ljava/util/Set;

    iget-object v1, p0, Landroid/support/v7/preference/MultiSelectListPreferenceDialogFragmentCompat$1;->a:Landroid/support/v7/preference/MultiSelectListPreferenceDialogFragmentCompat;

    iget-object v1, v1, Landroid/support/v7/preference/MultiSelectListPreferenceDialogFragmentCompat;->m:[Ljava/lang/CharSequence;

    aget-object p2, v1, p2

    .line 114
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    .line 113
    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p2

    or-int/2addr p2, p3

    iput-boolean p2, p1, Landroid/support/v7/preference/MultiSelectListPreferenceDialogFragmentCompat;->k:Z

    goto :goto_0

    .line 116
    :cond_0
    iget-object p1, p0, Landroid/support/v7/preference/MultiSelectListPreferenceDialogFragmentCompat$1;->a:Landroid/support/v7/preference/MultiSelectListPreferenceDialogFragmentCompat;

    iget-boolean p3, p1, Landroid/support/v7/preference/MultiSelectListPreferenceDialogFragmentCompat;->k:Z

    iget-object v0, p0, Landroid/support/v7/preference/MultiSelectListPreferenceDialogFragmentCompat$1;->a:Landroid/support/v7/preference/MultiSelectListPreferenceDialogFragmentCompat;

    iget-object v0, v0, Landroid/support/v7/preference/MultiSelectListPreferenceDialogFragmentCompat;->j:Ljava/util/Set;

    iget-object v1, p0, Landroid/support/v7/preference/MultiSelectListPreferenceDialogFragmentCompat$1;->a:Landroid/support/v7/preference/MultiSelectListPreferenceDialogFragmentCompat;

    iget-object v1, v1, Landroid/support/v7/preference/MultiSelectListPreferenceDialogFragmentCompat;->m:[Ljava/lang/CharSequence;

    aget-object p2, v1, p2

    .line 117
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    .line 116
    invoke-interface {v0, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p2

    or-int/2addr p2, p3

    iput-boolean p2, p1, Landroid/support/v7/preference/MultiSelectListPreferenceDialogFragmentCompat;->k:Z

    :goto_0
    return-void
.end method
