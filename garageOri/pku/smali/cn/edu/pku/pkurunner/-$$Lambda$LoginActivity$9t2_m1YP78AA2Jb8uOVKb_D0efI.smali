.class public final synthetic Lcn/edu/pku/pkurunner/-$$Lambda$LoginActivity$9t2_m1YP78AA2Jb8uOVKb_D0efI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Function;


# instance fields
.field private final synthetic f$0:Lcn/edu/pku/pkurunner/LoginActivity;


# direct methods
.method public synthetic constructor <init>(Lcn/edu/pku/pkurunner/LoginActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/edu/pku/pkurunner/-$$Lambda$LoginActivity$9t2_m1YP78AA2Jb8uOVKb_D0efI;->f$0:Lcn/edu/pku/pkurunner/LoginActivity;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcn/edu/pku/pkurunner/-$$Lambda$LoginActivity$9t2_m1YP78AA2Jb8uOVKb_D0efI;->f$0:Lcn/edu/pku/pkurunner/LoginActivity;

    check-cast p1, Landroid/util/Pair;

    invoke-static {v0, p1}, Lcn/edu/pku/pkurunner/LoginActivity;->lambda$9t2_m1YP78AA2Jb8uOVKb_D0efI(Lcn/edu/pku/pkurunner/LoginActivity;Landroid/util/Pair;)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method
