Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 7F3AA3FA81B
	for <lists+blinux-list@lfdr.de>; Sun, 29 Aug 2021 03:07:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1630199265;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=NH7uPqLusGJvqciybP//hPFxFt6a0fCLKnQbA1z254I=;
	b=POEyfVZLQ3oS/9jtjXEBjExnUGw2URBdgGcAOs87bX9+AfGw0lE1tXncXWenIA2yOCEcRo
	9Cpde8TNiqNVYy0g6nFYJL5WcVpSkvNuoAdmgeHE1MClplVF2a4OplRTPMULx2cnWE7+GX
	Y5h+BuvWTthMj6/FwBXYszosZ94R+xE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-371-r9OASV40Mz6mMhR-aS99aQ-1; Sat, 28 Aug 2021 21:07:44 -0400
X-MC-Unique: r9OASV40Mz6mMhR-aS99aQ-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 41BBC801B3C;
	Sun, 29 Aug 2021 01:07:40 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E70921002388;
	Sun, 29 Aug 2021 01:07:39 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 9F4EE181A0F7;
	Sun, 29 Aug 2021 01:07:38 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 17T17QlD019825 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 28 Aug 2021 21:07:26 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 7DE32216238B; Sun, 29 Aug 2021 01:07:26 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 789372162385
	for <blinux-list@redhat.com>; Sun, 29 Aug 2021 01:07:22 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id B9C9A800882
	for <blinux-list@redhat.com>; Sun, 29 Aug 2021 01:07:22 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-9-cyt1sJWfOg2P9j0kbfVedQ-1; Sat, 28 Aug 2021 21:07:20 -0400
X-MC-Unique: cyt1sJWfOg2P9j0kbfVedQ-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4GxwKM5gZtzL64
	for <blinux-list@redhat.com>; Sat, 28 Aug 2021 21:07:19 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4GxwKM53CYzcbc; Sat, 28 Aug 2021 21:07:19 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4GxwKM4jFtzcbP
	for <blinux-list@redhat.com>; Sat, 28 Aug 2021 21:07:19 -0400 (EDT)
Date: Sat, 28 Aug 2021 21:07:19 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Found this on youtube
In-Reply-To: <alpine.NEB.2.23.451.2108282021570.9713@panix1.panix.com>
Message-ID: <alpine.NEB.2.23.451.2108282105260.20318@panix1.panix.com>
References: <9290E34A-9F86-46DC-ACF7-507E81BB70BF@gmail.com>
	<alpine.NEB.2.23.451.2108282021570.9713@panix1.panix.com>
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

For now, I can't tell what to download from where.  If I do this install,
I'll likely put all of this on a dvd then run it from that dvd if that's
even possible.  I don't run qemu since it's not real hardware.


On Sat, 28 Aug 2021, Linux for blind general discussion wrote:

> Thanks for sharing that find.  I've heard about this one before but didn't
> know where it lived before so wasn't able to try it.  As it turns out, I
> have a spare ssd as a result of a manjaro-talking install fail so ought to
> be able to try this out in a little while.  I also failed to subscribe to
> the manjaro-general email list and suspect that's rather exclusive and
> mostly Spanish so even if I were allowed onto that list I'd be rather
> ineffective on it.
>
>
> On Sat, 28 Aug 2021, Linux for blind general discussion wrote:
>
> > Hi all,
> >
> > Just found this on Youtube and wondered if anyone hhas tried it.  This is a blind arch install demo on how it works.
> >
> > https://www.youtube.com/watch?v=72g-2fbP04w
> > Matthew
> >
> >
> >
> > _______________________________________________
> > Blinux-list mailing list
> > Blinux-list@redhat.com
> > https://listman.redhat.com/mailman/listinfo/blinux-list
> >
> >
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

