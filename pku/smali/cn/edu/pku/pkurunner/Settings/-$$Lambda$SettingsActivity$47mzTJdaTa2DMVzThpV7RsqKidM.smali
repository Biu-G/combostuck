.class public final synthetic Lcn/edu/pku/pkurunner/Settings/-$$Lambda$SettingsActivity$47mzTJdaTa2DMVzThpV7RsqKidM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private final synthetic f$0:Lcn/edu/pku/pkurunner/Settings/SettingsActivity;

.field private final synthetic f$1:[Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcn/edu/pku/pkurunner/Settings/SettingsActivity;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/edu/pku/pkurunner/Settings/-$$Lambda$SettingsActivity$47mzTJdaTa2DMVzThpV7RsqKidM;->f$0:Lcn/edu/pku/pkurunner/Settings/SettingsActivity;

    iput-object p2, p0, Lcn/edu/pku/pkurunner/Settings/-$$Lambda$SettingsActivity$47mzTJdaTa2DMVzThpV7RsqKidM;->f$1:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2

    iget-object v0, p0, Lcn/edu/pku/pkurunner/Settings/-$$Lambda$SettingsActivity$47mzTJdaTa2DMVzThpV7RsqKidM;->f$0:Lcn/edu/pku/pkurunner/Settings/SettingsActivity;

    iget-object v1, p0, Lcn/edu/pku/pkurunner/Settings/-$$Lambda$SettingsActivity$47mzTJdaTa2DMVzThpV7RsqKidM;->f$1:[Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcn/edu/pku/pkurunner/Settings/SettingsActivity;->lambda$47mzTJdaTa2DMVzThpV7RsqKidM(Lcn/edu/pku/pkurunner/Settings/SettingsActivity;[Ljava/lang/String;Landroid/preference/Preference;)Z

    move-result p1

    return p1
.end method
