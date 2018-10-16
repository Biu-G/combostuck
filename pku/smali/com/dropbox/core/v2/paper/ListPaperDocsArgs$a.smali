.class Lcom/dropbox/core/v2/paper/ListPaperDocsArgs$a;
.super Lcom/dropbox/core/stone/StructSerializer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/paper/ListPaperDocsArgs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/StructSerializer<",
        "Lcom/dropbox/core/v2/paper/ListPaperDocsArgs;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/dropbox/core/v2/paper/ListPaperDocsArgs$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 315
    new-instance v0, Lcom/dropbox/core/v2/paper/ListPaperDocsArgs$a;

    invoke-direct {v0}, Lcom/dropbox/core/v2/paper/ListPaperDocsArgs$a;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/paper/ListPaperDocsArgs$a;->a:Lcom/dropbox/core/v2/paper/ListPaperDocsArgs$a;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 314
    invoke-direct {p0}, Lcom/dropbox/core/stone/StructSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/paper/ListPaperDocsArgs;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    if-nez p2, :cond_0

    .line 340
    invoke-static {p1}, Lcom/dropbox/core/v2/paper/ListPaperDocsArgs$a;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 341
    invoke-static {p1}, Lcom/dropbox/core/v2/paper/ListPaperDocsArgs$a;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_7

    .line 344
    sget-object v0, Lcom/dropbox/core/v2/paper/ListPaperDocsFilterBy;->DOCS_ACCESSED:Lcom/dropbox/core/v2/paper/ListPaperDocsFilterBy;

    .line 345
    sget-object v1, Lcom/dropbox/core/v2/paper/ListPaperDocsSortBy;->ACCESSED:Lcom/dropbox/core/v2/paper/ListPaperDocsSortBy;

    .line 346
    sget-object v2, Lcom/dropbox/core/v2/paper/ListPaperDocsSortOrder;->ASCENDING:Lcom/dropbox/core/v2/paper/ListPaperDocsSortOrder;

    const/16 v3, 0x3e8

    .line 347
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 348
    :goto_1
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v4

    sget-object v5, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v4, v5, :cond_5

    .line 349
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v4

    .line 350
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    const-string v5, "filter_by"

    .line 351
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 352
    sget-object v0, Lcom/dropbox/core/v2/paper/ListPaperDocsFilterBy$a;->a:Lcom/dropbox/core/v2/paper/ListPaperDocsFilterBy$a;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/paper/ListPaperDocsFilterBy$a;->a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/paper/ListPaperDocsFilterBy;

    move-result-object v0

    goto :goto_1

    :cond_1
    const-string v5, "sort_by"

    .line 354
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 355
    sget-object v1, Lcom/dropbox/core/v2/paper/ListPaperDocsSortBy$a;->a:Lcom/dropbox/core/v2/paper/ListPaperDocsSortBy$a;

    invoke-virtual {v1, p1}, Lcom/dropbox/core/v2/paper/ListPaperDocsSortBy$a;->a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/paper/ListPaperDocsSortBy;

    move-result-object v1

    goto :goto_1

    :cond_2
    const-string v5, "sort_order"

    .line 357
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 358
    sget-object v2, Lcom/dropbox/core/v2/paper/ListPaperDocsSortOrder$a;->a:Lcom/dropbox/core/v2/paper/ListPaperDocsSortOrder$a;

    invoke-virtual {v2, p1}, Lcom/dropbox/core/v2/paper/ListPaperDocsSortOrder$a;->a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/paper/ListPaperDocsSortOrder;

    move-result-object v2

    goto :goto_1

    :cond_3
    const-string v5, "limit"

    .line 360
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 361
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->int32()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    goto :goto_1

    .line 364
    :cond_4
    invoke-static {p1}, Lcom/dropbox/core/v2/paper/ListPaperDocsArgs$a;->skipValue(Lcom/fasterxml/jackson/core/JsonParser;)V

    goto :goto_1

    .line 367
    :cond_5
    new-instance v4, Lcom/dropbox/core/v2/paper/ListPaperDocsArgs;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/dropbox/core/v2/paper/ListPaperDocsArgs;-><init>(Lcom/dropbox/core/v2/paper/ListPaperDocsFilterBy;Lcom/dropbox/core/v2/paper/ListPaperDocsSortBy;Lcom/dropbox/core/v2/paper/ListPaperDocsSortOrder;I)V

    if-nez p2, :cond_6

    .line 373
    invoke-static {p1}, Lcom/dropbox/core/v2/paper/ListPaperDocsArgs$a;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    :cond_6
    return-object v4

    .line 370
    :cond_7
    new-instance p2, Lcom/fasterxml/jackson/core/JsonParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No subtype found that matches tag: \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, p1, v0}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw p2
.end method

.method public a(Lcom/dropbox/core/v2/paper/ListPaperDocsArgs;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    if-nez p3, :cond_0

    .line 320
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    :cond_0
    const-string v0, "filter_by"

    .line 322
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 323
    sget-object v0, Lcom/dropbox/core/v2/paper/ListPaperDocsFilterBy$a;->a:Lcom/dropbox/core/v2/paper/ListPaperDocsFilterBy$a;

    iget-object v1, p1, Lcom/dropbox/core/v2/paper/ListPaperDocsArgs;->a:Lcom/dropbox/core/v2/paper/ListPaperDocsFilterBy;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/paper/ListPaperDocsFilterBy$a;->a(Lcom/dropbox/core/v2/paper/ListPaperDocsFilterBy;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    const-string v0, "sort_by"

    .line 324
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 325
    sget-object v0, Lcom/dropbox/core/v2/paper/ListPaperDocsSortBy$a;->a:Lcom/dropbox/core/v2/paper/ListPaperDocsSortBy$a;

    iget-object v1, p1, Lcom/dropbox/core/v2/paper/ListPaperDocsArgs;->b:Lcom/dropbox/core/v2/paper/ListPaperDocsSortBy;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/paper/ListPaperDocsSortBy$a;->a(Lcom/dropbox/core/v2/paper/ListPaperDocsSortBy;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    const-string v0, "sort_order"

    .line 326
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 327
    sget-object v0, Lcom/dropbox/core/v2/paper/ListPaperDocsSortOrder$a;->a:Lcom/dropbox/core/v2/paper/ListPaperDocsSortOrder$a;

    iget-object v1, p1, Lcom/dropbox/core/v2/paper/ListPaperDocsArgs;->c:Lcom/dropbox/core/v2/paper/ListPaperDocsSortOrder;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/paper/ListPaperDocsSortOrder$a;->a(Lcom/dropbox/core/v2/paper/ListPaperDocsSortOrder;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    const-string v0, "limit"

    .line 328
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 329
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->int32()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget p1, p1, Lcom/dropbox/core/v2/paper/ListPaperDocsArgs;->d:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    if-nez p3, :cond_1

    .line 331
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    :cond_1
    return-void
.end method

.method public synthetic deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .line 314
    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/paper/ListPaperDocsArgs$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/paper/ListPaperDocsArgs;

    move-result-object p1

    return-object p1
.end method

.method public synthetic serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .line 314
    check-cast p1, Lcom/dropbox/core/v2/paper/ListPaperDocsArgs;

    invoke-virtual {p0, p1, p2, p3}, Lcom/dropbox/core/v2/paper/ListPaperDocsArgs$a;->a(Lcom/dropbox/core/v2/paper/ListPaperDocsArgs;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    return-void
.end method
