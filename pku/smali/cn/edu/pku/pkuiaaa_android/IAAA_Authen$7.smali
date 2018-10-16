.class final Lcn/edu/pku/pkuiaaa_android/IAAA_Authen$7;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;


# direct methods
.method constructor <init>(Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;Z)V
    .locals 0

    iput-object p1, p0, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen$7;->b:Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;

    iput-boolean p2, p0, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen$7;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen$7;->b:Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;

    iget-object v0, v0, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;->m:Landroid/widget/EditText;

    iget-boolean v1, p0, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen$7;->a:Z

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object v0, p0, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen$7;->b:Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;

    iget-object v0, v0, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;->n:Landroid/widget/EditText;

    iget-boolean v1, p0, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen$7;->a:Z

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object v0, p0, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen$7;->b:Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;

    iget-object v0, v0, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;->o:Landroid/widget/EditText;

    iget-boolean v1, p0, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen$7;->a:Z

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object v0, p0, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen$7;->b:Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;

    iget-object v0, v0, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;->l:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen$7;->a:Z

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen$7;->b:Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;

    iget-object v0, v0, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;->j:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen$7;->a:Z

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen$7;->b:Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;

    iget-object v0, v0, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;->k:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen$7;->a:Z

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen$7;->b:Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;

    iget-boolean v0, v0, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;->h:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen$7;->b:Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;

    iget-boolean v0, v0, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;->i:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen$7;->b:Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;

    iget-object v0, v0, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;->p:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void

    :cond_1
    :goto_0
    iget-object v0, p0, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen$7;->b:Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;

    iget-object v0, v0, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;->p:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen$7;->b:Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;

    iget-boolean v0, v0, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;->h:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen$7;->b:Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;

    iget-object v0, v0, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;->l:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen$7;->b:Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;

    iget-object v0, v0, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;->o:Landroid/widget/EditText;

    iget-object v1, p0, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen$7;->b:Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;

    invoke-virtual {v1}, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcn/edu/pku/pkuiaaa_android/R$string;->hint_msgcode:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    return-void

    :cond_2
    iget-object v0, p0, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen$7;->b:Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;

    iget-object v0, v0, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;->l:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen$7;->b:Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;

    iget-object v0, v0, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;->o:Landroid/widget/EditText;

    iget-object v1, p0, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen$7;->b:Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;

    invoke-virtual {v1}, Lcn/edu/pku/pkuiaaa_android/IAAA_Authen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcn/edu/pku/pkuiaaa_android/R$string;->hint_otpcode:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    return-void
.end method
