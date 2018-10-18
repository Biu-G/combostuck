.class public Lcom/dropbox/core/v2/teamlog/FileRequestCreateDetails$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/teamlog/FileRequestCreateDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field protected fileRequestId:Ljava/lang/String;

.field protected requestDetails:Lcom/dropbox/core/v2/teamlog/FileRequestDetails;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 100
    iput-object v0, p0, Lcom/dropbox/core/v2/teamlog/FileRequestCreateDetails$Builder;->fileRequestId:Ljava/lang/String;

    .line 101
    iput-object v0, p0, Lcom/dropbox/core/v2/teamlog/FileRequestCreateDetails$Builder;->requestDetails:Lcom/dropbox/core/v2/teamlog/FileRequestDetails;

    return-void
.end method


# virtual methods
.method public build()Lcom/dropbox/core/v2/teamlog/FileRequestCreateDetails;
    .locals 3

    .line 149
    new-instance v0, Lcom/dropbox/core/v2/teamlog/FileRequestCreateDetails;

    iget-object v1, p0, Lcom/dropbox/core/v2/teamlog/FileRequestCreateDetails$Builder;->fileRequestId:Ljava/lang/String;

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/FileRequestCreateDetails$Builder;->requestDetails:Lcom/dropbox/core/v2/teamlog/FileRequestDetails;

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/teamlog/FileRequestCreateDetails;-><init>(Ljava/lang/String;Lcom/dropbox/core/v2/teamlog/FileRequestDetails;)V

    return-object v0
.end method

.method public withFileRequestId(Ljava/lang/String;)Lcom/dropbox/core/v2/teamlog/FileRequestCreateDetails$Builder;
    .locals 2

    if-eqz p1, :cond_2

    .line 118
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_1

    const-string v0, "[-_0-9a-zA-Z]+"

    .line 121
    invoke-static {v0, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 122
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "String \'fileRequestId\' does not match pattern"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 119
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "String \'fileRequestId\' is shorter than 1"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 125
    :cond_2
    :goto_0
    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/FileRequestCreateDetails$Builder;->fileRequestId:Ljava/lang/String;

    return-object p0
.end method

.method public withRequestDetails(Lcom/dropbox/core/v2/teamlog/FileRequestDetails;)Lcom/dropbox/core/v2/teamlog/FileRequestCreateDetails$Builder;
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/FileRequestCreateDetails$Builder;->requestDetails:Lcom/dropbox/core/v2/teamlog/FileRequestDetails;

    return-object p0
.end method
