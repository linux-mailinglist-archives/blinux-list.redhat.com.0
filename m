Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id A66A5741761
	for <lists+blinux-list@lfdr.de>; Wed, 28 Jun 2023 19:42:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1687974172;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=LU5HCnJMbEBwLczlbID/Mpj5X2jWi/4za0BY17Zg63c=;
	b=ZEW4+7kjoPCMBtLroxGZAW9DE178S/cESb0BHTQSoYjsmsbusSMAl2qhfNA0TRDvCldihS
	NYCAJ8xc285nh04BvWDq/EAxrhcrbLbBF++NJOfrp6tB843E1n2gzRzPfowXvXBg2nbHex
	8zKV64XXY1coCmzTYZ4PzOggokngE0A=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-530-lF4-puUMMoSDryup_Nc_nw-1; Wed, 28 Jun 2023 13:42:49 -0400
X-MC-Unique: lF4-puUMMoSDryup_Nc_nw-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com [10.11.54.8])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 76A0A1C07553;
	Wed, 28 Jun 2023 17:42:46 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 1220AC09A07;
	Wed, 28 Jun 2023 17:42:41 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 9A12519465B6;
	Wed, 28 Jun 2023 17:42:40 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
To: blinux-list@redhat.com
Subject: Re: Can I run a .bat file from basica
In-reply-to: <mailman.910.1687963739.3098365.blinux-list@redhat.com>
References: <mailman.543.1687903612.3098365.blinux-list@redhat.com>
 <mailman.910.1687963739.3098365.blinux-list@redhat.com>
Comments: In-reply-to Linux for blind general discussion
 <blinux-list@redhat.com>
 message dated "Wed, 28 Jun 2023 09:41:51 -0500."
MIME-Version: 1.0
Date: Wed, 28 Jun 2023 12:42:28 -0500
Message-ID: <mailman.1068.1687974160.3098368.blinux-list@redhat.com>
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
 <mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <http://listman.redhat.com/archives/blinux-list/>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
 <mailto:blinux-list-request@redhat.com?subject=subscribe>
Reply-To: blinux-list@redhat.com
Errors-To: blinux-list-bounces@redhat.com
Sender: "Blinux-list" <blinux-list-bounces@redhat.com>
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.8
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-ID: <25940.1687974148.1@wb5agz.lan>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

I appreciate the answers all of you have provided because I felt
rotten after posting because it's kind of off-topic for
the discussion list.  I run debian Linux on 3 Raspberry Pi's plus
3 PC's.  Two of them are working relics, one of them having been
made in 1998 or so and the other in 2004, judging by the BIOS
dates on them.  The third one is a HP Pavillion which I bought a
year ago last March.  The debian install for the new box was via
an off-the-shelf image which is the AMD64 version of debian 11,
better known as bullseye.  The installer talks if you press the
lower case s as soon as you hear the beep so the only thing I
needed sighted help with were some BIOS setups such as turning
off secureboot.

	In a nut shell, it seems to be working well with Orca but
the sound isn't right.  The new HP had Windows10 on it and sound
worked fine with that so it's not the hardware.

	My fix for that is to use a hdmi-to-analog converter
because sound is fine on the hdmi interface.

	Now, back to the topic at hand, the DOS PC has been
sitting in our attic for maybe ten years.  It had a 60-megabyte
hard drive which is now junk because when you turn on the power,
you hear the platter spin up like it's going to do something
useful then the head un-parks and there's this little bzz extra
noise and the controller shuts down the platter motor, waits a
few seconds and tries again with similar results.  I have knocked
the drive against a few things and shook it but it still makes
bad noises so I think it is a goner.  Fortunately, there wasn't
much on it and surprisingly, the floppies all still work but one
of them makes questionable noises but still reads and writes.

	Back in the day, I wrote my own DOS screen reader in
assembler and even used it at work until speakup on debian boxes
came along.  The dos screen reader sends the screen output to
com2 on the PC and I can feed that in to microcom and or kermit.

	Something, however, is wrong with my serial ports on the
DOS system because while the mode command lets me set the baud
rate, number of bytes, parity and so forth, the system locks up
the instant I try to send stuff in DOS to com2.  Com 1 also lets
you set it but it's even worse in that I haven't gotten one byte
through it in maybe a decade so I'm not holding my breath.

	The basic version I am using is actually called basica
and I think it should fit perfectly with those .bas files but I
can tell you that you are partly correct in that a lot of a .bas
file is ASCII text since the unix utility called strings sees
lots of words but since basic is an interpreted language, there
is a lot of binary stuff mixed in so one wouldn't get too much
that you could trust by just catting xyz.bas |strings.

	This is not gwbasic or qbasic but the basic that
Microsoft bundled with DOS until about 1983, I think.

	The programs I will eventually recover are examples for
programming a X10 CP290 interface.  X10 is an early home
automation system that has been around since the late seventies.

	The gcc unix program I wrote in the mid nineties that
talks to this interface was based on listing the basic programs
but back in 1995 when I first wrote the program, the program
worked.

	Now, I realized that I should have documented the source
code better because there is a spot where one shifts a byte 4
bits to the left and then combines thelower 4 bits with 4 more
bits from another byte.  I must not have done it properly because
it quit working relatively recently due to upgrades in gcc.

	So, this isn't really worth a lot of effort on anybody
else's part but I should be able to list those basic programs
then transplant the logic over to the C program so that the CP290
sees what it is supposed to again.

	This also makes me doubly appreciate unix because so much
stuff in unix just works whereas in DOS, it mostly worked but you
had to fiddle around a lot more to connect systems together.

	We all know that the designers of unix weren't thinking
of people who are blind at all but unix-like operating systems
are inherently easier to make accessible due to their basic
structure and the concept of standard input and output.

	I will keep poking at the museum hardware I have and
probably figure enough out to list these programs.

	It's kind of fun but it brings back some unpleasant
memories, also.

Martin McCormick
Linux for blind general discussion <blinux-list@redhat.com> writes:
> .bat files are executed by the command interpreter. There might be a way 
> to
> execute a system command from BASIC, but I don't remember now. Regardless,
> your .bat file would need to invoke the BASIC interpreter again, so I 
> don't
> think that calling it from within basica (although I'm wondering if you
> really mean gwbasic here) would help you. It sounds like you want the 
> BASIC
> interpreter to execute some commands automatically. You might be able to 
> do
> that by redirecting standard input, but I don't know for sure that that
> will work. And it sounds like you have a limited number of .bas files to
> convert, so trying to automate the task might be more trouble than it's
> worth.
> 
> 
> -Mike Gorse

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

