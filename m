Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 347DC4BC94A
	for <lists+blinux-list@lfdr.de>; Sat, 19 Feb 2022 17:28:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1645288120;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=/Z+tM6ddqXy08q/u362QPZIlhjEkowQjvfZhhmlhaPs=;
	b=PExhVLYNCp92GnLErzzxB2L0M+mDOHkmaYmbII70vZaPeqhQBd85ODJYm1F+Uj7do6X7vs
	c1T4tG4JlGT3sZuWWEjnxXwXadyvz2ss3UOLQqI0Alldc1yNiJsZ0SYt6QqeQfIo2Swjc4
	uRATffbER1U8nYJpx7QOr8UHMTzGvO4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-53-ryJslaZDNbuydemQdxFZGA-1; Sat, 19 Feb 2022 11:28:36 -0500
X-MC-Unique: ryJslaZDNbuydemQdxFZGA-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 7C3311091DA1;
	Sat, 19 Feb 2022 16:28:29 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 0729C84A2C;
	Sat, 19 Feb 2022 16:28:26 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 905E24BB7B;
	Sat, 19 Feb 2022 16:28:09 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com
	[10.11.54.7])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 21JGLj71023012 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 19 Feb 2022 11:21:46 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id D65841402404; Sat, 19 Feb 2022 16:21:45 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast07.extmail.prod.ext.rdu2.redhat.com [10.11.55.23])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D22BF1402400
	for <blinux-list@redhat.com>; Sat, 19 Feb 2022 16:21:45 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id B81643C02B60
	for <blinux-list@redhat.com>; Sat, 19 Feb 2022 16:21:45 +0000 (UTC)
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com
	[209.85.128.41]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-426-9JR7ZDzEMtCkfVJ0ho0VAg-1; Sat, 19 Feb 2022 11:21:44 -0500
X-MC-Unique: 9JR7ZDzEMtCkfVJ0ho0VAg-1
Received: by mail-wm1-f41.google.com with SMTP id
	bg21-20020a05600c3c9500b0035283e7a012so8508680wmb.0
	for <blinux-list@redhat.com>; Sat, 19 Feb 2022 08:21:43 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:to:from:subject:message-id:date:user-agent
	:mime-version:content-transfer-encoding;
	bh=8y81SYNhZrUWs+YjXXFeN2SozpZftEDBpnRNTHKWMT4=;
	b=Sj8ioV86L6PaENb6zwSl05fG6Q6wqGO8d3BRmsoOalv+ZPj8I/qJEXWXobcjJzib8s
	E42eSR77tp9ahBnps8D29s0yWCnfqAF6bZSQb5W5KKF6udSzdgHZ4ThEkc978/1+CX1T
	NhdEup4D5R3+ex2DKJbtOdAP+r2QqpM8YIydF0qSR+O1jQtVrUkEBuu/d+C8fflCi/ww
	iYS/vX8S0z7STRVoftq4CHTWSvSm0fIDegx9mg7jenxmUbb5N93Z9d7MfZIXq0zKcgwM
	qXK0poMGkfjCT9OLTxgMdIBqf1hx8vAmG46Blmc3H87V3TGan+RO+jHR3aO/1JqpShf3
	Qdog==
X-Gm-Message-State: AOAM533yFipZWW+TFQmAguaNVjKN6sbLnksA7Dbk3rs93SjVXR3A8PME
	d8FOKqS7LglJqbPN1NZosxwwnmBXurs=
X-Google-Smtp-Source: ABdhPJw8TXCatdX+Wkr8d+ts6/B5F4FHAEGQdOEUZBatxIgYBW3thY11xxSdVzokBkuO6YRpx4n3IA==
X-Received: by 2002:a05:600c:154f:b0:37d:f2e5:d89b with SMTP id
	f15-20020a05600c154f00b0037df2e5d89bmr11541953wmg.92.1645287702281;
	Sat, 19 Feb 2022 08:21:42 -0800 (PST)
Received: from [192.168.1.130] ([90.250.160.235])
	by smtp.gmail.com with ESMTPSA id 20sm2667330wmk.26.2022.02.19.08.21.41
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Sat, 19 Feb 2022 08:21:41 -0800 (PST)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Cutting out Vim's chattiness...how easy is it?
Message-ID: <8ae2888a-21fb-d362-36b8-0707ed6ae84d@gmail.com>
Date: Sat, 19 Feb 2022 16:21:51 +0000
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
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.7
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

U28gSSd2ZSBnb3QgTXV0dCBzZXQgdXAgd2l0aCB2aW0gYXMgbXkgZWRpdG9yIG9mIGNob2ljZS4g
aXQncyBub3QgbmVhcmx5IAphcyBzY2FyeSBhcyBwZW9wbGUgbWFrZSBpdCBvdXQgdG8gYmUsIGl0
J3MgZWFzeSB0byBnZXQgdGhlIGhhbmcgb2YuCgpCdXQgSSBoYXZlIGEgcXVlc3Rpb24sIGFuZCB1
bnN1cmUgaWYgSSBjYW4gZG8gdGhpcyBlYXNpbHkuIElmIEkgdHlwZSBhIApzZW50ZW5jZSwgYW5k
IHRoZW4gc3RlcCB0aHJvdWdoIHdvcmRzLCBJIGdldCB0aGUgY2hhcmFjdHRlciBudW1iZXJzLiAK
TGlrZSB0aGlzIGZvdXIgaXMgc2l4IGHCoCBzZXZlbiB0ZXN0IDExLCBzbyBob3cgd291bGQgSSBy
ZW1vdmUgdGhlIApudW1iZXJzIGFmdGVyIGl0LiBJdCdzIGNvdW50aW5nIHRoZSBudW1iZXIgb2Yg
Y2hhcmFjdGVycy4gV2hpY2ggSSdtIG9rYXkgCndpdGguIEJ1dCBJIGRvbid0IHdhbnQgaXQgYW5u
b3VuY2VkIGFmdGVyIGV2ZXJ5IHNpbmdsZSB3b3JkCgpJcyB0aGVyZSBhIHF1aWNrIHdheSB0byBz
b3J0IHRoaXM/IElmIEknbSBnb2luZyB3b3JkIGJ5IHdvcmQgdG8gcmV2aWV3IAp3aGF0IEkndmUg
Z290LCBJIHdhbnQgdG8ganVzdCBoZWFyIHRoZSB3b3Jkcywgbm90IGhvdyBtYW55IGNoYXJhY3Rl
cnMgCnNpbmNlIHRoZSBzdGFydCBvZiB0aGUgZmlsZQoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51eC1s
aXN0QHJlZGhhdC5jb20KaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5m
by9ibGludXgtbGlzdA==

