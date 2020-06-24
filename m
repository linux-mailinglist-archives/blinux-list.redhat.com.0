Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	by mail.lfdr.de (Postfix) with ESMTP id 3F0782076AD
	for <lists+blinux-list@lfdr.de>; Wed, 24 Jun 2020 17:08:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1593011311;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=SGdas+P/JiNZXwYkFU6cP183vuGMTDzbKG+VnKmlzkM=;
	b=CthmLVIjnWwttv3ESAAAw520ZhnXMcbeg9W2K0JFS0gT9S4i0KDy/7Vlkmxy85XhsH1W3o
	b9t/Z+xZoDmbG+smq4je3B7Wca9SahKLPUBS8P2JXPoS1qAFiHdk0BZjQ9InqfgyE/sVCo
	KPZEChzxnG5Hc6k9h+f22pdmK9hd7+0=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-508-2PAcsg0LOTOFweWyCiypkA-1; Wed, 24 Jun 2020 11:08:28 -0400
X-MC-Unique: 2PAcsg0LOTOFweWyCiypkA-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id DAF0164ACA;
	Wed, 24 Jun 2020 15:08:23 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A35842B471;
	Wed, 24 Jun 2020 15:08:22 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 606F81809547;
	Wed, 24 Jun 2020 15:08:20 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 05OF8D23025014 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 24 Jun 2020 11:08:13 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 6EE5B1007A29; Wed, 24 Jun 2020 15:08:13 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6747010CD634
	for <blinux-list@redhat.com>; Wed, 24 Jun 2020 15:08:09 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 5B9E38007CE
	for <blinux-list@redhat.com>; Wed, 24 Jun 2020 15:08:09 +0000 (UTC)
Received: from mail-qv1-f42.google.com (mail-qv1-f42.google.com
	[209.85.219.42]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-424-Gv10D87_NVesD9g06UAeHA-1; Wed, 24 Jun 2020 11:08:07 -0400
X-MC-Unique: Gv10D87_NVesD9g06UAeHA-1
Received: by mail-qv1-f42.google.com with SMTP id e2so1179592qvw.7
	for <blinux-list@redhat.com>; Wed, 24 Jun 2020 08:08:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=k7OlwvXwkTXOvOXVuzG67TacEaNwhFIFy1TnE1Q1P6c=;
	b=LrvgBgAPCNLib4+Yvdl2F0Bk0wuxuSnWJFf8wWY3RoRBU1N2mrM36wUC+sZUbqxPTR
	JR1HG2dsJCWYKIwCAfkpCXl10oECSS79MPd9yoTS57W5xSm8hXne7r+IoGFtT+Qw7ReL
	0KflmwE2xWM1nM8ul8PRB2ugRFOHKvqGly5elKkCtjFzm82MM1wPbilmKpDl/B7FaUHA
	ZugaIvnkpe3u8R7UICdyjhka2Vv1cin4E9NI1/BhKbEduC5c/NeKL3Jfab2DlcCX7CoH
	J0P9QOp36ohuMVSRluvYyoZ5+8RQSXQ8ChfLQGDbPu+H1o92GP/Xk2+/KJpdUEBq8xEB
	8e3A==
X-Gm-Message-State: AOAM531rv2sRoomHGXI+YdMH77QxJR/9Jl1hiWmQtKVpvRbPcqKOrL+R
	Yi4rpR+miHn3nuw/E3KnUkxZCQrTaIEwZI4kck6L+iiy
X-Google-Smtp-Source: ABdhPJzv82WD+wdly+8o51Q49RpKdH59MLeUMJagMADdTqUgAs8e+vdqYIIynJTnolEIR/1YCFVMEeumpeXubqaGaDI=
X-Received: by 2002:a0c:c249:: with SMTP id w9mr31437226qvh.149.1593011286368; 
	Wed, 24 Jun 2020 08:08:06 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a0c:ea4a:0:0:0:0:0 with HTTP; Wed, 24 Jun 2020 08:08:05
	-0700 (PDT)
In-Reply-To: <20200624.130638.725.17@192.168.1.130>
References: <EDF1563A-2FF3-4966-92C9-0D56C440E445@gmail.com>
	<CAO2sX31aVwswLgsx=JjjjLGw8waC+hvBBVag60UBB5JbSFRYnQ@mail.gmail.com>
	<20200622.140639.018.15@192.168.1.130>
	<004701d648e3$0ac2e850$2048b8f0$@gmail.com>
	<CAO2sX31=Tkng2Zms9yLK7gVEyz+HKHDck5PEbTqL4xCe+diK=w@mail.gmail.com>
	<e606c651-4507-ad22-6a20-53753364f1f5@verizon.net>
	<CABKqQvEu6kC9SS7BCYK349DnxAh2moF1xLBFVoXBa1Hag5uHXA@mail.gmail.com>
	<63801353-D7D0-43CF-B340-E95876634B1C@gmail.com>
	<CAO2sX325iMBmhA4hs+iY5jNZ+weePFrRBgyk81BZT7Kyy23t8w@mail.gmail.com>
	<20200624120822.GG2690@rednote.net>
	<20200624.130638.725.17@192.168.1.130>
Date: Wed, 24 Jun 2020 15:08:05 +0000
Message-ID: <CAO2sX31JBzC4F8Vj4UMtaesRREef-q5zLsM+Lm4TWD=_rXhMEQ@mail.gmail.com>
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

And even if I was comfortable writing ISOs to thumbdrives(I'm not, and
it's not like I'm likely to run out of DVD+R anytime soon so there's
little incentive to learn when I've got a bash script that automates
the process of burning a disc), I also prefer to buy physical media
whenever possible and make my own rips, especially since most legal
download avenues are either using mp3 like it's the 90s or have their
files DRM'd to hell and back and only compatible with the brands of
device they approve of, so not having to hook up an external drive
every time I buy a new album would be nice.

Still, when I actually get around to replacing this ancient HP of
mine, I want to buy a machine who's boot sequence is friendly to doing
clean installs and running Live environments out of the box and I have
to go out of my way to make booting from removable media harder, not
one where it boots from the hard drive all the time and I have to go
out of my way to enable bootting from other media. Sadly, I get the
impression the latter is industry standard these days.

And for what it's worth, my desktop prior to my current HP was one of
System76's Celeron-based towers... I think it was like vintage 07 or
08 and succumbed to bulging capacitors somewhere around 12 or 13... my
HP is about twice the age that System 76 machine was when it died, but
my experience is also that HP's are some of the longest lasting
machines on the market(My family's first XP machine was an HP that
lasted over a decade in a house with multiple smokers, mold and mildew
issues, and being kept in a family room with a leaky ceiling(it had to
be moved several times thanks to being rained on). The HP I currently
have was a gift my state's Division of Services for the Blind, and HP
is easily my favorite of the major PC brands, but my one past
experience with System 76 was a good one and I wouldn't mind buying
one of their machines if I had the money to spare.

As for SBL, I'm not sure it's actually maintained. At least, I don't
think the version number of what ships with Knoppix has changed in
years. Fortunately, things don't change much in the console, so it's
enough that a mature text-mode screen reader continues to work and be
available unlike how Orca has to play whack-a-mole with every little
quirk added with each new version of Chromium, Firefox, and
Thunderbird(or at least, it seems like the vast majority of bug
reports on the Orca mailing list are due to something that changed in
one of those three).

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

