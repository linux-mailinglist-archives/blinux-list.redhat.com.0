Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 176873FAB93
	for <lists+blinux-list@lfdr.de>; Sun, 29 Aug 2021 15:13:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1630242784;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=zGI/6n8v2DUHnigF7GSs/WzelU3g5S1WNQe6z9C30PE=;
	b=A2tGQ3O2M6dFh+NuR5d4HHTeSJEeTenf2CTAaegoW4sJsqxguXMaLau32Q5qlvPQLQkifH
	3Wu44S+rLvTZ8dUJ2L4RklvqVkjxvSuuN1RZ7TPaz52gQFZARA8/M/s4vTB28aPv6jUFvD
	FMa8ScCORzbXuK1udIIZk/btI6h93BM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-350-Jp9XT5GbM0W3JV19feN-SA-1; Sun, 29 Aug 2021 09:13:01 -0400
X-MC-Unique: Jp9XT5GbM0W3JV19feN-SA-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id BF00D1008064;
	Sun, 29 Aug 2021 13:12:57 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id ABCAE100E809;
	Sun, 29 Aug 2021 13:12:53 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id B2C551819AC2;
	Sun, 29 Aug 2021 13:12:49 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 17TDCZGe009626 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 29 Aug 2021 09:12:35 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 494281111A76; Sun, 29 Aug 2021 13:12:35 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 4578F100332B
	for <blinux-list@redhat.com>; Sun, 29 Aug 2021 13:12:32 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 6F8B28007B1
	for <blinux-list@redhat.com>; Sun, 29 Aug 2021 13:12:32 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-266-VEwUDHshMru5strPGrl_8A-1; Sun, 29 Aug 2021 09:12:30 -0400
X-MC-Unique: VEwUDHshMru5strPGrl_8A-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4GyDQ51lWNz2rsp
	for <blinux-list@redhat.com>; Sun, 29 Aug 2021 09:12:29 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4GyDQ5169Jzcbc; Sun, 29 Aug 2021 09:12:29 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4GyDQ50q3wzcbP
	for <blinux-list@redhat.com>; Sun, 29 Aug 2021 09:12:29 -0400 (EDT)
Date: Sun, 29 Aug 2021 09:12:29 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Found this on youtube
In-Reply-To: <efe42a63-c45d-faf0-fa47-289a51049768@gmail.com>
Message-ID: <alpine.NEB.2.23.451.2108290909030.12570@panix1.panix.com>
References: <9290E34A-9F86-46DC-ACF7-507E81BB70BF@gmail.com>
	<efe42a63-c45d-faf0-fa47-289a51049768@gmail.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
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

Jenux does get an accessible system up with either android or several
flavors of archlinux.  Not all flavors of archlinux are accessible that
can be installed with Jenux but most are.  Jenux has continuing support as
shown by the different dates embedded in the names of the iso's and sha512
files available on its site.


On Sun, 29 Aug 2021, Linux for blind general discussion wrote:

> Hi all,
>
>
> The last I checked, the BlindArch ISO is rather old. I did an install, but
> there were so many things wrong with the install I kept it for less than an
> hour. It would've taken me days to fix it all.
>
>
> I am actually considdering writing an install Script in the line of a NixOs
> configuration for my own personal use, thus, no choices, all baked in to the
> script. It would probably take me some time, but what can you do?
>
>
> I would rather do that than screw around with "install scripts". Most of the
> darn things is buggy as all get out, or doesn't include the accessibility
> stuff by default.
>
> Warm regards,
>
> Brandt Steenkamp
>
> Sent using Thunderbird from the Slint Laptop
>
> On 2021/08/28 23:05, Linux for blind general discussion wrote:
> > Hi all,
> >
> > Just found this on Youtube and wondered if anyone hhas tried it.  This is a
> > blind arch install demo on how it works.
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
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
>
>
>

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

