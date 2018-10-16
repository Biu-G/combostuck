.class public final synthetic Lcn/edu/pku/pkurunner/TaskList/-$$Lambda$TaskCardAdapter$lI872FYBXvRIOlIiRIMI92D8npk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcn/edu/pku/pkurunner/TaskList/TaskCardAdapter;

.field private final synthetic f$1:Lcn/edu/pku/pkurunner/Model/Task;


# direct methods
.method public synthetic constructor <init>(Lcn/edu/pku/pkurunner/TaskList/TaskCardAdapter;Lcn/edu/pku/pkurunner/Model/Task;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/edu/pku/pkurunner/TaskList/-$$Lambda$TaskCardAdapter$lI872FYBXvRIOlIiRIMI92D8npk;->f$0:Lcn/edu/pku/pkurunner/TaskList/TaskCardAdapter;

    iput-object p2, p0, Lcn/edu/pku/pkurunner/TaskList/-$$Lambda$TaskCardAdapter$lI872FYBXvRIOlIiRIMI92D8npk;->f$1:Lcn/edu/pku/pkurunner/Model/Task;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcn/edu/pku/pkurunner/TaskList/-$$Lambda$TaskCardAdapter$lI872FYBXvRIOlIiRIMI92D8npk;->f$0:Lcn/edu/pku/pkurunner/TaskList/TaskCardAdapter;

    iget-object v1, p0, Lcn/edu/pku/pkurunner/TaskList/-$$Lambda$TaskCardAdapter$lI872FYBXvRIOlIiRIMI92D8npk;->f$1:Lcn/edu/pku/pkurunner/Model/Task;

    invoke-static {v0, v1, p1}, Lcn/edu/pku/pkurunner/TaskList/TaskCardAdapter;->lambda$lI872FYBXvRIOlIiRIMI92D8npk(Lcn/edu/pku/pkurunner/TaskList/TaskCardAdapter;Lcn/edu/pku/pkurunner/Model/Task;Landroid/view/View;)V

    return-void
.end method
