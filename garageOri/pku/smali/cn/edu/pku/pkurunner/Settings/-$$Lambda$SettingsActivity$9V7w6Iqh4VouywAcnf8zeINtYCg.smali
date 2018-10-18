.class public final synthetic Lcn/edu/pku/pkurunner/Settings/-$$Lambda$SettingsActivity$9V7w6Iqh4VouywAcnf8zeINtYCg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Function;


# instance fields
.field private final synthetic f$0:Lcn/edu/pku/pkurunner/Settings/SettingsActivity;


# direct methods
.method public synthetic constructor <init>(Lcn/edu/pku/pkurunner/Settings/SettingsActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/edu/pku/pkurunner/Settings/-$$Lambda$SettingsActivity$9V7w6Iqh4VouywAcnf8zeINtYCg;->f$0:Lcn/edu/pku/pkurunner/Settings/SettingsActivity;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcn/edu/pku/pkurunner/Settings/-$$Lambda$SettingsActivity$9V7w6Iqh4VouywAcnf8zeINtYCg;->f$0:Lcn/edu/pku/pkurunner/Settings/SettingsActivity;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {v0, p1}, Lcn/edu/pku/pkurunner/Settings/SettingsActivity;->lambda$9V7w6Iqh4VouywAcnf8zeINtYCg(Lcn/edu/pku/pkurunner/Settings/SettingsActivity;Ljava/lang/Boolean;)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method
