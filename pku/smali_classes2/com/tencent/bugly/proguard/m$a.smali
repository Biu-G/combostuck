.class final Lcom/tencent/bugly/proguard/m$a;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/bugly/proguard/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field private a:I

.field private b:Lcom/tencent/bugly/proguard/l;

.field private c:Ljava/lang/String;

.field private d:Landroid/content/ContentValues;

.field private e:Z

.field private f:[Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:[Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:[Ljava/lang/String;

.field private o:I

.field private p:Ljava/lang/String;

.field private q:[B

.field private synthetic r:Lcom/tencent/bugly/proguard/m;


# direct methods
.method public constructor <init>(Lcom/tencent/bugly/proguard/m;ILcom/tencent/bugly/proguard/l;)V
    .locals 0

    .line 723
    iput-object p1, p0, Lcom/tencent/bugly/proguard/m$a;->r:Lcom/tencent/bugly/proguard/m;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 724
    iput p2, p0, Lcom/tencent/bugly/proguard/m$a;->a:I

    .line 725
    iput-object p3, p0, Lcom/tencent/bugly/proguard/m$a;->b:Lcom/tencent/bugly/proguard/l;

    return-void
.end method


# virtual methods
.method public final a(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 736
    iput-boolean p1, p0, Lcom/tencent/bugly/proguard/m$a;->e:Z

    .line 737
    iput-object p2, p0, Lcom/tencent/bugly/proguard/m$a;->c:Ljava/lang/String;

    .line 738
    iput-object p3, p0, Lcom/tencent/bugly/proguard/m$a;->f:[Ljava/lang/String;

    .line 739
    iput-object p4, p0, Lcom/tencent/bugly/proguard/m$a;->g:Ljava/lang/String;

    .line 740
    iput-object p5, p0, Lcom/tencent/bugly/proguard/m$a;->h:[Ljava/lang/String;

    .line 741
    iput-object p6, p0, Lcom/tencent/bugly/proguard/m$a;->i:Ljava/lang/String;

    .line 742
    iput-object p7, p0, Lcom/tencent/bugly/proguard/m$a;->j:Ljava/lang/String;

    .line 743
    iput-object p8, p0, Lcom/tencent/bugly/proguard/m$a;->k:Ljava/lang/String;

    .line 744
    iput-object p9, p0, Lcom/tencent/bugly/proguard/m$a;->l:Ljava/lang/String;

    return-void
.end method

.method public final run()V
    .locals 17

    move-object/from16 v0, p0

    .line 770
    iget v1, v0, Lcom/tencent/bugly/proguard/m$a;->a:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 788
    :pswitch_0
    iget-object v1, v0, Lcom/tencent/bugly/proguard/m$a;->r:Lcom/tencent/bugly/proguard/m;

    iget v1, v0, Lcom/tencent/bugly/proguard/m$a;->o:I

    iget-object v2, v0, Lcom/tencent/bugly/proguard/m$a;->p:Ljava/lang/String;

    iget-object v3, v0, Lcom/tencent/bugly/proguard/m$a;->b:Lcom/tencent/bugly/proguard/l;

    invoke-static {v1, v2, v3}, Lcom/tencent/bugly/proguard/m;->a(ILjava/lang/String;Lcom/tencent/bugly/proguard/l;)Z

    goto :goto_0

    .line 785
    :pswitch_1
    iget-object v1, v0, Lcom/tencent/bugly/proguard/m$a;->r:Lcom/tencent/bugly/proguard/m;

    iget v2, v0, Lcom/tencent/bugly/proguard/m$a;->o:I

    iget-object v3, v0, Lcom/tencent/bugly/proguard/m$a;->b:Lcom/tencent/bugly/proguard/l;

    invoke-static {v1, v2, v3}, Lcom/tencent/bugly/proguard/m;->a(Lcom/tencent/bugly/proguard/m;ILcom/tencent/bugly/proguard/l;)Ljava/util/Map;

    return-void

    .line 782
    :pswitch_2
    iget-object v1, v0, Lcom/tencent/bugly/proguard/m$a;->r:Lcom/tencent/bugly/proguard/m;

    iget v2, v0, Lcom/tencent/bugly/proguard/m$a;->o:I

    iget-object v3, v0, Lcom/tencent/bugly/proguard/m$a;->p:Ljava/lang/String;

    iget-object v4, v0, Lcom/tencent/bugly/proguard/m$a;->q:[B

    iget-object v5, v0, Lcom/tencent/bugly/proguard/m$a;->b:Lcom/tencent/bugly/proguard/l;

    invoke-static {v1, v2, v3, v4, v5}, Lcom/tencent/bugly/proguard/m;->a(Lcom/tencent/bugly/proguard/m;ILjava/lang/String;[BLcom/tencent/bugly/proguard/l;)Z

    return-void

    .line 778
    :pswitch_3
    iget-object v6, v0, Lcom/tencent/bugly/proguard/m$a;->r:Lcom/tencent/bugly/proguard/m;

    iget-boolean v7, v0, Lcom/tencent/bugly/proguard/m$a;->e:Z

    iget-object v8, v0, Lcom/tencent/bugly/proguard/m$a;->c:Ljava/lang/String;

    iget-object v9, v0, Lcom/tencent/bugly/proguard/m$a;->f:[Ljava/lang/String;

    iget-object v10, v0, Lcom/tencent/bugly/proguard/m$a;->g:Ljava/lang/String;

    iget-object v11, v0, Lcom/tencent/bugly/proguard/m$a;->h:[Ljava/lang/String;

    iget-object v12, v0, Lcom/tencent/bugly/proguard/m$a;->i:Ljava/lang/String;

    iget-object v13, v0, Lcom/tencent/bugly/proguard/m$a;->j:Ljava/lang/String;

    iget-object v14, v0, Lcom/tencent/bugly/proguard/m$a;->k:Ljava/lang/String;

    iget-object v15, v0, Lcom/tencent/bugly/proguard/m$a;->l:Ljava/lang/String;

    iget-object v1, v0, Lcom/tencent/bugly/proguard/m$a;->b:Lcom/tencent/bugly/proguard/l;

    move-object/from16 v16, v1

    invoke-static/range {v6 .. v16}, Lcom/tencent/bugly/proguard/m;->a(Lcom/tencent/bugly/proguard/m;ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/bugly/proguard/l;)Landroid/database/Cursor;

    return-void

    .line 775
    :pswitch_4
    iget-object v1, v0, Lcom/tencent/bugly/proguard/m$a;->r:Lcom/tencent/bugly/proguard/m;

    iget-object v2, v0, Lcom/tencent/bugly/proguard/m$a;->c:Ljava/lang/String;

    iget-object v3, v0, Lcom/tencent/bugly/proguard/m$a;->m:Ljava/lang/String;

    iget-object v4, v0, Lcom/tencent/bugly/proguard/m$a;->n:[Ljava/lang/String;

    iget-object v5, v0, Lcom/tencent/bugly/proguard/m$a;->b:Lcom/tencent/bugly/proguard/l;

    invoke-static {v1, v2, v3, v4, v5}, Lcom/tencent/bugly/proguard/m;->a(Lcom/tencent/bugly/proguard/m;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/tencent/bugly/proguard/l;)I

    return-void

    .line 772
    :pswitch_5
    iget-object v1, v0, Lcom/tencent/bugly/proguard/m$a;->r:Lcom/tencent/bugly/proguard/m;

    iget-object v2, v0, Lcom/tencent/bugly/proguard/m$a;->c:Ljava/lang/String;

    iget-object v3, v0, Lcom/tencent/bugly/proguard/m$a;->d:Landroid/content/ContentValues;

    iget-object v4, v0, Lcom/tencent/bugly/proguard/m$a;->b:Lcom/tencent/bugly/proguard/l;

    invoke-static {v1, v2, v3, v4}, Lcom/tencent/bugly/proguard/m;->a(Lcom/tencent/bugly/proguard/m;Ljava/lang/String;Landroid/content/ContentValues;Lcom/tencent/bugly/proguard/l;)J

    return-void

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
