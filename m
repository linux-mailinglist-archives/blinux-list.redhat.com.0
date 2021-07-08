Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id EB3823BF7A4
	for <lists+blinux-list@lfdr.de>; Thu,  8 Jul 2021 11:33:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1625736807;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=tt+K8LSIAdJ+MJtPO4ehGYprUj5MFEqajv6sUmDus3U=;
	b=Jf0ZcA0lv9euUTwaudfkpYt6zi84maXliIydYTEMmivRy8vGQX3scrWrmw9yOVNWS1fFgQ
	klaUtGCfzNLp4Ru/JWlXA8Xp6qnV2Rox2JJtegGt7Mh5R0eRvdHVGigqmFdzWR3pj7heV/
	NBxUR98g+0+cZSuJd/ZVpmiT4jj0JN0=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-332-RvtkjDMVOa2-urUYVvvwCg-1; Thu, 08 Jul 2021 05:33:25 -0400
X-MC-Unique: RvtkjDMVOa2-urUYVvvwCg-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id B9EE68030B0;
	Thu,  8 Jul 2021 09:33:21 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 7945960C13;
	Thu,  8 Jul 2021 09:33:21 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 119744EA2A;
	Thu,  8 Jul 2021 09:33:21 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1689XGvq019849 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 8 Jul 2021 05:33:16 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id A7EA5207AC5A; Thu,  8 Jul 2021 09:33:16 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A39D5207AC59
	for <blinux-list@redhat.com>; Thu,  8 Jul 2021 09:33:13 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id E65061078467
	for <blinux-list@redhat.com>; Thu,  8 Jul 2021 09:33:12 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-56-_Ft2GPZYO2CsMi_MnleFcQ-1; Thu, 08 Jul 2021 05:33:10 -0400
X-MC-Unique: _Ft2GPZYO2CsMi_MnleFcQ-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4GLB121xXgz4443
	for <blinux-list@redhat.com>; Thu,  8 Jul 2021 05:33:10 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4GLB121tRYzcbc; Thu,  8 Jul 2021 05:33:10 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4GLB121sFNzcbW
	for <blinux-list@redhat.com>; Thu,  8 Jul 2021 05:33:10 -0400 (EDT)
Date: Thu, 8 Jul 2021 05:33:10 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Jenux does not talk in VMWare Workstation Player
In-Reply-To: <edeb5f8d-eff1-2be3-8d90-9c41402b6d05@gmail.com>
Message-ID: <alpine.NEB.2.23.451.2107080531540.23152@panix1.panix.com>
References: <edeb5f8d-eff1-2be3-8d90-9c41402b6d05@gmail.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Since identities on this list have been anonymized please send your
problem directly to dnl.nash@gmail.com since he is the jenux developer.
In that way, you may get your problem solved in the next iso release.


On Wed, 7 Jul 2021, Linux for blind general discussion wrote:

> Hi everyone,
>
>
> I tried installing Jenux before going with my current Arch install, but for
> some reason Jenux does not talk at all after boot. I can see that the ISO has
> actually booted using NVDA's OCR function, but no sound from the Distro at
> all.
>
>
> If anyone can help with this, I would be very grateful.
>
>

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

