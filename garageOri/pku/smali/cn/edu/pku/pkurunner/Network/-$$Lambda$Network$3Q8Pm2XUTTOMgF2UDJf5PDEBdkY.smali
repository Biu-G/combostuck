.class public final synthetic Lcn/edu/pku/pkurunner/Network/-$$Lambda$Network$3Q8Pm2XUTTOMgF2UDJf5PDEBdkY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Function;


# static fields
.field public static final synthetic INSTANCE:Lcn/edu/pku/pkurunner/Network/-$$Lambda$Network$3Q8Pm2XUTTOMgF2UDJf5PDEBdkY;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcn/edu/pku/pkurunner/Network/-$$Lambda$Network$3Q8Pm2XUTTOMgF2UDJf5PDEBdkY;

    invoke-direct {v0}, Lcn/edu/pku/pkurunner/Network/-$$Lambda$Network$3Q8Pm2XUTTOMgF2UDJf5PDEBdkY;-><init>()V

    sput-object v0, Lcn/edu/pku/pkurunner/Network/-$$Lambda$Network$3Q8Pm2XUTTOMgF2UDJf5PDEBdkY;->INSTANCE:Lcn/edu/pku/pkurunner/Network/-$$Lambda$Network$3Q8Pm2XUTTOMgF2UDJf5PDEBdkY;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcn/edu/pku/pkurunner/Model/Record$Inner;

    invoke-static {p1}, Lcn/edu/pku/pkurunner/Network/Network;->lambda$3Q8Pm2XUTTOMgF2UDJf5PDEBdkY(Lcn/edu/pku/pkurunner/Model/Record$Inner;)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method
