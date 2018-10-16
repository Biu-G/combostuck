.class Lcom/dropbox/core/v2/sharing/s;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/sharing/s$a;
    }
.end annotation


# instance fields
.field protected final a:Lcom/dropbox/core/v2/sharing/AccessInheritance;

.field protected final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 61
    sget-object v0, Lcom/dropbox/core/v2/sharing/AccessInheritance;->INHERIT:Lcom/dropbox/core/v2/sharing/AccessInheritance;

    invoke-direct {p0, p1, v0}, Lcom/dropbox/core/v2/sharing/s;-><init>(Ljava/lang/String;Lcom/dropbox/core/v2/sharing/AccessInheritance;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/dropbox/core/v2/sharing/AccessInheritance;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_2

    .line 39
    iput-object p2, p0, Lcom/dropbox/core/v2/sharing/s;->a:Lcom/dropbox/core/v2/sharing/AccessInheritance;

    if-eqz p1, :cond_1

    const-string p2, "[-_0-9a-zA-Z:]+"

    .line 43
    invoke-static {p2, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 46
    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/s;->b:Ljava/lang/String;

    return-void

    .line 44
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "String \'sharedFolderId\' does not match pattern"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 41
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Required value for \'sharedFolderId\' is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 37
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Required value for \'accessInheritance\' is null"

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

    .line 101
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 102
    check-cast p1, Lcom/dropbox/core/v2/sharing/s;

    .line 103
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/s;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/s;->b:Ljava/lang/String;

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/s;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/s;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/s;->a:Lcom/dropbox/core/v2/sharing/AccessInheritance;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/s;->a:Lcom/dropbox/core/v2/sharing/AccessInheritance;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/s;->a:Lcom/dropbox/core/v2/sharing/AccessInheritance;

    iget-object p1, p1, Lcom/dropbox/core/v2/sharing/s;->a:Lcom/dropbox/core/v2/sharing/AccessInheritance;

    .line 104
    invoke-virtual {v2, p1}, Lcom/dropbox/core/v2/sharing/AccessInheritance;->equals(Ljava/lang/Object;)Z

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

    .line 85
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/s;->a:Lcom/dropbox/core/v2/sharing/AccessInheritance;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/s;->b:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 114
    sget-object v0, Lcom/dropbox/core/v2/sharing/s$a;->a:Lcom/dropbox/core/v2/sharing/s$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/s$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
