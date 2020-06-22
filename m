Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	by mail.lfdr.de (Postfix) with ESMTP id 94E362030C0
	for <lists+blinux-list@lfdr.de>; Mon, 22 Jun 2020 09:43:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1592811808;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=IwRc0QrxCmp0/CyJh848NRrCkG0V/DstjpVtijRmRys=;
	b=EQH2bSY7rQQy8Ls/l5xd3ubIENVcI0JflIBy5ZOVzPuhaKIziJ1sQXWSMs+OQwtdN2E0IS
	wewRw8F8fK/brcsd5HUwW9pus60c67on7sncvR2fGme+IR6O4ePR1o9Z4IcoFDAgXtkKXW
	JIvdDdOu7YjlLUseyJSCUQ5L/s81XDI=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-244-pDWcOMQWPRmmwfNofyhwXw-1; Mon, 22 Jun 2020 03:43:26 -0400
X-MC-Unique: pDWcOMQWPRmmwfNofyhwXw-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id D47D2107ACF4;
	Mon, 22 Jun 2020 07:43:21 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id BA8E019D7F;
	Mon, 22 Jun 2020 07:43:21 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 2F8B41809547;
	Mon, 22 Jun 2020 07:43:21 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 05M7hJBK026892 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 22 Jun 2020 03:43:19 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id E8FF62157F25; Mon, 22 Jun 2020 07:43:18 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E4A552157F23
	for <blinux-list@redhat.com>; Mon, 22 Jun 2020 07:43:16 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 8AA94101A525
	for <blinux-list@redhat.com>; Mon, 22 Jun 2020 07:43:16 +0000 (UTC)
Received: from opera.rednote.net (opera.rednote.net [66.228.34.147]) (Using
	TLS) by relay.mimecast.com with ESMTP id
	us-mta-292-cePIeltPMV6WKTNIcNVn1w-1; Mon, 22 Jun 2020 03:43:14 -0400
X-MC-Unique: cePIeltPMV6WKTNIcNVn1w-1
Received: from rednote.net (localhost [IPv6:0:0:0:0:0:0:0:1])
	by opera.rednote.net (8.15.2/8.15.2) with ESMTPS id 05M7hDxN078614
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NO)
	for <blinux-list@redhat.com>; Mon, 22 Jun 2020 07:43:13 GMT
DMARC-Filter: OpenDMARC Filter v1.3.2 opera.rednote.net 05M7hDxN078614
DKIM-Filter: OpenDKIM Filter v2.11.0 opera.rednote.net 05M7hDxN078614
Received: (from janina@localhost)
	by rednote.net (8.15.2/8.15.2/Submit) id 05M7hDHj078613
	for blinux-list@redhat.com; Mon, 22 Jun 2020 03:43:13 -0400
Date: Mon, 22 Jun 2020 03:43:13 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Prospects for an accessible and open version of Android?
Message-ID: <20200622074313.GC2690@rednote.net>
References: <1E64643A-5D91-45E2-A546-970F7E14EF28@cfcl.com>
	<alpine.DEB.2.22.394.2006141355001.3348482@chime>
	<eb770c6c-c8e6-84d6-973c-e3afc118ca1b@slint.fr>
	<20200615100242.GC2180@rednote.net>
	<CABKqQvG5Nv14kAK-uipF1d4-mXqkea9Uk_0E8e+qbNGLN3XV=g@mail.gmail.com>
	<20200616065933.GF2180@rednote.net>
	<843663A4-EEEA-4DB7-A1CB-56C6A65E41BC@cfcl.com>
	<20200621074757.GA2690@rednote.net>
	<CABKqQvEyRFTSLg_38LtPaoUXgiz7Y8vsnM_d3No3fmQ2AmFEmw@mail.gmail.com>
	<CAO2sX30dXF-K0QJERmggECQwPgzk5i5HNWGxp+KnuPQyKPi=yg@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAO2sX30dXF-K0QJERmggECQwPgzk5i5HNWGxp+KnuPQyKPi=yg@mail.gmail.com>
X-Operating-System: Linux opera.rednote.net 5.6.18-200.fc31.x86_64
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
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
Content-Disposition: inline

There's a 3.5 mm audio jack on the MeerKat. You just missed it.

That would be a deal breaker for me.

Best,

Janina

Linux for blind general discussion writes:
> Yeah, I might could live with only 3 USB-A ports and having to use an
> external optical drive, but the MeerKat refusing to boot without a
> mouse and monitor would be an absolute deal breaker... also, I heard
> mention of HDMI when I checked out it's product page at System 76, but
> no mention of 3.5mm audio jacks, which sadly one can no longer take
> for granted will be found on new machines.
> 
> Realistically, I'll probably stick with my 2011 HP until the
> motherboard dies and then panic due to lack of funds to replace it,
> but even if there's no practical way of making it battery powered, the
> MeerKat's size is appealing to me for two reasons:
> 
> 1. If I had the MeerKat has my primary workstation, it would be
> trivial to pack it up and take it with me if I ever have to travel.
> 
> 2. The room that currently doubles as my bedroom and home office is
> quite small, trading out my full-sized desktop for something like the
> MeerKat would free up a not insignificant amount of space.
> 
> That said, it feels like there really isn't anything out there that
> isn't either crippled by high price, restrictive hardware, or the lack
> of a internal battery.
> 
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://www.redhat.com/mailman/listinfo/blinux-list

-- 

Janina Sajka

Linux Foundation Fellow
Executive Chair, Accessibility Workgroup:	http://a11y.org

The World Wide Web Consortium (W3C), Web Accessibility Initiative (WAI)
Chair, Accessible Platform Architectures	http://www.w3.org/wai/apa

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

