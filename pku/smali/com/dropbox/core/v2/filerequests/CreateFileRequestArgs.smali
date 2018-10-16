.class Lcom/dropbox/core/v2/filerequests/CreateFileRequestArgs;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/filerequests/CreateFileRequestArgs$a;,
        Lcom/dropbox/core/v2/filerequests/CreateFileRequestArgs$Builder;
    }
.end annotation


# instance fields
.field protected final a:Ljava/lang/String;

.field protected final b:Ljava/lang/String;

.field protected final c:Lcom/dropbox/core/v2/filerequests/FileRequestDeadline;

.field protected final d:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 86
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/dropbox/core/v2/filerequests/CreateFileRequestArgs;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/v2/filerequests/FileRequestDeadline;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/v2/filerequests/FileRequestDeadline;Z)V
    .locals 2

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_3

    .line 55
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_2

    .line 58
    iput-object p1, p0, Lcom/dropbox/core/v2/filerequests/CreateFileRequestArgs;->a:Ljava/lang/String;

    if-eqz p2, :cond_1

    const-string p1, "/(.|[\\r\\n])*"

    .line 62
    invoke-static {p1, p2}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 65
    iput-object p2, p0, Lcom/dropbox/core/v2/filerequests/CreateFileRequestArgs;->b:Ljava/lang/String;

    .line 66
    iput-object p3, p0, Lcom/dropbox/core/v2/filerequests/CreateFileRequestArgs;->c:Lcom/dropbox/core/v2/filerequests/FileRequestDeadline;

    .line 67
    iput-boolean p4, p0, Lcom/dropbox/core/v2/filerequests/CreateFileRequestArgs;->d:Z

    return-void

    .line 63
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "String \'destination\' does not match pattern"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 60
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Required value for \'destination\' is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 56
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "String \'title\' is shorter than 1"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 53
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Required value for \'title\' is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Lcom/dropbox/core/v2/filerequests/CreateFileRequestArgs$Builder;
    .locals 1

    .line 147
    new-instance v0, Lcom/dropbox/core/v2/filerequests/CreateFileRequestArgs$Builder;

    invoke-direct {v0, p0, p1}, Lcom/dropbox/core/v2/filerequests/CreateFileRequestArgs$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

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

    .line 246
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 247
    check-cast p1, Lcom/dropbox/core/v2/filerequests/CreateFileRequestArgs;

    .line 248
    iget-object v2, p0, Lcom/dropbox/core/v2/filerequests/CreateFileRequestArgs;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/filerequests/CreateFileRequestArgs;->a:Ljava/lang/String;

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/dropbox/core/v2/filerequests/CreateFileRequestArgs;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/filerequests/CreateFileRequestArgs;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_2
    iget-object v2, p0, Lcom/dropbox/core/v2/filerequests/CreateFileRequestArgs;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/filerequests/CreateFileRequestArgs;->b:Ljava/lang/String;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/filerequests/CreateFileRequestArgs;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/filerequests/CreateFileRequestArgs;->b:Ljava/lang/String;

    .line 249
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_3
    iget-object v2, p0, Lcom/dropbox/core/v2/filerequests/CreateFileRequestArgs;->c:Lcom/dropbox/core/v2/filerequests/FileRequestDeadline;

    iget-object v3, p1, Lcom/dropbox/core/v2/filerequests/CreateFileRequestArgs;->c:Lcom/dropbox/core/v2/filerequests/FileRequestDeadline;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/filerequests/CreateFileRequestArgs;->c:Lcom/dropbox/core/v2/filerequests/FileRequestDeadline;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/dropbox/core/v2/filerequests/CreateFileRequestArgs;->c:Lcom/dropbox/core/v2/filerequests/FileRequestDeadline;

    iget-object v3, p1, Lcom/dropbox/core/v2/filerequests/CreateFileRequestArgs;->c:Lcom/dropbox/core/v2/filerequests/FileRequestDeadline;

    .line 250
    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/filerequests/FileRequestDeadline;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    iget-boolean v2, p0, Lcom/dropbox/core/v2/filerequests/CreateFileRequestArgs;->d:Z

    iget-boolean p1, p1, Lcom/dropbox/core/v2/filerequests/CreateFileRequestArgs;->d:Z

    if-ne v2, p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_6
    return v1
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x4

    .line 228
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/dropbox/core/v2/filerequests/CreateFileRequestArgs;->a:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/filerequests/CreateFileRequestArgs;->b:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/filerequests/CreateFileRequestArgs;->c:Lcom/dropbox/core/v2/filerequests/FileRequestDeadline;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/dropbox/core/v2/filerequests/CreateFileRequestArgs;->d:Z

    .line 232
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 228
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 261
    sget-object v0, Lcom/dropbox/core/v2/filerequests/CreateFileRequestArgs$a;->a:Lcom/dropbox/core/v2/filerequests/CreateFileRequestArgs$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/filerequests/CreateFileRequestArgs$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
