.class Landroid/support/v14/preference/PreferenceFragment$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v14/preference/PreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v14/preference/PreferenceFragment;


# direct methods
.method constructor <init>(Landroid/support/v14/preference/PreferenceFragment;)V
    .locals 0

    .line 138
    iput-object p1, p0, Landroid/support/v14/preference/PreferenceFragment$1;->a:Landroid/support/v14/preference/PreferenceFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 141
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 144
    :cond_0
    iget-object p1, p0, Landroid/support/v14/preference/PreferenceFragment$1;->a:Landroid/support/v14/preference/PreferenceFragment;

    invoke-virtual {p1}, Landroid/support/v14/preference/PreferenceFragment;->a()V

    :goto_0
    return-void
.end method
