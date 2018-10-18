.class public final Lcom/dropbox/core/v2/files/GetMetadataError;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/files/GetMetadataError$a;,
        Lcom/dropbox/core/v2/files/GetMetadataError$Tag;
    }
.end annotation


# instance fields
.field private a:Lcom/dropbox/core/v2/files/GetMetadataError$Tag;

.field private b:Lcom/dropbox/core/v2/files/LookupError;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/dropbox/core/v2/files/GetMetadataError$Tag;Lcom/dropbox/core/v2/files/LookupError;)Lcom/dropbox/core/v2/files/GetMetadataError;
    .locals 1

    .line 63
    new-instance v0, Lcom/dropbox/core/v2/files/GetMetadataError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/GetMetadataError;-><init>()V

    .line 64
    iput-object p1, v0, Lcom/dropbox/core/v2/files/GetMetadataError;->a:Lcom/dropbox/core/v2/files/GetMetadataError$Tag;

    .line 65
    iput-object p2, v0, Lcom/dropbox/core/v2/files/GetMetadataError;->b:Lcom/dropbox/core/v2/files/LookupError;

    return-object v0
.end method

.method static synthetic a(Lcom/dropbox/core/v2/files/GetMetadataError;)Lcom/dropbox/core/v2/files/LookupError;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/dropbox/core/v2/files/GetMetadataError;->b:Lcom/dropbox/core/v2/files/LookupError;

    return-object p0
.end method

.method public static path(Lcom/dropbox/core/v2/files/LookupError;)Lcom/dropbox/core/v2/files/GetMetadataError;
    .locals 2

    if-eqz p0, :cond_0

    .line 112
    new-instance v0, Lcom/dropbox/core/v2/files/GetMetadataError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/GetMetadataError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/files/GetMetadataError$Tag;->PATH:Lcom/dropbox/core/v2/files/GetMetadataError$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/files/GetMetadataError;->a(Lcom/dropbox/core/v2/files/GetMetadataError$Tag;Lcom/dropbox/core/v2/files/LookupError;)Lcom/dropbox/core/v2/files/GetMetadataError;

    move-result-object p0

    return-object p0

    .line 110
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
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

    .line 147
    :cond_1
    instance-of v2, p1, Lcom/dropbox/core/v2/files/GetMetadataError;

    if-eqz v2, :cond_6

    .line 148
    check-cast p1, Lcom/dropbox/core/v2/files/GetMetadataError;

    .line 149
    iget-object v2, p0, Lcom/dropbox/core/v2/files/GetMetadataError;->a:Lcom/dropbox/core/v2/files/GetMetadataError$Tag;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/GetMetadataError;->a:Lcom/dropbox/core/v2/files/GetMetadataError$Tag;

    if-eq v2, v3, :cond_2

    return v1

    .line 152
    :cond_2
    sget-object v2, Lcom/dropbox/core/v2/files/GetMetadataError$1;->a:[I

    iget-object v3, p0, Lcom/dropbox/core/v2/files/GetMetadataError;->a:Lcom/dropbox/core/v2/files/GetMetadataError$Tag;

    invoke-virtual {v3}, Lcom/dropbox/core/v2/files/GetMetadataError$Tag;->ordinal()I

    move-result v3

    aget v2, v2, v3

    if-eq v2, v0, :cond_3

    return v1

    .line 154
    :cond_3
    iget-object v2, p0, Lcom/dropbox/core/v2/files/GetMetadataError;->b:Lcom/dropbox/core/v2/files/LookupError;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/GetMetadataError;->b:Lcom/dropbox/core/v2/files/LookupError;

    if-eq v2, v3, :cond_5

    iget-object v2, p0, Lcom/dropbox/core/v2/files/GetMetadataError;->b:Lcom/dropbox/core/v2/files/LookupError;

    iget-object p1, p1, Lcom/dropbox/core/v2/files/GetMetadataError;->b:Lcom/dropbox/core/v2/files/LookupError;

    invoke-virtual {v2, p1}, Lcom/dropbox/core/v2/files/LookupError;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :cond_5
    :goto_0
    return v0

    :cond_6
    return v1
.end method

.method public getPathValue()Lcom/dropbox/core/v2/files/LookupError;
    .locals 3

    .line 124
    iget-object v0, p0, Lcom/dropbox/core/v2/files/GetMetadataError;->a:Lcom/dropbox/core/v2/files/GetMetadataError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/GetMetadataError$Tag;->PATH:Lcom/dropbox/core/v2/files/GetMetadataError$Tag;

    if-ne v0, v1, :cond_0

    .line 127
    iget-object v0, p0, Lcom/dropbox/core/v2/files/GetMetadataError;->b:Lcom/dropbox/core/v2/files/LookupError;

    return-object v0

    .line 125
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.PATH, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/dropbox/core/v2/files/GetMetadataError;->a:Lcom/dropbox/core/v2/files/GetMetadataError$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/files/GetMetadataError$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    .line 132
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/dropbox/core/v2/files/GetMetadataError;->a:Lcom/dropbox/core/v2/files/GetMetadataError$Tag;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/files/GetMetadataError;->b:Lcom/dropbox/core/v2/files/LookupError;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isPath()Z
    .locals 2

    .line 92
    iget-object v0, p0, Lcom/dropbox/core/v2/files/GetMetadataError;->a:Lcom/dropbox/core/v2/files/GetMetadataError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/GetMetadataError$Tag;->PATH:Lcom/dropbox/core/v2/files/GetMetadataError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public tag()Lcom/dropbox/core/v2/files/GetMetadataError$Tag;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/dropbox/core/v2/files/GetMetadataError;->a:Lcom/dropbox/core/v2/files/GetMetadataError$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 166
    sget-object v0, Lcom/dropbox/core/v2/files/GetMetadataError$a;->a:Lcom/dropbox/core/v2/files/GetMetadataError$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/GetMetadataError$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .line 178
    sget-object v0, Lcom/dropbox/core/v2/files/GetMetadataError$a;->a:Lcom/dropbox/core/v2/files/GetMetadataError$a;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/GetMetadataError$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
