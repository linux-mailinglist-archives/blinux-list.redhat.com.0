Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id BA3D72B2984
	for <lists+blinux-list@lfdr.de>; Sat, 14 Nov 2020 01:11:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1605312681;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=vStj7Pc8EfXuffD7tt2UQpoQSEknPYibeSsPrsC+k9k=;
	b=Iz1rJiTIleFW/3/SI2Cig+l1vxa88J3em7lC4RsWl3XQ0c+W4JYmkYi7lsI4qciMqnfzea
	+MIzQjNSq4CI41g4CUk2z5YCAA7IOCTj4FnykJR+5wW3jSJn99ZwXQ7icokgVgZhKlDtWM
	Vztm3CgZn3wo/rW7p2gkmriMzj3vBt4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-97-4d3Qrn_oMr-CYDHuSaBNHA-1; Fri, 13 Nov 2020 19:11:19 -0500
X-MC-Unique: 4d3Qrn_oMr-CYDHuSaBNHA-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 3253A107AD93;
	Sat, 14 Nov 2020 00:11:14 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 31F5710013BD;
	Sat, 14 Nov 2020 00:11:13 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 5C298999F;
	Sat, 14 Nov 2020 00:11:10 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 0AE07YDU009762 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 13 Nov 2020 19:07:34 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 09E1F115D348; Sat, 14 Nov 2020 00:07:34 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 0612D115D347
	for <blinux-list@redhat.com>; Sat, 14 Nov 2020 00:07:31 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id AEF3D85828E
	for <blinux-list@redhat.com>; Sat, 14 Nov 2020 00:07:31 +0000 (UTC)
Received: from mail-qt1-f180.google.com (mail-qt1-f180.google.com
	[209.85.160.180]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-440-FJTtULUPMviaSmXYv3iWew-1; Fri, 13 Nov 2020 19:07:29 -0500
X-MC-Unique: FJTtULUPMviaSmXYv3iWew-1
Received: by mail-qt1-f180.google.com with SMTP id 3so8382835qtx.3
	for <blinux-list@redhat.com>; Fri, 13 Nov 2020 16:07:29 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=jQsKkhLO04jmgneb2ZvB5WYlJ0HvjIeNapqaTdQ7b8A=;
	b=l2/Rdk0d3uEiKHpbTcGIBxYKdnmyuOWMDGYLXhkUvfuJKwz6PEPUn4VTXZe9vH9qOz
	BGqyeERlr/VJwpNBWZWU2GvKJ6z2v2//xrWO98DNF6tNpiLZD4nFngg9jbdOWisvRPno
	r3vGihL+fCbA2zHHVaeDLT5KRMnyyphfdDU7qnghP4okmm48cpZKmjJhYyYnOTaJULtL
	iGAqAiHIIXbfbSzt3CZ6zCZB7/owdjHz16xapEKy+QIWv9asDrBquvfIhiVXCaObkyul
	BLBCwBmvMmRiHQLxjl92GP265YxBqPnmTP4OdgdpGpJGsNUElPrIKW638vyrblA6xKTi
	r85g==
X-Gm-Message-State: AOAM532morkW8T/nkenH6GSi0/WM37DjoRwiiaECrSLOJrSSS66GA1Xc
	rg3AXNpF2B+gOf+0bxUD1BK9OIwU5kv9mpRbZE8mQWJr
X-Google-Smtp-Source: ABdhPJy28OfVBicgT6nFydpzCeJkNTP/4mybNwkAVPkyAZV+cBKysiEHipnWzrs4smBg+GxAcv19IrLXLGACspoGlM4=
X-Received: by 2002:ac8:5653:: with SMTP id 19mr4580506qtt.136.1605312448890; 
	Fri, 13 Nov 2020 16:07:28 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a0c:a889:0:0:0:0:0 with HTTP; Fri, 13 Nov 2020 16:07:28
	-0800 (PST)
In-Reply-To: <Pine.LNX.4.64.2011131416180.3220255@server2.shellworld.net>
References: <CAO2sX31vKWFMQmjUJqv7jSKqL+hqGB0T45-R8xMT42WiPHx_UA@mail.gmail.com>
	<Pine.LNX.4.64.2011131416180.3220255@server2.shellworld.net>
Date: Sat, 14 Nov 2020 00:07:28 +0000
Message-ID: <CAO2sX32=cEOPAShoka-g5uha_j_2m7R1H2=KDsARparqctK_kg@mail.gmail.com>
Subject: Re: Possibly Off-Topic: Earphone recommendations.
To: blinux-list@redhat.com
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

I didn't know about electronics-talk@nfbnet.org. Mind providing
additional information?

And to the person asking about specific models, here are the product
links lifted from my Amazon.com order history:

https://www.amazon.com/gp/product/B002GAXWF2/ref=ppx_yo_dt_b_search_asin_title?ie=UTF8&psc=1

https://www.amazon.com/gp/product/B000GH2QYU/ref=ppx_yo_dt_b_search_asin_title?ie=UTF8&psc=1

https://www.amazon.com/gp/product/B000GH2QYK/ref=ppx_yo_dt_b_search_asin_title?ie=UTF8&psc=1

Not sure what, if anything distinguishes the s46 from the z47, and I'm
pretty sure the letters after the number just indicate the color.
There's also a white version of the s46. I've been skimming reviews of
other ear clips that show up in the frequently bought together
section, but aside from a somewhat short wire, it sounds like
Panasonic is about the best bang for buck in this price range... I
wish ear clips weren't such a rare form factor and that earbuds hadn't
taken over the world.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

