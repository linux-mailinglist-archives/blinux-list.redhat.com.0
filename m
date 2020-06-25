Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	by mail.lfdr.de (Postfix) with ESMTP id C30FE20A117
	for <lists+blinux-list@lfdr.de>; Thu, 25 Jun 2020 16:46:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1593096382;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=Yeb80xrErDHidDwiuCZVfMEs4tcEheDJ8dgaTsvc8i4=;
	b=iJivlECq7VnRbto/l7/d/HLckhfuJ4UsrkebNhvcNDhNPwc3laG41k2/7VGUyAmhdW2CmA
	oP5Gh11pvP5+CZZSQKuQevEWSNuY8/tN9AHQKJ19jsbM3kab6SEUJiobEdPSWsptrgctA1
	yg/6hPLyg0fKCDpPxasYZbQ1UnypRqk=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-290-h3hS-xJrMsumuJLTPj6U4g-1; Thu, 25 Jun 2020 10:46:19 -0400
X-MC-Unique: h3hS-xJrMsumuJLTPj6U4g-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 0B96C19200EC;
	Thu, 25 Jun 2020 14:45:51 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 372B45DAA0;
	Thu, 25 Jun 2020 14:45:50 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 8ED4D180954D;
	Thu, 25 Jun 2020 14:45:48 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 05PEjg6M009244 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 25 Jun 2020 10:45:42 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 4645D2144B4F; Thu, 25 Jun 2020 14:45:42 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3E0382144B4A
	for <blinux-list@redhat.com>; Thu, 25 Jun 2020 14:45:37 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 3D77F108C26A
	for <blinux-list@redhat.com>; Thu, 25 Jun 2020 14:45:37 +0000 (UTC)
Received: from mail-oi1-f174.google.com (mail-oi1-f174.google.com
	[209.85.167.174]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-486-hyo04cBjM56XT5klqutO6Q-1; Thu, 25 Jun 2020 10:45:34 -0400
X-MC-Unique: hyo04cBjM56XT5klqutO6Q-1
Received: by mail-oi1-f174.google.com with SMTP id t25so5170333oij.7
	for <blinux-list@redhat.com>; Thu, 25 Jun 2020 07:45:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:content-transfer-encoding:mime-version
	:subject:date:references:to:in-reply-to:message-id;
	bh=4+M/xFezavZoSV1S4kGksP9Lc3QcKw+YJvvq7HU7SKU=;
	b=LCF1xWIYD98ACjuAHqzMwc8mTovTv9J3IeGTQjFQt8rE5GlCWiLJVadN4Y70/H+zKO
	Jg+OuRxi0PGBXGsw7IUBOXlrJn71wbvM9IftSzu3yJX8nbvjClzVUTtgrDY2foBWC53P
	Dz3UAKN1piG5qBRS3hwtmkqQABj6N/JuoXSGOD1nlutIT3PmafHl4mRftVYYwjOyr24+
	f8KsJs8t1QdLV9sx6spbG/pIdRdE5YNV7PBJVEfrCztwVB/k0oKgySoR8RcRz8UAe9bF
	0dTZXtTUYURD0Ae9IWu8fO+wlUIRUrktknXqpUsSF+ryWPtDCB+zxdC3FmGG0AkxsYc8
	1Uvw==
X-Gm-Message-State: AOAM533W8cS86tZRqRznfS3HMB7gCrR9OfRoLn05ZSVUInii+IDtObvs
	yag/RHnPup8taveQzS1ed6TyZjqgrrw=
X-Google-Smtp-Source: ABdhPJzsNADMwo9qnRNDrJQohZ49bXPg20ZeW5OYzq55vVLq+xOkeD4J/r+GNZcTrExSgyaflIs7rw==
X-Received: by 2002:aca:b205:: with SMTP id b5mr2559108oif.103.1593096333583; 
	Thu, 25 Jun 2020 07:45:33 -0700 (PDT)
Received: from ?IPv6:2601:3c2:8200:9360:ce6:279e:335d:41c?
	([2601:3c2:8200:9360:ce6:279e:335d:41c])
	by smtp.gmail.com with ESMTPSA id
	m18sm5763973ooe.12.2020.06.25.07.45.32 for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 25 Jun 2020 07:45:32 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.5\))
Subject: Re: Prospects for an accessible and open version of Android?
Date: Thu, 25 Jun 2020 09:45:31 -0500
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
	<20200625121503.GA245455@rednote.net>
To: blinux-list@redhat.com
In-Reply-To: <20200625121503.GA245455@rednote.net>
Message-Id: <71A9934E-C794-4580-B5CF-A1E966C587AB@gmail.com>
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 05PEjg6M009244
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Another handy thing with optical drives is that one may hear if a drive is being used.
As handy as u s b drives are, they are silent.

> On Jun 25, 2020, at 7:15 AM, Linux for blind general discussion <blinux-list@redhat.com> wrote:
> 
> I certainly wasn't suggesting you aren't entitled to your preferences. I
> was simply pointing out the rest of the world has left optical media in
> the dust. Good luck finding optical drives as default equipment anywhere
> in today's mainstream kartplace. you might want them, but most of the
> rest of us have moved on.
> 
> PS: What's so hard about burning an iso to disk? I might expect that
> kind of complaint on a Windows or Mac list, but I don't get that
> complaint here on a Linux list. What's so hard about:
> 
> wodim source-file.iso destination.device.designator
> 
> 
> How much easier can life be?
> 
> Best,
> 
> Janina
> 
> 
> 
> Linux for blind general discussion writes:
>> And even if I was comfortable writing ISOs to thumbdrives(I'm not, and
>> it's not like I'm likely to run out of DVD+R anytime soon so there's
>> little incentive to learn when I've got a bash script that automates
>> the process of burning a disc), I also prefer to buy physical media
>> whenever possible and make my own rips, especially since most legal
>> download avenues are either using mp3 like it's the 90s or have their
>> files DRM'd to hell and back and only compatible with the brands of
>> device they approve of, so not having to hook up an external drive
>> every time I buy a new album would be nice.
>> 
>> Still, when I actually get around to replacing this ancient HP of
>> mine, I want to buy a machine who's boot sequence is friendly to doing
>> clean installs and running Live environments out of the box and I have
>> to go out of my way to make booting from removable media harder, not
>> one where it boots from the hard drive all the time and I have to go
>> out of my way to enable bootting from other media. Sadly, I get the
>> impression the latter is industry standard these days.
>> 
>> And for what it's worth, my desktop prior to my current HP was one of
>> System76's Celeron-based towers... I think it was like vintage 07 or
>> 08 and succumbed to bulging capacitors somewhere around 12 or 13... my
>> HP is about twice the age that System 76 machine was when it died, but
>> my experience is also that HP's are some of the longest lasting
>> machines on the market(My family's first XP machine was an HP that
>> lasted over a decade in a house with multiple smokers, mold and mildew
>> issues, and being kept in a family room with a leaky ceiling(it had to
>> be moved several times thanks to being rained on). The HP I currently
>> have was a gift my state's Division of Services for the Blind, and HP
>> is easily my favorite of the major PC brands, but my one past
>> experience with System 76 was a good one and I wouldn't mind buying
>> one of their machines if I had the money to spare.
>> 
>> As for SBL, I'm not sure it's actually maintained. At least, I don't
>> think the version number of what ships with Knoppix has changed in
>> years. Fortunately, things don't change much in the console, so it's
>> enough that a mature text-mode screen reader continues to work and be
>> available unlike how Orca has to play whack-a-mole with every little
>> quirk added with each new version of Chromium, Firefox, and
>> Thunderbird(or at least, it seems like the vast majority of bug
>> reports on the Orca mailing list are due to something that changed in
>> one of those three).
>> 
>> _______________________________________________
>> Blinux-list mailing list
>> Blinux-list@redhat.com
>> https://www.redhat.com/mailman/listinfo/blinux-list
> 
> -- 
> 
> Janina Sajka
> https://linkedin.com/in/jsajka
> 
> Linux Foundation Fellow
> Executive Chair, Accessibility Workgroup:	http://a11y.org
> 
> The World Wide Web Consortium (W3C), Web Accessibility Initiative (WAI)
> Co-Chair, Accessible Platform Architectures	http://www.w3.org/wai/apa
> 
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://www.redhat.com/mailman/listinfo/blinux-list
> 


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

