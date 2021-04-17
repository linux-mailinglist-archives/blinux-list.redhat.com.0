Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id C16EE362C9B
	for <lists+blinux-list@lfdr.de>; Sat, 17 Apr 2021 03:11:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1618621908;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=KjTUqdi3LnVy05XjPXifEAkCwch+O8XWje+9w53LnPE=;
	b=dKbSDyK1zUQsNbCV9JWqAAV1EVUMaPkxMLwYAKi5OTeLu5Yv7IFIoaftMjJfqLGZpFW0xw
	tRKwb02Z7UP0tH2pNdnfmggv17tVg3kHwXD1vfjuy9XwM5zd0VlDQVBrr5kVeX3DdEmbvF
	eJny7OgOjIELLEEL7BW1VwoEJUFpMJ0=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-359-IaCWnuIIObmV5uz-BHg1mQ-1; Fri, 16 Apr 2021 21:11:46 -0400
X-MC-Unique: IaCWnuIIObmV5uz-BHg1mQ-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 34C86180A09A;
	Sat, 17 Apr 2021 01:11:42 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 8CCFE60BE5;
	Sat, 17 Apr 2021 01:11:40 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id CEED21806D0F;
	Sat, 17 Apr 2021 01:11:36 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 13H1BQuE025192 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 16 Apr 2021 21:11:26 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 6A0BA202146B; Sat, 17 Apr 2021 01:11:26 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6399E2138BC4
	for <blinux-list@redhat.com>; Sat, 17 Apr 2021 01:11:24 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 32399185A7B5
	for <blinux-list@redhat.com>; Sat, 17 Apr 2021 01:11:24 +0000 (UTC)
Received: from mx1.simplelogin.co (mx1.simplelogin.co [94.237.111.15])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-291-xf_LaLiwOmK61a2ZVXPFMQ-1; Fri, 16 Apr 2021 21:11:21 -0400
X-MC-Unique: xf_LaLiwOmK61a2ZVXPFMQ-1
X-SimpleLogin-Client-IP: 2a04:3544:1000:1510:8c7a:9cff:fe3c:4b2c
Received: from [172.17.0.6] (mx1.simplelogin.co
	[IPv6:2a04:3544:1000:1510:8c7a:9cff:fe3c:4b2c])
	by mx1.simplelogin.co (Postfix) with ESMTP id 9815A6019B
	for <blinux-list@redhat.com>; Sat, 17 Apr 2021 01:04:42 +0000 (UTC)
In-Reply-To: <161861948053.7.16244801545361401537.5938331@simplelogin.co>
References: <161860978196.7.10178583994303054677.5934759@slmail.me>
	<161861134168.7.8725593548099427193.5935596@simplelogin.co>
	<161861745773.6.10221248550300079442.5937580@slmail.me>
	<2d84575-10dc-a8b6-d46d-60773d4fafc8@hubert-humphrey.com>
	<161861948053.7.16244801545361401537.5938331@simplelogin.co>
Subject: Re: SL's response to all inquiries re: Readspeaker voices
MIME-Version: 1.0
To: Linux for blind general discussion <blinux-list@redhat.com>
Cc: Linux for blind general discussion <blinux-list@redhat.com>
Message-ID: <161862148227.7.18281104954975477453.5938888@slmail.me>
Date: Sat, 17 Apr 2021 01:04:42 -0000
X-SimpleLogin-Type: Reply
X-SimpleLogin-EmailLog-ID: 5938888
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
X-loop: blinux-list@redhat.com
X-Content-Filtered-By: Mailman/MimeDel 2.1.12
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Yea, I'm just so used to writing long documents in a word processor before sending it, coming from Windows where I would do that all the time. I like having a document, because my internet access will frequently pop on and off line, so I worry that I might lose an email draft unless I save it like every 5 minutes. 
I wonder if it would work differently pasting from Pluma rather than LibreOffice. Next time I write a big document, I'll send a small test to see if Pluma will paste coherently.
But at least for now, I transfered it to Windows and reformatted it on Windows, so I'll re-send it from Windows hopefully in a legible format.
I'll give it its own title so it doesn't get lost in this thread, so that people can refer to it more easily.
Thanks,
SL
_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

