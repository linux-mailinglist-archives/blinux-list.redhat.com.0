Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 1966C49EF2C
	for <lists+blinux-list@lfdr.de>; Fri, 28 Jan 2022 01:19:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1643329140;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=ZiiD9XhMK05Tx0BxQcbzcGmR1U+HvyyeTUhETRltCnI=;
	b=En/S3aF9mPzvj/efn1NmJWKwBN62TM8F08o60uQHrF31EfKMLD7DEM7pfheYv0WwL8LuN2
	mfqbgr6i4sr48Uol3cIAHlON1AWqgPnmOLMp3kwthbPGKcFixQC2NtuNpk4hV1mxMcVhms
	WUJp6dKc+0bkhB/WcgOK3aZMnE6uiIs=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-191-ty8hjqmENUSv7ySx8kC1xw-1; Thu, 27 Jan 2022 19:18:58 -0500
X-MC-Unique: ty8hjqmENUSv7ySx8kC1xw-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id E86EB1006AA7;
	Fri, 28 Jan 2022 00:18:54 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 8E2994E2AB;
	Fri, 28 Jan 2022 00:18:54 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 8A63B4BB7C;
	Fri, 28 Jan 2022 00:18:53 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com
	[10.11.54.7])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 20S0ImvQ026625 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 27 Jan 2022 19:18:48 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id E6DFE141DC5D; Fri, 28 Jan 2022 00:18:47 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E3723141DC2C
	for <blinux-list@redhat.com>; Fri, 28 Jan 2022 00:18:47 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id CAACB85A5AA
	for <blinux-list@redhat.com>; Fri, 28 Jan 2022 00:18:47 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-582-AbhVMJEhMtygchJuQcMWig-1; Thu, 27 Jan 2022 19:18:46 -0500
X-MC-Unique: AbhVMJEhMtygchJuQcMWig-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4JlJ393srRzqyR
	for <blinux-list@redhat.com>; Thu, 27 Jan 2022 19:18:45 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4JlJ393J4kzcbc; Thu, 27 Jan 2022 19:18:45 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4JlJ392tr5zcbP
	for <blinux-list@redhat.com>; Thu, 27 Jan 2022 19:18:45 -0500 (EST)
Date: Thu, 27 Jan 2022 19:18:45 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Fedora-MATE_Compiz-Live-x86_64-35-1.2.iso
In-Reply-To: <2930A22F-EA6A-4939-A70A-6C92AF95E4CC@icloud.com>
Message-ID: <55be71e1-747d-412b-148-3b1ba95fdfa@panix.com>
References: <2930A22F-EA6A-4939-A70A-6C92AF95E4CC@icloud.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.7
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
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Could it be accessibility needs to be enabled first before you can run
orca?  If so, hit f4 once to toggle accessibility on then try alt+f2 orca
or alt+f2 orca --replace or alt-super-s.
One of those three may work.  It would be nice if f4 would make a rising
or falling set of tones to let users know if they toggled accessibility on
or off or if f4 made no sound, accessibility wasn't effected.
I could not get Endeavouros talking at all on bare metal so can understand
your frustration.
That if it ever works will need a few minutes with sighted assistance.
 On Thu, 27 Jan 2022, Linux for blind general discussion wrote:

> Dear List,
> This is my third attempt at Fedora.
> I setup a VM on my Mac to try
> Fedora-MATE_Compiz-Live-x86_64-35-1.2.iso.
> I pressed alt+F2, typed orca and enter.
> I get no speech.
> What can be wrong?
> The same thing happened with Fedora Workstation 35.
> I?m about to give up and stick with Accessible Coconut and Linux Mint 20.03.
> They both work out of the box with no problems.
> Thanks,
> Rob
>
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

