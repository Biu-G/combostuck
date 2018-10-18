.class public abstract Lcn/edu/pku/pkurunner/Exception/SimpleException;
.super Ljava/lang/Exception;
.source "SourceFile"


# instance fields
.field protected errorCode:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const-string v0, "SimpleException"

    .line 10
    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 11
    iput p1, p0, Lcn/edu/pku/pkurunner/Exception/SimpleException;->errorCode:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 15
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 16
    iput p1, p0, Lcn/edu/pku/pkurunner/Exception/SimpleException;->errorCode:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 20
    invoke-direct {p0, p2, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 21
    iput p1, p0, Lcn/edu/pku/pkurunner/Exception/SimpleException;->errorCode:I

    return-void
.end method


# virtual methods
.method public getErrorCode()I
    .locals 1

    .line 25
    iget v0, p0, Lcn/edu/pku/pkurunner/Exception/SimpleException;->errorCode:I

    return v0
.end method
