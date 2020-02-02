Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	by mail.lfdr.de (Postfix) with ESMTP id B1CB114FEB8
	for <lists+blinux-list@lfdr.de>; Sun,  2 Feb 2020 19:14:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1580667288;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=g9iAU+DX5iXwyc9Jy7OeXleOUbUzZNyIIx5vJjKaMFU=;
	b=YiAnwzTrzFztZ/LFfdWg5XQIYvjKis3F5T+l3kEql7kBtPuT8Zbz1UmhjWkgkDymssxWvL
	UGYXezmHzfgGUgwA7qp5DYIdz4d7tX84iSMbAg0z+97SEYiR5anZC1QkTTEjpY+59uRt76
	APz4JKm/C6HHrRffNjP790mz7PN4uL0=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-417-ox2jRIQNO6-VBKnPyPerJQ-1; Sun, 02 Feb 2020 13:14:46 -0500
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 6FF85DB60;
	Sun,  2 Feb 2020 18:14:41 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 1D84A19C7F;
	Sun,  2 Feb 2020 18:14:39 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id D8CD918089C8;
	Sun,  2 Feb 2020 18:14:34 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 012IERRf000912 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 2 Feb 2020 13:14:27 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 1CEBA2093CDD; Sun,  2 Feb 2020 18:14:27 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 1816D200AF7F
	for <blinux-list@redhat.com>; Sun,  2 Feb 2020 18:14:25 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 47C8A10197FE
	for <blinux-list@redhat.com>; Sun,  2 Feb 2020 18:14:25 +0000 (UTC)
Received: from omta04.suddenlink.net (omta04.suddenlink.net [208.180.40.74])
	by relay.mimecast.com with ESMTP id us-mta-314-IoXEKQ1rOaG9tJkfCTmGEA-1;
	Sun, 02 Feb 2020 13:14:22 -0500
Received: from wb5agz ([47.217.105.76]) by dalofep04.suddenlink.net
	(InterMail vM.8.04.03.22.02 201-2389-100-169-20190213) with ESMTP
	id <20200202181422.GVJO5183.dalofep04.suddenlink.net@wb5agz>;
	Sun, 2 Feb 2020 12:14:22 -0600
Received: from martin by wb5agz with local (Exim 4.92)
	(envelope-from <martin.m@suddenlink.net>)
	id 1iyJlF-00014F-Ko; Sun, 02 Feb 2020 12:14:21 -0600
To: blinux-list@redhat.com
Subject: Re: A Live Boot Image for the Mac that Talks
In-reply-to: <CAO2sX32EXpxci1Y3q2Jch+Z75vdUx-cRQS2=dxdOOtBLiqY-yQ@mail.gmail.com>
References: <E1ixMhY-0001xB-U2@wb5agz>
	<alpine.NEB.2.21.2001310111580.13258@panix1.panix.com>
	<E1iy1ln-00062r-3h@wb5agz>
	<alpine.NEB.2.21.2002011806001.10332@panix1.panix.com>
	<d75a7b21-75c1-ee44-5d35-71129cfeea51@verizon.net>
	<10e5062a-cb11-97d5-e394-2042b9dedfaf@gmail.com>
	<E1iy5Fq-0006fl-BN@wb5agz>
	<CAO2sX32EXpxci1Y3q2Jch+Z75vdUx-cRQS2=dxdOOtBLiqY-yQ@mail.gmail.com>
Comments: In-reply-to Linux for blind general discussion
	<blinux-list@redhat.com>
	message dated "Sun, 02 Feb 2020 03:04:36 +0000."
MIME-Version: 1.0
Content-ID: <4105.1580667261.1@wb5agz>
Date: Sun, 02 Feb 2020 12:14:21 -0600
Message-Id: <E1iyJlF-00014F-Ko@wb5agz>
X-Authentication-Info: Submitted using SMTP AUTH PLAIN at
	dalofep04.suddenlink.net from [47.217.105.76] using ID
	martin.m@suddenlink.net at Sun, 2 Feb 2020 12:14:22 -0600
X-CM-Analysis: v=2.3 cv=Cdh2G4jl c=1 sm=1 tr=0 cx=a_idp_d
	a=0S4FDTH59LdN14syvppWKg==:117 a=0S4FDTH59LdN14syvppWKg==:17
	a=kj9zAlcOel0A:10 a=l697ptgUJYAA:10 a=7jTcn3IT1uMA:10
	a=20KFwNOVAAAA:8 a=krAhc9dX-u4hwoP0ZZ8A:9 a=CjuIK1q_8ugA:10
	a=pHzHmUro8NiASowvMSCR:22 a=n87TN5wuljxrRezIQYnT:22
X-CM-Envelope: MS4wfLiB9RDpLqHkXH8oLF5Ph7y2E6oWXcyC9yzlwJciZN9BOcCCoZg95T0QT3FvJcqbvA0J8hbnanfLdp6gE+vGl7tp+BzNfIehYRK0JbWQyHH3Zt7fQ5y+
	QLbnMKpb2s0pV4Cnav/esO3dQxtWO1PGeaKlytnvHyMn9MVOrLbN/NuBBMGbLuOi7aSMz9LOHmgQAqj7NsvL1CVqgsB8WND5weo=
X-MC-Unique: IoXEKQ1rOaG9tJkfCTmGEA-1
X-MC-Unique: ox2jRIQNO6-VBKnPyPerJQ-1
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 012IERRf000912
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

	It is Macs from 2017 or later that don't allow booting
from foreign media.  Mine is from 2012 so it should boot a
properly-formatted external drive.

	After 2016, Apple included a disk security system called
the T2 chip that let's you approve individual drives but of
course, they still need to be correctly formatted.

	As for wodin, I don't remember how many years I have been
using that but it has never let me down.

Martin McCormick

Linux for blind general discussion <blinux-list@redhat.com> writes:
> I don't have any experience with Macs or writing bootable images to
> USB sticks(I just burn isos to DVD using wodim when I need to make a
> new Linux disc), but my first two thoughts are:
> 
> 1. Perhaps the Mac's bios isn't configured to allow booting from USB
> media. I know I've had to get sighted assistance to fix the bios boot
> order on every laptop and desktop I've acquired since going blind
> before I could boot installation media to install Linux... I even had
> to do it for a netbook that came pre-loaded with Ubuntu if memory
> serves.
> 
> 2. I could be wrong, but I believe the files needed for making a
> CD/DVD bootable and making a USB stick bootable are different. If so,
> even a properly written iso might not result in a bootable USB stick
> if the iso only includes the files needed for booting from CD/DVD.
> Again, no experience with making bootable USB sticks, so I might be
> horribly mistaken.


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

