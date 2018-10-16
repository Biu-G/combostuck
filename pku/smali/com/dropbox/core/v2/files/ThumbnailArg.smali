.class public Lcom/dropbox/core/v2/files/ThumbnailArg;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/files/ThumbnailArg$a;,
        Lcom/dropbox/core/v2/files/ThumbnailArg$Builder;
    }
.end annotation


# instance fields
.field protected final format:Lcom/dropbox/core/v2/files/ThumbnailFormat;

.field protected final mode:Lcom/dropbox/core/v2/files/ThumbnailMode;

.field protected final path:Ljava/lang/String;

.field protected final size:Lcom/dropbox/core/v2/files/ThumbnailSize;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .line 81
    sget-object v0, Lcom/dropbox/core/v2/files/ThumbnailFormat;->JPEG:Lcom/dropbox/core/v2/files/ThumbnailFormat;

    sget-object v1, Lcom/dropbox/core/v2/files/ThumbnailSize;->W64H64:Lcom/dropbox/core/v2/files/ThumbnailSize;

    sget-object v2, Lcom/dropbox/core/v2/files/ThumbnailMode;->STRICT:Lcom/dropbox/core/v2/files/ThumbnailMode;

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/dropbox/core/v2/files/ThumbnailArg;-><init>(Ljava/lang/String;Lcom/dropbox/core/v2/files/ThumbnailFormat;Lcom/dropbox/core/v2/files/ThumbnailSize;Lcom/dropbox/core/v2/files/ThumbnailMode;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/dropbox/core/v2/files/ThumbnailFormat;Lcom/dropbox/core/v2/files/ThumbnailSize;Lcom/dropbox/core/v2/files/ThumbnailMode;)V
    .locals 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_4

    const-string v0, "(/(.|[\\r\\n])*|id:.*)|(rev:[0-9a-f]{9,})|(ns:[0-9]+(/.*)?)"

    .line 49
    invoke-static {v0, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 52
    iput-object p1, p0, Lcom/dropbox/core/v2/files/ThumbnailArg;->path:Ljava/lang/String;

    if-eqz p2, :cond_2

    .line 56
    iput-object p2, p0, Lcom/dropbox/core/v2/files/ThumbnailArg;->format:Lcom/dropbox/core/v2/files/ThumbnailFormat;

    if-eqz p3, :cond_1

    .line 60
    iput-object p3, p0, Lcom/dropbox/core/v2/files/ThumbnailArg;->size:Lcom/dropbox/core/v2/files/ThumbnailSize;

    if-eqz p4, :cond_0

    .line 64
    iput-object p4, p0, Lcom/dropbox/core/v2/files/ThumbnailArg;->mode:Lcom/dropbox/core/v2/files/ThumbnailMode;

    return-void

    .line 62
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Required value for \'mode\' is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 58
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Required value for \'size\' is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 54
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Required value for \'format\' is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 50
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "String \'path\' does not match pattern"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 47
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Required value for \'path\' is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static newBuilder(Ljava/lang/String;)Lcom/dropbox/core/v2/files/ThumbnailArg$Builder;
    .locals 1

    .line 139
    new-instance v0, Lcom/dropbox/core/v2/files/ThumbnailArg$Builder;

    invoke-direct {v0, p0}, Lcom/dropbox/core/v2/files/ThumbnailArg$Builder;-><init>(Ljava/lang/String;)V

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

    .line 273
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 274
    check-cast p1, Lcom/dropbox/core/v2/files/ThumbnailArg;

    .line 275
    iget-object v2, p0, Lcom/dropbox/core/v2/files/ThumbnailArg;->path:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/ThumbnailArg;->path:Ljava/lang/String;

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/dropbox/core/v2/files/ThumbnailArg;->path:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/ThumbnailArg;->path:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_2
    iget-object v2, p0, Lcom/dropbox/core/v2/files/ThumbnailArg;->format:Lcom/dropbox/core/v2/files/ThumbnailFormat;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/ThumbnailArg;->format:Lcom/dropbox/core/v2/files/ThumbnailFormat;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/files/ThumbnailArg;->format:Lcom/dropbox/core/v2/files/ThumbnailFormat;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/ThumbnailArg;->format:Lcom/dropbox/core/v2/files/ThumbnailFormat;

    .line 276
    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/files/ThumbnailFormat;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_3
    iget-object v2, p0, Lcom/dropbox/core/v2/files/ThumbnailArg;->size:Lcom/dropbox/core/v2/files/ThumbnailSize;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/ThumbnailArg;->size:Lcom/dropbox/core/v2/files/ThumbnailSize;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/files/ThumbnailArg;->size:Lcom/dropbox/core/v2/files/ThumbnailSize;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/ThumbnailArg;->size:Lcom/dropbox/core/v2/files/ThumbnailSize;

    .line 277
    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/files/ThumbnailSize;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    iget-object v2, p0, Lcom/dropbox/core/v2/files/ThumbnailArg;->mode:Lcom/dropbox/core/v2/files/ThumbnailMode;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/ThumbnailArg;->mode:Lcom/dropbox/core/v2/files/ThumbnailMode;

    if-eq v2, v3, :cond_6

    iget-object v2, p0, Lcom/dropbox/core/v2/files/ThumbnailArg;->mode:Lcom/dropbox/core/v2/files/ThumbnailMode;

    iget-object p1, p1, Lcom/dropbox/core/v2/files/ThumbnailArg;->mode:Lcom/dropbox/core/v2/files/ThumbnailMode;

    .line 278
    invoke-virtual {v2, p1}, Lcom/dropbox/core/v2/files/ThumbnailMode;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    :cond_6
    :goto_0
    return v0

    :cond_7
    return v1
.end method

.method public getFormat()Lcom/dropbox/core/v2/files/ThumbnailFormat;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/dropbox/core/v2/files/ThumbnailArg;->format:Lcom/dropbox/core/v2/files/ThumbnailFormat;

    return-object v0
.end method

.method public getMode()Lcom/dropbox/core/v2/files/ThumbnailMode;
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/dropbox/core/v2/files/ThumbnailArg;->mode:Lcom/dropbox/core/v2/files/ThumbnailMode;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/dropbox/core/v2/files/ThumbnailArg;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()Lcom/dropbox/core/v2/files/ThumbnailSize;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/dropbox/core/v2/files/ThumbnailArg;->size:Lcom/dropbox/core/v2/files/ThumbnailSize;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x4

    .line 255
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/dropbox/core/v2/files/ThumbnailArg;->path:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/files/ThumbnailArg;->format:Lcom/dropbox/core/v2/files/ThumbnailFormat;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/files/ThumbnailArg;->size:Lcom/dropbox/core/v2/files/ThumbnailSize;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/files/ThumbnailArg;->mode:Lcom/dropbox/core/v2/files/ThumbnailMode;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 288
    sget-object v0, Lcom/dropbox/core/v2/files/ThumbnailArg$a;->a:Lcom/dropbox/core/v2/files/ThumbnailArg$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/ThumbnailArg$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .line 300
    sget-object v0, Lcom/dropbox/core/v2/files/ThumbnailArg$a;->a:Lcom/dropbox/core/v2/files/ThumbnailArg$a;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/ThumbnailArg$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
