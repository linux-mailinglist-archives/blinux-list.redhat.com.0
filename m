Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by mail.lfdr.de (Postfix) with ESMTPS id 6752E860B4
	for <lists+blinux-list@lfdr.de>; Thu,  8 Aug 2019 13:17:36 +0200 (CEST)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id 25D913007F39;
	Thu,  8 Aug 2019 11:17:34 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A4A8760BEC;
	Thu,  8 Aug 2019 11:17:31 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 10BC718005A4;
	Thu,  8 Aug 2019 11:17:27 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
	[10.5.11.11])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id x78BHKbb014210 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 8 Aug 2019 07:17:20 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 5CF36600CC; Thu,  8 Aug 2019 11:17:20 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx1.redhat.com (ext-mx05.extmail.prod.ext.phx2.redhat.com
	[10.5.110.29])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 56F36600C8
	for <blinux-list@redhat.com>; Thu,  8 Aug 2019 11:17:18 +0000 (UTC)
Received: from omta01.suddenlink.net (omta01.suddenlink.net [208.180.40.71])
	by mx1.redhat.com (Postfix) with ESMTP id B4D062CD811
	for <blinux-list@redhat.com>; Thu,  8 Aug 2019 11:17:16 +0000 (UTC)
Received: from wb5agz ([47.217.105.76]) by dalofep01.suddenlink.net
	(InterMail vM.8.04.03.22.02 201-2389-100-169-20190213) with ESMTP
	id <20190808111716.TSST8687.dalofep01.suddenlink.net@wb5agz>;
	Thu, 8 Aug 2019 06:17:16 -0500
Received: from martin by wb5agz with local (Exim 4.92)
	(envelope-from <martin.m@suddenlink.net>)
	id 1hvgPz-0006jL-Ll; Thu, 08 Aug 2019 06:17:15 -0500
To: blinux-list@redhat.com
Subject: Re: Those Rotten VGA BIOS Setup Screens
In-reply-to: <96DD717C-4899-4232-951F-6F3F18E4EF1A@pipkrokodil.se>
References: <E1huFN9-0004wX-1Y@wb5agz>
	<96DD717C-4899-4232-951F-6F3F18E4EF1A@pipkrokodil.se>
Comments: In-reply-to Linux for blind general discussion
	<blinux-list@redhat.com>
	message dated "Sun, 04 Aug 2019 21:34:18 +0200."
MIME-Version: 1.0
Content-ID: <25873.1565263035.1@wb5agz>
Date: Thu, 08 Aug 2019 06:17:15 -0500
Message-Id: <E1hvgPz-0006jL-Ll@wb5agz>
X-Authentication-Info: Submitted using SMTP AUTH PLAIN at
	dalofep01.suddenlink.net from [47.217.105.76] using ID
	martin.m@suddenlink.net at Thu, 8 Aug 2019 06:17:16 -0500
X-CM-Analysis: v=2.3 cv=D8g51cZj c=1 sm=1 tr=0 cx=a_idp_d
	a=0S4FDTH59LdN14syvppWKg==:117 a=0S4FDTH59LdN14syvppWKg==:17
	a=kj9zAlcOel0A:10 a=FmdZ9Uzk2mMA:10 a=7jTcn3IT1uMA:10
	a=20KFwNOVAAAA:8 a=0e3lqS230zbxAGA21qoA:9 a=CjuIK1q_8ugA:10
X-CM-Envelope: MS4wfM6JBAJ5hNXiRFduahV3ZsPaeIbkkbnT1/m5ldAx7CrAknvy957dsoO8A4qC3Bh/w2v70iIYZWdjCXy37sR5M2lxnXYYXoxp+K4Mu+CB7HD0x6pnDywx
	sq0UTTriyW1Ux5MbKWVNQ5v0SvB4AQJ8RqJiGU5h504eVOpf3SWXM4QgTJEAIwabj2svQqTYFKKw0WUpRAkirnqCuTEV/WKVeQg=
X-Greylist: Sender passed SPF test, Sender IP whitelisted by DNSRBL, ACL 238
	matched, not delayed by milter-greylist-4.5.16 (mx1.redhat.com
	[10.5.110.29]); Thu, 08 Aug 2019 11:17:16 +0000 (UTC)
X-Greylist: inspected by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.29]);
	Thu, 08 Aug 2019 11:17:16 +0000 (UTC) for IP:'208.180.40.71'
	DOMAIN:'omta01.suddenlink.net' HELO:'omta01.suddenlink.net'
	FROM:'martin.m@suddenlink.net' RCPT:''
X-RedHat-Spam-Score: -0.7  (RCVD_IN_DNSWL_LOW, SPF_HELO_NONE,
	SPF_PASS) 208.180.40.71 omta01.suddenlink.net
	208.180.40.71 omta01.suddenlink.net <martin.m@suddenlink.net>
X-Scanned-By: MIMEDefang 2.78 on 10.5.110.29
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.48]); Thu, 08 Aug 2019 11:17:35 +0000 (UTC)

After reading your message, I found my RealWeasel2000 card tucked
neatly away in a box and installed it in the only ISA slot in the
computer and connected it's RS-232 port to another Linux box
running kermit and powered up the target system.

	The RealWeasel immediately echoed it's startup screen and
then absolutely nothing else happened.

	I read some documentation and found that the Weasel
doesn't work nicely if there is another video module so I pulled
the VGA display board and started up again.

	Again , the RealWeasel booted, displayed it's startup
message and then it was crickets once more.  In case those for
whom English is a second language or who are not familiar with
American English which is English V2.0, crickets is a slang meaning
no response whatsoever.

	I said "Gosh Darn," or actually slightly stronger
language and realized I was hosed again.  That's English V2.0's
way of saying "out of further options."

	The RealWeasle card probably does exactly what the
papenmeier braillex 80's interface was doing but on this
particular Dell, the video-related address and data lines may not
make it to the ISA slot as not many modules would need them.

	The VGA card, itself, has it's own peculiar slot which
looks kind of like a PCI slot with a key way in the middle so one
doesn't try to put anything but the correct card in it.  The
VGA card, itself, doesn't fit anywhere but the slot it normally sits
in.

	That RealWeasel2000 card totally saved my skin a couple
of times when I bought it sometime in 2000 and it is a beautiful
solution which appears to no longer have a problem to solve which
is a real shame.

	It was an open sources project in which the purchaser of
the card is given licenses to learn how it works and modify it's
operation under the same general idea as Linux, itself.  If the
signals aren't there, however, there is not much one can do.

	Thanks for at least making me think about that Weasel
card as it might have saved the day.  The other 3 old Dells are
working but need their boot order changed and all of them have a
built-in VGA generator on the Mboard so it's just as well.

	I am a firm beleaver in using stuff until it is used up
and planned obsolessence is just wasteful as long as the systems
are still able to do useful work.

	All but one of the four old systems are now using SSD
drives which instantly makes them faster and more responsive than
the old mechanical disk drives.

Martin

Linux for blind general discussion <blinux-list@redhat.com> writes:
> Hi!
> When i had a pc with Isa slots i borrowed a papenmeier braillex 80 and 
> put their Isa card in and then bios works flawlessly.
> /A

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list
