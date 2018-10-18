.class public final synthetic Lcn/edu/pku/pkurunner/Settings/-$$Lambda$SettingsActivity$J_y0eHNgt8lYFe-D2kXnIaUtxhw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field private final synthetic f$0:Lcn/edu/pku/pkurunner/Settings/SettingsActivity;

.field private final synthetic f$1:Landroid/preference/Preference;

.field private final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcn/edu/pku/pkurunner/Settings/SettingsActivity;Landroid/preference/Preference;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/edu/pku/pkurunner/Settings/-$$Lambda$SettingsActivity$J_y0eHNgt8lYFe-D2kXnIaUtxhw;->f$0:Lcn/edu/pku/pkurunner/Settings/SettingsActivity;

    iput-object p2, p0, Lcn/edu/pku/pkurunner/Settings/-$$Lambda$SettingsActivity$J_y0eHNgt8lYFe-D2kXnIaUtxhw;->f$1:Landroid/preference/Preference;

    iput-object p3, p0, Lcn/edu/pku/pkurunner/Settings/-$$Lambda$SettingsActivity$J_y0eHNgt8lYFe-D2kXnIaUtxhw;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcn/edu/pku/pkurunner/Settings/-$$Lambda$SettingsActivity$J_y0eHNgt8lYFe-D2kXnIaUtxhw;->f$0:Lcn/edu/pku/pkurunner/Settings/SettingsActivity;

    iget-object v1, p0, Lcn/edu/pku/pkurunner/Settings/-$$Lambda$SettingsActivity$J_y0eHNgt8lYFe-D2kXnIaUtxhw;->f$1:Landroid/preference/Preference;

    iget-object v2, p0, Lcn/edu/pku/pkurunner/Settings/-$$Lambda$SettingsActivity$J_y0eHNgt8lYFe-D2kXnIaUtxhw;->f$2:Ljava/lang/String;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {v0, v1, v2, p1}, Lcn/edu/pku/pkurunner/Settings/SettingsActivity;->lambda$J_y0eHNgt8lYFe-D2kXnIaUtxhw(Lcn/edu/pku/pkurunner/Settings/SettingsActivity;Landroid/preference/Preference;Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method
