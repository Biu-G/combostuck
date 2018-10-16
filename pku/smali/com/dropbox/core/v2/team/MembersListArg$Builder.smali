.class public Lcom/dropbox/core/v2/team/MembersListArg$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/team/MembersListArg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field protected includeRemoved:Z

.field protected limit:J


# direct methods
.method protected constructor <init>()V
    .locals 2

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x3e8

    .line 93
    iput-wide v0, p0, Lcom/dropbox/core/v2/team/MembersListArg$Builder;->limit:J

    const/4 v0, 0x0

    .line 94
    iput-boolean v0, p0, Lcom/dropbox/core/v2/team/MembersListArg$Builder;->includeRemoved:Z

    return-void
.end method


# virtual methods
.method public build()Lcom/dropbox/core/v2/team/MembersListArg;
    .locals 4

    .line 156
    new-instance v0, Lcom/dropbox/core/v2/team/MembersListArg;

    iget-wide v1, p0, Lcom/dropbox/core/v2/team/MembersListArg$Builder;->limit:J

    iget-boolean v3, p0, Lcom/dropbox/core/v2/team/MembersListArg$Builder;->includeRemoved:Z

    invoke-direct {v0, v1, v2, v3}, Lcom/dropbox/core/v2/team/MembersListArg;-><init>(JZ)V

    return-object v0
.end method

.method public withIncludeRemoved(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/team/MembersListArg$Builder;
    .locals 0

    if-eqz p1, :cond_0

    .line 141
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/dropbox/core/v2/team/MembersListArg$Builder;->includeRemoved:Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 144
    iput-boolean p1, p0, Lcom/dropbox/core/v2/team/MembersListArg$Builder;->includeRemoved:Z

    :goto_0
    return-object p0
.end method

.method public withLimit(Ljava/lang/Long;)Lcom/dropbox/core/v2/team/MembersListArg$Builder;
    .locals 4

    .line 113
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2

    .line 116
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    if-eqz p1, :cond_0

    .line 120
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/dropbox/core/v2/team/MembersListArg$Builder;->limit:J

    goto :goto_0

    .line 123
    :cond_0
    iput-wide v2, p0, Lcom/dropbox/core/v2/team/MembersListArg$Builder;->limit:J

    :goto_0
    return-object p0

    .line 117
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Number \'limit\' is larger than 1000L"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 114
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Number \'limit\' is smaller than 1L"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
