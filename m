Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by mail.lfdr.de (Postfix) with ESMTPS id 6603280AD6
	for <lists+blinux-list@lfdr.de>; Sun,  4 Aug 2019 14:12:48 +0200 (CEST)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id 79E73308FC47;
	Sun,  4 Aug 2019 12:12:45 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id ABF165C22B;
	Sun,  4 Aug 2019 12:12:43 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id C3FAE1800204;
	Sun,  4 Aug 2019 12:12:36 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
	[10.5.11.11])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id x74CCSRl030175 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 4 Aug 2019 08:12:28 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 475006012D; Sun,  4 Aug 2019 12:12:28 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx1.redhat.com (ext-mx13.extmail.prod.ext.phx2.redhat.com
	[10.5.110.42])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 41B5060127
	for <blinux-list@redhat.com>; Sun,  4 Aug 2019 12:12:26 +0000 (UTC)
Received: from omta04.suddenlink.net (omta04.suddenlink.net [208.180.40.74])
	by mx1.redhat.com (Postfix) with ESMTP id D398B3082128
	for <blinux-list@redhat.com>; Sun,  4 Aug 2019 12:12:23 +0000 (UTC)
Received: from wb5agz ([47.217.105.76]) by dalofep04.suddenlink.net
	(InterMail vM.8.04.03.22.02 201-2389-100-169-20190213) with ESMTP
	id <20190804121223.RESI27656.dalofep04.suddenlink.net@wb5agz>
	for <blinux-list@redhat.com>; Sun, 4 Aug 2019 07:12:23 -0500
Received: from martin by wb5agz with local (Exim 4.92)
	(envelope-from <martin.m@suddenlink.net>) id 1huFN9-0004wX-1Y
	for blinux-list@redhat.com; Sun, 04 Aug 2019 07:12:23 -0500
To: blinux-list@redhat.com
Subject: Those Rotten VGA BIOS Setup Screens
MIME-Version: 1.0
Content-ID: <19003.1564920742.1@wb5agz>
Date: Sun, 04 Aug 2019 07:12:22 -0500
Message-Id: <E1huFN9-0004wX-1Y@wb5agz>
X-Authentication-Info: Submitted using SMTP AUTH PLAIN at
	dalofep04.suddenlink.net from [47.217.105.76] using ID
	martin.m@suddenlink.net at Sun, 4 Aug 2019 07:12:23 -0500
X-CM-Analysis: v=2.3 cv=JvWPU/wC c=1 sm=1 tr=0 cx=a_idp_d
	a=0S4FDTH59LdN14syvppWKg==:117 a=0S4FDTH59LdN14syvppWKg==:17
	a=kj9zAlcOel0A:10 a=FmdZ9Uzk2mMA:10 a=LJOb6GiEdFqVTSWPWVkA:9
	a=CjuIK1q_8ugA:10
X-CM-Envelope: MS4wfIxNzCXYNn0EbB/OrUXDQKi8tdlD6CiITHMO690Ff9L4QKEEywyDgmhUH7U78G8Zbmy8ivOwY29CQejfLBdBQZTK42HDvVGNTtVrMfPwokJzULuwOkNk
	PACQeInri9yk30Q6RuSeAvt8ZIqdZ3Deaxj+f7bLyI2YLuYl756E99Qd
X-Greylist: Sender passed SPF test, Sender IP whitelisted by DNSRBL, ACL 238
	matched, not delayed by milter-greylist-4.5.16 (mx1.redhat.com
	[10.5.110.42]); Sun, 04 Aug 2019 12:12:24 +0000 (UTC)
X-Greylist: inspected by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.42]);
	Sun, 04 Aug 2019 12:12:24 +0000 (UTC) for IP:'208.180.40.74'
	DOMAIN:'omta04.suddenlink.net' HELO:'omta04.suddenlink.net'
	FROM:'martin.m@suddenlink.net' RCPT:''
X-RedHat-Spam-Score: 0.546  (RCVD_IN_BL_SPAMCOP_NET, RCVD_IN_DNSWL_LOW,
	SPF_HELO_NONE,
	SPF_PASS) 208.180.40.74 omta04.suddenlink.net 208.180.40.74
	omta04.suddenlink.net <martin.m@suddenlink.net>
X-Scanned-By: MIMEDefang 2.84 on 10.5.110.42
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.43]); Sun, 04 Aug 2019 12:12:46 +0000 (UTC)

	Are there any gadgets out there that one can connect to a
Linux box which will hook to the VGA output of a computer needing
BIOS setup work and output text so we don't have to bother other
people to help us tinker?

	Another possibility might be to use a LCD monitor which
generally has much less flicker than do the old CRT-style
monitors and then snap a picture of the screen on an iPad and use
something like Prismo which is an OCR program that, when you can
get it to work works well.

	The longest shot I am thinking of is to buy a device from
Epifan which can receive VGA video and converts it in to a .uvc
file which is the same format that web cams use.

	I will have to dive in to perl and write a program that
can at least decode the characters on that screen.  One nice
thing about that is that it is guaranteed to be straight and in
focus.

	I will have to learn about the .uvc format in order to
expand one frame of video in to the bit map.

	I'm glad nobody is waiting on this project besides me.

	Even so, this is a perfect example of how technology
works against you when you want to do something that all the
suits who design this stuff didn't anticipate you needing to do.

	In this case, I've got some old Dell computers which need
to always boot from CDROM before the hard drive.

	When you set them up this way, they revert back to a
different sequence for some unknown reason after maybe 6 months
or a year.  As computer users who are blind, it's much better all
around if we can solve our own problems within reason.

	Some rack-mount servers do have serial-based setup
methods but most desktops don't.

	Besides, if you have ever been in the same room as many
rack-mount servers, you'll notice it's like being on the runway
when a jet is about to take off.

	They are built to be in a rack with gobs of other hot
servers and they move a ton of air with their tiny fast-moving
fans.

Anyway, thanks for any good ideas.

Martin McCormick

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list
