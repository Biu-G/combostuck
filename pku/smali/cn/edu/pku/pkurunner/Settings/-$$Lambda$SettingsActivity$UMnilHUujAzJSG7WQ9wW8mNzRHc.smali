.class public final synthetic Lcn/edu/pku/pkurunner/Settings/-$$Lambda$SettingsActivity$UMnilHUujAzJSG7WQ9wW8mNzRHc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private final synthetic f$0:Lcn/edu/pku/pkurunner/Settings/SettingsActivity;

.field private final synthetic f$1:Landroid/preference/ListPreference;


# direct methods
.method public synthetic constructor <init>(Lcn/edu/pku/pkurunner/Settings/SettingsActivity;Landroid/preference/ListPreference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/edu/pku/pkurunner/Settings/-$$Lambda$SettingsActivity$UMnilHUujAzJSG7WQ9wW8mNzRHc;->f$0:Lcn/edu/pku/pkurunner/Settings/SettingsActivity;

    iput-object p2, p0, Lcn/edu/pku/pkurunner/Settings/-$$Lambda$SettingsActivity$UMnilHUujAzJSG7WQ9wW8mNzRHc;->f$1:Landroid/preference/ListPreference;

    return-void
.end method


# virtual methods
.method public final onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lcn/edu/pku/pkurunner/Settings/-$$Lambda$SettingsActivity$UMnilHUujAzJSG7WQ9wW8mNzRHc;->f$0:Lcn/edu/pku/pkurunner/Settings/SettingsActivity;

    iget-object v1, p0, Lcn/edu/pku/pkurunner/Settings/-$$Lambda$SettingsActivity$UMnilHUujAzJSG7WQ9wW8mNzRHc;->f$1:Landroid/preference/ListPreference;

    invoke-static {v0, v1, p1, p2}, Lcn/edu/pku/pkurunner/Settings/SettingsActivity;->lambda$UMnilHUujAzJSG7WQ9wW8mNzRHc(Lcn/edu/pku/pkurunner/Settings/SettingsActivity;Landroid/preference/ListPreference;Landroid/preference/Preference;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
