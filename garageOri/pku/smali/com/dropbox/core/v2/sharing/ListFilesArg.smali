.class Lcom/dropbox/core/v2/sharing/ListFilesArg;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/sharing/ListFilesArg$a;,
        Lcom/dropbox/core/v2/sharing/ListFilesArg$Builder;
    }
.end annotation


# instance fields
.field protected final a:J

.field protected final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dropbox/core/v2/sharing/FileAction;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    const-wide/16 v0, 0x64

    const/4 v2, 0x0

    .line 70
    invoke-direct {p0, v0, v1, v2}, Lcom/dropbox/core/v2/sharing/ListFilesArg;-><init>(JLjava/util/List;)V

    return-void
.end method

.method public constructor <init>(JLjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Lcom/dropbox/core/v2/sharing/FileAction;",
            ">;)V"
        }
    .end annotation

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x1

    cmp-long v0, p1, v0

    if-ltz v0, :cond_3

    const-wide/16 v0, 0x12c

    cmp-long v0, p1, v0

    if-gtz v0, :cond_2

    .line 53
    iput-wide p1, p0, Lcom/dropbox/core/v2/sharing/ListFilesArg;->a:J

    if-eqz p3, :cond_1

    .line 55
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/dropbox/core/v2/sharing/FileAction;

    if-eqz p2, :cond_0

    goto :goto_0

    .line 57
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "An item in list \'actions\' is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 61
    :cond_1
    iput-object p3, p0, Lcom/dropbox/core/v2/sharing/ListFilesArg;->b:Ljava/util/List;

    return-void

    .line 51
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Number \'limit\' is larger than 300L"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 48
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Number \'limit\' is smaller than 1L"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static a()Lcom/dropbox/core/v2/sharing/ListFilesArg$Builder;
    .locals 1

    .line 101
    new-instance v0, Lcom/dropbox/core/v2/sharing/ListFilesArg$Builder;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/ListFilesArg$Builder;-><init>()V

    return-object v0
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

    .line 204
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 205
    check-cast p1, Lcom/dropbox/core/v2/sharing/ListFilesArg;

    .line 206
    iget-wide v2, p0, Lcom/dropbox/core/v2/sharing/ListFilesArg;->a:J

    iget-wide v4, p1, Lcom/dropbox/core/v2/sharing/ListFilesArg;->a:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ListFilesArg;->b:Ljava/util/List;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/ListFilesArg;->b:Ljava/util/List;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ListFilesArg;->b:Ljava/util/List;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ListFilesArg;->b:Ljava/util/List;

    iget-object p1, p1, Lcom/dropbox/core/v2/sharing/ListFilesArg;->b:Ljava/util/List;

    .line 207
    invoke-interface {v2, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :cond_3
    :goto_0
    return v0

    :cond_4
    return v1
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    .line 188
    new-array v0, v0, [Ljava/lang/Object;

    iget-wide v1, p0, Lcom/dropbox/core/v2/sharing/ListFilesArg;->a:J

    .line 189
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/ListFilesArg;->b:Ljava/util/List;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 188
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 217
    sget-object v0, Lcom/dropbox/core/v2/sharing/ListFilesArg$a;->a:Lcom/dropbox/core/v2/sharing/ListFilesArg$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/ListFilesArg$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
