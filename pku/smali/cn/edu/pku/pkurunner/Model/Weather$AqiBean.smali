.class public Lcn/edu/pku/pkurunner/Model/Weather$AqiBean;
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
    name = "AqiBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/edu/pku/pkurunner/Model/Weather$AqiBean$CityBean;
    }
.end annotation


# instance fields
.field private city:Lcn/edu/pku/pkurunner/Model/Weather$AqiBean$CityBean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcn/edu/pku/pkurunner/Model/Weather$AqiBean;)Lcn/edu/pku/pkurunner/Model/Weather$AqiBean$CityBean;
    .locals 0

    .line 114
    iget-object p0, p0, Lcn/edu/pku/pkurunner/Model/Weather$AqiBean;->city:Lcn/edu/pku/pkurunner/Model/Weather$AqiBean$CityBean;

    return-object p0
.end method
