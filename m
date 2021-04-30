Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id EF8B836F3ED
	for <lists+blinux-list@lfdr.de>; Fri, 30 Apr 2021 04:07:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1619748460;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=mvfDX56T/AF1eQ4Mlx2UeiVuIHU15JBHS9Ntm2idTWg=;
	b=Wi7rgp4Dg2anUbZN3GndbDwTaGpm3O35VRIRNtco9JCyeGfJVCxTeOiQ9nbQdvj5ylUaxS
	2fiyt0U2HYehZqHF9SumfdAxMftFeAJFPttmVgZyEsAF3oLa4Yn0aIZk8yriKPhoggIzI+
	U/ikghpIFwABn3tjikUvJI4Ti89rJfo=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-452-ZphQ2SgdP7GHSkhByVAf1w-1; Thu, 29 Apr 2021 22:07:37 -0400
X-MC-Unique: ZphQ2SgdP7GHSkhByVAf1w-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id BABBB10066E5;
	Fri, 30 Apr 2021 02:07:34 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id CB64A5D9C6;
	Fri, 30 Apr 2021 02:07:33 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 292E41800B9E;
	Fri, 30 Apr 2021 02:07:32 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 13U27NT8003160 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 29 Apr 2021 22:07:23 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 2464B11E1F3; Fri, 30 Apr 2021 02:07:23 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 1F975C77CE
	for <blinux-list@redhat.com>; Fri, 30 Apr 2021 02:07:21 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id E266B185A79C
	for <blinux-list@redhat.com>; Fri, 30 Apr 2021 02:07:20 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-341-_RcYJTtONtOezHi8VkkOHA-1; Thu, 29 Apr 2021 22:07:18 -0400
X-MC-Unique: _RcYJTtONtOezHi8VkkOHA-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4FWbNP5wv9z2P36
	for <blinux-list@redhat.com>; Thu, 29 Apr 2021 22:07:17 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4FWbNP4vbzzcbc; Thu, 29 Apr 2021 22:07:17 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4FWbNP4XqLzcbV
	for <blinux-list@redhat.com>; Thu, 29 Apr 2021 22:07:17 -0400 (EDT)
Date: Thu, 29 Apr 2021 22:07:17 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Thinking of getting a computer to install Linux on any
	suggestions?
In-Reply-To: <4A02183D-704A-4016-9178-15B50AAD1158@yahoo.com>
Message-ID: <alpine.NEB.2.23.451.2104292200070.23508@panix1.panix.com>
References: <4A02183D-704A-4016-9178-15B50AAD1158.ref@yahoo.com>
	<4A02183D-704A-4016-9178-15B50AAD1158@yahoo.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Your best bet will be to buy a computer with an accessible linux already
installed.  This work https://www.thinkpenguin.com/ has done before.
You could buy a computer from big box stores but then you'd have to get
windows and all the bloatware off it.
Another possibility would be to buy a new computer and if it can
accommodate two hard drives buy two additional hard drives.
When you get everything, pull the hard drives out of the computer and
replace them with the lank hard drives you bought.
Then you probably will have a platform on which linux can be installed.
I say probably since certain Dell dimension laptops are incompatible with
linux.
The other thing to avoid are subscription plans for keeping windows
updated.  That means you don't buy HP computers since these come with
subscription plans that have to be renewed after five years or your
computer stops working until the renewal gets done.


On Thu, 29 Apr 2021, Linux for blind general discussion wrote:

> Hello everyone,
> I am thinking of getting a new computer so that I can work with Linux. Any suggestions on what type of computer I should get or screen reader suggestions?
> Any help would be greatly appreciated.
> Thanks,
>
> Ashley
>
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

