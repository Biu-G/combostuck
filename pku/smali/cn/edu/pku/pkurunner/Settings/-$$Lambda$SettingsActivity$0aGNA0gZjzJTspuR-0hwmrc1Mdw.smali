.class public final synthetic Lcn/edu/pku/pkurunner/Settings/-$$Lambda$SettingsActivity$0aGNA0gZjzJTspuR-0hwmrc1Mdw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field private final synthetic f$0:Lcn/edu/pku/pkurunner/Settings/SettingsActivity;

.field private final synthetic f$1:Landroid/preference/Preference;


# direct methods
.method public synthetic constructor <init>(Lcn/edu/pku/pkurunner/Settings/SettingsActivity;Landroid/preference/Preference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/edu/pku/pkurunner/Settings/-$$Lambda$SettingsActivity$0aGNA0gZjzJTspuR-0hwmrc1Mdw;->f$0:Lcn/edu/pku/pkurunner/Settings/SettingsActivity;

    iput-object p2, p0, Lcn/edu/pku/pkurunner/Settings/-$$Lambda$SettingsActivity$0aGNA0gZjzJTspuR-0hwmrc1Mdw;->f$1:Landroid/preference/Preference;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcn/edu/pku/pkurunner/Settings/-$$Lambda$SettingsActivity$0aGNA0gZjzJTspuR-0hwmrc1Mdw;->f$0:Lcn/edu/pku/pkurunner/Settings/SettingsActivity;

    iget-object v1, p0, Lcn/edu/pku/pkurunner/Settings/-$$Lambda$SettingsActivity$0aGNA0gZjzJTspuR-0hwmrc1Mdw;->f$1:Landroid/preference/Preference;

    check-cast p1, Landroid/util/Pair;

    invoke-static {v0, v1, p1}, Lcn/edu/pku/pkurunner/Settings/SettingsActivity;->lambda$0aGNA0gZjzJTspuR-0hwmrc1Mdw(Lcn/edu/pku/pkurunner/Settings/SettingsActivity;Landroid/preference/Preference;Landroid/util/Pair;)V

    return-void
.end method
