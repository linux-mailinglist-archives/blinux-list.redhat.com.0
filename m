Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E1F07AF0D3
	for <lists+blinux-list@lfdr.de>; Tue, 26 Sep 2023 18:35:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1695746141;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=+2U11+RHp5ovO+K321Lc22xb3iEuoeMKYP1UBymO3pc=;
	b=AtAzeZKO/rNuFfZarQFwHRtjjKfNOFJo8kGXp0rXcwjc+L0PPG7vToj2XuPwP/f3ramTqf
	473bUPC9mIi2bzvhFBv/w2DXwPU5LZvdxy4ozbUHsXcJbxS/Bvp53MhdKaXrhTlJZwZChv
	I1QMOkchgsGHOjL58aF04q7WUUUVQFI=
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-68-z_2DRyUTMS6bU1dk0EZKvQ-1; Tue, 26 Sep 2023 12:35:38 -0400
X-MC-Unique: z_2DRyUTMS6bU1dk0EZKvQ-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com [10.11.54.3])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 18C303C0BE28;
	Tue, 26 Sep 2023 16:35:30 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 74C7A1004058;
	Tue, 26 Sep 2023 16:35:29 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id B6F3919465B2;
	Tue, 26 Sep 2023 16:35:23 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
To: blinux-list@redhat.com
Subject: Re: Can I Translate Audio Among Languages?
In-reply-to: <mailman.56.1695519175.4021076.blinux-list@redhat.com>
References: <mailman.54.1695511852.4021078.blinux-list@redhat.com>
 <mailman.39.1695513933.4021070.blinux-list@redhat.com>
 <mailman.46.1695515721.4021071.blinux-list@redhat.com>
 <mailman.68.1695518354.4021070.blinux-list@redhat.com>
 <mailman.56.1695519175.4021076.blinux-list@redhat.com>
Comments: In-reply-to Linux for blind general discussion
 <blinux-list@redhat.com>
 message dated "Sat, 23 Sep 2023 18:32:49 -0700."
MIME-Version: 1.0
Date: Tue, 26 Sep 2023 11:22:52 -0500
Message-ID: <mailman.1213.1695746117.4021072.blinux-list@redhat.com>
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
Content-ID: <20342.1695745372.1@wb5agz.lan>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

I've been loosely following this discussion and if there ever was
an example of how wonderful unix-like operating systems are, a
problem like this accentuates why unix-like systems are so good.

	Someone mentioned software that translates spoken audio
in to English text.  Now, all you have to do is feed that text in
to a system with a screen reader and you've got exactly a system
for delivering English, Spanish or whatever you want with
whatever language you are looking for as the input.  Of course,
the voice will just be the screen reader or whatever
text-to-speech engine you re using but still, with the powerful
standard output concept of unix, one doesn't need to do a lot of
unusual programming requiring linguistic knowledge at all to get
where you are trying to go.  The problem, of course, will be
reduced to a mechanical issue of how do I get the text output
from this program sent through standard output to the input of
the speech engine?  Notice, I've been saying unix-like and that's
for a reason.  There is Unix with a capital U which is actually a
trademark of AT&T who developed Unix in 1968 or 1969.  They
wanted to come up with a way to make 1 main-frame computer serve
all the workers in a project at what seems to be the same time
but, in reality, is a very small difference in time for each
client.

	So, everybody is on a really fast-spinning merry-go-round
in which each horse is in the spot light for a fraction of a
second and appears to have the computer to themselves.
Everything they need  is theirs and their's alone for a split
second.  Then, time is up for them and the computer saves
everything from that rider and the next horse comes in to view
and so on.  If things are good, nobody gets to see what their
neighbors are doing unless invited but it's all so fast that
nobody notices the slight delay.

	Linux is an operating system that is like AT&T's Unix in
concept plus a zillion other versions of Linux are the same.  DEC
in the 1980's had Ultrix and IBM came along with their version of
a unix-like OS so probably very few of us are using Unix with a
capital U but we all have that Unix to thank for a great idea..

O well, I should stop blathering now but the translation idea is
one of the greatest examples I've seen in a long time of what
unix-like OS's are really good at.

Martin who started learning unix in 1989 and loved it.
Linux for blind general discussion <blinux-list@redhat.com> writes:
> Hi Karen: Honestly, I had not considered which voice or how that would
> work. I did write Jeremy directly-and-told him that the program he
> suggested is on a site which requires javascript, so I mostly get a blank
> page.
> 
> Chime

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

