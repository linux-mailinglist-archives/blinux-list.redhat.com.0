Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 3299D4C4951
	for <lists+blinux-list@lfdr.de>; Fri, 25 Feb 2022 16:42:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1645803756;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=OEwsBbNpnE2UkCKfcZ2mVJZheKDrsqfq2TXZRgfVvR0=;
	b=hsgmD2qouYf0blJOeR3bVPnp0U3PhI/Rxuj+5yN2lN3P8wCYVaEf7umyY/0oM3i6k9Onmn
	bC8JMMg13I0MGNLmqJPdShCwBnUiwwhPUE1n2yuRDuvy3ABr+eU+5mS4htYVLulcyzLTRg
	9r7Kz2/7+2fxZBC5YqBM9m1lYloWsss=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-511-S3UODnM8PWmq_G-7M8BAAw-1; Fri, 25 Feb 2022 10:42:32 -0500
X-MC-Unique: S3UODnM8PWmq_G-7M8BAAw-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id B52EC804310;
	Fri, 25 Feb 2022 15:42:28 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 181007FFF0;
	Fri, 25 Feb 2022 15:42:28 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 852121809C98;
	Fri, 25 Feb 2022 15:42:27 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 21PFgNlw025435 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 25 Feb 2022 10:42:23 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 206849E63; Fri, 25 Feb 2022 15:42:23 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 1C7399E64
	for <blinux-list@redhat.com>; Fri, 25 Feb 2022 15:42:18 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id DF6B8185A794
	for <blinux-list@redhat.com>; Fri, 25 Feb 2022 15:42:18 +0000 (UTC)
Received: from bullseyemail.carmickle.com (bullseyemail.carmickle.com
	[50.116.61.232]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-421-Z-yKagjbNDGMsgtzfrvOBw-1; Fri, 25 Feb 2022 10:42:16 -0500
X-MC-Unique: Z-yKagjbNDGMsgtzfrvOBw-1
Received: from [192.168.116.128] (unknown [176.230.58.100])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by bullseyemail.carmickle.com (Postfix) with ESMTPSA id 6C0813A2B1F6
	for <blinux-list@redhat.com>; Fri, 25 Feb 2022 15:42:15 +0000 (UTC)
Date: Fri, 25 Feb 2022 17:42:11 +0200 (IST)
X-X-Sender: gshang@debian.work
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Voting: Which game would you like to have on Linux?
In-Reply-To: <Yhj1+qM5EkmDnb2l@waffles>
Message-ID: <alpine.DEB.2.11.2202251741190.2899@debian.work>
References: <9aeacc35-abfb-de7d-99ef-35ea86114b2f@protonmail.com>
	<Yhjpvu0HyqYbNVO3@waffles>
	<852cc77f-a7db-d99f-645-346da7c1a11c@panix.com>
	<af81b24a-3f13-5005-1fc7-ba325f230bbe@free2.ml>
	<Yhj1+qM5EkmDnb2l@waffles>
User-Agent: Alpine 2.11 (DEB 23 2013-08-11)
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

On Fri, 25 Feb 2022, Linux for blind general discussion wrote:

> And googling "wordl bash script" or variations thereof don't lead to it.

Neither did I until I spelled it right.

Apparently, Wordle has an e on the end.

https://lite.duckduckgo.com/lite/?q=wordle+%2Bbash

I've not checked out any of these.

HTH,
Geoff.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

