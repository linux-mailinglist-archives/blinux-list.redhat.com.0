Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 10DF84BDA56
	for <lists+blinux-list@lfdr.de>; Mon, 21 Feb 2022 15:42:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1645454541;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=cJuvimojnSopUwWlGGuJO5pBxLrJVY5+7cRvm3Zabjg=;
	b=I8dbjL2vhOKIV3sQ6tDT8Qa/U895D2Qyxd/2SRMeRJnavtYpHEIScoHOzKXSfzWJiMq6cg
	vu81rcUYau/sQodKORSJFDHf0wYz4etVlWZD4ZVAIznfo36wORXVrNc2kMt16JDp9m8qQQ
	0NzWsrVjsEx4Bz4xf7SLoWiLa4gIMPA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-209-ov3WS4LzOTqnVCeCUUKsBA-1; Mon, 21 Feb 2022 09:42:17 -0500
X-MC-Unique: ov3WS4LzOTqnVCeCUUKsBA-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 3FB121091DA0;
	Mon, 21 Feb 2022 14:42:12 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 0F7A374EAB;
	Mon, 21 Feb 2022 14:42:08 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 711974CA93;
	Mon, 21 Feb 2022 14:42:03 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com
	[10.11.54.10])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 21LEfuuM021984 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 21 Feb 2022 09:41:56 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 0252E5361CB; Mon, 21 Feb 2022 14:41:56 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast10.extmail.prod.ext.rdu2.redhat.com [10.11.55.26])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id F2EFD5361DD
	for <blinux-list@redhat.com>; Mon, 21 Feb 2022 14:41:55 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id DA6B31C05AE4
	for <blinux-list@redhat.com>; Mon, 21 Feb 2022 14:41:55 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-539-nIQPkKaoNlWZq2SDvaAyFA-1; Mon, 21 Feb 2022 09:41:54 -0500
X-MC-Unique: nIQPkKaoNlWZq2SDvaAyFA-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4K2Q4167bCz2nl3
	for <blinux-list@redhat.com>; Mon, 21 Feb 2022 09:41:53 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4K2Q415hnjzcbf; Mon, 21 Feb 2022 09:41:53 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4K2Q415MVwzcbd
	for <blinux-list@redhat.com>; Mon, 21 Feb 2022 09:41:53 -0500 (EST)
Date: Mon, 21 Feb 2022 09:41:53 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: re: mutt or alpine
In-Reply-To: <alpine.DEB.2.11.2202211350120.1580@debian.work>
Message-ID: <e459e442-677f-11b7-ba3-6544eecb408a@panix.com>
References: <edc2d213-6272-de0-503b-5f3082f2ab95@panix.com>
	<13df69b9-b6e0-94a4-66b9-ba596636429d@panix.com>
	<alpine.DEB.2.11.2202211350120.1580@debian.work>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.10
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

It's an undocumented configuration option,
compensate-for-deficient-imap-servers
I have it set in my .pinerc file.  By undocumented I mean if you're on any
option in configuration and you hit control-g you should get an
explanation of what the option does whether on or off.  This one has none.


On Mon, 21 Feb 2022, Linux for blind general discussion wrote:

> On Mon, 21 Feb 2022, Linux for blind general discussion wrote:
>
> > One over-arching consideration especially with
> > software and more generally with operating systems is length of support.
> > With operating systems much email is sent on other lists whether to
> > upgrade or not.  Very simply, everyone has a choice of upgrade or bail.
> > In the case of bail, the move gets made to different operating systems.
>
> Regarding ALPINE support, there is a good low-traffic mailing list which
> provides good support.  The current maintainer is an active participant there.
>
> http://mailman12.u.washington.edu/mailman/listinfo/alpine-info
>
> HTH,
> Geoff.
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
>
>
>

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

