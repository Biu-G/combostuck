.class public final enum Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError$Tag;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Tag"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError$Tag;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum OTHER:Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError$Tag;

.field public static final enum PATH:Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError$Tag;

.field public static final enum PROPERTY_GROUP_LOOKUP:Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError$Tag;

.field public static final enum RESTRICTED_CONTENT:Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError$Tag;

.field public static final enum TEMPLATE_NOT_FOUND:Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError$Tag;

.field public static final enum UNSUPPORTED_FOLDER:Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError$Tag;

.field private static final synthetic a:[Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError$Tag;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 35
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError$Tag;

    const-string v1, "TEMPLATE_NOT_FOUND"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError$Tag;->TEMPLATE_NOT_FOUND:Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError$Tag;

    .line 39
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError$Tag;

    const-string v1, "RESTRICTED_CONTENT"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError$Tag;->RESTRICTED_CONTENT:Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError$Tag;

    .line 48
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError$Tag;

    const-string v1, "OTHER"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError$Tag;->OTHER:Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError$Tag;

    .line 49
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError$Tag;

    const-string v1, "PATH"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError$Tag;->PATH:Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError$Tag;

    .line 54
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError$Tag;

    const-string v1, "UNSUPPORTED_FOLDER"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError$Tag;->UNSUPPORTED_FOLDER:Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError$Tag;

    .line 55
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError$Tag;

    const-string v1, "PROPERTY_GROUP_LOOKUP"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError$Tag;->PROPERTY_GROUP_LOOKUP:Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError$Tag;

    const/4 v0, 0x6

    .line 31
    new-array v0, v0, [Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError$Tag;->TEMPLATE_NOT_FOUND:Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError$Tag;

    aput-object v1, v0, v2

    sget-object v1, Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError$Tag;->RESTRICTED_CONTENT:Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError$Tag;

    aput-object v1, v0, v3

    sget-object v1, Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError$Tag;->OTHER:Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError$Tag;

    aput-object v1, v0, v4

    sget-object v1, Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError$Tag;->PATH:Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError$Tag;

    aput-object v1, v0, v5

    sget-object v1, Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError$Tag;->UNSUPPORTED_FOLDER:Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError$Tag;

    aput-object v1, v0, v6

    sget-object v1, Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError$Tag;->PROPERTY_GROUP_LOOKUP:Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError$Tag;

    aput-object v1, v0, v7

    sput-object v0, Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError$Tag;->a:[Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError$Tag;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError$Tag;
    .locals 1

    .line 31
    const-class v0, Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError$Tag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError$Tag;

    return-object p0
.end method

.method public static values()[Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError$Tag;
    .locals 1

    .line 31
    sget-object v0, Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError$Tag;->a:[Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError$Tag;

    invoke-virtual {v0}, [Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError$Tag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError$Tag;

    return-object v0
.end method