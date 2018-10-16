.class Lcn/edu/pku/pkurunner/Map/MapFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/amap/api/maps2d/LocationSource;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/edu/pku/pkurunner/Map/MapFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/edu/pku/pkurunner/Map/MapFragment;


# direct methods
.method constructor <init>(Lcn/edu/pku/pkurunner/Map/MapFragment;)V
    .locals 0

    .line 143
    iput-object p1, p0, Lcn/edu/pku/pkurunner/Map/MapFragment$1;->a:Lcn/edu/pku/pkurunner/Map/MapFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public activate(Lcom/amap/api/maps2d/LocationSource$OnLocationChangedListener;)V
    .locals 1

    .line 146
    iget-object v0, p0, Lcn/edu/pku/pkurunner/Map/MapFragment$1;->a:Lcn/edu/pku/pkurunner/Map/MapFragment;

    invoke-static {v0, p1}, Lcn/edu/pku/pkurunner/Map/MapFragment;->a(Lcn/edu/pku/pkurunner/Map/MapFragment;Lcom/amap/api/maps2d/LocationSource$OnLocationChangedListener;)Lcom/amap/api/maps2d/LocationSource$OnLocationChangedListener;

    return-void
.end method

.method public deactivate()V
    .locals 2

    .line 151
    iget-object v0, p0, Lcn/edu/pku/pkurunner/Map/MapFragment$1;->a:Lcn/edu/pku/pkurunner/Map/MapFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/edu/pku/pkurunner/Map/MapFragment;->a(Lcn/edu/pku/pkurunner/Map/MapFragment;Lcom/amap/api/maps2d/LocationSource$OnLocationChangedListener;)Lcom/amap/api/maps2d/LocationSource$OnLocationChangedListener;

    return-void
.end method
