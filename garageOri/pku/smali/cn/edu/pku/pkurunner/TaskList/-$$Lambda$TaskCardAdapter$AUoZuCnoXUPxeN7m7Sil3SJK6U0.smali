.class public final synthetic Lcn/edu/pku/pkurunner/TaskList/-$$Lambda$TaskCardAdapter$AUoZuCnoXUPxeN7m7Sil3SJK6U0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic INSTANCE:Lcn/edu/pku/pkurunner/TaskList/-$$Lambda$TaskCardAdapter$AUoZuCnoXUPxeN7m7Sil3SJK6U0;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcn/edu/pku/pkurunner/TaskList/-$$Lambda$TaskCardAdapter$AUoZuCnoXUPxeN7m7Sil3SJK6U0;

    invoke-direct {v0}, Lcn/edu/pku/pkurunner/TaskList/-$$Lambda$TaskCardAdapter$AUoZuCnoXUPxeN7m7Sil3SJK6U0;-><init>()V

    sput-object v0, Lcn/edu/pku/pkurunner/TaskList/-$$Lambda$TaskCardAdapter$AUoZuCnoXUPxeN7m7Sil3SJK6U0;->INSTANCE:Lcn/edu/pku/pkurunner/TaskList/-$$Lambda$TaskCardAdapter$AUoZuCnoXUPxeN7m7Sil3SJK6U0;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcn/edu/pku/pkurunner/Model/Task;

    check-cast p2, Lcn/edu/pku/pkurunner/Model/Task;

    invoke-static {p1, p2}, Lcn/edu/pku/pkurunner/TaskList/TaskCardAdapter;->lambda$AUoZuCnoXUPxeN7m7Sil3SJK6U0(Lcn/edu/pku/pkurunner/Model/Task;Lcn/edu/pku/pkurunner/Model/Task;)I

    move-result p1

    return p1
.end method
