.class public Lcom/dropbox/core/v2/sharing/ListFileMembersArg$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/sharing/ListFileMembersArg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field protected actions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dropbox/core/v2/sharing/MemberAction;",
            ">;"
        }
    .end annotation
.end field

.field protected final file:Ljava/lang/String;

.field protected includeInherited:Z

.field protected limit:J


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_2

    .line 169
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_1

    const-string v0, "((/|id:).*|nspath:[0-9]+:.*)|ns:[0-9]+(/.*)?"

    .line 172
    invoke-static {v0, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/ListFileMembersArg$Builder;->file:Ljava/lang/String;

    const/4 p1, 0x0

    .line 176
    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/ListFileMembersArg$Builder;->actions:Ljava/util/List;

    .line 177
    iput-boolean v1, p0, Lcom/dropbox/core/v2/sharing/ListFileMembersArg$Builder;->includeInherited:Z

    const-wide/16 v0, 0x64

    .line 178
    iput-wide v0, p0, Lcom/dropbox/core/v2/sharing/ListFileMembersArg$Builder;->limit:J

    return-void

    .line 173
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "String \'file\' does not match pattern"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 170
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "String \'file\' is shorter than 1"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 167
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Required value for \'file\' is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public build()Lcom/dropbox/core/v2/sharing/ListFileMembersArg;
    .locals 7

    .line 265
    new-instance v6, Lcom/dropbox/core/v2/sharing/ListFileMembersArg;

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/ListFileMembersArg$Builder;->file:Ljava/lang/String;

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ListFileMembersArg$Builder;->actions:Ljava/util/List;

    iget-boolean v3, p0, Lcom/dropbox/core/v2/sharing/ListFileMembersArg$Builder;->includeInherited:Z

    iget-wide v4, p0, Lcom/dropbox/core/v2/sharing/ListFileMembersArg$Builder;->limit:J

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/dropbox/core/v2/sharing/ListFileMembersArg;-><init>(Ljava/lang/String;Ljava/util/List;ZJ)V

    return-object v6
.end method

.method public withActions(Ljava/util/List;)Lcom/dropbox/core/v2/sharing/ListFileMembersArg$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/dropbox/core/v2/sharing/MemberAction;",
            ">;)",
            "Lcom/dropbox/core/v2/sharing/ListFileMembersArg$Builder;"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 194
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dropbox/core/v2/sharing/MemberAction;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 196
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "An item in list \'actions\' is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 200
    :cond_1
    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/ListFileMembersArg$Builder;->actions:Ljava/util/List;

    return-object p0
.end method

.method public withIncludeInherited(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/sharing/ListFileMembersArg$Builder;
    .locals 0

    if-eqz p1, :cond_0

    .line 218
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/dropbox/core/v2/sharing/ListFileMembersArg$Builder;->includeInherited:Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 221
    iput-boolean p1, p0, Lcom/dropbox/core/v2/sharing/ListFileMembersArg$Builder;->includeInherited:Z

    :goto_0
    return-object p0
.end method

.method public withLimit(Ljava/lang/Long;)Lcom/dropbox/core/v2/sharing/ListFileMembersArg$Builder;
    .locals 4

    .line 243
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2

    .line 246
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x12c

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    if-eqz p1, :cond_0

    .line 250
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/dropbox/core/v2/sharing/ListFileMembersArg$Builder;->limit:J

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x64

    .line 253
    iput-wide v0, p0, Lcom/dropbox/core/v2/sharing/ListFileMembersArg$Builder;->limit:J

    :goto_0
    return-object p0

    .line 247
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Number \'limit\' is larger than 300L"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 244
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Number \'limit\' is smaller than 1L"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
