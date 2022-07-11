Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 344FF57084B
	for <lists+blinux-list@lfdr.de>; Mon, 11 Jul 2022 18:27:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1657556855;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=5BikMIfbKdJKr9VZX9Vp9/nB/IXEfTV67+/V4Q+oVnE=;
	b=f3kKor96TfGtmLv+jBW3Nl3W96KyQ8eA8I6T9QSta74MKvhCbg2gGCM0bOIAKmMymtbbw9
	Ea8igTDVXt8Zw3jBUsv2abf6YHNgpfF9XfULD67g6VpmpVVxtUAKdhMDvBcb4nrvLUFh9W
	6s6ato8BlX5+W/eV6fxSrl3MGKsNXwM=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-282-hYzbQR7hNpKa3duQ_tBgnQ-1; Mon, 11 Jul 2022 12:27:27 -0400
X-MC-Unique: hYzbQR7hNpKa3duQ_tBgnQ-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com [10.11.54.2])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 47115802D2C;
	Mon, 11 Jul 2022 16:27:26 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 9C6C840D282E;
	Mon, 11 Jul 2022 16:27:23 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 3E62D194705F;
	Mon, 11 Jul 2022 16:27:23 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
MIME-Version: 1.0
In-Reply-To: <mailman.32532.1657550966.111203.blinux-list@redhat.com>
References: <mailman.32420.1657364089.111201.blinux-list@redhat.com>
 <mailman.32225.1657370151.111208.blinux-list@redhat.com>
 <mailman.32342.1657440361.111208.blinux-list@redhat.com>
 <mailman.32667.1657446476.111209.blinux-list@redhat.com>
 <mailman.32023.1657544590.111207.blinux-list@redhat.com>
 <mailman.32711.1657550119.111202.blinux-list@redhat.com>
 <mailman.32532.1657550966.111203.blinux-list@redhat.com>
Date: Mon, 11 Jul 2022 16:27:19 +0000
Subject: Re: I3wm, any progress?
To: blinux-list@redhat.com
Message-ID: <mailman.32062.1657556842.111207.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.2
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

*Looks up jwm in Aptitude.*

Hard to say which has the larger footprint once you add in all the
dependencies, but at least on my system, installing JWM would require
about 50 MB of extra disc space, mainly from installing perl-modules
and some other perl stuff nothing on my system currently uses, while
removing flwm and its dependencies not used by anything else would
free 1.7Mb, so it's likely I never checked if jwm would work with the
script I'm using. Granted, flwm does recommend several perl packages
as an alternative to the menu package if you want an application menu,
but by default, I only install a package's dependencies and dip into
recommends only when they provide additional functionality I need.

And yeah, Firefox is a behemoth(/usr/lib/firefox/ accounts for nearly
half the disc usage of my /usr/ and even with 4GB of RAM and an
i7(admittedly, one that's 11-years-old, but I understand even an old
i7 is better than just about anything ARM for number crunching)
Firefox sometimes slows to a crawl if I have more than a few tabs with
rich web content open)... Sadly, lightweight web browser seems to be
synonymous with "we deliberately left out something most web designers
use weather its needed or not, so plenty of websites just don't work
in our browser" with JavaScript being a common pick for that
something... and as much as I dislike JavaScript and wish I could
permanently disable it, the reality is that for every website that
works better when you block its JavaScript, there's a website that
just won't work without JavaScript or won't even let you try to use it
without JavaScript...

I know F123 is defunct, but do you know if those scripts for starting
up stand alone GUI apps with Orca are available anywhere? The script
I'm using is rather inflexible, the only thing I've managed to figure
out for effectively modifying it is changing which window manager it
uses, and my efforts to write such a script from scratch have never
been successful.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

