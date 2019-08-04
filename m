Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by mail.lfdr.de (Postfix) with ESMTPS id BAD5980BB1
	for <lists+blinux-list@lfdr.de>; Sun,  4 Aug 2019 18:25:36 +0200 (CEST)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id 5D60F308FC20;
	Sun,  4 Aug 2019 16:25:33 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id ACC965C206;
	Sun,  4 Aug 2019 16:25:30 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 3FF601800204;
	Sun,  4 Aug 2019 16:25:25 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
	[10.5.11.16])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id x74GIu7O009791 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 4 Aug 2019 12:18:56 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 6850C5C224; Sun,  4 Aug 2019 16:18:56 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx1.redhat.com (ext-mx20.extmail.prod.ext.phx2.redhat.com
	[10.5.110.49])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 62FED5C206
	for <blinux-list@redhat.com>; Sun,  4 Aug 2019 16:18:53 +0000 (UTC)
Received: from omta03.suddenlink.net (omta03.suddenlink.net [208.180.40.73])
	by mx1.redhat.com (Postfix) with ESMTP id 4CF7130BD1B6
	for <blinux-list@redhat.com>; Sun,  4 Aug 2019 16:18:53 +0000 (UTC)
Received: from wb5agz ([47.217.105.76]) by dalofep03.suddenlink.net
	(InterMail vM.8.04.03.22.02 201-2389-100-169-20190213) with ESMTP
	id <20190804161852.SIBY10391.dalofep03.suddenlink.net@wb5agz>
	for <blinux-list@redhat.com>; Sun, 4 Aug 2019 11:18:52 -0500
Received: from martin by wb5agz with local (Exim 4.92)
	(envelope-from <martin.m@suddenlink.net>) id 1huJDg-0005lz-EA
	for blinux-list@redhat.com; Sun, 04 Aug 2019 11:18:52 -0500
To: blinux-list@redhat.com
Subject: Re: Those Rotten VGA BIOS Setup Screens
In-reply-to: <alpine.NEB.2.21.1908040831280.41@panix1.panix.com>
References: <E1huFN9-0004wX-1Y@wb5agz>
	<alpine.NEB.2.21.1908040831280.41@panix1.panix.com>
Comments: In-reply-to Linux for blind general discussion
	<blinux-list@redhat.com>
	message dated "Sun, 04 Aug 2019 08:35:28 -0400."
MIME-Version: 1.0
Content-ID: <22193.1564935532.1@wb5agz>
Date: Sun, 04 Aug 2019 11:18:52 -0500
Message-Id: <E1huJDg-0005lz-EA@wb5agz>
X-Authentication-Info: Submitted using SMTP AUTH PLAIN at
	dalofep03.suddenlink.net from [47.217.105.76] using ID
	martin.m@suddenlink.net at Sun, 4 Aug 2019 11:18:52 -0500
X-CM-Analysis: v=2.3 cv=PfaBeRpd c=1 sm=1 tr=0 cx=a_idp_d
	a=0S4FDTH59LdN14syvppWKg==:117 a=0S4FDTH59LdN14syvppWKg==:17
	a=kj9zAlcOel0A:10 a=FmdZ9Uzk2mMA:10 a=20KFwNOVAAAA:8
	a=8pBld4KcJKqZ6sVNYDwA:9 a=CjuIK1q_8ugA:10
X-CM-Envelope: MS4wfCFUeZD4n8xEpYtUyqHVK0z37BHwJE8vn5BS5XTjmakBSc3qRYyAC7Wi1wxLWBozUawGr/1g405TUeHL7h/iW/eOfQlWU+v9hIkiqSLYPKKiKBvQsQcZ
	bIyyeI+QGu96EysxKBWlaSM9nFZJIEDcrnRUgpm1HpJA5vrGd16CIuMK
X-Greylist: Sender passed SPF test, Sender IP whitelisted by DNSRBL, ACL 238
	matched, not delayed by milter-greylist-4.5.16 (mx1.redhat.com
	[10.5.110.49]); Sun, 04 Aug 2019 16:18:53 +0000 (UTC)
X-Greylist: inspected by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.49]);
	Sun, 04 Aug 2019 16:18:53 +0000 (UTC) for IP:'208.180.40.73'
	DOMAIN:'omta03.suddenlink.net' HELO:'omta03.suddenlink.net'
	FROM:'martin.m@suddenlink.net' RCPT:''
X-RedHat-Spam-Score: -0.7  (RCVD_IN_DNSWL_LOW, SPF_HELO_NONE,
	SPF_PASS) 208.180.40.73 omta03.suddenlink.net
	208.180.40.73 omta03.suddenlink.net <martin.m@suddenlink.net>
X-Scanned-By: MIMEDefang 2.84 on 10.5.110.49
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
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
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.43]); Sun, 04 Aug 2019 16:25:35 +0000 (UTC)

Those weasle cards are great.  I have one and it fits nothing I
have these days.

	Thank you for answering.  One of the old Dells has a
removable video card but the Weasle card I have will not
physically fit the slot as the connector has a key way and the
video card has a slot cut in to it where as the Weasle card's
edge connector has no slot anywhere.

	The Weasle card I have is one I bought to use at work in
the nineties and it sure solved that problem on the box I was
using it on but I am going to have to do something else here.

Martin

Linux for blind general discussion <blinux-list@redhat.com> writes:
> I've heard of a weasel card which goes in the monitor connector and then
> can send output to at least a printer and maybe a serial device.  Those
> choosing this route to not bother anyone can expect to pay $400.00 for
> the equipment and no I don't have any contact information for any
> vendor.  I read about these back in the 1990's so those may have got
> discontinued by now.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list
