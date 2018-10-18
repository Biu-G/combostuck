.class public final synthetic Lcn/edu/pku/pkurunner/TaskList/-$$Lambda$TaskCardAdapter$Wb4h2o8ADN_WN1BM704fE0CH62A;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcn/edu/pku/pkurunner/TaskList/TaskCardAdapter$a;


# static fields
.field public static final synthetic INSTANCE:Lcn/edu/pku/pkurunner/TaskList/-$$Lambda$TaskCardAdapter$Wb4h2o8ADN_WN1BM704fE0CH62A;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcn/edu/pku/pkurunner/TaskList/-$$Lambda$TaskCardAdapter$Wb4h2o8ADN_WN1BM704fE0CH62A;

    invoke-direct {v0}, Lcn/edu/pku/pkurunner/TaskList/-$$Lambda$TaskCardAdapter$Wb4h2o8ADN_WN1BM704fE0CH62A;-><init>()V

    sput-object v0, Lcn/edu/pku/pkurunner/TaskList/-$$Lambda$TaskCardAdapter$Wb4h2o8ADN_WN1BM704fE0CH62A;->INSTANCE:Lcn/edu/pku/pkurunner/TaskList/-$$Lambda$TaskCardAdapter$Wb4h2o8ADN_WN1BM704fE0CH62A;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcn/edu/pku/pkurunner/Model/Task;

    invoke-static {p1}, Lcn/edu/pku/pkurunner/TaskList/TaskCardAdapter;->lambda$Wb4h2o8ADN_WN1BM704fE0CH62A(Lcn/edu/pku/pkurunner/Model/Task;)Z

    move-result p1

    return p1
.end method
