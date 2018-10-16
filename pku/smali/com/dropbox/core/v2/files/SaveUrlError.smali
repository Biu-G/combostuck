.class public final Lcom/dropbox/core/v2/files/SaveUrlError;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/files/SaveUrlError$a;,
        Lcom/dropbox/core/v2/files/SaveUrlError$Tag;
    }
.end annotation


# static fields
.field public static final DOWNLOAD_FAILED:Lcom/dropbox/core/v2/files/SaveUrlError;

.field public static final INVALID_URL:Lcom/dropbox/core/v2/files/SaveUrlError;

.field public static final NOT_FOUND:Lcom/dropbox/core/v2/files/SaveUrlError;

.field public static final OTHER:Lcom/dropbox/core/v2/files/SaveUrlError;


# instance fields
.field private a:Lcom/dropbox/core/v2/files/SaveUrlError$Tag;

.field private b:Lcom/dropbox/core/v2/files/WriteError;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 62
    new-instance v0, Lcom/dropbox/core/v2/files/SaveUrlError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/SaveUrlError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/files/SaveUrlError$Tag;->DOWNLOAD_FAILED:Lcom/dropbox/core/v2/files/SaveUrlError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/files/SaveUrlError;->a(Lcom/dropbox/core/v2/files/SaveUrlError$Tag;)Lcom/dropbox/core/v2/files/SaveUrlError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/files/SaveUrlError;->DOWNLOAD_FAILED:Lcom/dropbox/core/v2/files/SaveUrlError;

    .line 66
    new-instance v0, Lcom/dropbox/core/v2/files/SaveUrlError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/SaveUrlError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/files/SaveUrlError$Tag;->INVALID_URL:Lcom/dropbox/core/v2/files/SaveUrlError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/files/SaveUrlError;->a(Lcom/dropbox/core/v2/files/SaveUrlError$Tag;)Lcom/dropbox/core/v2/files/SaveUrlError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/files/SaveUrlError;->INVALID_URL:Lcom/dropbox/core/v2/files/SaveUrlError;

    .line 70
    new-instance v0, Lcom/dropbox/core/v2/files/SaveUrlError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/SaveUrlError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/files/SaveUrlError$Tag;->NOT_FOUND:Lcom/dropbox/core/v2/files/SaveUrlError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/files/SaveUrlError;->a(Lcom/dropbox/core/v2/files/SaveUrlError$Tag;)Lcom/dropbox/core/v2/files/SaveUrlError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/files/SaveUrlError;->NOT_FOUND:Lcom/dropbox/core/v2/files/SaveUrlError;

    .line 78
    new-instance v0, Lcom/dropbox/core/v2/files/SaveUrlError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/SaveUrlError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/files/SaveUrlError$Tag;->OTHER:Lcom/dropbox/core/v2/files/SaveUrlError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/files/SaveUrlError;->a(Lcom/dropbox/core/v2/files/SaveUrlError$Tag;)Lcom/dropbox/core/v2/files/SaveUrlError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/files/SaveUrlError;->OTHER:Lcom/dropbox/core/v2/files/SaveUrlError;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/dropbox/core/v2/files/SaveUrlError$Tag;)Lcom/dropbox/core/v2/files/SaveUrlError;
    .locals 1

    .line 95
    new-instance v0, Lcom/dropbox/core/v2/files/SaveUrlError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/SaveUrlError;-><init>()V

    .line 96
    iput-object p1, v0, Lcom/dropbox/core/v2/files/SaveUrlError;->a:Lcom/dropbox/core/v2/files/SaveUrlError$Tag;

    return-object v0
.end method

.method private a(Lcom/dropbox/core/v2/files/SaveUrlError$Tag;Lcom/dropbox/core/v2/files/WriteError;)Lcom/dropbox/core/v2/files/SaveUrlError;
    .locals 1

    .line 109
    new-instance v0, Lcom/dropbox/core/v2/files/SaveUrlError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/SaveUrlError;-><init>()V

    .line 110
    iput-object p1, v0, Lcom/dropbox/core/v2/files/SaveUrlError;->a:Lcom/dropbox/core/v2/files/SaveUrlError$Tag;

    .line 111
    iput-object p2, v0, Lcom/dropbox/core/v2/files/SaveUrlError;->b:Lcom/dropbox/core/v2/files/WriteError;

    return-object v0
.end method

.method static synthetic a(Lcom/dropbox/core/v2/files/SaveUrlError;)Lcom/dropbox/core/v2/files/WriteError;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/dropbox/core/v2/files/SaveUrlError;->b:Lcom/dropbox/core/v2/files/WriteError;

    return-object p0
.end method

.method public static path(Lcom/dropbox/core/v2/files/WriteError;)Lcom/dropbox/core/v2/files/SaveUrlError;
    .locals 2

    if-eqz p0, :cond_0

    .line 161
    new-instance v0, Lcom/dropbox/core/v2/files/SaveUrlError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/SaveUrlError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/files/SaveUrlError$Tag;->PATH:Lcom/dropbox/core/v2/files/SaveUrlError$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/files/SaveUrlError;->a(Lcom/dropbox/core/v2/files/SaveUrlError$Tag;Lcom/dropbox/core/v2/files/WriteError;)Lcom/dropbox/core/v2/files/SaveUrlError;

    move-result-object p0

    return-object p0

    .line 159
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

    .line 240
    :cond_1
    instance-of v2, p1, Lcom/dropbox/core/v2/files/SaveUrlError;

    if-eqz v2, :cond_5

    .line 241
    check-cast p1, Lcom/dropbox/core/v2/files/SaveUrlError;

    .line 242
    iget-object v2, p0, Lcom/dropbox/core/v2/files/SaveUrlError;->a:Lcom/dropbox/core/v2/files/SaveUrlError$Tag;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/SaveUrlError;->a:Lcom/dropbox/core/v2/files/SaveUrlError$Tag;

    if-eq v2, v3, :cond_2

    return v1

    .line 245
    :cond_2
    sget-object v2, Lcom/dropbox/core/v2/files/SaveUrlError$1;->a:[I

    iget-object v3, p0, Lcom/dropbox/core/v2/files/SaveUrlError;->a:Lcom/dropbox/core/v2/files/SaveUrlError$Tag;

    invoke-virtual {v3}, Lcom/dropbox/core/v2/files/SaveUrlError$Tag;->ordinal()I

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

    :pswitch_3
    return v0

    .line 247
    :pswitch_4
    iget-object v2, p0, Lcom/dropbox/core/v2/files/SaveUrlError;->b:Lcom/dropbox/core/v2/files/WriteError;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/SaveUrlError;->b:Lcom/dropbox/core/v2/files/WriteError;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/files/SaveUrlError;->b:Lcom/dropbox/core/v2/files/WriteError;

    iget-object p1, p1, Lcom/dropbox/core/v2/files/SaveUrlError;->b:Lcom/dropbox/core/v2/files/WriteError;

    invoke-virtual {v2, p1}, Lcom/dropbox/core/v2/files/WriteError;->equals(Ljava/lang/Object;)Z

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

.method public getPathValue()Lcom/dropbox/core/v2/files/WriteError;
    .locals 3

    .line 173
    iget-object v0, p0, Lcom/dropbox/core/v2/files/SaveUrlError;->a:Lcom/dropbox/core/v2/files/SaveUrlError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/SaveUrlError$Tag;->PATH:Lcom/dropbox/core/v2/files/SaveUrlError$Tag;

    if-ne v0, v1, :cond_0

    .line 176
    iget-object v0, p0, Lcom/dropbox/core/v2/files/SaveUrlError;->b:Lcom/dropbox/core/v2/files/WriteError;

    return-object v0

    .line 174
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.PATH, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/dropbox/core/v2/files/SaveUrlError;->a:Lcom/dropbox/core/v2/files/SaveUrlError$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/files/SaveUrlError$Tag;->name()Ljava/lang/String;

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

    .line 225
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/dropbox/core/v2/files/SaveUrlError;->a:Lcom/dropbox/core/v2/files/SaveUrlError$Tag;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/files/SaveUrlError;->b:Lcom/dropbox/core/v2/files/WriteError;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isDownloadFailed()Z
    .locals 2

    .line 187
    iget-object v0, p0, Lcom/dropbox/core/v2/files/SaveUrlError;->a:Lcom/dropbox/core/v2/files/SaveUrlError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/SaveUrlError$Tag;->DOWNLOAD_FAILED:Lcom/dropbox/core/v2/files/SaveUrlError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isInvalidUrl()Z
    .locals 2

    .line 198
    iget-object v0, p0, Lcom/dropbox/core/v2/files/SaveUrlError;->a:Lcom/dropbox/core/v2/files/SaveUrlError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/SaveUrlError$Tag;->INVALID_URL:Lcom/dropbox/core/v2/files/SaveUrlError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isNotFound()Z
    .locals 2

    .line 209
    iget-object v0, p0, Lcom/dropbox/core/v2/files/SaveUrlError;->a:Lcom/dropbox/core/v2/files/SaveUrlError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/SaveUrlError$Tag;->NOT_FOUND:Lcom/dropbox/core/v2/files/SaveUrlError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isOther()Z
    .locals 2

    .line 220
    iget-object v0, p0, Lcom/dropbox/core/v2/files/SaveUrlError;->a:Lcom/dropbox/core/v2/files/SaveUrlError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/SaveUrlError$Tag;->OTHER:Lcom/dropbox/core/v2/files/SaveUrlError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPath()Z
    .locals 2

    .line 141
    iget-object v0, p0, Lcom/dropbox/core/v2/files/SaveUrlError;->a:Lcom/dropbox/core/v2/files/SaveUrlError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/SaveUrlError$Tag;->PATH:Lcom/dropbox/core/v2/files/SaveUrlError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public tag()Lcom/dropbox/core/v2/files/SaveUrlError$Tag;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/dropbox/core/v2/files/SaveUrlError;->a:Lcom/dropbox/core/v2/files/SaveUrlError$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 267
    sget-object v0, Lcom/dropbox/core/v2/files/SaveUrlError$a;->a:Lcom/dropbox/core/v2/files/SaveUrlError$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/SaveUrlError$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .line 279
    sget-object v0, Lcom/dropbox/core/v2/files/SaveUrlError$a;->a:Lcom/dropbox/core/v2/files/SaveUrlError$a;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/SaveUrlError$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
