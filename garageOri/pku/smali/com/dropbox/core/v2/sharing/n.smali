.class Lcom/dropbox/core/v2/sharing/n;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/sharing/n$a;
    }
.end annotation


# instance fields
.field protected final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_2

    .line 37
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_1

    const-string v0, "((/|id:).*|nspath:[0-9]+:.*)|ns:[0-9]+(/.*)?"

    .line 40
    invoke-static {v0, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/n;->a:Ljava/lang/String;

    return-void

    .line 41
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "String \'file\' does not match pattern"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 38
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "String \'file\' is shorter than 1"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 35
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Required value for \'file\' is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

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

    .line 72
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 73
    check-cast p1, Lcom/dropbox/core/v2/sharing/n;

    .line 74
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/n;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/n;->a:Ljava/lang/String;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/n;->a:Ljava/lang/String;

    iget-object p1, p1, Lcom/dropbox/core/v2/sharing/n;->a:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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

    const/4 v0, 0x1

    .line 57
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/n;->a:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 83
    sget-object v0, Lcom/dropbox/core/v2/sharing/n$a;->a:Lcom/dropbox/core/v2/sharing/n$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/n$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
