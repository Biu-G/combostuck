.class Lcom/amap/api/mapcore2d/f$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/mapcore2d/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/mapcore2d/f;


# direct methods
.method constructor <init>(Lcom/amap/api/mapcore2d/f;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/amap/api/mapcore2d/f$1;->a:Lcom/amap/api/mapcore2d/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const-string v0, "run"

    .line 118
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "TaskRunDownLoad"

    .line 120
    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 124
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/amap/api/mapcore2d/f$1;->a:Lcom/amap/api/mapcore2d/f;

    invoke-static {v2}, Lcom/amap/api/mapcore2d/f;->a(Lcom/amap/api/mapcore2d/f;)Ljava/util/Vector;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 125
    iget-object v2, p0, Lcom/amap/api/mapcore2d/f$1;->a:Lcom/amap/api/mapcore2d/f;

    invoke-static {v2}, Lcom/amap/api/mapcore2d/f;->a(Lcom/amap/api/mapcore2d/f;)Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_1
    const/4 v1, 0x0

    move-object v2, v1

    .line 129
    :cond_2
    :goto_0
    iget-object v3, p0, Lcom/amap/api/mapcore2d/f$1;->a:Lcom/amap/api/mapcore2d/f;

    invoke-static {v3}, Lcom/amap/api/mapcore2d/f;->b(Lcom/amap/api/mapcore2d/f;)Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v3

    if-nez v3, :cond_b

    .line 130
    iget-object v3, p0, Lcom/amap/api/mapcore2d/f$1;->a:Lcom/amap/api/mapcore2d/f;

    iget-object v3, v3, Lcom/amap/api/mapcore2d/f;->b:Lcom/amap/api/mapcore2d/az;

    const/4 v4, 0x0

    if-nez v3, :cond_3

    .line 131
    iget-object v3, p0, Lcom/amap/api/mapcore2d/f$1;->a:Lcom/amap/api/mapcore2d/f;

    invoke-static {v3, v4}, Lcom/amap/api/mapcore2d/f;->a(Lcom/amap/api/mapcore2d/f;Z)Z

    goto :goto_0

    .line 133
    :cond_3
    invoke-static {}, Lcom/amap/api/maps2d/MapsInitializer;->getNetworkEnable()Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_5

    if-nez v3, :cond_4

    .line 135
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v3

    if-nez v3, :cond_2

    const-wide/16 v3, 0xc8

    .line 136
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_5

    goto :goto_0

    :catch_0
    move-exception v3

    :try_start_2
    const-string v4, "AsyncServer"

    .line 143
    invoke-static {v3, v4, v0}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 139
    :catch_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 149
    :cond_4
    iget-object v3, p0, Lcom/amap/api/mapcore2d/f$1;->a:Lcom/amap/api/mapcore2d/f;

    iget-object v3, v3, Lcom/amap/api/mapcore2d/f;->a:Lcom/amap/api/mapcore2d/bo;

    if-eqz v3, :cond_5

    .line 150
    iget-object v1, p0, Lcom/amap/api/mapcore2d/f$1;->a:Lcom/amap/api/mapcore2d/f;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/f;->a:Lcom/amap/api/mapcore2d/bo;

    iget-object v3, p0, Lcom/amap/api/mapcore2d/f$1;->a:Lcom/amap/api/mapcore2d/f;

    invoke-virtual {v3}, Lcom/amap/api/mapcore2d/f;->g()I

    move-result v3

    invoke-virtual {v1, v3, v4}, Lcom/amap/api/mapcore2d/bo;->a(IZ)Ljava/util/ArrayList;

    move-result-object v1

    :cond_5
    if-eqz v1, :cond_6

    .line 153
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_6

    goto :goto_0

    .line 156
    :cond_6
    iget-object v3, p0, Lcom/amap/api/mapcore2d/f$1;->a:Lcom/amap/api/mapcore2d/f;

    invoke-static {v3}, Lcom/amap/api/mapcore2d/f;->b(Lcom/amap/api/mapcore2d/f;)Z

    move-result v3

    if-nez v3, :cond_7

    return-void

    :cond_7
    if-eqz v1, :cond_a

    .line 161
    iget-object v3, p0, Lcom/amap/api/mapcore2d/f$1;->a:Lcom/amap/api/mapcore2d/f;

    invoke-static {v3}, Lcom/amap/api/mapcore2d/f;->b(Lcom/amap/api/mapcore2d/f;)Z

    move-result v3

    if-nez v3, :cond_8

    return-void

    .line 164
    :cond_8
    iget-object v3, p0, Lcom/amap/api/mapcore2d/f$1;->a:Lcom/amap/api/mapcore2d/f;

    iget-object v3, v3, Lcom/amap/api/mapcore2d/f;->b:Lcom/amap/api/mapcore2d/az;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_5

    if-nez v3, :cond_9

    goto :goto_0

    .line 169
    :cond_9
    :try_start_3
    iget-object v3, p0, Lcom/amap/api/mapcore2d/f$1;->a:Lcom/amap/api/mapcore2d/f;

    invoke-virtual {v3, v1}, Lcom/amap/api/mapcore2d/f;->a(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v3
    :try_end_3
    .catch Lcom/amap/api/maps2d/AMapException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_5

    move-object v2, v3

    goto :goto_1

    :catch_2
    move-exception v3

    :try_start_4
    const-string v5, "AsyncServer"

    .line 171
    invoke-static {v3, v5, v0}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    if-eqz v2, :cond_a

    .line 174
    iget-object v3, p0, Lcom/amap/api/mapcore2d/f$1;->a:Lcom/amap/api/mapcore2d/f;

    iget-object v3, v3, Lcom/amap/api/mapcore2d/f;->a:Lcom/amap/api/mapcore2d/bo;

    if-eqz v3, :cond_a

    .line 175
    iget-object v3, p0, Lcom/amap/api/mapcore2d/f$1;->a:Lcom/amap/api/mapcore2d/f;

    iget-object v3, v3, Lcom/amap/api/mapcore2d/f;->a:Lcom/amap/api/mapcore2d/bo;

    invoke-virtual {v3, v2, v4}, Lcom/amap/api/mapcore2d/bo;->a(Ljava/util/List;Z)V

    .line 178
    :cond_a
    iget-object v3, p0, Lcom/amap/api/mapcore2d/f$1;->a:Lcom/amap/api/mapcore2d/f;

    invoke-static {v3}, Lcom/amap/api/mapcore2d/f;->b(Lcom/amap/api/mapcore2d/f;)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v3
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_5

    if-nez v3, :cond_2

    const-wide/16 v3, 0x32

    .line 180
    :try_start_5
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_5

    goto/16 :goto_0

    :catch_3
    move-exception v3

    :try_start_6
    const-string v4, "AsyncServer"

    .line 184
    invoke-static {v3, v4, v0}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 182
    :catch_4
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_5

    goto/16 :goto_0

    :catch_5
    move-exception v1

    const-string v2, "AsyncServer"

    .line 191
    invoke-static {v1, v2, v0}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    return-void
.end method
