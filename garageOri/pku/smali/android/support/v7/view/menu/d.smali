.class Landroid/support/v7/view/menu/d;
.super Landroid/support/v7/view/menu/MenuItemWrapperICS;
.source "SourceFile"


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x10
.end annotation

.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/view/menu/d$a;
    }
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/support/v4/internal/view/SupportMenuItem;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2}, Landroid/support/v7/view/menu/MenuItemWrapperICS;-><init>(Landroid/content/Context;Landroid/support/v4/internal/view/SupportMenuItem;)V

    return-void
.end method


# virtual methods
.method a(Landroid/view/ActionProvider;)Landroid/support/v7/view/menu/MenuItemWrapperICS$a;
    .locals 2

    .line 44
    new-instance v0, Landroid/support/v7/view/menu/d$a;

    iget-object v1, p0, Landroid/support/v7/view/menu/d;->a:Landroid/content/Context;

    invoke-direct {v0, p0, v1, p1}, Landroid/support/v7/view/menu/d$a;-><init>(Landroid/support/v7/view/menu/d;Landroid/content/Context;Landroid/view/ActionProvider;)V

    return-object v0
.end method
