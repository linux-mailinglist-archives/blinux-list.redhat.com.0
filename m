Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id F099F7440EF
	for <lists+blinux-list@lfdr.de>; Fri, 30 Jun 2023 19:12:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1688145119;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=CnaCKzct2VCBJ6QPncWnJjUZC1OlQKJaioy/VkD9GgE=;
	b=RthZ1iap7nx5Zt4/aBaxEks5S0LwH9nAzsDNg6vkurnvwWaWCwb66FNldwKJLeFLsyooAU
	nU367Y31VKBeIVdl0C3HctF/nyE4MRe/zNZaZpbbmtJg6Tg5/QqBN32FU6dwHuoGbpcQvl
	nTUtf48ITyxcv+8zn4WEVj54gfBo9jo=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-631-28W-zUDhOleasbRY6hLzrg-1; Fri, 30 Jun 2023 13:11:56 -0400
X-MC-Unique: 28W-zUDhOleasbRY6hLzrg-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com [10.11.54.3])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 0D2CE185A78F;
	Fri, 30 Jun 2023 17:11:54 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id E3B111121314;
	Fri, 30 Jun 2023 17:11:52 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 8A1C31946A49;
	Fri, 30 Jun 2023 17:11:52 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
To: blinux-list@redhat.com
Subject: Finally got my basic listing (was The Weirdness Just Keeps on Coming)
MIME-Version: 1.0
Date: Fri, 30 Jun 2023 12:03:46 -0500
Message-ID: <mailman.1927.1688145112.3098364.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.3
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-ID: <17515.1688144625.1@wb5agz.lan>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

I finally got the source listings of the basic programs that I
can now look at.

	I did download gw-basic as suggested but it wouldn't run
at all on this computer.  It probably runs on IBM compatible PC's
but it may be trying to access memory occupied by the ROM basic
since this is a true IBM PC.  I am not saying this in a snobby
way at all but my reading of articles about the eighties-era IBM
PC's said that this was one of the major differences between an
IBM PC and a so-called IBM clone.  In all other ways the clones
and the PC's were functionally the same.

	Now that I got the null-modem cable working, the

mode ctty comx

command works as it should with x being your com port number.

	I certainly could have been able to mechanize the mass
getting of the source but for one huge problem which is also at
the heart of a lot of accessibility issues.

	The video screen buffer is about as far from a standard
output device as one can get in that once a program takes to
writing all output there, any kind of mechanized operation stops
dead.

	It's like running a farm in which one hope to sell the
milk from one's herd of cattle but they got made in to beautiful
steaks and nice juicy Bamberger patties  before they could get to
the milking machines, sort of an udder failure, one might say.

	I could use the ctty com1 command from DOS and immediately
see the DOS prompt on the serial terminal so then one goes to
that keyboard and you can run DOS commands from your unix box and
capture the in-bound text with no trouble.  One could use a
program like expect or write some code in C or perl and get one
machine to control the other.

	Then, you call basic and the whole world stops because
basic just writes to the screen unless there is a magic flag one
could send to basic to tell it to write to true standard output.

	If there is such a flag, I don't know about it so I would
do ctty com1 and the serial part dies right there and I hear the
screen reader come alive and give the basic screen.

	There is another neat command in dos that partly helps.
You can use the mode command to reroute the parallel printer printer port
to one of the serial ports and I did that.

	Now, I could get somewhere.

	I could type new from the PC to clear basic's buffer and
then type

load "x10.bas"

	When you are running basic, the function keys are
programmed to do commands such as load, run and or save and
there's a LPT1 button.  Since I rerouted LPT1 to com1, I could
type list and then hit LPT1 and low and behold, it spewed out on
the serial line and I could capture every last character.

	Unix is just so much easier once one gets the hang of
things.

	This Summer marks the 34TH year since I first layed hands
on a unix system which was a DEC Ultrix installation at Oklahoma
State University.  Unix turned out to be the best job I every
ended up having.

Martin McCormick

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

