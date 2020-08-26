Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 911BB252CE3
	for <lists+blinux-list@lfdr.de>; Wed, 26 Aug 2020 13:51:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1598442706;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=472xGnC92mVHUfWzgwytLw6DhCTtVXrkyzqYtOKzrq4=;
	b=aDrMZeKYZptg/hbozCfzwE2RbTAdPsmq71yXQZET3jJEnslMrgVf9GW2J+/s/6OU2KB8tG
	e/RVqkKjvENWEFcxC6jpIOkViEg3FeygOemUcv3VprvEyfIedXIfMxFJmgM14U1GC9dwLQ
	2xuZE/LAXA2381no4Z5lgRRHgOvI1jg=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-457-D8l85QbjN6KVcVKs0CzewA-1; Wed, 26 Aug 2020 07:51:44 -0400
X-MC-Unique: D8l85QbjN6KVcVKs0CzewA-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id D1BFF801AE7;
	Wed, 26 Aug 2020 11:51:39 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 874DB7BE79;
	Wed, 26 Aug 2020 11:51:38 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 41438181A050;
	Wed, 26 Aug 2020 11:51:37 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 07QBpWiQ010878 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 26 Aug 2020 07:51:32 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 0A979206322E; Wed, 26 Aug 2020 11:51:31 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 8C209203B864
	for <blinux-list@redhat.com>; Wed, 26 Aug 2020 11:51:26 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 22DFB8007D9
	for <blinux-list@redhat.com>; Wed, 26 Aug 2020 11:51:26 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-152-sLInVCupN0eV0jaP8iH_hA-1; Wed, 26 Aug 2020 07:51:23 -0400
X-MC-Unique: sLInVCupN0eV0jaP8iH_hA-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4Bc42M26bQzslr
	for <blinux-list@redhat.com>; Wed, 26 Aug 2020 07:51:23 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4Bc42M1DMYzcbY; Wed, 26 Aug 2020 07:51:23 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4Bc42M0nG1zcbV
	for <blinux-list@redhat.com>; Wed, 26 Aug 2020 07:51:23 -0400 (EDT)
Date: Wed, 26 Aug 2020 07:51:22 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: tried accessible coconut
In-Reply-To: <CAK2wa2mqJK8XBzyn7u-t81XguptkaO=ybuVOkE4Kfwn8ei8AxA@mail.gmail.com>
Message-ID: <alpine.NEB.2.23.451.2008260748290.11258@panix1.panix.com>
References: <alpine.NEB.2.23.451.2008251743310.9959@panix1.panix.com>
	<CAO2sX32zY8fraBaxNamf2f83y4d2F_OBMNVf6ruUKDC_GYi93g@mail.gmail.com>
	<alpine.NEB.2.23.451.2008252259200.29637@panix1.panix.com>
	<CAK2wa2mqJK8XBzyn7u-t81XguptkaO=ybuVOkE4Kfwn8ei8AxA@mail.gmail.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false;
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0.003
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

This is a tower not a laptop.  I got logged in and after I reset my
router the router accepted my password so got onto the internet and
updated software.
Interestingly, on next boot of accessible coconut I got a talking login
to use.

On Wed, 26 Aug 2020, Linux for blind general discussion wrote:

> Date: Wed, 26 Aug 2020 07:19:07
> From: Linux for blind general discussion <blinux-list@redhat.com>
> To: blinux-list@redhat.com
> Subject: Re: tried accessible coconut
>
> Friend,
> Let me know whether you have i installed coconut in a laptop or what.
> Again 18 or 20. If you can listen to grub tune, installation may be
> correct. In 20 login window is not supported therefore check you reach
> the login window. If so enter password and login. Thanking you.
> Sathyan.
>
> On 8/26/20, Linux for blind general discussion <blinux-list@redhat.com> wrote:
> > You can make things like that happen with Fedora, and even with a
> > monitor connected and operating if a mouse wasn't on the system back in
> > redhat 5.0 the system wouldn't work.
> >
> > On Tue, 25 Aug 2020, Linux for blind general discussion wrote:
> >
> >> Date: Tue, 25 Aug 2020 18:13:26
> >> From: Linux for blind general discussion <blinux-list@redhat.com>
> >> To: blinux-list@redhat.com
> >> Subject: Re: tried accessible coconut
> >>
> >> That's odd... I've never used accessible Coconut, and I've really only
> >> tried Knoppix and Debian for x86 and Raspbian on the Raspberry Pi when
> >> it comes to trying to set a Linux System up with speech, but I've
> >> never had an issue with something refusing to boot or a screenreader
> >> failing to launch because of no monitor being connected.
> >>
> >> _______________________________________________
> >> Blinux-list mailing list
> >> Blinux-list@redhat.com
> >> https://www.redhat.com/mailman/listinfo/blinux-list
> >>
> >>
> >
> > --
> >
> > _______________________________________________
> > Blinux-list mailing list
> > Blinux-list@redhat.com
> > https://www.redhat.com/mailman/listinfo/blinux-list
> >
> >
>
>
>

-- 

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

