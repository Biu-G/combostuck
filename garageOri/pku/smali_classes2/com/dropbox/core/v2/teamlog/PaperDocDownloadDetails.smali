.class public Lcom/dropbox/core/v2/teamlog/PaperDocDownloadDetails;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/teamlog/PaperDocDownloadDetails$a;
    }
.end annotation


# instance fields
.field protected final eventUuid:Ljava/lang/String;

.field protected final exportFileFormat:Lcom/dropbox/core/v2/teamlog/PaperDownloadFormat;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/dropbox/core/v2/teamlog/PaperDownloadFormat;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    .line 40
    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/PaperDocDownloadDetails;->eventUuid:Ljava/lang/String;

    if-eqz p2, :cond_0

    .line 44
    iput-object p2, p0, Lcom/dropbox/core/v2/teamlog/PaperDocDownloadDetails;->exportFileFormat:Lcom/dropbox/core/v2/teamlog/PaperDownloadFormat;

    return-void

    .line 42
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Required value for \'exportFileFormat\' is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 38
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Required value for \'eventUuid\' is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
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

    .line 83
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 84
    check-cast p1, Lcom/dropbox/core/v2/teamlog/PaperDocDownloadDetails;

    .line 85
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/PaperDocDownloadDetails;->eventUuid:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/PaperDocDownloadDetails;->eventUuid:Ljava/lang/String;

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/PaperDocDownloadDetails;->eventUuid:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/PaperDocDownloadDetails;->eventUuid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/PaperDocDownloadDetails;->exportFileFormat:Lcom/dropbox/core/v2/teamlog/PaperDownloadFormat;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/PaperDocDownloadDetails;->exportFileFormat:Lcom/dropbox/core/v2/teamlog/PaperDownloadFormat;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/PaperDocDownloadDetails;->exportFileFormat:Lcom/dropbox/core/v2/teamlog/PaperDownloadFormat;

    iget-object p1, p1, Lcom/dropbox/core/v2/teamlog/PaperDocDownloadDetails;->exportFileFormat:Lcom/dropbox/core/v2/teamlog/PaperDownloadFormat;

    .line 86
    invoke-virtual {v2, p1}, Lcom/dropbox/core/v2/teamlog/PaperDownloadFormat;->equals(Ljava/lang/Object;)Z

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

.method public getEventUuid()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/PaperDocDownloadDetails;->eventUuid:Ljava/lang/String;

    return-object v0
.end method

.method public getExportFileFormat()Lcom/dropbox/core/v2/teamlog/PaperDownloadFormat;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/PaperDocDownloadDetails;->exportFileFormat:Lcom/dropbox/core/v2/teamlog/PaperDownloadFormat;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    .line 67
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/dropbox/core/v2/teamlog/PaperDocDownloadDetails;->eventUuid:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/teamlog/PaperDocDownloadDetails;->exportFileFormat:Lcom/dropbox/core/v2/teamlog/PaperDownloadFormat;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 96
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperDocDownloadDetails$a;->a:Lcom/dropbox/core/v2/teamlog/PaperDocDownloadDetails$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/teamlog/PaperDocDownloadDetails$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .line 108
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperDocDownloadDetails$a;->a:Lcom/dropbox/core/v2/teamlog/PaperDocDownloadDetails$a;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/teamlog/PaperDocDownloadDetails$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
