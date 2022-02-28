Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 31F444C7910
	for <lists+blinux-list@lfdr.de>; Mon, 28 Feb 2022 20:56:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1646078163;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=t5fqfNSdHzM1REv6FWwDT4Z3JywJt8D7VyrXokGpwRE=;
	b=a0OB34D7XKZS8DxdchShKRUPPQCXfvBl7WAVMcgpjs80jNGAqqXM/RaT/dG7l0ydpSv876
	MTvbyDnH+3CFoSNfXXypizInqsUNJHtehNZJCiQPiYRPwF6QVgtlxWyE2k9WhwbUGNscJO
	jLDSB7oei0OcZLNNrGR3/D5NOxVQJI8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-304-hslo5YADPvKgo2vJwmH9Pw-1; Mon, 28 Feb 2022 14:55:59 -0500
X-MC-Unique: hslo5YADPvKgo2vJwmH9Pw-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A97131091DA3;
	Mon, 28 Feb 2022 19:55:55 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 29E1561F20;
	Mon, 28 Feb 2022 19:55:53 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 2FBC54A701;
	Mon, 28 Feb 2022 19:55:52 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com
	[10.11.54.10])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 21SJtjqH004728 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 28 Feb 2022 14:55:47 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id E1726401E37; Mon, 28 Feb 2022 19:55:45 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id DD451401476
	for <blinux-list@redhat.com>; Mon, 28 Feb 2022 19:55:45 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id C546683395C
	for <blinux-list@redhat.com>; Mon, 28 Feb 2022 19:55:45 +0000 (UTC)
Received: from ams1.kyle.tk (kyle.tk [45.148.122.133]) by relay.mimecast.com
	with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-407-357J27KXPrC3W2_IEt_uXQ-1; Mon, 28 Feb 2022 14:55:43 -0500
X-MC-Unique: 357J27KXPrC3W2_IEt_uXQ-1
Received: from localhost (localhost [127.0.0.1])
	by ams1.kyle.tk (Postfix) with ESMTP id E3F461BBDFB
	for <blinux-list@redhat.com>; Mon, 28 Feb 2022 19:55:40 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at ams1.kyle.tk
Received: from ams1.kyle.tk ([127.0.0.1])
	by localhost (ams1.kyle.tk [127.0.0.1]) (amavisd-new, port 10026)
	with LMTP id cUGp6Gm1yic2 for <blinux-list@redhat.com>;
	Mon, 28 Feb 2022 19:55:40 +0000 (UTC)
Received: from [IPV6:2603:6080:6302:e002:e826:5227:4681:6e2d]
	(2603-6080-6302-e002-e826-5227-4681-6e2d.res6.spectrum.com
	[IPv6:2603:6080:6302:e002:e826:5227:4681:6e2d])
	(Authenticated sender: kyle@free2.ml)
	by ams1.kyle.tk (Postfix) with ESMTPSA id E0D671BB0B4
	for <blinux-list@redhat.com>; Mon, 28 Feb 2022 19:55:39 +0000 (UTC)
Message-ID: <4dc439c2-c23b-8322-dd54-469a56e61858@free2.ml>
Date: Mon, 28 Feb 2022 14:55:35 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.5.0
Subject: Re: Use alexa on linux
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <b58188d0-6477-4bd2-1f6-3e9115dafb5a@gmail.com>
	<30be31e3-1962-44f3-a7ea-c5895e9870b1@gmail.com>
	<CAO2sX31c1gHuFLJBdvqNh-QBvAoCW4Sjx0+0NXe8D89Q8M6SUg@mail.gmail.com>
In-Reply-To: <CAO2sX31c1gHuFLJBdvqNh-QBvAoCW4Sjx0+0NXe8D89Q8M6SUg@mail.gmail.com>
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
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Snap packages don't generally break accessibility, and the fact that 
text mode packages can be distributed via snapd does make it a bit more 
attractive for some than flatpak, even with the drawbacks of having to 
mount a loopdev for every package, along with the implementation being 
so completely sandboxed that it is impractical if not impossible to 
share dependencies between packages. That said, different snapd 
implementations do tend to work somewhat differently for some reason, 
and many of the newer versions seem to be breaking accessibility of 
graphical packages, making it hard to recommend distribution via that 
method.

~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

