Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by mail.lfdr.de (Postfix) with ESMTPS id 9250C84B22
	for <lists+blinux-list@lfdr.de>; Wed,  7 Aug 2019 14:00:31 +0200 (CEST)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id 8D40D30A00FF;
	Wed,  7 Aug 2019 12:00:29 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id CC1965B6A5;
	Wed,  7 Aug 2019 12:00:28 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 55C81180221F;
	Wed,  7 Aug 2019 12:00:23 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
	[10.5.11.14])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id x77BsRS3028550 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 7 Aug 2019 07:54:27 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id BAF345DAA0; Wed,  7 Aug 2019 11:54:27 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx1.redhat.com (ext-mx06.extmail.prod.ext.phx2.redhat.com
	[10.5.110.30])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B52605DE5B
	for <blinux-list@redhat.com>; Wed,  7 Aug 2019 11:54:25 +0000 (UTC)
Received: from omta01.suddenlink.net (omta01.suddenlink.net [208.180.40.71])
	by mx1.redhat.com (Postfix) with ESMTP id A5C6846660
	for <blinux-list@redhat.com>; Wed,  7 Aug 2019 11:54:24 +0000 (UTC)
Received: from wb5agz ([47.217.105.76]) by dalofep01.suddenlink.net
	(InterMail vM.8.04.03.22.02 201-2389-100-169-20190213) with ESMTP
	id <20190807115424.OOYC8687.dalofep01.suddenlink.net@wb5agz>
	for <blinux-list@redhat.com>; Wed, 7 Aug 2019 06:54:24 -0500
Received: from martin by wb5agz with local (Exim 4.92)
	(envelope-from <martin.m@suddenlink.net>) id 1hvKWN-0002Wk-UF
	for blinux-list@redhat.com; Wed, 07 Aug 2019 06:54:23 -0500
To: blinux-list@redhat.com
Subject: Re: Those Rotten VGA BIOS Setup Screens
In-reply-to: <96DD717C-4899-4232-951F-6F3F18E4EF1A@pipkrokodil.se>
References: <E1huFN9-0004wX-1Y@wb5agz>
	<96DD717C-4899-4232-951F-6F3F18E4EF1A@pipkrokodil.se>
Comments: In-reply-to Linux for blind general discussion
	<blinux-list@redhat.com>
	message dated "Sun, 04 Aug 2019 21:34:18 +0200."
MIME-Version: 1.0
Content-ID: <9716.1565178863.1@wb5agz>
Date: Wed, 07 Aug 2019 06:54:23 -0500
Message-Id: <E1hvKWN-0002Wk-UF@wb5agz>
X-Authentication-Info: Submitted using SMTP AUTH PLAIN at
	dalofep01.suddenlink.net from [47.217.105.76] using ID
	martin.m@suddenlink.net at Wed, 7 Aug 2019 06:54:24 -0500
X-CM-Analysis: v=2.3 cv=H/mlPNQi c=1 sm=1 tr=0 cx=a_idp_d
	a=0S4FDTH59LdN14syvppWKg==:117 a=0S4FDTH59LdN14syvppWKg==:17
	a=kj9zAlcOel0A:10 a=FmdZ9Uzk2mMA:10 a=7jTcn3IT1uMA:10
	a=20KFwNOVAAAA:8 a=RPYxQj9JJT3B4RC3A5gA:9 a=igUdDTTnTgYLeggW:21
	a=fP2VzatZwgDz04nG:21 a=CjuIK1q_8ugA:10
X-CM-Envelope: MS4wfB0SolkbE+d+yjGfwWNNELh2i1uVkPl/E7RM14c5nU/OfhS3jvm3d+TqkbmuPO4WBbQnS6HLXJk5V/NcAq7Fapk4CXkjEWtOwmKQ+fZZl4KiiFU7g/SJ
	UUbe4AygLq2s0gtlQPhss4XU8MVBY6GK5r+QwFcTkRck+VGywpYmhvh9
X-Greylist: Sender passed SPF test, Sender IP whitelisted by DNSRBL, ACL 238
	matched, not delayed by milter-greylist-4.5.16 (mx1.redhat.com
	[10.5.110.30]); Wed, 07 Aug 2019 11:54:24 +0000 (UTC)
X-Greylist: inspected by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.30]);
	Wed, 07 Aug 2019 11:54:24 +0000 (UTC) for IP:'208.180.40.71'
	DOMAIN:'omta01.suddenlink.net' HELO:'omta01.suddenlink.net'
	FROM:'martin.m@suddenlink.net' RCPT:''
X-RedHat-Spam-Score: 0.546  (RCVD_IN_BL_SPAMCOP_NET, RCVD_IN_DNSWL_LOW,
	SPF_HELO_NONE,
	SPF_PASS) 208.180.40.71 omta01.suddenlink.net 208.180.40.71
	omta01.suddenlink.net <martin.m@suddenlink.net>
X-Scanned-By: MIMEDefang 2.78 on 10.5.110.30
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.43]); Wed, 07 Aug 2019 12:00:30 +0000 (UTC)

That's interesting to know.  I still have the Weasel card which
may do some of the same things.  The video text buffer for
classic VGA systems is a specific range of memory.  If you
remember, each character is is a 16-bit word.  Eight bits are the
attribute such as color and whether or not it should be flashing
and the other 8 bits determine the actual character such as a
blank space or an upper or lower case letter plus a whole bunch
of ASCII graphics.  Remember the fun of having your speech
synthesizer read every horizontal piece of a box that went the
width of the screen.  There were corner pieces such that one
could draw polygons and create ASCII art.  It was like software
Legos that you had to listen to.

	I wrote my DOS screen reader in Microsoft assembler and a
repeat detector was one of the first subroutines I wrote to
preserve some degree of sanity.  I'll let people who know me be
the judge as to whether or not I wrote it in time.

	Three of the four old PC's have an on-board VGA chip set
so I don't remember if the Weasel can run with another VGA card
in place or not.  I'll be surprised if it does.

	I would love to play with that Epiphan video to .UVC
converter but it is four-hundred US Dollars which I can afford
but it is not a trivial sum so I would be forced to actually
write the conversion software.

	That sanity I think I saved by writing the repeat
shutdown subroutines would probably dissolve in this project.

	The story in our local paper would likely be that
police were called to our address because a mentally-deranged
blind retired programmer was found naked, screaming and rolling in the
street and impeding traffic.

	I will get the Weasel card and see if it can coexist with
an existing video card.  I'm not holding my breath.

	Just out of curiosity, What did early Braille displays do when
confronted by the upper 128 ASCII values?  This is part of the
reason why we have the modern character sets such as UTF8 and
others so that all written languages can display properly these
days.

	Anyway, thanks for more food for thought.

Martin McCormick  WB5AGZ

Linux for blind general discussion <blinux-list@redhat.com> writes:
> When i had a pc with Isa slots i borrowed a papenmeier braillex 80 and 
> put their Isa card in and then bios works flawlessly.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list
