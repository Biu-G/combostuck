.class public Lcn/edu/pku/pkurunner/Storage/Dropbox$APIWrapper$DropboxException;
.super Ljava/lang/Exception;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/edu/pku/pkurunner/Storage/Dropbox$APIWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DropboxException"
.end annotation


# static fields
.field public static final NO_ACCESS_TOKEN:I = 0x1


# instance fields
.field private a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 63
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 64
    iput p1, p0, Lcn/edu/pku/pkurunner/Storage/Dropbox$APIWrapper$DropboxException;->a:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 59
    iput p2, p0, Lcn/edu/pku/pkurunner/Storage/Dropbox$APIWrapper$DropboxException;->a:I

    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .line 68
    iget v0, p0, Lcn/edu/pku/pkurunner/Storage/Dropbox$APIWrapper$DropboxException;->a:I

    return v0
.end method
