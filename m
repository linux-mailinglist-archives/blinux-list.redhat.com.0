Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 22B343D0F56
	for <lists+blinux-list@lfdr.de>; Wed, 21 Jul 2021 15:16:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1626873400;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=x+jkpI2VRgbJmyCMhVVBzGTzXy3tP3o85+gdgSQTejk=;
	b=PUX6eB3AUFAf0IvxnyGGWN+bnx5RxPPKkMIJXc+MDgsDNJ/iMGdOHCEjCTvdE0AxIbrBuR
	vUSPmNfpkdMWkjoG8eiDylI7yLQjj2fEOL8En/YimivS/uF9875dyh8VyxWqUhpPxCFzYz
	fTTDIeJFKwCvc3BGsmo6Moi80ruOLDA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-298-_gzD3-W2OwuyZX1dLM_Lug-1; Wed, 21 Jul 2021 09:16:38 -0400
X-MC-Unique: _gzD3-W2OwuyZX1dLM_Lug-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 58E258BDB23;
	Wed, 21 Jul 2021 13:16:34 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 59A465D6D1;
	Wed, 21 Jul 2021 13:16:32 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 0BB391809C98;
	Wed, 21 Jul 2021 13:16:28 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 16LDD2XT027479 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 21 Jul 2021 09:13:02 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 306F6207AEB9; Wed, 21 Jul 2021 13:13:02 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 28762207AFC8
	for <blinux-list@redhat.com>; Wed, 21 Jul 2021 13:12:59 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id DFF2A80B71F
	for <blinux-list@redhat.com>; Wed, 21 Jul 2021 13:12:58 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-90-CtfarUKGOPi5AaLCAxrpVg-1; Wed, 21 Jul 2021 09:12:52 -0400
X-MC-Unique: CtfarUKGOPi5AaLCAxrpVg-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4GVGGX1Zrrz2kW7
	for <blinux-list@redhat.com>; Wed, 21 Jul 2021 09:12:52 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4GVGGX0ztnzcbc; Wed, 21 Jul 2021 09:12:52 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4GVGGX0VvzzcbW
	for <blinux-list@redhat.com>; Wed, 21 Jul 2021 09:12:52 -0400 (EDT)
Date: Wed, 21 Jul 2021 09:12:51 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Twitter, again
In-Reply-To: <4099494d-9a2a-750d-be70-ddf42bf7504d@gmail.com>
Message-ID: <alpine.NEB.2.23.451.2107210906290.23995@panix1.panix.com>
References: <4099494d-9a2a-750d-be70-ddf42bf7504d@gmail.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
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

Oysttyer has been available for some time now and perl is used to run it.
The emacs environment has ttytter available, and python has
rainbow-twitter available.  In the past, I've used all of these mostly in
console.  No more twitter or facebook accounts so I can't help you any
further with them.  If you want to try reddit out, you could do it with
tuir which you install with pipi.  Clubhouse so far as I know has no linux
clients.


On Wed, 21 Jul 2021, Linux for blind general discussion wrote:

> Hi all,
>
>
> I know this has been talked about a while back, but unfortunately it is a
> topic near and dear to my heart.
>
>
> Has there been any new developments regarding an accessible twitter client for
> linux? I can honestly say, GUI or TTY, I really don't care.
>
>
> If anyone knows anything on this, please let me know.
>
>
> I know there is an open source accessible client on Github available for both
> Windows and MacOS, but I have no idea if it can be ported to GNU/Linux. If
> anyone wants to take a look at "Quinter".
>
>

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

