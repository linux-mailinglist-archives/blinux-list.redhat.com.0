Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 60F8B46993B
	for <lists+blinux-list@lfdr.de>; Mon,  6 Dec 2021 15:42:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1638801763;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=Pyg4pbJ24SOahjKnkbC48JibdLJ0O9otP/+DryAIS3Q=;
	b=PGwnmGbpduMoG3r0XyP7d3pjOFwWvDgRipMCkWpb3U6Pj1k7PSxz+GhlNjRIusrU6sNk5K
	KAK5MXIALD2UvPE13R4frXcKCrDICxbrlPNhxtN+eseBjdbAOHNvtd0PFE94iwDG/SYixF
	6Lq57Q/msWhbTYQd0rTdYAhDjh+4sS8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-163-M3qsEDLMM3-Fa68tWdc8ag-1; Mon, 06 Dec 2021 09:42:41 -0500
X-MC-Unique: M3qsEDLMM3-Fa68tWdc8ag-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 75A4E100C69C;
	Mon,  6 Dec 2021 14:42:37 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3618B60843;
	Mon,  6 Dec 2021 14:42:37 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id B50BE4BB7C;
	Mon,  6 Dec 2021 14:42:34 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1B6EgV6B024115 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 6 Dec 2021 09:42:32 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id BB0202166B25; Mon,  6 Dec 2021 14:42:31 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B51842166B2D
	for <blinux-list@redhat.com>; Mon,  6 Dec 2021 14:42:25 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 6FAC0108C0A3
	for <blinux-list@redhat.com>; Mon,  6 Dec 2021 14:42:25 +0000 (UTC)
Received: from mail-qt1-f181.google.com (mail-qt1-f181.google.com
	[209.85.160.181]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-564-nmfirLaJPjy6H-jsIwWG-w-1; Mon, 06 Dec 2021 09:42:23 -0500
X-MC-Unique: nmfirLaJPjy6H-jsIwWG-w-1
Received: by mail-qt1-f181.google.com with SMTP id o17so11002806qtk.1
	for <blinux-list@redhat.com>; Mon, 06 Dec 2021 06:42:23 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:date:from:to:subject:message-id:mime-version;
	bh=VXnFm5HQibHYv12eJipJf4YSrknXub3SMyGpRfoGyuY=;
	b=GLdfSNT6zEpfjjg9lIyZt/R/QKY21SBpHzAu1Va6dxumhojpLk38cfDURPpjrvzxq/
	uS31P9mqIngyccvkzCBU0uvxBSHvr2+f3olV8YT85PoQ5xG7cgG6F8Qaj1si7cg+r+ke
	WbY9/i1gseLo46X+JfKv2HhJCPKqew0/d3szKYerp5SEtdFWsBedG4XnPppPz6F+kGDl
	wUvMFlXqYpSWpKmZcHXlI1SAMqEs4vqzwAFnS/NODqeiX3Y4ru3eqtNELaGYkb+GuUNX
	07C/ebXwCHgxnLMrQ7DF22zTCoSjjekYXpZs2IPsE83a30fkqzT1hBibSt7tOKnGmHbi
	NG0A==
X-Gm-Message-State: AOAM532970YQFz99mtVk01TTmOav8deelUJhr3W29OQ+1uK4z3mJxXtA
	xg3izZs4cofw1GBcJKY0dkXebpXZ0s3rMQ==
X-Google-Smtp-Source: ABdhPJx+idApN9LScjDPada+X78jOOdfgdoaz6xgm/NxkVW/0xCUpjTqF+TI0DrVqgkKDfk0/aqyPg==
X-Received: by 2002:a05:622a:490:: with SMTP id
	p16mr39565565qtx.585.1638801743031; 
	Mon, 06 Dec 2021 06:42:23 -0800 (PST)
Received: from dans-mac-mini-2.home
	(pool-74-98-213-46.pitbpa.fios.verizon.net. [74.98.213.46])
	by smtp.gmail.com with ESMTPSA id
	br43sm6710194qkb.57.2021.12.06.06.42.22 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
	Mon, 06 Dec 2021 06:42:22 -0800 (PST)
Date: Mon, 6 Dec 2021 09:42:20 -0500 (EST)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Looking for a cli audio player
Message-ID: <46c3cb8a-2a1d-ae3b-7671-9e5a813ab3c0@gmail.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
X-loop: blinux-list@redhat.com
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://listman.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 1
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit




Mpv will do s you request on both features.  A book in a common format will work like any audio file.

On Mon, 6 Dec 2021, Linux for blind general discussion wrote:

> Hi all,
>
>
> I am looking for a cli audio player that can and will do:
>
>
> 1. Play .m3u playlists
>
> 2. Is able to save your place in the playlists and continue where you
> left off.
>
>
> Basically what I'm looking for is something that can play my podcasts
> that I've made in to playlists as follows
>
>
> $ ls -1v |grep .mp3 > /tmp/1.m3u && mv /tmp/1.m3u .
>
>
> Such a player would also logically be able to play Audio books.
>
>
> If anyone can help here, I'd be very appreciative.
>
>

-- 
ent-
XR

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

