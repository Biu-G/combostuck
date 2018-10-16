.class public Lcom/dropbox/core/v2/teamlog/FileRequestCloseDetails;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/teamlog/FileRequestCloseDetails$a;,
        Lcom/dropbox/core/v2/teamlog/FileRequestCloseDetails$Builder;
    }
.end annotation


# instance fields
.field protected final fileRequestId:Ljava/lang/String;

.field protected final previousDetails:Lcom/dropbox/core/v2/teamlog/FileRequestDetails;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 61
    invoke-direct {p0, v0, v0}, Lcom/dropbox/core/v2/teamlog/FileRequestCloseDetails;-><init>(Ljava/lang/String;Lcom/dropbox/core/v2/teamlog/FileRequestDetails;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/dropbox/core/v2/teamlog/FileRequestDetails;)V
    .locals 2

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_2

    .line 44
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_1

    const-string v0, "[-_0-9a-zA-Z]+"

    .line 47
    invoke-static {v0, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 48
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "String \'fileRequestId\' does not match pattern"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 45
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "String \'fileRequestId\' is shorter than 1"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 51
    :cond_2
    :goto_0
    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/FileRequestCloseDetails;->fileRequestId:Ljava/lang/String;

    .line 52
    iput-object p2, p0, Lcom/dropbox/core/v2/teamlog/FileRequestCloseDetails;->previousDetails:Lcom/dropbox/core/v2/teamlog/FileRequestDetails;

    return-void
.end method

.method public static newBuilder()Lcom/dropbox/core/v2/teamlog/FileRequestCloseDetails$Builder;
    .locals 1

    .line 89
    new-instance v0, Lcom/dropbox/core/v2/teamlog/FileRequestCloseDetails$Builder;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamlog/FileRequestCloseDetails$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 172
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 173
    check-cast p1, Lcom/dropbox/core/v2/teamlog/FileRequestCloseDetails;

    .line 174
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/FileRequestCloseDetails;->fileRequestId:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/FileRequestCloseDetails;->fileRequestId:Ljava/lang/String;

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/FileRequestCloseDetails;->fileRequestId:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/FileRequestCloseDetails;->fileRequestId:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/FileRequestCloseDetails;->fileRequestId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/FileRequestCloseDetails;->previousDetails:Lcom/dropbox/core/v2/teamlog/FileRequestDetails;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/FileRequestCloseDetails;->previousDetails:Lcom/dropbox/core/v2/teamlog/FileRequestDetails;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/FileRequestCloseDetails;->previousDetails:Lcom/dropbox/core/v2/teamlog/FileRequestDetails;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/FileRequestCloseDetails;->previousDetails:Lcom/dropbox/core/v2/teamlog/FileRequestDetails;

    iget-object p1, p1, Lcom/dropbox/core/v2/teamlog/FileRequestCloseDetails;->previousDetails:Lcom/dropbox/core/v2/teamlog/FileRequestDetails;

    .line 175
    invoke-virtual {v2, p1}, Lcom/dropbox/core/v2/teamlog/FileRequestDetails;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :cond_4
    :goto_0
    return v0

    :cond_5
    return v1
.end method

.method public getFileRequestId()Ljava/lang/String;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/FileRequestCloseDetails;->fileRequestId:Ljava/lang/String;

    return-object v0
.end method

.method public getPreviousDetails()Lcom/dropbox/core/v2/teamlog/FileRequestDetails;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/FileRequestCloseDetails;->previousDetails:Lcom/dropbox/core/v2/teamlog/FileRequestDetails;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    .line 156
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/dropbox/core/v2/teamlog/FileRequestCloseDetails;->fileRequestId:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/teamlog/FileRequestCloseDetails;->previousDetails:Lcom/dropbox/core/v2/teamlog/FileRequestDetails;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 185
    sget-object v0, Lcom/dropbox/core/v2/teamlog/FileRequestCloseDetails$a;->a:Lcom/dropbox/core/v2/teamlog/FileRequestCloseDetails$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/teamlog/FileRequestCloseDetails$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .line 197
    sget-object v0, Lcom/dropbox/core/v2/teamlog/FileRequestCloseDetails$a;->a:Lcom/dropbox/core/v2/teamlog/FileRequestCloseDetails$a;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/teamlog/FileRequestCloseDetails$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
