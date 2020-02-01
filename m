Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	by mail.lfdr.de (Postfix) with ESMTP id 2B14214FAE8
	for <lists+blinux-list@lfdr.de>; Sun,  2 Feb 2020 00:08:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1580598499;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=uDh+AEhH+gAitVlc93NUlrGP+SuEm1JQjmJe8uywgWc=;
	b=SPfo6cY5R//SaDe09/IDwiUxzjw282Zy3frecff648hc1Xs8EX70yqi5vx47EX0Bhy3750
	L9WnrwIg8srnJzM67U42tqw/nRRl28STSMgM8kJrD8Mo/MIytJzDdE7f43v3hkmkk4CTke
	vZqXcCTWmoxyR3rsFdU4OwKSK0EcqrY=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-292-VkC6y8_FPP2qPfI2G1EJjw-1; Sat, 01 Feb 2020 18:08:16 -0500
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id E95E2800E21;
	Sat,  1 Feb 2020 23:08:11 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id EC7F48702F;
	Sat,  1 Feb 2020 23:08:10 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 909F518089CD;
	Sat,  1 Feb 2020 23:08:08 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 011N7X4o007187 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 1 Feb 2020 18:07:33 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 9021D8851E; Sat,  1 Feb 2020 23:07:33 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 8C1CE88517
	for <blinux-list@redhat.com>; Sat,  1 Feb 2020 23:07:31 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 695C58EB45F
	for <blinux-list@redhat.com>; Sat,  1 Feb 2020 23:07:31 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-137-D9GoTjGuPHC6jS5iG3WlIQ-1; Sat, 01 Feb 2020 18:07:29 -0500
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4898r04Sszz1XgC
	for <blinux-list@redhat.com>; Sat,  1 Feb 2020 18:07:28 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4898r031NXzcbc; Sat,  1 Feb 2020 18:07:28 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4898r02TMBzcbV
	for <blinux-list@redhat.com>; Sat,  1 Feb 2020 18:07:28 -0500 (EST)
Date: Sat, 1 Feb 2020 18:07:28 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: A Live Boot Image for the Mac that Talks
In-Reply-To: <E1iy1ln-00062r-3h@wb5agz>
Message-ID: <alpine.NEB.2.21.2002011806001.10332@panix1.panix.com>
References: <E1ixMhY-0001xB-U2@wb5agz>
	<alpine.NEB.2.21.2001310111580.13258@panix1.panix.com>
	<E1iy1ln-00062r-3h@wb5agz>
MIME-Version: 1.0
X-MC-Unique: D9GoTjGuPHC6jS5iG3WlIQ-1
X-MC-Unique: VkC6y8_FPP2qPfI2G1EJjw-1
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 011N7X4o007187
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

dd is not a good command for burning usb sticks and this is probably why
you had a failure.

On Sat, 1 Feb 2020, Linux for blind general discussion wrote:

> Date: Sat, 1 Feb 2020 18:01:42
> From: Linux for blind general discussion <blinux-list@redhat.com>
> To: blinux-list@redhat.com
> Subject: Re: A Live Boot Image for the Mac that Talks
>
> I suspect I am about to learn something so here's the deal:
>
> 	I downloaded the iso image and used dd to pour it in to a
> thumb drive
>
> dd if=imagefile of=/dev/sdd in this case and away it went.
>
> 	Several minutes later, the roughly 1-gig file ended up on
> the thumb drive.
>
> 	The mac is old enough not to have the T2 chip so if the
> drive is bootable, it should boot which it does not.
>
> 	If you plug the drive in, a message pops up stating that
> it is unreadable on this computer
>
> 	How do I get the Mac to boot off of that drive?
>
> Martin McCormick
>
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

