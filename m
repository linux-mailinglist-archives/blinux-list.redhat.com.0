Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 33B984C7B8A
	for <lists+blinux-list@lfdr.de>; Mon, 28 Feb 2022 22:13:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1646082828;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=K9cLRLr+n0YVs6KWH3IM7aPDdM63e5HB52eHkif+y7I=;
	b=CicWsWxxtX6UooS7KzgiXgVkPVIibsv8i1rJkEnmOooYd/4kdIV0MIVXbv1Ryr/ERU+Cvw
	HQ3unuHK2eAEQyyfGyMns9Yj7WCr3tcFETL9ZgtBpYFIT/1ucZbcX2ethz49Xf7UwJ+DR7
	Z+9Mu3Vnd0s28h3s7TDVCeuIo8Is2Zs=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-627--5myG1xkNqCOonMi7kPkiQ-1; Mon, 28 Feb 2022 16:13:44 -0500
X-MC-Unique: -5myG1xkNqCOonMi7kPkiQ-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id BAE95801DDC;
	Mon, 28 Feb 2022 21:13:40 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 312CC2D1F3;
	Mon, 28 Feb 2022 21:13:40 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id CE1A64ED79;
	Mon, 28 Feb 2022 21:13:39 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com
	[10.11.54.1])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 21SLDY8Y010827 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 28 Feb 2022 16:13:35 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 298CB407DEC8; Mon, 28 Feb 2022 21:13:34 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 258B7407DEC3
	for <blinux-list@redhat.com>; Mon, 28 Feb 2022 21:13:34 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 0DAC885A5BE
	for <blinux-list@redhat.com>; Mon, 28 Feb 2022 21:13:34 +0000 (UTC)
Received: from ams1.kyle.tk (kyle.tk [45.148.122.133]) by relay.mimecast.com
	with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-166-0veQo0CcNOOUxhstHZCR3g-1; Mon, 28 Feb 2022 16:13:31 -0500
X-MC-Unique: 0veQo0CcNOOUxhstHZCR3g-1
Received: from localhost (localhost [127.0.0.1])
	by ams1.kyle.tk (Postfix) with ESMTP id B3E961BBDFB
	for <blinux-list@redhat.com>; Mon, 28 Feb 2022 21:13:29 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at ams1.kyle.tk
Received: from ams1.kyle.tk ([127.0.0.1])
	by localhost (ams1.kyle.tk [127.0.0.1]) (amavisd-new, port 10026)
	with LMTP id tEHqp8IOf2To for <blinux-list@redhat.com>;
	Mon, 28 Feb 2022 21:13:29 +0000 (UTC)
Received: from [IPV6:2603:6080:6302:e002:e826:5227:4681:6e2d]
	(2603-6080-6302-e002-e826-5227-4681-6e2d.res6.spectrum.com
	[IPv6:2603:6080:6302:e002:e826:5227:4681:6e2d])
	(Authenticated sender: kyle@free2.ml)
	by ams1.kyle.tk (Postfix) with ESMTPSA id CFC061BB0B4
	for <blinux-list@redhat.com>; Mon, 28 Feb 2022 21:13:28 +0000 (UTC)
Message-ID: <01a237c2-5a31-5b77-9212-e0b7d618fe45@free2.ml>
Date: Mon, 28 Feb 2022 16:13:24 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.5.0
Subject: Re: Snap, Flatpak and/or AppImages?
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <8111ae82-7282-633d-6d59-b0a76b3a4460@gmail.com>
In-Reply-To: <8111ae82-7282-633d-6d59-b0a76b3a4460@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.1
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

Of course another sort of distribution format that needs more attention 
is applications that are written in Go. These are statically linked 
binaries by default, and once written, they just run on any machine of 
the same architecture where they were built. I once installed doctl, the 
DigitalOcean control application, onto a 64-bit ARM-based Odroid N2 
computer running ArchLinuxARM and then just copied the doctl binary and 
my configuration to my ARM-based router running OpenWRT, and everything 
worked as expected. Interestingly, the FreePascal compiler fpc gave me 
the same result, but the program I wrote that worked was much smaller 
and less complex. But having said all this, static linking is one fairly 
good way to distribute portable applications without too much packaging 
hassle.

~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

