Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 627203D103E
	for <lists+blinux-list@lfdr.de>; Wed, 21 Jul 2021 15:49:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1626875393;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=2ODMdPfro0hg6xmlYAxwQSM1v43Yg3/zaTHVHXSjFss=;
	b=WyqFwAvAWCW8Ugzx8LHw9Cul2BlEuqJd04s1gxhmjjbh5VChta6J9VjllrHVhUhB1hrqxg
	bpTkw8tp3ML2VhzT3dVGkHATYNXiICB7TywEiCiMzZ9aYV1rWwZoue0YceIuRQWz5721Jv
	4CjyUnCtrH+UenP0nGeNKAgE5QsD8rI=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-263-Foml9T3TNeGYSa7Y7ybvTw-1; Wed, 21 Jul 2021 09:49:52 -0400
X-MC-Unique: Foml9T3TNeGYSa7Y7ybvTw-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 7833F8018A7;
	Wed, 21 Jul 2021 13:49:47 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 63E5B5C1BB;
	Wed, 21 Jul 2021 13:49:45 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 0901F1809C98;
	Wed, 21 Jul 2021 13:49:39 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 16LDnWuZ032509 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 21 Jul 2021 09:49:32 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 94818115D7C2; Wed, 21 Jul 2021 13:49:32 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 902A7115D7C3
	for <blinux-list@redhat.com>; Wed, 21 Jul 2021 13:49:27 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 8F09818A01A5
	for <blinux-list@redhat.com>; Wed, 21 Jul 2021 13:49:27 +0000 (UTC)
Received: from mail.carmickle.com (mail.carmickle.com [69.164.218.211])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-239-y2e3JEq6Plmb06MsQ8VNRw-1; Wed, 21 Jul 2021 09:49:25 -0400
X-MC-Unique: y2e3JEq6Plmb06MsQ8VNRw-1
Received: from [192.168.116.128] (unknown [176.230.59.241])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.carmickle.com (Postfix) with ESMTPSA id 499A080B17C1
	for <blinux-list@redhat.com>; Wed, 21 Jul 2021 13:49:24 +0000 (UTC)
Date: Wed, 21 Jul 2021 16:49:20 +0300 (IDT)
X-X-Sender: gshang@debian.work
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Twitter, again
In-Reply-To: <alpine.NEB.2.23.451.2107210906290.23995@panix1.panix.com>
Message-ID: <alpine.DEB.2.11.2107211620400.7560@debian.work>
References: <4099494d-9a2a-750d-be70-ddf42bf7504d@gmail.com>
	<alpine.NEB.2.23.451.2107210906290.23995@panix1.panix.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

On Wed, 21 Jul 2021, Linux for blind general discussion wrote:

> Oysttyer has been available for some time now and perl is used to run it.
> The emacs environment has ttytter available, and python has
> rainbow-twitter available.

Note that Oysttyer is the successor to TTYtter, both in Perl.  TTYtter has 
not been developed since 2012 and there's probably no good reason to use 
it anymore.

Oysttyer itself has not seen any commits since 2018, which is a bit 
concerning.

More annoying is that all installs show up as the same app, and because of 
Twitter stupidness, all count in terms of daily quotas, etc.  So it's 
common to be unable to post due to quotas having been exceeded when you've 
not posted anything today.

I'll spare you my rant about Twitter and the way they manage their API. 
The one-line summary of it is that they should charge *users* a nominal 
fee for API access and leave the poor developers alone.

I've not tried RainbowStream, I've been meaning to.  At least it seems to 
be under active development.

There are some other options out there.  Searching your favourite package 
manager will likely turn up some.

Cheers,
Geoff.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

