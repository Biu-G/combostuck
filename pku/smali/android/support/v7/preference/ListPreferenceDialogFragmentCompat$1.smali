.class Landroid/support/v7/preference/ListPreferenceDialogFragmentCompat$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/preference/ListPreferenceDialogFragmentCompat;->onPrepareDialogBuilder(Landroid/support/v7/app/AlertDialog$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/preference/ListPreferenceDialogFragmentCompat;


# direct methods
.method constructor <init>(Landroid/support/v7/preference/ListPreferenceDialogFragmentCompat;)V
    .locals 0

    .line 84
    iput-object p1, p0, Landroid/support/v7/preference/ListPreferenceDialogFragmentCompat$1;->a:Landroid/support/v7/preference/ListPreferenceDialogFragmentCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 87
    iget-object v0, p0, Landroid/support/v7/preference/ListPreferenceDialogFragmentCompat$1;->a:Landroid/support/v7/preference/ListPreferenceDialogFragmentCompat;

    iput p2, v0, Landroid/support/v7/preference/ListPreferenceDialogFragmentCompat;->j:I

    .line 93
    iget-object p2, p0, Landroid/support/v7/preference/ListPreferenceDialogFragmentCompat$1;->a:Landroid/support/v7/preference/ListPreferenceDialogFragmentCompat;

    const/4 v0, -0x1

    invoke-virtual {p2, p1, v0}, Landroid/support/v7/preference/ListPreferenceDialogFragmentCompat;->onClick(Landroid/content/DialogInterface;I)V

    .line 95
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
