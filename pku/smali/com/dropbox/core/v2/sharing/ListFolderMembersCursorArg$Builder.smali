.class public Lcom/dropbox/core/v2/sharing/ListFolderMembersCursorArg$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/sharing/ListFolderMembersCursorArg;
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

.field protected limit:J


# direct methods
.method protected constructor <init>()V
    .locals 2

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 107
    iput-object v0, p0, Lcom/dropbox/core/v2/sharing/ListFolderMembersCursorArg$Builder;->actions:Ljava/util/List;

    const-wide/16 v0, 0x3e8

    .line 108
    iput-wide v0, p0, Lcom/dropbox/core/v2/sharing/ListFolderMembersCursorArg$Builder;->limit:J

    return-void
.end method


# virtual methods
.method public build()Lcom/dropbox/core/v2/sharing/ListFolderMembersCursorArg;
    .locals 4

    .line 176
    new-instance v0, Lcom/dropbox/core/v2/sharing/ListFolderMembersCursorArg;

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/ListFolderMembersCursorArg$Builder;->actions:Ljava/util/List;

    iget-wide v2, p0, Lcom/dropbox/core/v2/sharing/ListFolderMembersCursorArg$Builder;->limit:J

    invoke-direct {v0, v1, v2, v3}, Lcom/dropbox/core/v2/sharing/ListFolderMembersCursorArg;-><init>(Ljava/util/List;J)V

    return-object v0
.end method

.method public withActions(Ljava/util/List;)Lcom/dropbox/core/v2/sharing/ListFolderMembersCursorArg$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/dropbox/core/v2/sharing/MemberAction;",
            ">;)",
            "Lcom/dropbox/core/v2/sharing/ListFolderMembersCursorArg$Builder;"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 127
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

    .line 129
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "An item in list \'actions\' is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 133
    :cond_1
    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/ListFolderMembersCursorArg$Builder;->actions:Ljava/util/List;

    return-object p0
.end method

.method public withLimit(Ljava/lang/Long;)Lcom/dropbox/core/v2/sharing/ListFolderMembersCursorArg$Builder;
    .locals 4

    .line 154
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2

    .line 157
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    if-eqz p1, :cond_0

    .line 161
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/dropbox/core/v2/sharing/ListFolderMembersCursorArg$Builder;->limit:J

    goto :goto_0

    .line 164
    :cond_0
    iput-wide v2, p0, Lcom/dropbox/core/v2/sharing/ListFolderMembersCursorArg$Builder;->limit:J

    :goto_0
    return-object p0

    .line 158
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Number \'limit\' is larger than 1000L"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 155
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Number \'limit\' is smaller than 1L"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
