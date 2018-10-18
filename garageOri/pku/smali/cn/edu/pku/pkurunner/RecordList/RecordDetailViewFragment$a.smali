.class Lcn/edu/pku/pkurunner/RecordList/RecordDetailViewFragment$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/edu/pku/pkurunner/RecordList/RecordDetailViewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/edu/pku/pkurunner/Model/Point;",
            ">;"
        }
    .end annotation
.end field

.field private b:I


# direct methods
.method constructor <init>(I)V
    .locals 1

    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 179
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcn/edu/pku/pkurunner/RecordList/RecordDetailViewFragment$a;->a:Ljava/util/List;

    .line 180
    iput p1, p0, Lcn/edu/pku/pkurunner/RecordList/RecordDetailViewFragment$a;->b:I

    return-void
.end method


# virtual methods
.method a()V
    .locals 1

    .line 184
    iget-object v0, p0, Lcn/edu/pku/pkurunner/RecordList/RecordDetailViewFragment$a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method a(Lcn/edu/pku/pkurunner/Model/Point;)V
    .locals 2

    .line 188
    iget-object v0, p0, Lcn/edu/pku/pkurunner/RecordList/RecordDetailViewFragment$a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcn/edu/pku/pkurunner/RecordList/RecordDetailViewFragment$a;->b:I

    if-le v0, v1, :cond_0

    .line 189
    iget-object v0, p0, Lcn/edu/pku/pkurunner/RecordList/RecordDetailViewFragment$a;->a:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 191
    :cond_0
    iget-object v0, p0, Lcn/edu/pku/pkurunner/RecordList/RecordDetailViewFragment$a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method b()[D
    .locals 9

    .line 195
    iget-object v0, p0, Lcn/edu/pku/pkurunner/RecordList/RecordDetailViewFragment$a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ge v0, v3, :cond_0

    .line 196
    new-array v0, v3, [D

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    aput-wide v3, v0, v2

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    aput-wide v2, v0, v1

    return-object v0

    .line 198
    :cond_0
    iget-object v0, p0, Lcn/edu/pku/pkurunner/RecordList/RecordDetailViewFragment$a;->a:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/edu/pku/pkurunner/Model/Point;

    iget-object v4, p0, Lcn/edu/pku/pkurunner/RecordList/RecordDetailViewFragment$a;->a:Ljava/util/List;

    iget-object v5, p0, Lcn/edu/pku/pkurunner/RecordList/RecordDetailViewFragment$a;->a:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/edu/pku/pkurunner/Model/Point;

    .line 199
    new-array v3, v3, [D

    invoke-virtual {v4}, Lcn/edu/pku/pkurunner/Model/Point;->getLongitude()D

    move-result-wide v5

    invoke-virtual {v0}, Lcn/edu/pku/pkurunner/Model/Point;->getLongitude()D

    move-result-wide v7

    sub-double/2addr v5, v7

    aput-wide v5, v3, v2

    invoke-virtual {v4}, Lcn/edu/pku/pkurunner/Model/Point;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v0}, Lcn/edu/pku/pkurunner/Model/Point;->getLatitude()D

    move-result-wide v6

    sub-double/2addr v4, v6

    aput-wide v4, v3, v1

    return-object v3
.end method

.method c()Lcn/edu/pku/pkurunner/Model/Point;
    .locals 2

    .line 203
    iget-object v0, p0, Lcn/edu/pku/pkurunner/RecordList/RecordDetailViewFragment$a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Critical error in simplifying track!"

    .line 204
    invoke-static {v0}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;)V

    .line 206
    :cond_0
    iget-object v0, p0, Lcn/edu/pku/pkurunner/RecordList/RecordDetailViewFragment$a;->a:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/edu/pku/pkurunner/Model/Point;

    return-object v0
.end method
