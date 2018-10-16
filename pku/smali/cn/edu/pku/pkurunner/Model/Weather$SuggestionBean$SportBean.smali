.class public Lcn/edu/pku/pkurunner/Model/Weather$SuggestionBean$SportBean;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/edu/pku/pkurunner/Model/Weather$SuggestionBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SportBean"
.end annotation


# instance fields
.field private brf:Ljava/lang/String;

.field private txt:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$1000(Lcn/edu/pku/pkurunner/Model/Weather$SuggestionBean$SportBean;)Ljava/lang/String;
    .locals 0

    .line 215
    iget-object p0, p0, Lcn/edu/pku/pkurunner/Model/Weather$SuggestionBean$SportBean;->txt:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$900(Lcn/edu/pku/pkurunner/Model/Weather$SuggestionBean$SportBean;)Ljava/lang/String;
    .locals 0

    .line 215
    iget-object p0, p0, Lcn/edu/pku/pkurunner/Model/Weather$SuggestionBean$SportBean;->brf:Ljava/lang/String;

    return-object p0
.end method
