.class public Lcom/dropbox/core/v2/files/ListRevisionsArg$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/files/ListRevisionsArg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field protected limit:J

.field protected mode:Lcom/dropbox/core/v2/files/ListRevisionsMode;

.field protected final path:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    const-string v0, "/(.|[\\r\\n])*|id:.*|(ns:[0-9]+(/.*)?)"

    .line 137
    invoke-static {v0, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    iput-object p1, p0, Lcom/dropbox/core/v2/files/ListRevisionsArg$Builder;->path:Ljava/lang/String;

    .line 141
    sget-object p1, Lcom/dropbox/core/v2/files/ListRevisionsMode;->PATH:Lcom/dropbox/core/v2/files/ListRevisionsMode;

    iput-object p1, p0, Lcom/dropbox/core/v2/files/ListRevisionsArg$Builder;->mode:Lcom/dropbox/core/v2/files/ListRevisionsMode;

    const-wide/16 v0, 0xa

    .line 142
    iput-wide v0, p0, Lcom/dropbox/core/v2/files/ListRevisionsArg$Builder;->limit:J

    return-void

    .line 138
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "String \'path\' does not match pattern"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 135
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Required value for \'path\' is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public build()Lcom/dropbox/core/v2/files/ListRevisionsArg;
    .locals 5

    .line 209
    new-instance v0, Lcom/dropbox/core/v2/files/ListRevisionsArg;

    iget-object v1, p0, Lcom/dropbox/core/v2/files/ListRevisionsArg$Builder;->path:Ljava/lang/String;

    iget-object v2, p0, Lcom/dropbox/core/v2/files/ListRevisionsArg$Builder;->mode:Lcom/dropbox/core/v2/files/ListRevisionsMode;

    iget-wide v3, p0, Lcom/dropbox/core/v2/files/ListRevisionsArg$Builder;->limit:J

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/dropbox/core/v2/files/ListRevisionsArg;-><init>(Ljava/lang/String;Lcom/dropbox/core/v2/files/ListRevisionsMode;J)V

    return-object v0
.end method

.method public withLimit(Ljava/lang/Long;)Lcom/dropbox/core/v2/files/ListRevisionsArg$Builder;
    .locals 4

    .line 187
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2

    .line 190
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x64

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    if-eqz p1, :cond_0

    .line 194
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/dropbox/core/v2/files/ListRevisionsArg$Builder;->limit:J

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0xa

    .line 197
    iput-wide v0, p0, Lcom/dropbox/core/v2/files/ListRevisionsArg$Builder;->limit:J

    :goto_0
    return-object p0

    .line 191
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Number \'limit\' is larger than 100L"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 188
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Number \'limit\' is smaller than 1L"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public withMode(Lcom/dropbox/core/v2/files/ListRevisionsMode;)Lcom/dropbox/core/v2/files/ListRevisionsArg$Builder;
    .locals 0

    if-eqz p1, :cond_0

    .line 163
    iput-object p1, p0, Lcom/dropbox/core/v2/files/ListRevisionsArg$Builder;->mode:Lcom/dropbox/core/v2/files/ListRevisionsMode;

    goto :goto_0

    .line 166
    :cond_0
    sget-object p1, Lcom/dropbox/core/v2/files/ListRevisionsMode;->PATH:Lcom/dropbox/core/v2/files/ListRevisionsMode;

    iput-object p1, p0, Lcom/dropbox/core/v2/files/ListRevisionsArg$Builder;->mode:Lcom/dropbox/core/v2/files/ListRevisionsMode;

    :goto_0
    return-object p0
.end method
