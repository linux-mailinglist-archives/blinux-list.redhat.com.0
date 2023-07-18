Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 12DFC75878F
	for <lists+blinux-list@lfdr.de>; Tue, 18 Jul 2023 23:59:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1689717552;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=QYBYX98+jGU/LikBqKenavkRRY+X7fDokfHRjPSUTPY=;
	b=PUEKJQz6obRaS0W4imviMJGe5qDIt4FAjUF+1EuCW8eJiUjz+hBcjnKH0ng+jyRSotCJ5p
	MZ084YmeMCtZLOty+b/CreObzyyn9GBv++CSNFBybWu0RA48gxCEKgrx7ou8YD/uQhbhN0
	oskvk4nb2/wrMWW4toVsUTg+YUcIVSk=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-577-5V6f7BTpOo-J43ejHYUfXA-1; Tue, 18 Jul 2023 17:59:09 -0400
X-MC-Unique: 5V6f7BTpOo-J43ejHYUfXA-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com [10.11.54.7])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id E3EC81044599;
	Tue, 18 Jul 2023 21:59:06 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id CBAC51454142;
	Tue, 18 Jul 2023 21:59:06 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 622F419465A3;
	Tue, 18 Jul 2023 21:59:06 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Tue, 18 Jul 2023 17:59:04 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Console E-mail client for my need
In-Reply-To: <mailman.489.1689716584.687812.blinux-list@redhat.com>
References: <mailman.489.1689716021.687810.blinux-list@redhat.com>
 <mailman.489.1689716584.687812.blinux-list@redhat.com>
MIME-Version: 1.0
Message-ID: <mailman.482.1689717546.687817.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.7
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

nmh or aerc might be a couple good clients for console.

-- 
Jude <jdashiel at panix dot com>
"There are four boxes to be used in defense of liberty:
soap, ballot, jury, and ammo.
Please use in that order."
Ed Howdershelt 1940.

On Tue, 18 Jul 2023, Linux for blind general discussion wrote:

> I use mutt with speakup, and it works very well.
> But yes, that's after tweaking, configuring, and adding some support scripts.
>
> On Tue, Jul 18, 2023 at 06:05:10PM -0300, Linux for blind general discussion wrote:
> > Hi, I'm setting up an environment on my new Gentoo installation. I'm
> > thinking of setting up an e-mail client at the console rather than a desktop
> > client like Thunderbird, because console programs tend to be more performant
> > and stable. On the other hand, I prefer text reading on desktop programs, as
> > there are more convenient commands, e.g. the famous continuous reading
> > command found in Orca. Thus, I thought of choosing a console client that
> > allows me to open a text editor like leafpad to read plain text e-mail
> > messages, and open a browser like Firefox to read html messages.
> >
> > Upon searching, there appears to be only a few console clients still
> > maintained, namely Mutt, neoMutt and sup. Sup is curses based, but NeoMutt
> > seems the most active, though it probably requires a lot of time and
> > patience to configure properly, as it doesn't have any interactive settings
> > wizard; one needs to carefully read and change files manually.
> >
> > Can someone say if it's worth trying? If so, what screen reader works better
> > with it: fenrir, orca or speakup? Am I missing any other good client?
> >
> > Thanks,
> > Cleverson
> >
> > _______________________________________________
> > Blinux-list mailing list
> > Blinux-list@redhat.com
> > https://listman.redhat.com/mailman/listinfo/blinux-list
>
>

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

