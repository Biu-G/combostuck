.class public Lcom/dropbox/core/v2/sharing/AddFolderMemberArg$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/sharing/AddFolderMemberArg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field protected customMessage:Ljava/lang/String;

.field protected final members:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dropbox/core/v2/sharing/AddMember;",
            ">;"
        }
    .end annotation
.end field

.field protected quiet:Z

.field protected final sharedFolderId:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/dropbox/core/v2/sharing/AddMember;",
            ">;)V"
        }
    .end annotation

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_4

    const-string v0, "[-_0-9a-zA-Z:]+"

    .line 160
    invoke-static {v0, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 163
    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/AddFolderMemberArg$Builder;->sharedFolderId:Ljava/lang/String;

    if-eqz p2, :cond_2

    .line 167
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/sharing/AddMember;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 169
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "An item in list \'members\' is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 172
    :cond_1
    iput-object p2, p0, Lcom/dropbox/core/v2/sharing/AddFolderMemberArg$Builder;->members:Ljava/util/List;

    const/4 p1, 0x0

    .line 173
    iput-boolean p1, p0, Lcom/dropbox/core/v2/sharing/AddFolderMemberArg$Builder;->quiet:Z

    const/4 p1, 0x0

    .line 174
    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/AddFolderMemberArg$Builder;->customMessage:Ljava/lang/String;

    return-void

    .line 165
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Required value for \'members\' is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 161
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "String \'sharedFolderId\' does not match pattern"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 158
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Required value for \'sharedFolderId\' is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public build()Lcom/dropbox/core/v2/sharing/AddFolderMemberArg;
    .locals 5

    .line 227
    new-instance v0, Lcom/dropbox/core/v2/sharing/AddFolderMemberArg;

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/AddFolderMemberArg$Builder;->sharedFolderId:Ljava/lang/String;

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/AddFolderMemberArg$Builder;->members:Ljava/util/List;

    iget-boolean v3, p0, Lcom/dropbox/core/v2/sharing/AddFolderMemberArg$Builder;->quiet:Z

    iget-object v4, p0, Lcom/dropbox/core/v2/sharing/AddFolderMemberArg$Builder;->customMessage:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/dropbox/core/v2/sharing/AddFolderMemberArg;-><init>(Ljava/lang/String;Ljava/util/List;ZLjava/lang/String;)V

    return-object v0
.end method

.method public withCustomMessage(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/AddFolderMemberArg$Builder;
    .locals 2

    if-eqz p1, :cond_1

    .line 212
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    goto :goto_0

    .line 213
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "String \'customMessage\' is shorter than 1"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 216
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/AddFolderMemberArg$Builder;->customMessage:Ljava/lang/String;

    return-object p0
.end method

.method public withQuiet(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/sharing/AddFolderMemberArg$Builder;
    .locals 0

    if-eqz p1, :cond_0

    .line 191
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/dropbox/core/v2/sharing/AddFolderMemberArg$Builder;->quiet:Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 194
    iput-boolean p1, p0, Lcom/dropbox/core/v2/sharing/AddFolderMemberArg$Builder;->quiet:Z

    :goto_0
    return-object p0
.end method
