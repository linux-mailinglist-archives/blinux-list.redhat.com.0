Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id E474B27F833
	for <lists+blinux-list@lfdr.de>; Thu,  1 Oct 2020 05:34:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1601523242;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=f1dIby40LtKB+Tt4mUdjGbErO8lMO4h6QcQ1wdzByYs=;
	b=VlEQ5EBSvP53sv3mEzUknxbi9U5l3i36aLBInD2P42KWytPHeYw80pNS8J5A06gcOgxNr2
	vhTbnyJ2nKhEmOr8xzPRjPTLvOaOVXCuoxjCnhCD6cm9VCfMuHI22qQ3Q8+DVhbvBkEEpo
	EpYaMbRkhFQ9OqbvgaH6UKprhoCd9Ow=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-127-OQLriX6AMjiwG4MWw9QsRg-1; Wed, 30 Sep 2020 23:33:56 -0400
X-MC-Unique: OQLriX6AMjiwG4MWw9QsRg-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 5AEC4801AF6;
	Thu,  1 Oct 2020 03:33:51 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C292710013C0;
	Thu,  1 Oct 2020 03:33:50 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 0E0EB180B658;
	Thu,  1 Oct 2020 03:33:48 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 0913Rqxv026116 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 30 Sep 2020 23:27:52 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id EF32A2018039; Thu,  1 Oct 2020 03:27:51 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id EB1D3200BCF0
	for <blinux-list@redhat.com>; Thu,  1 Oct 2020 03:27:49 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 1B1CB80351F
	for <blinux-list@redhat.com>; Thu,  1 Oct 2020 03:27:49 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-48-HUg37sf0MaGQH-TliErL0Q-1; Wed, 30 Sep 2020 23:27:46 -0400
X-MC-Unique: HUg37sf0MaGQH-TliErL0Q-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4C1z8d3lFyz1YxC
	for <blinux-list@redhat.com>; Wed, 30 Sep 2020 23:27:45 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4C1z8d2j41zcbc; Wed, 30 Sep 2020 23:27:45 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4C1z8d27MQzcbW
	for <blinux-list@redhat.com>; Wed, 30 Sep 2020 23:27:45 -0400 (EDT)
Date: Wed, 30 Sep 2020 23:27:45 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Console screenreaders
In-Reply-To: <20200930141700.15a695eb@bigbox.attlocal.net>
Message-ID: <alpine.NEB.2.23.451.2009302326590.210@panix1.panix.com>
References: <1409d60b-0be5-783a-d490-0501585ead96@gmail.com>
	<5b699b56-2241-b1ef-18c3-3d05614e9b8a@slint.fr>
	<20200930121251.7d6b8c35@bigbox.attlocal.net>
	<Pine.LNX.4.64.2009301423450.2145@server2.shellworld.net>
	<CAO2sX33+gs2H_+cV+iux-TdnbVga46Kn0fQi4ePens9LC-QuWQ@mail.gmail.com>
	<20200930141700.15a695eb@bigbox.attlocal.net>
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
List-Unsubscribe: <https://www.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://www.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://www.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

yasr will not compile on slint, I tried it and found out.

On Wed, 30 Sep 2020, Linux for blind general discussion wrote:

> Date: Wed, 30 Sep 2020 15:17:00
> From: Linux for blind general discussion <blinux-list@redhat.com>
> To: blinux-list@redhat.com
> Subject: Re: Console screenreaders
>
> Tim here.  I know that YASR works with both espeak and
> speech-dispatcher as soft-synths in addition to supporting several
> hardware synths.  I wrote up instructions here
>
> https://blog.thechases.com/posts/bsd/setting-up-a-terminal-screen-reader-on-openbsd/
>
> on how to get it to work with speech-dispatcher on OpenBSD.  I
> imagine the instruction are fairly similar on other platforms.
>
> -tim
>
> On September 30, 2020, Linux for blind general discussion wrote:
> > I know even less about YASR than Fenrir, but I understand it
> > requires a hardware speech synth to function properly.
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://www.redhat.com/mailman/listinfo/blinux-list
>
>

-- 

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

