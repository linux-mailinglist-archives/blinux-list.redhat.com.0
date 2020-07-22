Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	by mail.lfdr.de (Postfix) with ESMTP id 8E477228DE8
	for <lists+blinux-list@lfdr.de>; Wed, 22 Jul 2020 04:12:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1595383974;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=6wtTJpN+YZYe2/ZyrYlHWZh65XICQKCyFdVbgwwXLTs=;
	b=Hx8cEOfhlnW65/+C3NEflVObvnXwascrLB7xj2kV1ayLl8oryVY8zRxG47F4NWplJn3oKX
	SixwycYZO9lKWvy2A8D6q+69YyipU7PUENQ7c5sIuu4Rtq7KQVqYoZd8gEBrs5HKROhOkJ
	OKS2y5sonVUcw0rBxrcqY2tVMkL0jdQ=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-420-xJL5BTDEMbCND51VLFBGtA-1; Tue, 21 Jul 2020 22:12:52 -0400
X-MC-Unique: xJL5BTDEMbCND51VLFBGtA-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 44AC180046C;
	Wed, 22 Jul 2020 02:12:48 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D8D171B46C;
	Wed, 22 Jul 2020 02:12:47 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 906C51809554;
	Wed, 22 Jul 2020 02:12:47 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 06M2249a008473 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 21 Jul 2020 22:02:04 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 5E7C12156A3A; Wed, 22 Jul 2020 02:02:04 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 5A02C2156A30
	for <blinux-list@redhat.com>; Wed, 22 Jul 2020 02:02:02 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 573631012449
	for <blinux-list@redhat.com>; Wed, 22 Jul 2020 02:02:02 +0000 (UTC)
Received: from mail.opopanax.net (mail.opopanax.net [208.113.134.41]) (Using
	TLS) by relay.mimecast.com with ESMTP id
	us-mta-442-zuBBhzHCPjGw4KiC0y5aVg-1; Tue, 21 Jul 2020 22:01:59 -0400
X-MC-Unique: zuBBhzHCPjGw4KiC0y5aVg-1
Received: from mail.opopanax.net (localhost [127.0.0.1])
	by mail.opopanax.net (Postfix) with ESMTP id 4BBJcR0ypvz21kC
	for <blinux-list@redhat.com>; Wed, 22 Jul 2020 02:01:59 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at mail.opopanax.net
Received: from mail.opopanax.net ([127.0.0.1])
	by mail.opopanax.net (mail.opopanax.net [127.0.0.1]) (amavisd-new,
	port 10026) with ESMTP id ljTvQHtnky9x for <blinux-list@redhat.com>;
	Wed, 22 Jul 2020 02:00:52 +0000 (UTC)
Received: from [192.168.1.130] (24-220-234-87-dynamic.midco.net
	[24.220.234.87])
	by mail.opopanax.net (Postfix) with ESMTPSA id 4BBJb76pbBz21kB
	for <blinux-list@redhat.com>; Wed, 22 Jul 2020 02:00:51 +0000 (UTC)
Message-ID: <20200722.020032.256.35@[192.168.1.130]>
To: blinux-list@redhat.com
Subject: RE: installing speakup on RHEL 7/8
Date: Tue, 21 Jul 2020 21:00:32 -0500
MIME-Version: 1.0
In-Reply-To: <01d201d65fc9$276abc60$76403520$@yahoo.com>
References: <02d601d65bb9$cd357b80$67a07280$.ref@yahoo.com>
	<02d601d65bb9$cd357b80$67a07280$@yahoo.com>
	<20200718110724.GA2593@rednote.net>
	<015301d65fa8$16604280$4320c780$@yahoo.com>
	<005c01d65fb7$4cb802f0$e62808d0$@gmail.com>
	<01a001d65fb9$d8e51a90$8aaf4fb0$@yahoo.com>
	<CAO2sX30v8J32H9fQ-Ouxqy3fnBBBHO=-3wV3tEnd+XoJSznAvg@mail.gmail.com>
	<01d201d65fc9$276abc60$76403520$@yahoo.com>
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 06M2249a008473
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

I'd check into something like Fenrir. Might do what you want, unless you need that low level access for some reason.

Rob

----- Original Message -----
From: Linux for blind general discussion <blinux-list@redhat.com>
To: <blinux-list@redhat.com>
Date: Tue, 21 Jul 2020 18:40:59 -0700
Subject: RE: installing speakup on RHEL 7/8

> 
> Yes we are prepared to rebuild the kernel but if the code is excluded from
> the staging tree then it's going to be a problem
> 
> I have enquired into the possibilities of using a different distro, and I am
> not going to say it will not happen, but the chance is extremely slim at
> this point.  Unless I can prove that we can't get speakup to run on RHEL
> unfortunately that is not an option.
> 
> --David
> 
> 
> -----Original Message-----
> From: blinux-list-bounces@redhat.com <blinux-list-bounces@redhat.com> On
> Behalf Of Linux for blind general discussion
> Sent: Tuesday, July 21, 2020 5:27 PM
> To: blinux-list@redhat.com
> Subject: Re: installing speakup on RHEL 7/8
> 
> The Kernel is pretty much a black box from my perspective, but as I
> understand it, Speakup is a Kernel module, each distro is free to decide
> which kernel modules to include in their default kernel, and that due to REL
> being an extremely conservative distro, they exclude pretty much everything
> in the staging tree, which includes Speakup.
> 
> I could be wrong, but I suspect that in order to use speakup on a REL
> system, one would have to compile speakup and any other part of the
> accessibility stack that directly relies on it, if not recompile the whole
> kernel.
> 
> If switching to a different distro that does include speakup in its default
> kernel isn't an option, one might have better luck getting a userland screen
> reader like Fenrir up and running instead.
> 
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://www.redhat.com/mailman/listinfo/blinux-list
> 
> 
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://www.redhat.com/mailman/listinfo/blinux-list
> 
> 


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

