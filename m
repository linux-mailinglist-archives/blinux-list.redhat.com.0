Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id DBF4E4C7C17
	for <lists+blinux-list@lfdr.de>; Mon, 28 Feb 2022 22:34:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1646084054;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=x2mqqdta2rB61HNFma5gqnRh2wBZet7Mpex91an6QWA=;
	b=TtywLdf4Hh21QZYT+lJbTyTF9X9UWGCAZZOkTXj+5sQjiW0soCf21bnQHejkBRz1JuqdrQ
	DTg7dMzcRn8YoIOqudgxzcU9iImV0HghCkJeGGD/pCnpwRcoVCViK7c+4WXrnlscctk0BW
	4wzM5W+Z0vgxafLUikoqK6KKas38jTc=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-607-ENX6rVQWP3O4zERFjFq2og-1; Mon, 28 Feb 2022 16:34:11 -0500
X-MC-Unique: ENX6rVQWP3O4zERFjFq2og-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 3FBD1809870;
	Mon, 28 Feb 2022 21:34:07 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 14ADC1078663;
	Mon, 28 Feb 2022 21:34:07 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 480151809C98;
	Mon, 28 Feb 2022 21:34:06 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 21SLY1Wa011855 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 28 Feb 2022 16:34:02 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id B330953D0; Mon, 28 Feb 2022 21:34:01 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id AD3AF53B3
	for <blinux-list@redhat.com>; Mon, 28 Feb 2022 21:33:50 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 51D50802A67
	for <blinux-list@redhat.com>; Mon, 28 Feb 2022 21:33:50 +0000 (UTC)
Received: from ams1.kyle.tk (kyle.tk [45.148.122.133]) by relay.mimecast.com
	with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-39-_8fi2rkkPEqip7PuVcIRqg-1; Mon, 28 Feb 2022 16:33:48 -0500
X-MC-Unique: _8fi2rkkPEqip7PuVcIRqg-1
Received: from localhost (localhost [127.0.0.1])
	by ams1.kyle.tk (Postfix) with ESMTP id CE20A1BBDFB
	for <blinux-list@redhat.com>; Mon, 28 Feb 2022 21:33:46 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at ams1.kyle.tk
Received: from ams1.kyle.tk ([127.0.0.1])
	by localhost (ams1.kyle.tk [127.0.0.1]) (amavisd-new, port 10026)
	with LMTP id Cowvhs4WzMFA for <blinux-list@redhat.com>;
	Mon, 28 Feb 2022 21:33:46 +0000 (UTC)
Received: from [IPV6:2603:6080:6302:e002:e826:5227:4681:6e2d]
	(2603-6080-6302-e002-e826-5227-4681-6e2d.res6.spectrum.com
	[IPv6:2603:6080:6302:e002:e826:5227:4681:6e2d])
	(Authenticated sender: kyle@free2.ml)
	by ams1.kyle.tk (Postfix) with ESMTPSA id D1B531BB0B4
	for <blinux-list@redhat.com>; Mon, 28 Feb 2022 21:33:45 +0000 (UTC)
Message-ID: <81891cf3-8c55-9710-fb4f-0b172f69fa95@free2.ml>
Date: Mon, 28 Feb 2022 16:33:42 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.5.0
Subject: Re: Snap, Flatpak and/or AppImages?
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <8111ae82-7282-633d-6d59-b0a76b3a4460@gmail.com>
	<01a237c2-5a31-5b77-9212-e0b7d618fe45@free2.ml>
In-Reply-To: <01a237c2-5a31-5b77-9212-e0b7d618fe45@free2.ml>
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Another thing I see with appImage files is that if they need 
configurations, they are stored in the location where I expect them to 
be. In other words, I downloaded the subsurface appImage that they link 
to from the website, made it executable, in this case by ticking the 
execute checkbox under the permissions tab in the file's properties 
window, but chmod will do just as well for that, then ran the file. I 
got an accessible pop-up window right away asking if I wanted to keep 
checking for updates every two weeks, and in spite of the fact that I 
didn't even know how to use the application, it seems it just worked 
fine and didn't break accessibility in any way. It does have a 
configuration folder that it uses, and I can see that it stored it in 
~/.subsurface, just as I expected. This has to be the best way for 
developers to build their application for multiple distributions, and it 
also has to be one of the easiest methods I've seen for downloading an 
application direct from the author's website and just getting it running 
without any hassle. I do have to wonder if the tools used for making 
these appImages are available for ARM-based computers like my router, my 
Odroid N2 and my Raspberry Pi. For now, this is what would make Flatpak 
most attractive, since even though it has central package repositories, 
Flatpaks can usually run on just about anything that has a packaged 
version of the Flatpak system.

~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

