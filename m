Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DE2A457FCA
	for <lists+blinux-list@lfdr.de>; Sat, 20 Nov 2021 18:16:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1637428581;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=IjhtFuwmYxr/nINhdxCN0Zwhpt482esZ94UTlYw1uQ4=;
	b=UlL0pp/lr96Bj8miCNp5Qb6cfYy+FyTVXWG90zP31VqS0mvyt6JdlsPe5qFvS8vGigG4Mp
	/07CTS7gmUQivJjxIKUy6P7hJyj0QXVwA4pTv4jU0NO5wPnVJnFl+RQI1Hc4nqq6SN8fhj
	dahHEfqCU9IkKevC5pJpvjUQqA3+Wzw=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-71-WXtLLY7bMwOkWXoQsHN26w-1; Sat, 20 Nov 2021 12:16:17 -0500
X-MC-Unique: WXtLLY7bMwOkWXoQsHN26w-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id B4C3C1006AA0;
	Sat, 20 Nov 2021 17:16:13 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 14F99100164C;
	Sat, 20 Nov 2021 17:16:11 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 43A844A704;
	Sat, 20 Nov 2021 17:16:04 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com
	[10.11.54.1])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1AKHFtrN008469 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 20 Nov 2021 12:15:55 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 46A124010FEE; Sat, 20 Nov 2021 17:15:55 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 4058140CFD0C
	for <blinux-list@redhat.com>; Sat, 20 Nov 2021 17:15:55 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 2156A80A0AC
	for <blinux-list@redhat.com>; Sat, 20 Nov 2021 17:15:55 +0000 (UTC)
Received: from mxd1.seznam.cz (mxd1.seznam.cz [77.75.78.210]) by
	relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-125-F6VBTybXNGCBEUo96NU-1A-1; Sat, 20 Nov 2021 12:15:53 -0500
X-MC-Unique: F6VBTybXNGCBEUo96NU-1A-1
Received: from email.seznam.cz
	by email-smtpc20a.ko.seznam.cz (email-smtpc20a.ko.seznam.cz
	[10.53.18.24]) id 678186b67219d5ec666b77aa;
	Sat, 20 Nov 2021 18:15:52 +0100 (CET)
Received: from [192.168.1.173] (host-213-235-142-85.ip.topnet.cz
	[213.235.142.85])
	by email-relay8.ko.seznam.cz (Seznam SMTPD 1.3.128) with ESMTP;
	Sat, 20 Nov 2021 18:14:28 +0100 (CET)
To: raspberry-vi@freelists.org, stormux@groups.io,
	Linux for blind general discussion <blinux-list@redhat.com>
Subject: Ideal temperature
Message-ID: <fe3a75a0-6db8-6f92-8859-a009326e9678@seznam.cz>
Date: Sat, 20 Nov 2021 18:14:27 +0100
User-Agent: Mozilla/5.0 (X11; Linux armv7l; rv:78.0) Gecko/20100101
	Thunderbird/78.14.0
MIME-Version: 1.0
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Hello all,

please, how much can Raspberry Pi 4B be warm and not suffer? What 
temperature is ideal for Raspberry and what is uncomfortable for it when 
I am using Mate desktop and Orca in Ubuntu mate 20.04? When I had only 
passive cooling, my Rpi 4B had 58 degrees and was slower, now with 
active cooling it has only 34 degrees and it's quick and no sluggish, 
but if I want to read or watch film, the sound of cooling is a little 
annoying for me. But I don't want suffering for my Raspberry, because I 
like it. I am thinking to unplug active cooling, but I am afraid about 
my raspberry condition. I can't buy any other active cooling, because it 
wouldn't be joined in my Zonepi box, in what I have my Pi installed.

Thanks a lot.

Best regards

Vojta.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

