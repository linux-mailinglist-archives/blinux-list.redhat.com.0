Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 096714BC358
	for <lists+blinux-list@lfdr.de>; Sat, 19 Feb 2022 01:27:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1645230473;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=dtME0IG9uL460FEwvIWLLBKpHMGWkZa0x00dcuQebww=;
	b=KL2Vb4ygFSmh575khPeYarM6DmzM8c6G1+1tcvEbRang+6HaDj08ryn8hoE8eTZQXLcmdR
	1x3ysmnUSD6c6iSkdmjPCIhuSXiE0gheuZoYkArolxfIb+N80QeUKx16XzKnLrGn2/W3ZS
	vida9OFLDdB2YPpSTokmcPcnaTCyKjQ=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-356--N-raCAKOw-wMbDzuSUsQw-1; Fri, 18 Feb 2022 19:27:49 -0500
X-MC-Unique: -N-raCAKOw-wMbDzuSUsQw-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 4F0BD801ADB;
	Sat, 19 Feb 2022 00:27:45 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id CC77362D45;
	Sat, 19 Feb 2022 00:27:43 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 709051809C87;
	Sat, 19 Feb 2022 00:27:39 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com
	[10.11.54.1])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 21J0RUo7020487 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 18 Feb 2022 19:27:30 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 0810040CFD1E; Sat, 19 Feb 2022 00:27:30 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast09.extmail.prod.ext.rdu2.redhat.com [10.11.55.25])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 03C5540CFD0C
	for <blinux-list@redhat.com>; Sat, 19 Feb 2022 00:27:30 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id DFC2229DD98B
	for <blinux-list@redhat.com>; Sat, 19 Feb 2022 00:27:29 +0000 (UTC)
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com
	[209.85.221.44]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-616-Ba3hbQ2kOSCzs7LEl8oLYg-1; Fri, 18 Feb 2022 19:27:28 -0500
X-MC-Unique: Ba3hbQ2kOSCzs7LEl8oLYg-1
Received: by mail-wr1-f44.google.com with SMTP id d27so17087428wrc.6
	for <blinux-list@redhat.com>; Fri, 18 Feb 2022 16:27:27 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:to:from:subject:message-id:date:user-agent
	:mime-version:content-transfer-encoding;
	bh=mxNgvDPST+/wZTj6PAj1jrIHM08X2DywxyFXz8O6u/M=;
	b=Bvq7viVAI4ll/dMa1NrVzKdyzpttfALf1ILpQsqSiICULJWiVTgdstOveO1UxpKbRk
	AFbV+xtKeLaluMoC9TprdQz61302VD7LYB8CuKf94dt+YI8WuouA/o8sO+NTJf45aQCn
	XURLPocQj3W3nQxrFSE+o/V5OW0PpmDDcBIecrdvMQoZHu5HczpoSDmNpNiMusBnTYMS
	kuqB4aO03rSkBhrUTVcFszdLznd4GlzUYkBQaGeejZEQjbcNKt5oXSMqGpeh2p9aMNu6
	GDhWT4nfkNtj53lpQ96sxO38dxU/KQ+1Uc8tzGGA3ZRiPJgpJEASpTqO+XpTYxKrNho5
	t0Wg==
X-Gm-Message-State: AOAM531pVe4ZTdtJTGZD9w5tTUVY85jZw3Uoo8TVqBuVc6v2Nw0Di9/U
	t3lRxOCfDTg++S6NgqOmL5wcndWp7S4=
X-Google-Smtp-Source: ABdhPJxZm6dmzAuhESEXoFtCLZvF/WJPyQezneJ3ZBZJ9FfwqrmGV921XN8/BgEDFXeIlzdegfmkDQ==
X-Received: by 2002:a5d:6411:0:b0:1e5:6bed:3df6 with SMTP id
	z17-20020a5d6411000000b001e56bed3df6mr7872579wru.477.1645230446325;
	Fri, 18 Feb 2022 16:27:26 -0800 (PST)
Received: from [192.168.1.130] ([90.250.160.235])
	by smtp.gmail.com with ESMTPSA id x10sm753841wmj.17.2022.02.18.16.27.25
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Fri, 18 Feb 2022 16:27:25 -0800 (PST)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Any updates with KDE?
Message-ID: <b77f5ed1-ebb3-4bb9-4bcf-92e926cd0118@gmail.com>
Date: Sat, 19 Feb 2022 00:27:40 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
	Firefox/68.0 SeaMonkey/2.53.10.2
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

IMKgwqDCoCBTbyBnaXZlbiB0aGUgU3RlYW0gRGVjaydzIGNvbWluZyBvdXQsIGFuZCBJJ3ZlIGJl
ZW4gZ2V0dGluZyBhIGxvdCAKb2YgJ29tZyBLREUgaXMgbW9yZSBhY2Nlc3NpYmxlJy4uLkkgZmln
dXJlZCBJJ2QgZ28gcmlnaHQgdG8gdGhlIHNvdXJjZSAKYW5kIGFzayBpZiB0aGVyZSdzIGFueSB0
cnV0aCB0byB0aGF0PyBUaGUgbHN0IEkgaGVhcmQgb24gdGhpcyBsaXN0IHdhcyAKc29tZSBwcm9n
cmVzcyB3YXMgbWFkZSwgYnV0IHRoZXJlIHdhc24ndCBhIG1hc3NpdmUgbGVhcCBmb3J3YXJkLgoK
U28gd2hhdCdzIHRoZSBzdGF0dXMgd2l0aCBLREU/IEhhcyB0aGVyZSBiZWVuIHRoaXMgYmlnIGxl
YXAgZm9yd2FyZCBJIAptaXNzZWQsIG9yIGlzIGl0IG1vcmUgc21hbGxlciBsZWFwcyBmb3J3YXJk
IHRoYXQgZ290IGxvc3QgaW4gdGhlIGZsb29kIApvZiBtYWlscyB0byB0aGUgbGlzdD8KCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1h
aWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQu
Y29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3Q=

