.class public Lcom/dropbox/core/v2/filerequests/FileRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/filerequests/FileRequest$a;,
        Lcom/dropbox/core/v2/filerequests/FileRequest$Builder;
    }
.end annotation


# instance fields
.field protected final created:Ljava/util/Date;

.field protected final deadline:Lcom/dropbox/core/v2/filerequests/FileRequestDeadline;

.field protected final destination:Ljava/lang/String;

.field protected final fileCount:J

.field protected final id:Ljava/lang/String;

.field protected final isOpen:Z

.field protected final title:Ljava/lang/String;

.field protected final url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;ZJ)V
    .locals 10

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-wide/from16 v6, p6

    .line 128
    invoke-direct/range {v0 .. v9}, Lcom/dropbox/core/v2/filerequests/FileRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;ZJLjava/lang/String;Lcom/dropbox/core/v2/filerequests/FileRequestDeadline;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;ZJLjava/lang/String;Lcom/dropbox/core/v2/filerequests/FileRequestDeadline;)V
    .locals 2

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_9

    .line 70
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_8

    const-string v0, "[-_0-9a-zA-Z]+"

    .line 73
    invoke-static {v0, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 76
    iput-object p1, p0, Lcom/dropbox/core/v2/filerequests/FileRequest;->id:Ljava/lang/String;

    if-eqz p2, :cond_6

    .line 80
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    if-lt p1, v1, :cond_5

    .line 83
    iput-object p2, p0, Lcom/dropbox/core/v2/filerequests/FileRequest;->url:Ljava/lang/String;

    if-eqz p3, :cond_4

    .line 87
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p1

    if-lt p1, v1, :cond_3

    .line 90
    iput-object p3, p0, Lcom/dropbox/core/v2/filerequests/FileRequest;->title:Ljava/lang/String;

    if-eqz p8, :cond_1

    const-string p1, "/(.|[\\r\\n])*"

    .line 92
    invoke-static {p1, p8}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 93
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "String \'destination\' does not match pattern"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 96
    :cond_1
    :goto_0
    iput-object p8, p0, Lcom/dropbox/core/v2/filerequests/FileRequest;->destination:Ljava/lang/String;

    if-eqz p4, :cond_2

    .line 100
    invoke-static {p4}, Lcom/dropbox/core/util/LangUtil;->truncateMillis(Ljava/util/Date;)Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Lcom/dropbox/core/v2/filerequests/FileRequest;->created:Ljava/util/Date;

    .line 101
    iput-object p9, p0, Lcom/dropbox/core/v2/filerequests/FileRequest;->deadline:Lcom/dropbox/core/v2/filerequests/FileRequestDeadline;

    .line 102
    iput-boolean p5, p0, Lcom/dropbox/core/v2/filerequests/FileRequest;->isOpen:Z

    .line 103
    iput-wide p6, p0, Lcom/dropbox/core/v2/filerequests/FileRequest;->fileCount:J

    return-void

    .line 98
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Required value for \'created\' is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 88
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "String \'title\' is shorter than 1"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 85
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Required value for \'title\' is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 81
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "String \'url\' is shorter than 1"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 78
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Required value for \'url\' is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 74
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "String \'id\' does not match pattern"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 71
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "String \'id\' is shorter than 1"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 68
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Required value for \'id\' is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static newBuilder(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;ZJ)Lcom/dropbox/core/v2/filerequests/FileRequest$Builder;
    .locals 9

    .line 228
    new-instance v8, Lcom/dropbox/core/v2/filerequests/FileRequest$Builder;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-wide v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/dropbox/core/v2/filerequests/FileRequest$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;ZJ)V

    return-object v8
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 352
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 353
    check-cast p1, Lcom/dropbox/core/v2/filerequests/FileRequest;

    .line 354
    iget-object v2, p0, Lcom/dropbox/core/v2/filerequests/FileRequest;->id:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/filerequests/FileRequest;->id:Ljava/lang/String;

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/dropbox/core/v2/filerequests/FileRequest;->id:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/filerequests/FileRequest;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_2
    iget-object v2, p0, Lcom/dropbox/core/v2/filerequests/FileRequest;->url:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/filerequests/FileRequest;->url:Ljava/lang/String;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/filerequests/FileRequest;->url:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/filerequests/FileRequest;->url:Ljava/lang/String;

    .line 355
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_3
    iget-object v2, p0, Lcom/dropbox/core/v2/filerequests/FileRequest;->title:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/filerequests/FileRequest;->title:Ljava/lang/String;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/filerequests/FileRequest;->title:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/filerequests/FileRequest;->title:Ljava/lang/String;

    .line 356
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_4
    iget-object v2, p0, Lcom/dropbox/core/v2/filerequests/FileRequest;->created:Ljava/util/Date;

    iget-object v3, p1, Lcom/dropbox/core/v2/filerequests/FileRequest;->created:Ljava/util/Date;

    if-eq v2, v3, :cond_5

    iget-object v2, p0, Lcom/dropbox/core/v2/filerequests/FileRequest;->created:Ljava/util/Date;

    iget-object v3, p1, Lcom/dropbox/core/v2/filerequests/FileRequest;->created:Ljava/util/Date;

    .line 357
    invoke-virtual {v2, v3}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_5
    iget-boolean v2, p0, Lcom/dropbox/core/v2/filerequests/FileRequest;->isOpen:Z

    iget-boolean v3, p1, Lcom/dropbox/core/v2/filerequests/FileRequest;->isOpen:Z

    if-ne v2, v3, :cond_7

    iget-wide v2, p0, Lcom/dropbox/core/v2/filerequests/FileRequest;->fileCount:J

    iget-wide v4, p1, Lcom/dropbox/core/v2/filerequests/FileRequest;->fileCount:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_7

    iget-object v2, p0, Lcom/dropbox/core/v2/filerequests/FileRequest;->destination:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/filerequests/FileRequest;->destination:Ljava/lang/String;

    if-eq v2, v3, :cond_6

    iget-object v2, p0, Lcom/dropbox/core/v2/filerequests/FileRequest;->destination:Ljava/lang/String;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/dropbox/core/v2/filerequests/FileRequest;->destination:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/filerequests/FileRequest;->destination:Ljava/lang/String;

    .line 360
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_6
    iget-object v2, p0, Lcom/dropbox/core/v2/filerequests/FileRequest;->deadline:Lcom/dropbox/core/v2/filerequests/FileRequestDeadline;

    iget-object v3, p1, Lcom/dropbox/core/v2/filerequests/FileRequest;->deadline:Lcom/dropbox/core/v2/filerequests/FileRequestDeadline;

    if-eq v2, v3, :cond_8

    iget-object v2, p0, Lcom/dropbox/core/v2/filerequests/FileRequest;->deadline:Lcom/dropbox/core/v2/filerequests/FileRequestDeadline;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/dropbox/core/v2/filerequests/FileRequest;->deadline:Lcom/dropbox/core/v2/filerequests/FileRequestDeadline;

    iget-object p1, p1, Lcom/dropbox/core/v2/filerequests/FileRequest;->deadline:Lcom/dropbox/core/v2/filerequests/FileRequestDeadline;

    .line 361
    invoke-virtual {v2, p1}, Lcom/dropbox/core/v2/filerequests/FileRequestDeadline;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_0

    :cond_7
    const/4 v0, 0x0

    :cond_8
    :goto_0
    return v0

    :cond_9
    return v1
.end method

.method public getCreated()Ljava/util/Date;
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/dropbox/core/v2/filerequests/FileRequest;->created:Ljava/util/Date;

    return-object v0
.end method

.method public getDeadline()Lcom/dropbox/core/v2/filerequests/FileRequestDeadline;
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/dropbox/core/v2/filerequests/FileRequest;->deadline:Lcom/dropbox/core/v2/filerequests/FileRequestDeadline;

    return-object v0
.end method

.method public getDestination()Ljava/lang/String;
    .locals 1

    .line 194
    iget-object v0, p0, Lcom/dropbox/core/v2/filerequests/FileRequest;->destination:Ljava/lang/String;

    return-object v0
.end method

.method public getFileCount()J
    .locals 2

    .line 183
    iget-wide v0, p0, Lcom/dropbox/core/v2/filerequests/FileRequest;->fileCount:J

    return-wide v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/dropbox/core/v2/filerequests/FileRequest;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getIsOpen()Z
    .locals 1

    .line 174
    iget-boolean v0, p0, Lcom/dropbox/core/v2/filerequests/FileRequest;->isOpen:Z

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/dropbox/core/v2/filerequests/FileRequest;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/dropbox/core/v2/filerequests/FileRequest;->url:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/16 v0, 0x8

    .line 330
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/dropbox/core/v2/filerequests/FileRequest;->id:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/filerequests/FileRequest;->url:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/filerequests/FileRequest;->title:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/filerequests/FileRequest;->destination:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/filerequests/FileRequest;->created:Ljava/util/Date;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/filerequests/FileRequest;->deadline:Lcom/dropbox/core/v2/filerequests/FileRequestDeadline;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/dropbox/core/v2/filerequests/FileRequest;->isOpen:Z

    .line 337
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/dropbox/core/v2/filerequests/FileRequest;->fileCount:J

    .line 338
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 330
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 371
    sget-object v0, Lcom/dropbox/core/v2/filerequests/FileRequest$a;->a:Lcom/dropbox/core/v2/filerequests/FileRequest$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/filerequests/FileRequest$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .line 383
    sget-object v0, Lcom/dropbox/core/v2/filerequests/FileRequest$a;->a:Lcom/dropbox/core/v2/filerequests/FileRequest$a;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/filerequests/FileRequest$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
