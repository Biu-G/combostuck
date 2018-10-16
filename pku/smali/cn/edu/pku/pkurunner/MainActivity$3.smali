.class Lcn/edu/pku/pkurunner/MainActivity$3;
.super Landroid/support/v7/app/ActionBarDrawerToggle;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/edu/pku/pkurunner/MainActivity;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Lcn/edu/pku/pkurunner/MainActivity;


# direct methods
.method constructor <init>(Lcn/edu/pku/pkurunner/MainActivity;Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;Landroid/support/v7/widget/Toolbar;II)V
    .locals 6

    .line 310
    iput-object p1, p0, Lcn/edu/pku/pkurunner/MainActivity$3;->c:Lcn/edu/pku/pkurunner/MainActivity;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Landroid/support/v7/app/ActionBarDrawerToggle;-><init>(Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;Landroid/support/v7/widget/Toolbar;II)V

    return-void
.end method


# virtual methods
.method public onDrawerOpened(Landroid/view/View;)V
    .locals 0

    .line 313
    invoke-super {p0, p1}, Landroid/support/v7/app/ActionBarDrawerToggle;->onDrawerOpened(Landroid/view/View;)V

    .line 314
    iget-object p1, p0, Lcn/edu/pku/pkurunner/MainActivity$3;->c:Lcn/edu/pku/pkurunner/MainActivity;

    invoke-virtual {p1}, Lcn/edu/pku/pkurunner/MainActivity;->refreshUserStatusNotice()V

    return-void
.end method
