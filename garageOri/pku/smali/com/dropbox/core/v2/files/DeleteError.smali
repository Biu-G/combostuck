.class public final Lcom/dropbox/core/v2/files/DeleteError;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/files/DeleteError$a;,
        Lcom/dropbox/core/v2/files/DeleteError$Tag;
    }
.end annotation


# static fields
.field public static final OTHER:Lcom/dropbox/core/v2/files/DeleteError;

.field public static final TOO_MANY_FILES:Lcom/dropbox/core/v2/files/DeleteError;

.field public static final TOO_MANY_WRITE_OPERATIONS:Lcom/dropbox/core/v2/files/DeleteError;


# instance fields
.field private a:Lcom/dropbox/core/v2/files/DeleteError$Tag;

.field private b:Lcom/dropbox/core/v2/files/LookupError;

.field private c:Lcom/dropbox/core/v2/files/WriteError;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 62
    new-instance v0, Lcom/dropbox/core/v2/files/DeleteError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/DeleteError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/files/DeleteError$Tag;->TOO_MANY_WRITE_OPERATIONS:Lcom/dropbox/core/v2/files/DeleteError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/files/DeleteError;->a(Lcom/dropbox/core/v2/files/DeleteError$Tag;)Lcom/dropbox/core/v2/files/DeleteError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/files/DeleteError;->TOO_MANY_WRITE_OPERATIONS:Lcom/dropbox/core/v2/files/DeleteError;

    .line 66
    new-instance v0, Lcom/dropbox/core/v2/files/DeleteError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/DeleteError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/files/DeleteError$Tag;->TOO_MANY_FILES:Lcom/dropbox/core/v2/files/DeleteError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/files/DeleteError;->a(Lcom/dropbox/core/v2/files/DeleteError$Tag;)Lcom/dropbox/core/v2/files/DeleteError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/files/DeleteError;->TOO_MANY_FILES:Lcom/dropbox/core/v2/files/DeleteError;

    .line 74
    new-instance v0, Lcom/dropbox/core/v2/files/DeleteError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/DeleteError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/files/DeleteError$Tag;->OTHER:Lcom/dropbox/core/v2/files/DeleteError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/files/DeleteError;->a(Lcom/dropbox/core/v2/files/DeleteError$Tag;)Lcom/dropbox/core/v2/files/DeleteError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/files/DeleteError;->OTHER:Lcom/dropbox/core/v2/files/DeleteError;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/dropbox/core/v2/files/DeleteError$Tag;)Lcom/dropbox/core/v2/files/DeleteError;
    .locals 1

    .line 92
    new-instance v0, Lcom/dropbox/core/v2/files/DeleteError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/DeleteError;-><init>()V

    .line 93
    iput-object p1, v0, Lcom/dropbox/core/v2/files/DeleteError;->a:Lcom/dropbox/core/v2/files/DeleteError$Tag;

    return-object v0
.end method

.method private a(Lcom/dropbox/core/v2/files/DeleteError$Tag;Lcom/dropbox/core/v2/files/LookupError;)Lcom/dropbox/core/v2/files/DeleteError;
    .locals 1

    .line 106
    new-instance v0, Lcom/dropbox/core/v2/files/DeleteError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/DeleteError;-><init>()V

    .line 107
    iput-object p1, v0, Lcom/dropbox/core/v2/files/DeleteError;->a:Lcom/dropbox/core/v2/files/DeleteError$Tag;

    .line 108
    iput-object p2, v0, Lcom/dropbox/core/v2/files/DeleteError;->b:Lcom/dropbox/core/v2/files/LookupError;

    return-object v0
.end method

.method private a(Lcom/dropbox/core/v2/files/DeleteError$Tag;Lcom/dropbox/core/v2/files/WriteError;)Lcom/dropbox/core/v2/files/DeleteError;
    .locals 1

    .line 121
    new-instance v0, Lcom/dropbox/core/v2/files/DeleteError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/DeleteError;-><init>()V

    .line 122
    iput-object p1, v0, Lcom/dropbox/core/v2/files/DeleteError;->a:Lcom/dropbox/core/v2/files/DeleteError$Tag;

    .line 123
    iput-object p2, v0, Lcom/dropbox/core/v2/files/DeleteError;->c:Lcom/dropbox/core/v2/files/WriteError;

    return-object v0
.end method

.method static synthetic a(Lcom/dropbox/core/v2/files/DeleteError;)Lcom/dropbox/core/v2/files/LookupError;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/dropbox/core/v2/files/DeleteError;->b:Lcom/dropbox/core/v2/files/LookupError;

    return-object p0
.end method

.method static synthetic b(Lcom/dropbox/core/v2/files/DeleteError;)Lcom/dropbox/core/v2/files/WriteError;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/dropbox/core/v2/files/DeleteError;->c:Lcom/dropbox/core/v2/files/WriteError;

    return-object p0
.end method

.method public static pathLookup(Lcom/dropbox/core/v2/files/LookupError;)Lcom/dropbox/core/v2/files/DeleteError;
    .locals 2

    if-eqz p0, :cond_0

    .line 173
    new-instance v0, Lcom/dropbox/core/v2/files/DeleteError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/DeleteError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/files/DeleteError$Tag;->PATH_LOOKUP:Lcom/dropbox/core/v2/files/DeleteError$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/files/DeleteError;->a(Lcom/dropbox/core/v2/files/DeleteError$Tag;Lcom/dropbox/core/v2/files/LookupError;)Lcom/dropbox/core/v2/files/DeleteError;

    move-result-object p0

    return-object p0

    .line 171
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static pathWrite(Lcom/dropbox/core/v2/files/WriteError;)Lcom/dropbox/core/v2/files/DeleteError;
    .locals 2

    if-eqz p0, :cond_0

    .line 219
    new-instance v0, Lcom/dropbox/core/v2/files/DeleteError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/DeleteError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/files/DeleteError$Tag;->PATH_WRITE:Lcom/dropbox/core/v2/files/DeleteError$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/files/DeleteError;->a(Lcom/dropbox/core/v2/files/DeleteError$Tag;Lcom/dropbox/core/v2/files/WriteError;)Lcom/dropbox/core/v2/files/DeleteError;

    move-result-object p0

    return-object p0

    .line 217
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

    .line 288
    :cond_1
    instance-of v2, p1, Lcom/dropbox/core/v2/files/DeleteError;

    if-eqz v2, :cond_7

    .line 289
    check-cast p1, Lcom/dropbox/core/v2/files/DeleteError;

    .line 290
    iget-object v2, p0, Lcom/dropbox/core/v2/files/DeleteError;->a:Lcom/dropbox/core/v2/files/DeleteError$Tag;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/DeleteError;->a:Lcom/dropbox/core/v2/files/DeleteError$Tag;

    if-eq v2, v3, :cond_2

    return v1

    .line 293
    :cond_2
    sget-object v2, Lcom/dropbox/core/v2/files/DeleteError$1;->a:[I

    iget-object v3, p0, Lcom/dropbox/core/v2/files/DeleteError;->a:Lcom/dropbox/core/v2/files/DeleteError$Tag;

    invoke-virtual {v3}, Lcom/dropbox/core/v2/files/DeleteError$Tag;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    return v1

    :pswitch_0
    return v0

    :pswitch_1
    return v0

    :pswitch_2
    return v0

    .line 297
    :pswitch_3
    iget-object v2, p0, Lcom/dropbox/core/v2/files/DeleteError;->c:Lcom/dropbox/core/v2/files/WriteError;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/DeleteError;->c:Lcom/dropbox/core/v2/files/WriteError;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/files/DeleteError;->c:Lcom/dropbox/core/v2/files/WriteError;

    iget-object p1, p1, Lcom/dropbox/core/v2/files/DeleteError;->c:Lcom/dropbox/core/v2/files/WriteError;

    invoke-virtual {v2, p1}, Lcom/dropbox/core/v2/files/WriteError;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :cond_4
    :goto_0
    return v0

    .line 295
    :pswitch_4
    iget-object v2, p0, Lcom/dropbox/core/v2/files/DeleteError;->b:Lcom/dropbox/core/v2/files/LookupError;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/DeleteError;->b:Lcom/dropbox/core/v2/files/LookupError;

    if-eq v2, v3, :cond_6

    iget-object v2, p0, Lcom/dropbox/core/v2/files/DeleteError;->b:Lcom/dropbox/core/v2/files/LookupError;

    iget-object p1, p1, Lcom/dropbox/core/v2/files/DeleteError;->b:Lcom/dropbox/core/v2/files/LookupError;

    invoke-virtual {v2, p1}, Lcom/dropbox/core/v2/files/LookupError;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    :cond_6
    :goto_1
    return v0

    :cond_7
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getPathLookupValue()Lcom/dropbox/core/v2/files/LookupError;
    .locals 3

    .line 185
    iget-object v0, p0, Lcom/dropbox/core/v2/files/DeleteError;->a:Lcom/dropbox/core/v2/files/DeleteError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/DeleteError$Tag;->PATH_LOOKUP:Lcom/dropbox/core/v2/files/DeleteError$Tag;

    if-ne v0, v1, :cond_0

    .line 188
    iget-object v0, p0, Lcom/dropbox/core/v2/files/DeleteError;->b:Lcom/dropbox/core/v2/files/LookupError;

    return-object v0

    .line 186
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.PATH_LOOKUP, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/dropbox/core/v2/files/DeleteError;->a:Lcom/dropbox/core/v2/files/DeleteError$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/files/DeleteError$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPathWriteValue()Lcom/dropbox/core/v2/files/WriteError;
    .locals 3

    .line 231
    iget-object v0, p0, Lcom/dropbox/core/v2/files/DeleteError;->a:Lcom/dropbox/core/v2/files/DeleteError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/DeleteError$Tag;->PATH_WRITE:Lcom/dropbox/core/v2/files/DeleteError$Tag;

    if-ne v0, v1, :cond_0

    .line 234
    iget-object v0, p0, Lcom/dropbox/core/v2/files/DeleteError;->c:Lcom/dropbox/core/v2/files/WriteError;

    return-object v0

    .line 232
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.PATH_WRITE, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/dropbox/core/v2/files/DeleteError;->a:Lcom/dropbox/core/v2/files/DeleteError$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/files/DeleteError$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x3

    .line 272
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/dropbox/core/v2/files/DeleteError;->a:Lcom/dropbox/core/v2/files/DeleteError$Tag;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/files/DeleteError;->b:Lcom/dropbox/core/v2/files/LookupError;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/files/DeleteError;->c:Lcom/dropbox/core/v2/files/WriteError;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isOther()Z
    .locals 2

    .line 267
    iget-object v0, p0, Lcom/dropbox/core/v2/files/DeleteError;->a:Lcom/dropbox/core/v2/files/DeleteError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/DeleteError$Tag;->OTHER:Lcom/dropbox/core/v2/files/DeleteError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPathLookup()Z
    .locals 2

    .line 153
    iget-object v0, p0, Lcom/dropbox/core/v2/files/DeleteError;->a:Lcom/dropbox/core/v2/files/DeleteError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/DeleteError$Tag;->PATH_LOOKUP:Lcom/dropbox/core/v2/files/DeleteError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPathWrite()Z
    .locals 2

    .line 199
    iget-object v0, p0, Lcom/dropbox/core/v2/files/DeleteError;->a:Lcom/dropbox/core/v2/files/DeleteError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/DeleteError$Tag;->PATH_WRITE:Lcom/dropbox/core/v2/files/DeleteError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isTooManyFiles()Z
    .locals 2

    .line 256
    iget-object v0, p0, Lcom/dropbox/core/v2/files/DeleteError;->a:Lcom/dropbox/core/v2/files/DeleteError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/DeleteError$Tag;->TOO_MANY_FILES:Lcom/dropbox/core/v2/files/DeleteError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isTooManyWriteOperations()Z
    .locals 2

    .line 245
    iget-object v0, p0, Lcom/dropbox/core/v2/files/DeleteError;->a:Lcom/dropbox/core/v2/files/DeleteError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/DeleteError$Tag;->TOO_MANY_WRITE_OPERATIONS:Lcom/dropbox/core/v2/files/DeleteError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public tag()Lcom/dropbox/core/v2/files/DeleteError$Tag;
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/dropbox/core/v2/files/DeleteError;->a:Lcom/dropbox/core/v2/files/DeleteError$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 315
    sget-object v0, Lcom/dropbox/core/v2/files/DeleteError$a;->a:Lcom/dropbox/core/v2/files/DeleteError$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/DeleteError$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .line 327
    sget-object v0, Lcom/dropbox/core/v2/files/DeleteError$a;->a:Lcom/dropbox/core/v2/files/DeleteError$a;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/DeleteError$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
