Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id B036E48FA95
	for <lists+blinux-list@lfdr.de>; Sun, 16 Jan 2022 04:54:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1642305269;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=O4MT/xjaVYWO703ZhPtZXl2EVb/IEAZpLSQg6Wunjg4=;
	b=d++c4OUryT4sEB7kIZy6nshsU/lzwoGHezsand28+REcIbupIbrhqr+FMqRbnYlqfsX/iw
	rCfkG+ALFNLTAZ7T0z3ZDToA9+LoVXs5qtfzDObBi7kPZyxUZoaURTovcVMX5BG9ubLefM
	pL1f9jlONwFuQkhL5zn8yhwHtksTt8A=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-436-AKGCpl0ZM4eT5o9xRneaYQ-1; Sat, 15 Jan 2022 22:54:26 -0500
X-MC-Unique: AKGCpl0ZM4eT5o9xRneaYQ-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id DDE3618397BF;
	Sun, 16 Jan 2022 03:54:22 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id BC1306AB84;
	Sun, 16 Jan 2022 03:54:20 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 9D0081809CB8;
	Sun, 16 Jan 2022 03:54:19 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
	[10.11.54.2])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 20G3sFVm017426 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 15 Jan 2022 22:54:15 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 2332A40C1242; Sun, 16 Jan 2022 03:54:15 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast07.extmail.prod.ext.rdu2.redhat.com [10.11.55.23])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 1E078400E13A
	for <blinux-list@redhat.com>; Sun, 16 Jan 2022 03:54:14 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 621E03C1A6E2
	for <blinux-list@redhat.com>; Sun, 16 Jan 2022 03:54:14 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-634-3WRi-boDP9OHkBiBhc0QYA-1; Sat, 15 Jan 2022 22:54:12 -0500
X-MC-Unique: 3WRi-boDP9OHkBiBhc0QYA-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4Jc1PH6YR9z3jFq
	for <blinux-list@redhat.com>; Sat, 15 Jan 2022 22:54:11 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4Jc1PH5mLJzcbc; Sat, 15 Jan 2022 22:54:11 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4Jc1PH5QmzzcbC
	for <blinux-list@redhat.com>; Sat, 15 Jan 2022 22:54:11 -0500 (EST)
Date: Sat, 15 Jan 2022 22:54:11 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: No Orca in Fedora
In-Reply-To: <ada734e7-60f0-2562-5870-d8b1392c38d@panix.com>
Message-ID: <e8901619-9261-c4dd-2129-cc1f601ed2@panix.com>
References: <E0D83498-771B-46C6-A46E-F3FC7ED1E64E@icloud.com>
	<ada734e7-60f0-2562-5870-d8b1392c38d@panix.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.2
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

To use a kickstart file once created it will need to be on a separate
drive.  So let's say your kickstart file is ks.cfg and it's on /dev/sdb1,
for that when you boot the spin you write ks=/dev/sdb1/ks.cfg and if
everything works, Fedora will follow instructions in ks.cfg.


On Sat, 15 Jan 2022, Linux for blind general discussion wrote:

> It won't.  Very few flavors of Fedora have orca in them.
> fedora-workstation I think is gnome has orca but so far as I now know,
> that's the only spin with orca in it.
> How to get around this would be to have a kickstart file made for a
> fedora-workstation spin install.
> Once that kickstart file is made, you'll have to understand kickstart file
> syntax and the post-install command.
> You'd want to put a post-install command in that installs orca and all of
> its dependencies and then use the kickstart file you modified to install
> your desired spin.
>
>
> On Sat, 15 Jan 2022, Linux for blind general discussion wrote:
>
> > Hi,
> > I downloaded Fedora-Cinnamon-Live-x86_64-35-1.2
> > Super+Alt+S did not start Orca, so I pressed alt+F2 and typed orca and hit enter, but got nothing.
> > So I then pressed alt+ctrl+T and typed orca in the terminal. I used my phone to read the screen to get orca command not found.
> > Whats going on?
> > Thanks,
> > Rob
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

