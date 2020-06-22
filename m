Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	by mail.lfdr.de (Postfix) with ESMTP id 2145B202DF3
	for <lists+blinux-list@lfdr.de>; Mon, 22 Jun 2020 02:37:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1592786274;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=FW0BfnCiHtVAGfnfANhPQS1/2UaSRHqXpSatLRU9oRU=;
	b=HtgjlC+/Ry+R64IbRwNZHSaRChHef38H2mH9KhqzNZnr4DUNacScPfm8Y/PwQu/jG8wf3x
	vaplsSIp4FFIgL/il1rN3KmCzh7LSrBBztFH0C/kgbY6iOJPIAeJ7h4LBnSJ0r+O0pnkMe
	P+57NB1hNWRnr8hMpi1DP4KTAxlZAgI=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-133-ntHnM9RZNxuyGwOE5DAKZw-1; Sun, 21 Jun 2020 20:37:52 -0400
X-MC-Unique: ntHnM9RZNxuyGwOE5DAKZw-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 6981A107B7C3;
	Mon, 22 Jun 2020 00:37:47 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 026855BAC1;
	Mon, 22 Jun 2020 00:37:45 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id E08731809542;
	Mon, 22 Jun 2020 00:37:40 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 05M0bVmY020252 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 21 Jun 2020 20:37:31 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id AE36E110F0AB; Mon, 22 Jun 2020 00:37:31 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A9A07110F0A2
	for <blinux-list@redhat.com>; Mon, 22 Jun 2020 00:37:28 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id A1A9E101A525
	for <blinux-list@redhat.com>; Mon, 22 Jun 2020 00:37:28 +0000 (UTC)
Received: from mail-qk1-f174.google.com (mail-qk1-f174.google.com
	[209.85.222.174]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-338-jOeo1mdyNqC8S9w7DyCwRA-1; Sun, 21 Jun 2020 20:37:26 -0400
X-MC-Unique: jOeo1mdyNqC8S9w7DyCwRA-1
Received: by mail-qk1-f174.google.com with SMTP id w1so14110867qkw.5
	for <blinux-list@redhat.com>; Sun, 21 Jun 2020 17:37:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=7sWBiUZG8tmTR6dacV7rjkYBFyC6HKgyYAWy+ZGqE1E=;
	b=aTfd1m4ICGMDr79xfyGU0jGXsGJaBc5DZKLQBVVfJZ60cg44L6t8peL8lfgqRR8s/e
	wK1vHUPOsn+S6xMYb8Ynz/rmaXV/h3f5J6hbsUG9Jvurf8QQiaeUPXhQfxQWL5GfV2fx
	movs1JUOzXKlt253oUMGrW/qAQPE1bn1jvSLYqW93fy2Gf4YeG03oHMsbJ8yEfPGZw4o
	0ynDAFG20+CkiaLwbITAQCcuu93OxvEDH4JgOnn0gSewJGodbQhIEH/plvbzUX3OLr37
	fgu7IvAr9ZN4Sugx171RxfCH//nLTnGyISufOgQ3Gub1FwNJH8Ahan6PnPmL6aP3TBok
	oDaQ==
X-Gm-Message-State: AOAM532hADs8o/naAxkoAfc381bhw4Xgy7npeNGVTyhpACq+0FH7uBsR
	c2yfgszqdxavIPHYV85g+Jh0cBAiljLFjwiz1fXjjSeg
X-Google-Smtp-Source: ABdhPJzZQg3fA5JWByvFMbT17bqbh6xqR7TxJBSLURGlrjjo1OIID8Qzd+cszQKFRZqi31gSI6jFOK854wuO7L4M7FE=
X-Received: by 2002:a05:620a:4e5:: with SMTP id
	b5mr13345749qkh.341.1592786245368; 
	Sun, 21 Jun 2020 17:37:25 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a0c:ea4a:0:0:0:0:0 with HTTP; Sun, 21 Jun 2020 17:37:24
	-0700 (PDT)
In-Reply-To: <01fc01d64804$84853600$8d8fa200$@gmail.com>
References: <DF019091-ECBE-48AC-8B3F-A85FCB13F98F@gmail.com>
	<68F8B348-C5F3-4E40-9731-CB928C1E1786@cfcl.com>
	<3FF9DFF0-EBA2-41FA-AF6D-41A15F7D96B3@gmail.com>
	<1E64643A-5D91-45E2-A546-970F7E14EF28@cfcl.com>
	<alpine.DEB.2.22.394.2006141355001.3348482@chime>
	<eb770c6c-c8e6-84d6-973c-e3afc118ca1b@slint.fr>
	<20200615100242.GC2180@rednote.net>
	<CABKqQvG5Nv14kAK-uipF1d4-mXqkea9Uk_0E8e+qbNGLN3XV=g@mail.gmail.com>
	<20200616065933.GF2180@rednote.net>
	<843663A4-EEEA-4DB7-A1CB-56C6A65E41BC@cfcl.com>
	<20200621074757.GA2690@rednote.net>
	<9A1F6B85-D0FF-4CC3-9DB1-8585F92EB74E@cfcl.com>
	<CAO2sX30NoqTTbmvf6b-r1ezo3QY-oxKtjzYTQw0tXp3BmOoK6g@mail.gmail.com>
	<01fc01d64804$84853600$8d8fa200$@gmail.com>
Date: Mon, 22 Jun 2020 00:37:24 +0000
Message-ID: <CAO2sX316drL7vzvipd=Nzs8oB1DABVSR0i_6_uEOa0B9t+xRYA@mail.gmail.com>
Subject: Re: Prospects for an accessible and open version of Android?
To: blinux-list@redhat.com
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
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

@CJ: I've never owned an Apple product, but that does make it sound
like Apple supports their products longer than most Android phone
makers or at least use to. As I understand it, most models are lucky
to be supported for 2 years and while I can't speak for carriers other
than my own, I'm pretty sure mine defaults to 30 months financing on
new phones.

I've only ever owned one smart phone, and while it was nice for some
things when I had one useable eye, it became pretty much useless when
I went blind back in 2012 and I ended up taking my dad's old flip
phone when he got his first smartphone and the one time I've gotten a
new phone since, it was another flip phone that I fear the day it
eventually dies because slates have taken over everything.

I don't do Apple because I don't like their "our way or the highway"
mindset towards what users can do with their devices without hacking,
and while I kind of want to check out how well talkback does or
doesn't work, the near impossibility of finding something that runs
Android and has a physical keyboard, especially without having to buy
the thing outright has turned me off, and the prospect of paying for
an extra line with my carrier so I can finance a slate through them
while maintaining a phone I can actually use while I do battle with a
very blind unfriendly input device doesn't appeal much either.

Probably the biggest reason my Raspberry Pi is my portable computer of
choice, aside from it being more portable than a laptop even with the
need for an external battery pack is the fact I can use the same
wireless USB keybaord I use with my desktop.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

