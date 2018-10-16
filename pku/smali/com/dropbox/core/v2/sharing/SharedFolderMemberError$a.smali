.class Lcom/dropbox/core/v2/sharing/SharedFolderMemberError$a;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer<",
        "Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/dropbox/core/v2/sharing/SharedFolderMemberError$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 273
    new-instance v0, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError$a;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError$a;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError$a;->a:Lcom/dropbox/core/v2/sharing/SharedFolderMemberError$a;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 272
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .line 304
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    .line 306
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError$a;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v0

    .line 307
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 311
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError$a;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 312
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError$a;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    const/4 v1, 0x0

    :goto_0
    if-eqz v0, :cond_5

    const-string v3, "invalid_dropbox_id"

    .line 317
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 318
    sget-object v0, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;->INVALID_DROPBOX_ID:Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;

    goto :goto_1

    :cond_1
    const-string v3, "not_a_member"

    .line 320
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 321
    sget-object v0, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;->NOT_A_MEMBER:Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;

    goto :goto_1

    :cond_2
    const-string v3, "no_explicit_access"

    .line 323
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 325
    sget-object v0, Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult$a;->a:Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult$a;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;

    move-result-object v0

    .line 326
    invoke-static {v0}, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;->noExplicitAccess(Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;)Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;

    move-result-object v0

    goto :goto_1

    .line 329
    :cond_3
    sget-object v0, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;->OTHER:Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;

    :goto_1
    if-nez v1, :cond_4

    .line 332
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError$a;->skipFields(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 333
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError$a;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    :cond_4
    return-object v0

    .line 315
    :cond_5
    new-instance v0, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v1, "Required field missing: .tag"

    invoke-direct {v0, p1, v1}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v0
.end method

.method public a(Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .line 277
    sget-object v0, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError$1;->a:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;->tag()Lcom/dropbox/core/v2/sharing/SharedFolderMemberError$Tag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError$Tag;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const-string p1, "other"

    .line 294
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 287
    :pswitch_0
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "no_explicit_access"

    .line 288
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 289
    sget-object v0, Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult$a;->a:Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;->a(Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;)Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult$a;->a(Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 290
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto :goto_0

    :pswitch_1
    const-string p1, "not_a_member"

    .line 283
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    const-string p1, "invalid_dropbox_id"

    .line 279
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public synthetic deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .line 272
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError$a;->a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;

    move-result-object p1

    return-object p1
.end method

.method public synthetic serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .line 272
    check-cast p1, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError$a;->a(Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    return-void
.end method
