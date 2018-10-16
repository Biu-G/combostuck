.class public Lcn/edu/pku/pkurunner/Model/Weather$DailyForecastBean$CondBean;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/edu/pku/pkurunner/Model/Weather$DailyForecastBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CondBean"
.end annotation


# instance fields
.field private code_d:Ljava/lang/String;

.field private code_n:Ljava/lang/String;

.field private txt_d:Ljava/lang/String;

.field private txt_n:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 261
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
