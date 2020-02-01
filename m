Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	by mail.lfdr.de (Postfix) with ESMTP id AA0C014FAE6
	for <lists+blinux-list@lfdr.de>; Sun,  2 Feb 2020 00:02:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1580598137;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=wXVDi85zRejv+GynzgEQte3Lw5XVe1hxIlQHwsW7DJs=;
	b=bglIoGo42cWTZTeMM8vjUvq0mx9C+HiFto+V9bGf0lSXpkBKdh3PUgBqVkhnSjKD1NUiDp
	YxFUm8IskyxnrRdJKQE2LPkCXW1RBLgLitEBFBSd6zcoyZ2knNSwkpdVXm6xg8qHfPwBGJ
	7zKHUc+TGVFyKYskPYGD/YCxkYfJPd0=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-222-Ku5dietoPbyIZSQfZs5qIQ-1; Sat, 01 Feb 2020 18:02:14 -0500
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 58ADF1851FC2;
	Sat,  1 Feb 2020 23:02:09 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 774A31036B2A;
	Sat,  1 Feb 2020 23:02:06 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id AC9C618089CD;
	Sat,  1 Feb 2020 23:01:57 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 011N1m4N007110 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 1 Feb 2020 18:01:48 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 4AFBD2037E69; Sat,  1 Feb 2020 23:01:48 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 458842037E43
	for <blinux-list@redhat.com>; Sat,  1 Feb 2020 23:01:46 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 8836B900836
	for <blinux-list@redhat.com>; Sat,  1 Feb 2020 23:01:46 +0000 (UTC)
Received: from omta04.suddenlink.net (omta04.suddenlink.net [208.180.40.74])
	by relay.mimecast.com with ESMTP id us-mta-205-qg4hyX-3PWmjTKcMyTDmkg-1;
	Sat, 01 Feb 2020 18:01:44 -0500
Received: from wb5agz ([47.217.105.76]) by dalofep04.suddenlink.net
	(InterMail vM.8.04.03.22.02 201-2389-100-169-20190213) with ESMTP
	id <20200201230143.CQGA5183.dalofep04.suddenlink.net@wb5agz>
	for <blinux-list@redhat.com>; Sat, 1 Feb 2020 17:01:43 -0600
Received: from martin by wb5agz with local (Exim 4.92)
	(envelope-from <martin.m@suddenlink.net>) id 1iy1ln-00062r-3h
	for blinux-list@redhat.com; Sat, 01 Feb 2020 17:01:43 -0600
To: blinux-list@redhat.com
Subject: Re: A Live Boot Image for the Mac that Talks
In-reply-to: <alpine.NEB.2.21.2001310111580.13258@panix1.panix.com>
References: <E1ixMhY-0001xB-U2@wb5agz>
	<alpine.NEB.2.21.2001310111580.13258@panix1.panix.com>
Comments: In-reply-to Linux for blind general discussion
	<blinux-list@redhat.com>
	message dated "Fri, 31 Jan 2020 01:13:40 -0500."
MIME-Version: 1.0
Content-ID: <23239.1580598102.1@wb5agz>
Date: Sat, 01 Feb 2020 17:01:42 -0600
Message-Id: <E1iy1ln-00062r-3h@wb5agz>
X-Authentication-Info: Submitted using SMTP AUTH PLAIN at
	dalofep04.suddenlink.net from [47.217.105.76] using ID
	martin.m@suddenlink.net at Sat, 1 Feb 2020 17:01:43 -0600
X-CM-Analysis: v=2.3 cv=JvWPU/wC c=1 sm=1 tr=0 cx=a_idp_d
	a=0S4FDTH59LdN14syvppWKg==:117 a=0S4FDTH59LdN14syvppWKg==:17
	a=kj9zAlcOel0A:10 a=l697ptgUJYAA:10 a=7jTcn3IT1uMA:10
	a=LGNvwr1_I7pEACmgiLYA:9 a=CjuIK1q_8ugA:10
	a=pHzHmUro8NiASowvMSCR:22 a=n87TN5wuljxrRezIQYnT:22
X-CM-Envelope: MS4wfGQ4IpV0DQ54gSh3uLPcUZUpKI5fOTZFrSNIVqtq7TJ2hj+vJawmZt6jXM2WyV18lZHdP4pPX6OMQ0gCUdz0Opj2+Oe6xz1IeQgcmxltfD6IUJ5aTLjy
	7Vng0ITvkBVixd4ue9HhqOF6/0uCSxt1pwGSsZ2/PD2gIviEl7lgR8i8
X-MC-Unique: qg4hyX-3PWmjTKcMyTDmkg-1
X-MC-Unique: Ku5dietoPbyIZSQfZs5qIQ-1
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 011N1m4N007110
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
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

I suspect I am about to learn something so here's the deal:

	I downloaded the iso image and used dd to pour it in to a
thumb drive

dd if=imagefile of=/dev/sdd in this case and away it went.

	Several minutes later, the roughly 1-gig file ended up on
the thumb drive.

	The mac is old enough not to have the T2 chip so if the
drive is bootable, it should boot which it does not.

	If you plug the drive in, a message pops up stating that
it is unreadable on this computer

	How do I get the Mac to boot off of that drive?

Martin McCormick


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

