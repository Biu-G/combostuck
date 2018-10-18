.class public final enum Lcom/dropbox/core/v2/fileproperties/PropertiesSearchContinueError;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/fileproperties/PropertiesSearchContinueError$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/dropbox/core/v2/fileproperties/PropertiesSearchContinueError;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum OTHER:Lcom/dropbox/core/v2/fileproperties/PropertiesSearchContinueError;

.field public static final enum RESET:Lcom/dropbox/core/v2/fileproperties/PropertiesSearchContinueError;

.field private static final synthetic a:[Lcom/dropbox/core/v2/fileproperties/PropertiesSearchContinueError;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 25
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/PropertiesSearchContinueError;

    const-string v1, "RESET"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/fileproperties/PropertiesSearchContinueError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/fileproperties/PropertiesSearchContinueError;->RESET:Lcom/dropbox/core/v2/fileproperties/PropertiesSearchContinueError;

    .line 33
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/PropertiesSearchContinueError;

    const-string v1, "OTHER"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/dropbox/core/v2/fileproperties/PropertiesSearchContinueError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/fileproperties/PropertiesSearchContinueError;->OTHER:Lcom/dropbox/core/v2/fileproperties/PropertiesSearchContinueError;

    const/4 v0, 0x2

    .line 18
    new-array v0, v0, [Lcom/dropbox/core/v2/fileproperties/PropertiesSearchContinueError;

    sget-object v1, Lcom/dropbox/core/v2/fileproperties/PropertiesSearchContinueError;->RESET:Lcom/dropbox/core/v2/fileproperties/PropertiesSearchContinueError;

    aput-object v1, v0, v2

    sget-object v1, Lcom/dropbox/core/v2/fileproperties/PropertiesSearchContinueError;->OTHER:Lcom/dropbox/core/v2/fileproperties/PropertiesSearchContinueError;

    aput-object v1, v0, v3

    sput-object v0, Lcom/dropbox/core/v2/fileproperties/PropertiesSearchContinueError;->a:[Lcom/dropbox/core/v2/fileproperties/PropertiesSearchContinueError;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dropbox/core/v2/fileproperties/PropertiesSearchContinueError;
    .locals 1

    .line 18
    const-class v0, Lcom/dropbox/core/v2/fileproperties/PropertiesSearchContinueError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/dropbox/core/v2/fileproperties/PropertiesSearchContinueError;

    return-object p0
.end method

.method public static values()[Lcom/dropbox/core/v2/fileproperties/PropertiesSearchContinueError;
    .locals 1

    .line 18
    sget-object v0, Lcom/dropbox/core/v2/fileproperties/PropertiesSearchContinueError;->a:[Lcom/dropbox/core/v2/fileproperties/PropertiesSearchContinueError;

    invoke-virtual {v0}, [Lcom/dropbox/core/v2/fileproperties/PropertiesSearchContinueError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dropbox/core/v2/fileproperties/PropertiesSearchContinueError;

    return-object v0
.end method
