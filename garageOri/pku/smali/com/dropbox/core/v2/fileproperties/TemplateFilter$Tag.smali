.class public final enum Lcom/dropbox/core/v2/fileproperties/TemplateFilter$Tag;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/fileproperties/TemplateFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Tag"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/dropbox/core/v2/fileproperties/TemplateFilter$Tag;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum FILTER_NONE:Lcom/dropbox/core/v2/fileproperties/TemplateFilter$Tag;

.field public static final enum FILTER_SOME:Lcom/dropbox/core/v2/fileproperties/TemplateFilter$Tag;

.field public static final enum OTHER:Lcom/dropbox/core/v2/fileproperties/TemplateFilter$Tag;

.field private static final synthetic a:[Lcom/dropbox/core/v2/fileproperties/TemplateFilter$Tag;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 36
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/TemplateFilter$Tag;

    const-string v1, "FILTER_SOME"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/fileproperties/TemplateFilter$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/fileproperties/TemplateFilter$Tag;->FILTER_SOME:Lcom/dropbox/core/v2/fileproperties/TemplateFilter$Tag;

    .line 45
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/TemplateFilter$Tag;

    const-string v1, "OTHER"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/dropbox/core/v2/fileproperties/TemplateFilter$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/fileproperties/TemplateFilter$Tag;->OTHER:Lcom/dropbox/core/v2/fileproperties/TemplateFilter$Tag;

    .line 50
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/TemplateFilter$Tag;

    const-string v1, "FILTER_NONE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/dropbox/core/v2/fileproperties/TemplateFilter$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/fileproperties/TemplateFilter$Tag;->FILTER_NONE:Lcom/dropbox/core/v2/fileproperties/TemplateFilter$Tag;

    const/4 v0, 0x3

    .line 31
    new-array v0, v0, [Lcom/dropbox/core/v2/fileproperties/TemplateFilter$Tag;

    sget-object v1, Lcom/dropbox/core/v2/fileproperties/TemplateFilter$Tag;->FILTER_SOME:Lcom/dropbox/core/v2/fileproperties/TemplateFilter$Tag;

    aput-object v1, v0, v2

    sget-object v1, Lcom/dropbox/core/v2/fileproperties/TemplateFilter$Tag;->OTHER:Lcom/dropbox/core/v2/fileproperties/TemplateFilter$Tag;

    aput-object v1, v0, v3

    sget-object v1, Lcom/dropbox/core/v2/fileproperties/TemplateFilter$Tag;->FILTER_NONE:Lcom/dropbox/core/v2/fileproperties/TemplateFilter$Tag;

    aput-object v1, v0, v4

    sput-object v0, Lcom/dropbox/core/v2/fileproperties/TemplateFilter$Tag;->a:[Lcom/dropbox/core/v2/fileproperties/TemplateFilter$Tag;

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

.method public static valueOf(Ljava/lang/String;)Lcom/dropbox/core/v2/fileproperties/TemplateFilter$Tag;
    .locals 1

    .line 31
    const-class v0, Lcom/dropbox/core/v2/fileproperties/TemplateFilter$Tag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/dropbox/core/v2/fileproperties/TemplateFilter$Tag;

    return-object p0
.end method

.method public static values()[Lcom/dropbox/core/v2/fileproperties/TemplateFilter$Tag;
    .locals 1

    .line 31
    sget-object v0, Lcom/dropbox/core/v2/fileproperties/TemplateFilter$Tag;->a:[Lcom/dropbox/core/v2/fileproperties/TemplateFilter$Tag;

    invoke-virtual {v0}, [Lcom/dropbox/core/v2/fileproperties/TemplateFilter$Tag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dropbox/core/v2/fileproperties/TemplateFilter$Tag;

    return-object v0
.end method
