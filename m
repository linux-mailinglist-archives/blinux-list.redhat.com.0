Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id D9ABB497491
	for <lists+blinux-list@lfdr.de>; Sun, 23 Jan 2022 19:41:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1642963312;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=5scxENiKv8hA9SByXX/bVgN5UsTGGznmnsQNYopRMqg=;
	b=EDDgfj++4UDPlIndbBEnhya375oChElLMUjbpkvjN7IfDxZK8wN6JzGfDZlFsHB9Wk7l1i
	tGqOuo+rxWQrKTV+W/vcCh98rHhxA7Q3/YtZbc4//5wBOdZXj2jO3yS83BWhuzp/JjlLzR
	Vp9Fls+QfZekd9iV9KmFp2xSe+7VMB0=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-439-1oey_1JZOIWjVrm-mZ3Z3w-1; Sun, 23 Jan 2022 13:41:49 -0500
X-MC-Unique: 1oey_1JZOIWjVrm-mZ3Z3w-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 7B63B814243;
	Sun, 23 Jan 2022 18:41:45 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 624937A431;
	Sun, 23 Jan 2022 18:41:45 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id A7EBB1809CB8;
	Sun, 23 Jan 2022 18:41:44 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 20NIfcwC024947 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 23 Jan 2022 13:41:38 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 8AAB71121325; Sun, 23 Jan 2022 18:41:38 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 8528E1121315
	for <blinux-list@redhat.com>; Sun, 23 Jan 2022 18:41:34 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 2B587805B25
	for <blinux-list@redhat.com>; Sun, 23 Jan 2022 18:41:34 +0000 (UTC)
Received: from mail-qk1-f182.google.com (mail-qk1-f182.google.com
	[209.85.222.182]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-456-URd5VhIlOpmJh4O116kaFQ-1; Sun, 23 Jan 2022 13:41:32 -0500
X-MC-Unique: URd5VhIlOpmJh4O116kaFQ-1
Received: by mail-qk1-f182.google.com with SMTP id a12so2401332qkk.9
	for <blinux-list@redhat.com>; Sun, 23 Jan 2022 10:41:32 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=eq55+gCxVVdFWw1SDrw0M1JgAA7fDCxrTWtG3DTqVRg=;
	b=RwOgR8faB5Ah2CGkEFbjsfwCWlSz0l0f3tzP9Yq/xOiLdBv+8W6ftfOPIoS866Vl9C
	3GuWciyr0SkT0KizbfFbubjmGRUcl9zobpPESCY7Xb3A8Vd0Y+RtaeowyrKAQVF6Rb95
	8gV2pfgfylMPZanPiZjSYUZHxjK2HAffCuQJeFbR9HTdMRxXWew/Yggu/D6AK36m7c+a
	JLL2gn0PtVuAdukP6MWkIRzpwpydhauovNJ0+urVrx6zKKbXA4IERBOnvWyvZQm7Azxh
	NKLjSjPN+pqcd5m6Re9CSsHXoDAjWMIKXpEFCWLH+Urjl6pYC40pXq7wXFet4ZAHDcvl
	9Hew==
X-Gm-Message-State: AOAM533shCgrQyP1DmEb2yZTRld7JkrGpbsKhjS/iJDRF8E6QprgXeUH
	1JxyeR7Gd0oJhRYdak53lt8DyVBKBgxV3FmhAXSDY0ir
X-Google-Smtp-Source: ABdhPJy530vwyoV/ZCVZ9kNh8J5s5TYclPT3JCEDjMvOBYjCZ25IFpJgCtCg40e+Txl/k2RD3CX5oJ+4ADFUSTBJxo4=
X-Received: by 2002:a05:620a:4245:: with SMTP id
	w5mr8828861qko.469.1642963291869; 
	Sun, 23 Jan 2022 10:41:31 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:6214:e8f:0:0:0:0 with HTTP; Sun, 23 Jan 2022 10:41:31
	-0800 (PST)
In-Reply-To: <PH0PR14MB42964C73F94AFBFD80D51B8FC85D9@PH0PR14MB4296.namprd14.prod.outlook.com>
References: <CABKqQvF9-ZUkr5U6QssKsxhb7oD5iL4tLNORcWNYqJX-HDi9-Q@mail.gmail.com>
	<469727D8-F6CD-42D8-96C4-88845662340C@gmail.com>
	<e1b844dd-2c47-5217-1978-b775319ea70b@gmail.com>
	<3449a41e-479-d678-f49-310f4c2eff@panix.com>
	<b4515952-fdab-c9e1-4a2e-07c7d2f6c783@gmail.com>
	<PH0PR14MB42964C73F94AFBFD80D51B8FC85D9@PH0PR14MB4296.namprd14.prod.outlook.com>
Date: Sun, 23 Jan 2022 18:41:31 +0000
Message-ID: <CAO2sX32SGJG6moQ596Sv19BvB-dZ0qsepbjGKWngXzx+HzqLdw@mail.gmail.com>
Subject: Re: Favorite out-of-the-box accessible Linux laptops?
To: blinux-list@redhat.com
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

While I too am in the "I'd rather install it myself than work with
someone else's idea of how a Linux system should be setup" camp, all
else equal, I'd rather buy a computer where I'll be nuking a
pre-installed Linux to one where I'll be nuking a pre-installed
Windows.

That said, the last time I bought a laptop was like six or seven years
ago, and I just bought one off the shelf from my local OfficeMax.
Never tried using Wi-Fi on it, needed to use an external optical
drive, and lost at least one SD card to it having the kind of slot
where the card sticks out a bit. Also couldn't get the monitor to stay
off and the keyboard had this annoying setup where the navigation keys
were comprised of six half-sized buttons that fit into a 3*1 block in
the lower corner of the keyboard, which is practically unusable with
my big, sausage-link fingers... I much prefer the way the netbook I
had before this laptop and my current keyboard's way of doing things,
with a shortened spacebar, half-width right shift, full-sized arrow
keysnestled between right shift and right ctrl/alt, and Fn turning the
arrows into home, end, page up, and page down.

Though, I'd probably just invest in a Raspberry Pi 4 8GB and a newer
battery pack if I had need of a new, portable computing setup. as I
replaced the laptop from Office Max with a Pi 3 non-plus. Much
lighter(no deadweight screen) and less bulky(a Pi, battery pack, AC
adaptor, cell phone, portable media player, and several odds and ends
fit in a fanny packwith room to spare) and I just use the same
keyboard with both the Pi and my desktop... granted, I don't see
myself ever giving up having a Desktop for my main computing machine
and I'd sooner use a laptop as a stationary workstation.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

