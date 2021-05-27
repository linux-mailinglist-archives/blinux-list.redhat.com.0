Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 1AEB93938EA
	for <lists+blinux-list@lfdr.de>; Fri, 28 May 2021 01:06:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1622156811;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=ElBy08yKm10a0U1loZJsLzv+qUN5Du2/DBCTYxX3vC4=;
	b=HhNkKbWrSmpEPtrPST8Jvx0vodn3mgftNbQLML5JSde9xFZk5z9bKOsxAdhTL1iqDYbBae
	rJkXwKdSWvstHaAFkbAY3xT1MkOQ6hZXe037iWBKM2sYY6OV9ewiFbxvqNHZN/gEZDMNKE
	4zzkRYgflssyfUbHV/+k8bxpg2IWj8k=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-476-MRUN_plYMlewtZ-vjdZKFQ-1; Thu, 27 May 2021 19:06:49 -0400
X-MC-Unique: MRUN_plYMlewtZ-vjdZKFQ-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id CE815501E0;
	Thu, 27 May 2021 23:06:45 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B27BE60D08;
	Thu, 27 May 2021 23:06:45 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id C0F2E1800BB4;
	Thu, 27 May 2021 23:06:43 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 14RN6Yjh003835 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 27 May 2021 19:06:35 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id D9D8C20A8C20; Thu, 27 May 2021 23:06:34 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D5981207B440
	for <blinux-list@redhat.com>; Thu, 27 May 2021 23:06:32 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 1F019196F581
	for <blinux-list@redhat.com>; Thu, 27 May 2021 23:06:32 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-567-cLAHpJgfPO6QCkibWdT2dA-1; Thu, 27 May 2021 19:06:29 -0400
X-MC-Unique: cLAHpJgfPO6QCkibWdT2dA-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4Frk2r5lrzz47fc
	for <blinux-list@redhat.com>; Thu, 27 May 2021 19:06:28 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4Frk2r53V0zcbc; Thu, 27 May 2021 19:06:28 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4Frk2r4ZKCzcbW
	for <blinux-list@redhat.com>; Thu, 27 May 2021 19:06:28 -0400 (EDT)
Date: Thu, 27 May 2021 19:06:28 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Crawling a website for media files.
In-Reply-To: <CAO2sX31e1qtOiM0-usOHPQNvyDR=GuHEaHQo1qEAbwcUKGGxjQ@mail.gmail.com>
Message-ID: <alpine.NEB.2.23.451.2105271904180.17882@panix1.panix.com>
References: <CAO2sX31bb2qOf=erBYE2ZQtnKpTYkFMOx8ynLHnvztRYQh=rjQ@mail.gmail.com>
	<20210526130051.2e6fddad@bigbox.attlocal.net>
	<CAO2sX31e1qtOiM0-usOHPQNvyDR=GuHEaHQo1qEAbwcUKGGxjQ@mail.gmail.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

You might try podget.  You put urls in .podget/serverlist and that's where
podget goes to find them.
You'll need to run the package first then read the man page and then check
what's in ./podget/serverlist and comment out anything you don't want
downloaded.  I hope this helps.  This package is still under active
development.


On Thu, 27 May 2021, Linux for blind general discussion wrote:

> Okay, so I know nothing about RSS and have never heard of a podcatcher
> before, but in trying to follow the directions provided for castget,
> it doesn't appear to have a package in the Debian repos, not even the
> contrib or non-free repos(which I normally have disabled), at least
> not under the name castget. I tried Googling castget, but even with
> Debian in the search terms, I'm getting hits for pretty much every
> distro but Debian.
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
>
>

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

