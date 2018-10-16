.class public final synthetic Lcn/edu/pku/pkurunner/TaskList/-$$Lambda$2EUvrk0dLpFsmOxDQF4SxzFGMeE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcn/edu/pku/pkurunner/TaskList/TaskCardAdapter$b;


# instance fields
.field private final synthetic f$0:Lcn/edu/pku/pkurunner/TaskList/TaskListFragment;


# direct methods
.method public synthetic constructor <init>(Lcn/edu/pku/pkurunner/TaskList/TaskListFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/edu/pku/pkurunner/TaskList/-$$Lambda$2EUvrk0dLpFsmOxDQF4SxzFGMeE;->f$0:Lcn/edu/pku/pkurunner/TaskList/TaskListFragment;

    return-void
.end method


# virtual methods
.method public final getResource()Landroid/content/res/Resources;
    .locals 1

    iget-object v0, p0, Lcn/edu/pku/pkurunner/TaskList/-$$Lambda$2EUvrk0dLpFsmOxDQF4SxzFGMeE;->f$0:Lcn/edu/pku/pkurunner/TaskList/TaskListFragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method
