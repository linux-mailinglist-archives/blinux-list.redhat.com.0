Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id A0C4149753D
	for <lists+blinux-list@lfdr.de>; Sun, 23 Jan 2022 20:28:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1642966122;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=fvC8l9WO4/1YWmwGgnQezBlT3Y9SJRCqhISz9hKoK6A=;
	b=c6ymvYxiEKBOFmV3lpd9P3lc4z1KQirOlUIUZDSE6ZbIPmJmiTk2OPkRoC2Apv62XPwZFY
	zlH5x0bmMyZlOkisHK9Bg37xRqkE1MHxX5kYXf3DSF4Nv1HBVyiAPvg2/aRSpsr5CJe/dw
	g48MOfZUbCzLhsoaS7XiKcaVSeoH2UM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-172-Hw3_alC6MhmtfdDM9MIHdA-1; Sun, 23 Jan 2022 14:28:39 -0500
X-MC-Unique: Hw3_alC6MhmtfdDM9MIHdA-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A3620108088C;
	Sun, 23 Jan 2022 19:28:35 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 82B684EE1D;
	Sun, 23 Jan 2022 19:28:35 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 5EF324BB7C;
	Sun, 23 Jan 2022 19:28:35 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 20NJSWAm027836 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 23 Jan 2022 14:28:32 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 3621E1121325; Sun, 23 Jan 2022 19:28:32 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast08.extmail.prod.ext.rdu2.redhat.com [10.11.55.24])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3213B1121315
	for <blinux-list@redhat.com>; Sun, 23 Jan 2022 19:28:28 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id B4DE338030BB
	for <blinux-list@redhat.com>; Sun, 23 Jan 2022 19:28:28 +0000 (UTC)
Received: from l2mail1.panix.com (l2mail1.panix.com [166.84.1.75]) by
	relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-66-vs_l68jUNeyAExFDJa1r1g-1; Sun, 23 Jan 2022 14:28:26 -0500
X-MC-Unique: vs_l68jUNeyAExFDJa1r1g-1
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	by l2mail1.panix.com (Postfix) with ESMTPS id 4JhjM01pRBzDQ0
	for <blinux-list@redhat.com>; Sun, 23 Jan 2022 14:08:28 -0500 (EST)
Received: from panix3.panix.com (panix3.panix.com [166.84.1.3])
	by mailbackend.panix.com (Postfix) with ESMTP id 4JhjLy6vwnz1CVN
	for <blinux-list@redhat.com>; Sun, 23 Jan 2022 14:08:26 -0500 (EST)
Received: by panix3.panix.com (Postfix, from userid 20196)
	id 4JhjLy6RR5z1QWf; Sun, 23 Jan 2022 14:08:26 -0500 (EST)
Date: Sun, 23 Jan 2022 14:08:26 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Favorite out-of-the-box accessible Linux laptops?
Message-ID: <Ye2nqov4+bgZOyz+@panix.com>
References: <CABKqQvF9-ZUkr5U6QssKsxhb7oD5iL4tLNORcWNYqJX-HDi9-Q@mail.gmail.com>
	<469727D8-F6CD-42D8-96C4-88845662340C@gmail.com>
	<e1b844dd-2c47-5217-1978-b775319ea70b@gmail.com>
	<3449a41e-479-d678-f49-310f4c2eff@panix.com>
	<b4515952-fdab-c9e1-4a2e-07c7d2f6c783@gmail.com>
	<54c0dae2-c64-d946-e3-cdc8d9806166@panix.com>
	<Pine.LNX.4.64.2201231331180.1558360@server2.shellworld.net>
MIME-Version: 1.0
In-Reply-To: <Pine.LNX.4.64.2201231331180.1558360@server2.shellworld.net>
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
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://listman.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

It could be if those who take the trouble put together an Accessible Linux Laptop Installation step by step
for that particular laptop and version of Linux.

True, there would be a lot of them, but if collected in one place it could be a very helpful source for those who
want to give it a go without reinventing the wheel.

Rudy

On Sun, Jan 23, 2022 at 01:34:50PM -0500, Linux for blind general discussion wrote:
> There is no such thing as an out of the box accessible product for
> absolutely everyone.
> A better question for this thread would be favorite laptop that could run
> what you  need, rather than generalizing.
> And do not get me started on what feels like elitist  technology
> privilege...why buy a machine  with a preinstalled system when I can just do
> it myself?
> That is individualized knowledge hardly transferable to  the general public.
> 
> 
> 
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list

-- 
Rudy Vener
Website: http://www.rudyvener.com
Twitter: https://twitter.com/RudySalt

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

