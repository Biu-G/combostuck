.class Lcom/dropbox/core/v2/sharing/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/sharing/c$a;
    }
.end annotation


# instance fields
.field protected final a:Ljava/lang/String;

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
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 78
    invoke-direct {p0, p1, v0}, Lcom/dropbox/core/v2/sharing/c;-><init>(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/dropbox/core/v2/sharing/FileAction;",
            ">;)V"
        }
    .end annotation

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_4

    .line 48
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_3

    const-string v0, "((/|id:).*|nspath:[0-9]+:.*)|ns:[0-9]+(/.*)?"

    .line 51
    invoke-static {v0, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 54
    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/c;->a:Ljava/lang/String;

    if-eqz p2, :cond_1

    .line 56
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/sharing/FileAction;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 58
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "An item in list \'actions\' is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 62
    :cond_1
    iput-object p2, p0, Lcom/dropbox/core/v2/sharing/c;->b:Ljava/util/List;

    return-void

    .line 52
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "String \'file\' does not match pattern"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 49
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "String \'file\' is shorter than 1"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 46
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Required value for \'file\' is null"

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

    .line 119
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 120
    check-cast p1, Lcom/dropbox/core/v2/sharing/c;

    .line 121
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/c;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/c;->a:Ljava/lang/String;

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/c;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/c;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/c;->b:Ljava/util/List;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/c;->b:Ljava/util/List;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/c;->b:Ljava/util/List;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/c;->b:Ljava/util/List;

    iget-object p1, p1, Lcom/dropbox/core/v2/sharing/c;->b:Ljava/util/List;

    .line 122
    invoke-interface {v2, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

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

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    .line 103
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/c;->a:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/c;->b:Ljava/util/List;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 132
    sget-object v0, Lcom/dropbox/core/v2/sharing/c$a;->a:Lcom/dropbox/core/v2/sharing/c$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/c$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
