.class public Lcn/edu/pku/pkurunner/Model/Weather$SuggestionBean;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/edu/pku/pkurunner/Model/Weather;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SuggestionBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/edu/pku/pkurunner/Model/Weather$SuggestionBean$UvBean;,
        Lcn/edu/pku/pkurunner/Model/Weather$SuggestionBean$TravBean;,
        Lcn/edu/pku/pkurunner/Model/Weather$SuggestionBean$SportBean;,
        Lcn/edu/pku/pkurunner/Model/Weather$SuggestionBean$FluBean;,
        Lcn/edu/pku/pkurunner/Model/Weather$SuggestionBean$DrsgBean;,
        Lcn/edu/pku/pkurunner/Model/Weather$SuggestionBean$CwBean;,
        Lcn/edu/pku/pkurunner/Model/Weather$SuggestionBean$ComfBean;
    }
.end annotation


# instance fields
.field private comf:Lcn/edu/pku/pkurunner/Model/Weather$SuggestionBean$ComfBean;

.field private cw:Lcn/edu/pku/pkurunner/Model/Weather$SuggestionBean$CwBean;

.field private drsg:Lcn/edu/pku/pkurunner/Model/Weather$SuggestionBean$DrsgBean;

.field private flu:Lcn/edu/pku/pkurunner/Model/Weather$SuggestionBean$FluBean;

.field private sport:Lcn/edu/pku/pkurunner/Model/Weather$SuggestionBean$SportBean;

.field private trav:Lcn/edu/pku/pkurunner/Model/Weather$SuggestionBean$TravBean;

.field private uv:Lcn/edu/pku/pkurunner/Model/Weather$SuggestionBean$UvBean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$800(Lcn/edu/pku/pkurunner/Model/Weather$SuggestionBean;)Lcn/edu/pku/pkurunner/Model/Weather$SuggestionBean$SportBean;
    .locals 0

    .line 179
    iget-object p0, p0, Lcn/edu/pku/pkurunner/Model/Weather$SuggestionBean;->sport:Lcn/edu/pku/pkurunner/Model/Weather$SuggestionBean$SportBean;

    return-object p0
.end method
