Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id B22F33BE2EF
	for <lists+blinux-list@lfdr.de>; Wed,  7 Jul 2021 08:06:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1625638011;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=TTKrYj2i8WueFOSgpZPArg8+OJ/Kxkp0NwKUq+4kVKo=;
	b=YvAODCYKo/ntlPzS64baWGeSf5sAUUtfXBPAYv1yDNgYCNH0C26A6ySWcgNIrrQthjgv3P
	HaeRW0H4KuLdW++AiucHJYr0kAuX5JHa1984KEXlHdyu00xguCh6CX794Bwqy7SKqR3zOX
	P6ecrzZnEIIDreIBoqI49teDo7lEE1Y=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-368-FV8oqN8WPzWAmng7PDrU6Q-1; Wed, 07 Jul 2021 02:06:50 -0400
X-MC-Unique: FV8oqN8WPzWAmng7PDrU6Q-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 94F8D800D62;
	Wed,  7 Jul 2021 06:06:45 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 593B75C1D5;
	Wed,  7 Jul 2021 06:06:44 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 3034B4A712;
	Wed,  7 Jul 2021 06:06:37 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 16765tO5028095 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 7 Jul 2021 02:05:55 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id BBC102138BA7; Wed,  7 Jul 2021 06:05:55 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B72F92138BAC
	for <blinux-list@redhat.com>; Wed,  7 Jul 2021 06:05:52 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id CA750188142B
	for <blinux-list@redhat.com>; Wed,  7 Jul 2021 06:05:52 +0000 (UTC)
Received: from mail-qk1-f182.google.com (mail-qk1-f182.google.com
	[209.85.222.182]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-28-FFDXr3TvNFOh0CrLwTEDow-1; Wed, 07 Jul 2021 02:05:50 -0400
X-MC-Unique: FFDXr3TvNFOh0CrLwTEDow-1
Received: by mail-qk1-f182.google.com with SMTP id e14so862261qkl.9
	for <blinux-list@redhat.com>; Tue, 06 Jul 2021 23:05:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=06Czh0oSzxzt33wNed/8t3EsH41vmZKIl7RIXslaSSc=;
	b=MId8Jx1Tj3YtHDhcDt8dkNws/ldJ8p8x0cbXxM/XUmjwKQyiKCMF1AmAQ/M0FcOWJc
	dtrC2UT9Lvx4yFdChlMyBj1JcI7+IJLEq5FW3qKbDG5mFxOa1q7dYcsRD2y8PfW44zRx
	zN98BHAtsX+JwaIFFEQdhRH2y+Wc0Mrl+BfWHk/IwIlcOFfqk35KDjzUiIOJ7hhNJ3Ng
	YQHYVTkOGCLEJoWyIuNN3BzmF1xjf2DB9isC3fSu58q7gpFCEpMyKI2JdbZOptr/RRfO
	fJc5mgLrjAW5rcBV5cjW6DwY2d6LqO8pXvZ55+2xHzQ3kovVKv0s0MQcYfJYlk+9dSSb
	9hdg==
X-Gm-Message-State: AOAM531EhHM2L//7q1MbVlz0cACYfYBzi49MpFZu3cd/MqXr/4ER+Fz7
	DIi351E43KCVnnoYr/CPT2pOikSYeuthLdJz6RY0WrHsprA=
X-Google-Smtp-Source: ABdhPJxM13BW5E3R6IiQeGU8KOBGvtIzwlb2GpTiNz7Nrz6YFB3E+Tc840hHv1fpZjGvZSU84GVfx++2pRGYG1sJDMc=
X-Received: by 2002:a05:620a:1526:: with SMTP id
	n6mr502283qkk.401.1625637950005; 
	Tue, 06 Jul 2021 23:05:50 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a0c:e084:0:0:0:0:0 with HTTP;
	Tue, 6 Jul 2021 23:05:49 -0700 (PDT)
In-Reply-To: <alpine.NEB.2.23.451.2107070059440.695@panix1.panix.com>
References: <c690bab2-3bd7-e7f1-cd3f-ed2acfef85c5@hubert-humphrey.com>
	<839C771A-8B53-4421-B972-83DAC5F8194E@yahoo.com>
	<alpine.NEB.2.23.451.2107070059440.695@panix1.panix.com>
Date: Wed, 7 Jul 2021 06:05:49 +0000
Message-ID: <CAO2sX33qUrQ-YUDAX7qQqZ8RXt=KHZQqxvph0HnQFuYWt_D==g@mail.gmail.com>
Subject: Re: Suggestions for Linux laptop
To: blinux-list@redhat.com
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Mimecast-Spam-Signature: yes
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
X-loop: blinux-list@redhat.com
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://listman.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

I could be wrong, but I'm reading the OP as less "what's a good laptop
that comes pre-loaded with Linux" and more "what's a good laptop to
put Linux on". Granted, one would think a machine that comes with one
flavor of Linux would be a good choice for putting a different flavor
of Linux on, which I presume is one reason they're considering
System76, a company that specializes in machines pre-installed with
Linux if they haven't changed drastically.

But then again, I've never purchased a laptop or desktop that I kept
whatever came pre-loaded on it longer than the time it took to
download, burn, and install whichever Linux I preferred at the time,
even on the ones that came preloaded with Linux...

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

