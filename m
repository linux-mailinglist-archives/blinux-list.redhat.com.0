Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 960EC44F572
	for <lists+blinux-list@lfdr.de>; Sat, 13 Nov 2021 22:21:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1636838460;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=qV3aB7LQqlmRQVo4SNOcBmTPYNRFf/fmrkU+8X0fauk=;
	b=B/vBBp6owy/vhqr3iB2tGoLNG7oQvmuCR+QY1Aj4uolxESQo+GtKggSKYq9thIylobs8SS
	1s05C3DeZ8k/ufT/Jag1+za/G794nBUPkLP1csnP0SNq7iVZgfnWJ+xJSPP6fXBNawi1fD
	6+8KW3XRsh4Hk22fZen7jrmIVydtyts=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-361-EkZ-edfnOJq2IdKsEMFHcw-1; Sat, 13 Nov 2021 16:20:59 -0500
X-MC-Unique: EkZ-edfnOJq2IdKsEMFHcw-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 167B8871805;
	Sat, 13 Nov 2021 21:20:55 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 4F6935D6B1;
	Sat, 13 Nov 2021 21:20:52 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id A24804A703;
	Sat, 13 Nov 2021 21:20:46 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1ADLI4iB025966 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 13 Nov 2021 16:18:05 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id DA55551E3; Sat, 13 Nov 2021 21:18:04 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D550B51E2
	for <blinux-list@redhat.com>; Sat, 13 Nov 2021 21:18:02 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 10D2D80A0AC
	for <blinux-list@redhat.com>; Sat, 13 Nov 2021 21:18:02 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-141-iVM-wTfmPZmCIUxxO-dJyw-1; Sat, 13 Nov 2021 16:18:00 -0500
X-MC-Unique: iVM-wTfmPZmCIUxxO-dJyw-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4Hs7bC3N0JzJRP
	for <blinux-list@redhat.com>; Sat, 13 Nov 2021 16:17:59 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4Hs7bC2gkSzcbc; Sat, 13 Nov 2021 16:17:59 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4Hs7bC2DxmzcbW
	for <blinux-list@redhat.com>; Sat, 13 Nov 2021 16:17:59 -0500 (EST)
Date: Sat, 13 Nov 2021 16:17:59 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: any other accessible email client for linux?
In-Reply-To: <1338bc21-40df-abe9-2c5e-98902de1854f@gmail.com>
Message-ID: <alpine.NEB.2.23.451.2111131613370.7821@panix1.panix.com>
References: <b92effa3-e60f-02aa-a7b8-3102adfe2e4a@gmail.com>
	<8a83ad83-7d3c-c5f5-4bb5-e1c8d657c804@gmail.com>
	<YZAAhqsubBVL2pNl@panix.com>
	<CAGPwheC9=RwFv18uyCTDPz3BLzFuzYbWkN=PCOQ2H6PNRGgLiA@mail.gmail.com>
	<1338bc21-40df-abe9-2c5e-98902de1854f@gmail.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

I can click links in alpine and those work too.  If I remember, it only
needed three adjustments to the configuration to do it too.  I don't mind
modifying configuration files since I can usually get more bang for the
buck that way once it's done.
Other than web browsing I have no use for the g.u.i.  If g.u.i. games
written for g.u.i. got accessible I'd check them out and maybe use the
g.u.i. more.


On Sat, 13 Nov 2021, Linux for blind general discussion wrote:

> Right. I'm not fond of terminal email clients, but as terminal email clients
> go, Alpine is probably the best of the lot. Its menu system is certainly far
> easier than dealing with writing a configuration from scratch by hand. In
> fact, the first time I used a mail program on Linux nearly 20 years ago, Pine
> was what I used and learned first, and I found it pretty useful, at least for
> plain text email. Nothing in the terminal works well when you have to click
> links in an email though, or if you receive one of those HTML emails that
> everybody sends these days, which is why I still recommend a desktop client in
> most situations.
>
> ~Kyle
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
>
>

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

