.class public Lcom/dropbox/core/v2/filerequests/FileRequest$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/filerequests/FileRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field protected final created:Ljava/util/Date;

.field protected deadline:Lcom/dropbox/core/v2/filerequests/FileRequestDeadline;

.field protected destination:Ljava/lang/String;

.field protected final fileCount:J

.field protected final id:Ljava/lang/String;

.field protected final isOpen:Z

.field protected final title:Ljava/lang/String;

.field protected final url:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;ZJ)V
    .locals 2

    .line 245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_7

    .line 249
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_6

    const-string v0, "[-_0-9a-zA-Z]+"

    .line 252
    invoke-static {v0, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 255
    iput-object p1, p0, Lcom/dropbox/core/v2/filerequests/FileRequest$Builder;->id:Ljava/lang/String;

    if-eqz p2, :cond_4

    .line 259
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    if-lt p1, v1, :cond_3

    .line 262
    iput-object p2, p0, Lcom/dropbox/core/v2/filerequests/FileRequest$Builder;->url:Ljava/lang/String;

    if-eqz p3, :cond_2

    .line 266
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p1

    if-lt p1, v1, :cond_1

    .line 269
    iput-object p3, p0, Lcom/dropbox/core/v2/filerequests/FileRequest$Builder;->title:Ljava/lang/String;

    if-eqz p4, :cond_0

    .line 273
    invoke-static {p4}, Lcom/dropbox/core/util/LangUtil;->truncateMillis(Ljava/util/Date;)Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Lcom/dropbox/core/v2/filerequests/FileRequest$Builder;->created:Ljava/util/Date;

    .line 274
    iput-boolean p5, p0, Lcom/dropbox/core/v2/filerequests/FileRequest$Builder;->isOpen:Z

    .line 275
    iput-wide p6, p0, Lcom/dropbox/core/v2/filerequests/FileRequest$Builder;->fileCount:J

    const/4 p1, 0x0

    .line 276
    iput-object p1, p0, Lcom/dropbox/core/v2/filerequests/FileRequest$Builder;->destination:Ljava/lang/String;

    .line 277
    iput-object p1, p0, Lcom/dropbox/core/v2/filerequests/FileRequest$Builder;->deadline:Lcom/dropbox/core/v2/filerequests/FileRequestDeadline;

    return-void

    .line 271
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Required value for \'created\' is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 267
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "String \'title\' is shorter than 1"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 264
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Required value for \'title\' is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 260
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "String \'url\' is shorter than 1"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 257
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Required value for \'url\' is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 253
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "String \'id\' does not match pattern"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 250
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "String \'id\' is shorter than 1"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 247
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Required value for \'id\' is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public build()Lcom/dropbox/core/v2/filerequests/FileRequest;
    .locals 11

    .line 324
    new-instance v10, Lcom/dropbox/core/v2/filerequests/FileRequest;

    iget-object v1, p0, Lcom/dropbox/core/v2/filerequests/FileRequest$Builder;->id:Ljava/lang/String;

    iget-object v2, p0, Lcom/dropbox/core/v2/filerequests/FileRequest$Builder;->url:Ljava/lang/String;

    iget-object v3, p0, Lcom/dropbox/core/v2/filerequests/FileRequest$Builder;->title:Ljava/lang/String;

    iget-object v4, p0, Lcom/dropbox/core/v2/filerequests/FileRequest$Builder;->created:Ljava/util/Date;

    iget-boolean v5, p0, Lcom/dropbox/core/v2/filerequests/FileRequest$Builder;->isOpen:Z

    iget-wide v6, p0, Lcom/dropbox/core/v2/filerequests/FileRequest$Builder;->fileCount:J

    iget-object v8, p0, Lcom/dropbox/core/v2/filerequests/FileRequest$Builder;->destination:Ljava/lang/String;

    iget-object v9, p0, Lcom/dropbox/core/v2/filerequests/FileRequest$Builder;->deadline:Lcom/dropbox/core/v2/filerequests/FileRequestDeadline;

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lcom/dropbox/core/v2/filerequests/FileRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;ZJLjava/lang/String;Lcom/dropbox/core/v2/filerequests/FileRequestDeadline;)V

    return-object v10
.end method

.method public withDeadline(Lcom/dropbox/core/v2/filerequests/FileRequestDeadline;)Lcom/dropbox/core/v2/filerequests/FileRequest$Builder;
    .locals 0

    .line 313
    iput-object p1, p0, Lcom/dropbox/core/v2/filerequests/FileRequest$Builder;->deadline:Lcom/dropbox/core/v2/filerequests/FileRequestDeadline;

    return-object p0
.end method

.method public withDestination(Ljava/lang/String;)Lcom/dropbox/core/v2/filerequests/FileRequest$Builder;
    .locals 1

    if-eqz p1, :cond_1

    const-string v0, "/(.|[\\r\\n])*"

    .line 296
    invoke-static {v0, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 297
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "String \'destination\' does not match pattern"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 300
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/dropbox/core/v2/filerequests/FileRequest$Builder;->destination:Ljava/lang/String;

    return-object p0
.end method
