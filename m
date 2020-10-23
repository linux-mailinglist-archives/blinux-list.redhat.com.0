Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 2A6522972E3
	for <lists+blinux-list@lfdr.de>; Fri, 23 Oct 2020 17:51:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1603468287;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=Iw8EgxfY+Tj+VuHlNH2904mFWurPXtnWCtvZeJhI6vY=;
	b=Vx4A37q9LB95HrGl9+VwHCSU298dULOSVEHSLg+1MexNMOk5YFxHnWu9OAc8oz1IkspAlY
	XtZBcGXOcuDqRaeFWY2E7idUh8qjZ6qestp8vKGe1oC09piXpW8BOc+a7VUIpw667St/FH
	ddWAoHKUk+uQ5BiGDWUwtOJv5iUs0C4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-533-q_OL0f16MR-G0QBMuDV85A-1; Fri, 23 Oct 2020 11:51:25 -0400
X-MC-Unique: q_OL0f16MR-G0QBMuDV85A-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 9DB10804B72;
	Fri, 23 Oct 2020 15:51:20 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 547E05D9D5;
	Fri, 23 Oct 2020 15:51:20 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 0E238181A050;
	Fri, 23 Oct 2020 15:51:19 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 09NFpGm6018178 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 23 Oct 2020 11:51:16 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id A04D5207A53A; Fri, 23 Oct 2020 15:51:16 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 98D132017E8F
	for <blinux-list@redhat.com>; Fri, 23 Oct 2020 15:51:09 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 93F8389FEE2
	for <blinux-list@redhat.com>; Fri, 23 Oct 2020 15:51:09 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-465-IEjZ6PAkMDmGClNEKM37bg-1; Fri, 23 Oct 2020 11:51:06 -0400
X-MC-Unique: IEjZ6PAkMDmGClNEKM37bg-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4CHpc96XsLz170q
	for <blinux-list@redhat.com>; Fri, 23 Oct 2020 11:51:05 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4CHpc957NSzcbf; Fri, 23 Oct 2020 11:51:05 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4CHpc94bDfzcbd
	for <blinux-list@redhat.com>; Fri, 23 Oct 2020 11:51:05 -0400 (EDT)
Date: Fri, 23 Oct 2020 11:51:05 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: building kernel for ac97 sound card
In-Reply-To: <alpine.DEB.2.21.1.2010231616570.26808@willempc.meraka.csir.co.za>
Message-ID: <alpine.NEB.2.23.451.2010231148320.4709@panix1.panix.com>
References: <alpine.NEB.2.23.451.2010230909460.7641@panix1.panix.com>
	<alpine.DEB.2.21.1.2010231616570.26808@willempc.meraka.csir.co.za>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

I think my mistake was having ac97 built into the kernel; could be ac97
doesn't like that housing.  I'll try rebuilding that as a module and see
if I get further.  The linux kernel configuration is so complex it's not
easy to know which things need to be in the kernel as built-ins and
which need to be modules.

On Fri, 23 Oct 2020, Linux for blind general discussion wrote:

> Date: Fri, 23 Oct 2020 10:22:10
> From: Linux for blind general discussion <blinux-list@redhat.com>
> To: Linux for blind general discussion <blinux-list@redhat.com>
> Subject: Re: building kernel for ac97 sound card
>
> The sound card drivers are modules, so just build the module if need be.
> Ac97 sounds pretty standard to me though, so I think it should be part of the
> standard setup already.
> The pc speaker is something else though.
> There is a module called pcspkr which allow the use of that.
> All pc's does not have a speaker though.
> Maybe I am missing something in your message?
> Regards, Willem
>
>
>
>
> On Fri, 23 Oct 2020, Linux for blind general discussion wrote:
>
> > I have an ac97 sound card and a c-media usb sound card on a system.  I
> > have only had success activating the pcspeaker when building a kernel for
> > gentoo.  I have no clue as to what to enable to get this done.  This is
> > even after having gone through lspci output and lsmod output with the
> > install-minimal dvd running the operating system  The speaker-test utility
> > puts out sound in the chroot environment and is silent after first boot
> > into the new environment made by the compiled kernel.
> >
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

