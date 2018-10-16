.class public Lcn/edu/pku/pkurunner/Network/DataPack;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private code:I

.field private data:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private message:Ljava/lang/String;

.field private success:Z

.field private version:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .line 29
    iget v0, p0, Lcn/edu/pku/pkurunner/Network/DataPack;->code:I

    return v0
.end method

.method public getData()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 17
    iget-object v0, p0, Lcn/edu/pku/pkurunner/Network/DataPack;->data:Ljava/lang/Object;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcn/edu/pku/pkurunner/Network/DataPack;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .line 25
    iget v0, p0, Lcn/edu/pku/pkurunner/Network/DataPack;->version:I

    return v0
.end method

.method public isSuccess()Z
    .locals 1

    .line 21
    iget-boolean v0, p0, Lcn/edu/pku/pkurunner/Network/DataPack;->success:Z

    return v0
.end method
