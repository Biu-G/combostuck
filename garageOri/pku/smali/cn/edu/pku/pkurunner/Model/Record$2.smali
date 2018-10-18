.class synthetic Lcn/edu/pku/pkurunner/Model/Record$2;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/edu/pku/pkurunner/Model/Record;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$cn$edu$pku$pkurunner$Model$Record$RecordPlace:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 382
    invoke-static {}, Lcn/edu/pku/pkurunner/Model/Record$RecordPlace;->values()[Lcn/edu/pku/pkurunner/Model/Record$RecordPlace;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcn/edu/pku/pkurunner/Model/Record$2;->$SwitchMap$cn$edu$pku$pkurunner$Model$Record$RecordPlace:[I

    :try_start_0
    sget-object v0, Lcn/edu/pku/pkurunner/Model/Record$2;->$SwitchMap$cn$edu$pku$pkurunner$Model$Record$RecordPlace:[I

    sget-object v1, Lcn/edu/pku/pkurunner/Model/Record$RecordPlace;->WUSI:Lcn/edu/pku/pkurunner/Model/Record$RecordPlace;

    invoke-virtual {v1}, Lcn/edu/pku/pkurunner/Model/Record$RecordPlace;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcn/edu/pku/pkurunner/Model/Record$2;->$SwitchMap$cn$edu$pku$pkurunner$Model$Record$RecordPlace:[I

    sget-object v1, Lcn/edu/pku/pkurunner/Model/Record$RecordPlace;->WEIMING:Lcn/edu/pku/pkurunner/Model/Record$RecordPlace;

    invoke-virtual {v1}, Lcn/edu/pku/pkurunner/Model/Record$RecordPlace;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
