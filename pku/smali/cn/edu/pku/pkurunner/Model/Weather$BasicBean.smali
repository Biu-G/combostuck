.class public Lcn/edu/pku/pkurunner/Model/Weather$BasicBean;
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
    name = "BasicBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/edu/pku/pkurunner/Model/Weather$BasicBean$UpdateBean;
    }
.end annotation


# instance fields
.field private city:Ljava/lang/String;

.field private cnty:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private lat:Ljava/lang/String;

.field private lon:Ljava/lang/String;

.field private update:Lcn/edu/pku/pkurunner/Model/Weather$BasicBean$UpdateBean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lcn/edu/pku/pkurunner/Model/Weather$BasicBean;)Ljava/lang/String;
    .locals 0

    .line 130
    iget-object p0, p0, Lcn/edu/pku/pkurunner/Model/Weather$BasicBean;->city:Ljava/lang/String;

    return-object p0
.end method
