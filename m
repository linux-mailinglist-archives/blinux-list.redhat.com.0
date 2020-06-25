Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	by mail.lfdr.de (Postfix) with ESMTP id 9F578209E3F
	for <lists+blinux-list@lfdr.de>; Thu, 25 Jun 2020 14:15:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1593087331;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=sAbh5Y1CeZBHJ74Ab1tXS7Unz4Ta+7JMgDdgyBHqxjY=;
	b=iFVXiGjvfq2ryvIlAZuYKV+HskVpuh2amuIU5u6pMyQs2rPV9aPQeFST96Pld25vYEB3zu
	8Zi7y76I4vrDa0BeKLz9YxmEC2Twmbx7D0NCVjzKLw6Z0MPySKy4WaIXNZGGJSE4j202Pm
	/Zd2Ke6EDka9iwnvkeMPw2YwQYg4snQ=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-245-r5ubd50rMpCXVaGxsgQ3vQ-1; Thu, 25 Jun 2020 08:15:28 -0400
X-MC-Unique: r5ubd50rMpCXVaGxsgQ3vQ-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id D47BC108BD17;
	Thu, 25 Jun 2020 12:15:23 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 5576179326;
	Thu, 25 Jun 2020 12:15:22 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id AC714180954D;
	Thu, 25 Jun 2020 12:15:17 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 05PCFAT4026748 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 25 Jun 2020 08:15:10 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 2AE4311921AC; Thu, 25 Jun 2020 12:15:10 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 2646411921A9
	for <blinux-list@redhat.com>; Thu, 25 Jun 2020 12:15:07 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 54944185A797
	for <blinux-list@redhat.com>; Thu, 25 Jun 2020 12:15:07 +0000 (UTC)
Received: from opera.rednote.net (opera.rednote.net [66.228.34.147]) (Using
	TLS) by relay.mimecast.com with ESMTP id
	us-mta-191-K472u_x9N-Ct5fEJ_2M5PA-1; Thu, 25 Jun 2020 08:15:04 -0400
X-MC-Unique: K472u_x9N-Ct5fEJ_2M5PA-1
Received: from rednote.net (localhost [IPv6:0:0:0:0:0:0:0:1])
	by opera.rednote.net (8.15.2/8.15.2) with ESMTPS id 05PCF3R9245918
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NO)
	for <blinux-list@redhat.com>; Thu, 25 Jun 2020 12:15:03 GMT
DMARC-Filter: OpenDMARC Filter v1.3.2 opera.rednote.net 05PCF3R9245918
DKIM-Filter: OpenDKIM Filter v2.11.0 opera.rednote.net 05PCF3R9245918
Received: (from janina@localhost)
	by rednote.net (8.15.2/8.15.2/Submit) id 05PCF30b245917
	for blinux-list@redhat.com; Thu, 25 Jun 2020 08:15:03 -0400
Date: Thu, 25 Jun 2020 08:15:03 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Prospects for an accessible and open version of Android?
Message-ID: <20200625121503.GA245455@rednote.net>
References: <20200622.140639.018.15@192.168.1.130>
	<004701d648e3$0ac2e850$2048b8f0$@gmail.com>
	<CAO2sX31=Tkng2Zms9yLK7gVEyz+HKHDck5PEbTqL4xCe+diK=w@mail.gmail.com>
	<e606c651-4507-ad22-6a20-53753364f1f5@verizon.net>
	<CABKqQvEu6kC9SS7BCYK349DnxAh2moF1xLBFVoXBa1Hag5uHXA@mail.gmail.com>
	<63801353-D7D0-43CF-B340-E95876634B1C@gmail.com>
	<CAO2sX325iMBmhA4hs+iY5jNZ+weePFrRBgyk81BZT7Kyy23t8w@mail.gmail.com>
	<20200624120822.GG2690@rednote.net>
	<20200624.130638.725.17@192.168.1.130>
	<CAO2sX31JBzC4F8Vj4UMtaesRREef-q5zLsM+Lm4TWD=_rXhMEQ@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAO2sX31JBzC4F8Vj4UMtaesRREef-q5zLsM+Lm4TWD=_rXhMEQ@mail.gmail.com>
X-Operating-System: Linux opera.rednote.net 5.6.18-200.fc31.x86_64
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

I certainly wasn't suggesting you aren't entitled to your preferences. I
was simply pointing out the rest of the world has left optical media in
the dust. Good luck finding optical drives as default equipment anywhere
in today's mainstream kartplace. you might want them, but most of the
rest of us have moved on.

PS: What's so hard about burning an iso to disk? I might expect that
kind of complaint on a Windows or Mac list, but I don't get that
complaint here on a Linux list. What's so hard about:

wodim source-file.iso destination.device.designator


How much easier can life be?

Best,

Janina



Linux for blind general discussion writes:
> And even if I was comfortable writing ISOs to thumbdrives(I'm not, and
> it's not like I'm likely to run out of DVD+R anytime soon so there's
> little incentive to learn when I've got a bash script that automates
> the process of burning a disc), I also prefer to buy physical media
> whenever possible and make my own rips, especially since most legal
> download avenues are either using mp3 like it's the 90s or have their
> files DRM'd to hell and back and only compatible with the brands of
> device they approve of, so not having to hook up an external drive
> every time I buy a new album would be nice.
> 
> Still, when I actually get around to replacing this ancient HP of
> mine, I want to buy a machine who's boot sequence is friendly to doing
> clean installs and running Live environments out of the box and I have
> to go out of my way to make booting from removable media harder, not
> one where it boots from the hard drive all the time and I have to go
> out of my way to enable bootting from other media. Sadly, I get the
> impression the latter is industry standard these days.
> 
> And for what it's worth, my desktop prior to my current HP was one of
> System76's Celeron-based towers... I think it was like vintage 07 or
> 08 and succumbed to bulging capacitors somewhere around 12 or 13... my
> HP is about twice the age that System 76 machine was when it died, but
> my experience is also that HP's are some of the longest lasting
> machines on the market(My family's first XP machine was an HP that
> lasted over a decade in a house with multiple smokers, mold and mildew
> issues, and being kept in a family room with a leaky ceiling(it had to
> be moved several times thanks to being rained on). The HP I currently
> have was a gift my state's Division of Services for the Blind, and HP
> is easily my favorite of the major PC brands, but my one past
> experience with System 76 was a good one and I wouldn't mind buying
> one of their machines if I had the money to spare.
> 
> As for SBL, I'm not sure it's actually maintained. At least, I don't
> think the version number of what ships with Knoppix has changed in
> years. Fortunately, things don't change much in the console, so it's
> enough that a mature text-mode screen reader continues to work and be
> available unlike how Orca has to play whack-a-mole with every little
> quirk added with each new version of Chromium, Firefox, and
> Thunderbird(or at least, it seems like the vast majority of bug
> reports on the Orca mailing list are due to something that changed in
> one of those three).
> 
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://www.redhat.com/mailman/listinfo/blinux-list

-- 

Janina Sajka
https://linkedin.com/in/jsajka

Linux Foundation Fellow
Executive Chair, Accessibility Workgroup:	http://a11y.org

The World Wide Web Consortium (W3C), Web Accessibility Initiative (WAI)
Co-Chair, Accessible Platform Architectures	http://www.w3.org/wai/apa

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

