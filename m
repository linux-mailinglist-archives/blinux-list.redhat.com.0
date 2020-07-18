Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	by mail.lfdr.de (Postfix) with ESMTP id 9CAC9224AE5
	for <lists+blinux-list@lfdr.de>; Sat, 18 Jul 2020 13:13:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1595070830;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=obRcaP0CZdVe9y9wNB6efXpTm+yLgaghDCNgzKFjpFE=;
	b=HdvOypMM8TY0SkwrPrvIzu/EUhw8u/dsvEcmIX59s6Kk2dqqEc+y2T6wy4VOkHyrK/GeA0
	gyJh9zK5ep2/j+uM1uL1Ijd+q18dbRavl3oZhTvgbrCH2d2Rux4zrJznyk8pn6SJZDWdSB
	AzBbO5LkyZ8yB1JnHYoNk3VK18a3Xo8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-475-HA5lIu0IOcecoe3Fz9Zt9w-1; Sat, 18 Jul 2020 07:13:48 -0400
X-MC-Unique: HA5lIu0IOcecoe3Fz9Zt9w-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 60D871081;
	Sat, 18 Jul 2020 11:13:43 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 335F97BD51;
	Sat, 18 Jul 2020 11:13:39 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 3760694F05;
	Sat, 18 Jul 2020 11:13:29 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 06IB7aVp013549 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 18 Jul 2020 07:07:37 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id C13532156A2E; Sat, 18 Jul 2020 11:07:36 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id BC31E2157F23
	for <blinux-list@redhat.com>; Sat, 18 Jul 2020 11:07:31 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id E479F858EE9
	for <blinux-list@redhat.com>; Sat, 18 Jul 2020 11:07:30 +0000 (UTC)
Received: from opera.rednote.net (opera.rednote.net [66.228.34.147]) (Using
	TLS) by relay.mimecast.com with ESMTP id
	us-mta-343-h3Tm5UgzMKGmLzikT3tNPQ-1; Sat, 18 Jul 2020 07:07:26 -0400
X-MC-Unique: h3Tm5UgzMKGmLzikT3tNPQ-1
Received: from rednote.net (localhost [IPv6:0:0:0:0:0:0:0:1])
	by opera.rednote.net (8.15.2/8.15.2) with ESMTPS id 06IB7OLX004052
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NO)
	for <blinux-list@redhat.com>; Sat, 18 Jul 2020 11:07:24 GMT
DMARC-Filter: OpenDMARC Filter v1.3.2 opera.rednote.net 06IB7OLX004052
DKIM-Filter: OpenDKIM Filter v2.11.0 opera.rednote.net 06IB7OLX004052
Received: (from janina@localhost)
	by rednote.net (8.15.2/8.15.2/Submit) id 06IB7OpN004051
	for blinux-list@redhat.com; Sat, 18 Jul 2020 07:07:24 -0400
Date: Sat, 18 Jul 2020 07:07:24 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: installing speakup on RHEL 7/8
Message-ID: <20200718110724.GA2593@rednote.net>
References: <02d601d65bb9$cd357b80$67a07280$.ref@yahoo.com>
	<02d601d65bb9$cd357b80$67a07280$@yahoo.com>
MIME-Version: 1.0
In-Reply-To: <02d601d65bb9$cd357b80$67a07280$@yahoo.com>
X-Operating-System: Linux opera.rednote.net 5.7.8-100.fc31.x86_64
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

When he was still alive, Bill Acker routinely built Fedora kernels that
included Speakup, both before and after Speakup became part of staging.
I know for a fact that Bill tried, and never succeeded at building
Speakup into RHEL. Now Bill's been gone for a few years, but I've no
reason to believe the environment has suddenly become Speakup friendly,
sorry to say.

No, I don't recall what the block was/were.

I know that's not what you wanted to hear, but it's the best answer I
can provide and I don't believe you're going to find very much different
info. I'll be happy to be proven wrong, of course.

It'll be interesting to see what RHEL does when Speakup finally becomes a
first class kernel citizen. If I understand the situation correctly,
that should come fairly soon.

Best,

Janina

Linux for blind general discussion writes:
>  
> 
> Hi there -
> 
>  
> 
> I am getting a workstation at work that will be running RHEL 7 or 8.  From
> what I understand, speakup is not a package in yum, but it is now part of
> the kernel staging tree.
> 
>  
> 
> Does anyone have instructions on how to get speakup installed and running on
> RHEL 7 or 8 using software speech?
> 
>  
> 
> Any help appreciated, thank you very much in advance
> 
>  
> 
> --David
> 
>  
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

