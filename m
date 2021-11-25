Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 4842E45DE76
	for <lists+blinux-list@lfdr.de>; Thu, 25 Nov 2021 17:14:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1637856871;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=tdtAg7qbXWftjgexhoYcY7fSpOC5IoaQF4Lq1kzbkPQ=;
	b=MjAAdIq4lq01Du5SY468lx1LHfrPlBM552qIYI/WSJJbacPXPkwt2zWxvsHVVuvFulZiDj
	OnRYAPH629t/2VeSryWfqez5wK8SCX+bahgZDfQrRpphYB5/QhMCAbGuAoIR8zmyzsTRof
	uO3ccA3tNDAbSD84ltcLmY5clCHrsgg=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-511-FrJuRyQjNYqITPRuW7gP5Q-1; Thu, 25 Nov 2021 11:14:28 -0500
X-MC-Unique: FrJuRyQjNYqITPRuW7gP5Q-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 4124A1006AA5;
	Thu, 25 Nov 2021 16:14:24 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id AED3560C17;
	Thu, 25 Nov 2021 16:14:23 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 297BE1809C89;
	Thu, 25 Nov 2021 16:14:20 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
	[10.11.54.2])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1APGEGYc016407 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 25 Nov 2021 11:14:16 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id EB37A404727A; Thu, 25 Nov 2021 16:14:15 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E71604047272
	for <blinux-list@redhat.com>; Thu, 25 Nov 2021 16:14:15 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id CD85180122B
	for <blinux-list@redhat.com>; Thu, 25 Nov 2021 16:14:15 +0000 (UTC)
Received: from frv72.fwdcdn.com (frv72.fwdcdn.com [212.42.77.72]) by
	relay.mimecast.com with ESMTP id us-mta-151-hczsdS13NDCuDzVvck4e5w-1;
	Thu, 25 Nov 2021 11:14:14 -0500
X-MC-Unique: hczsdS13NDCuDzVvck4e5w-1
Received: from frv157.fwdcdn.com ([212.42.77.157]) by frv72.fwdcdn.com
	QID:1mqH8s-0006HO-PV/RC:1; Thu, 25 Nov 2021 17:58:34 +0200
Received: from 46-133-72-10.mobile.vf-ua.net ([46.133.72.10]
	helo=[192.168.0.168])
	by frv157.fwdcdn.com with esmtpsa ID 1mqH8m-0005hX-Qi
	for blinux-list@redhat.com; Thu, 25 Nov 2021 17:58:28 +0200
Message-ID: <e9ca84ae-5e2e-41bb-4299-e947a79ce264@ukr.net>
Date: Thu, 25 Nov 2021 17:57:46 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.3.0
Subject: Re: Converting epubs to Plain-Text?
To: blinux-list@redhat.com
References: <50d03b33-62e0-2c8-c14e-40b717301dfc@hubert-humphrey.com>
	<6dbbac09-3d17-0aac-ca28-4cef41d6c809@gmail.com>
	<946f985-aad-95dd-495-f3f69898f2e0@hubert-humphrey.com>
	<CAO2sX30nVe2xz0N_J-Xd7KutYNPjdc5V-endQZbYDK6JQ3TkZA@mail.gmail.com>
In-Reply-To: <CAO2sX30nVe2xz0N_J-Xd7KutYNPjdc5V-endQZbYDK6JQ3TkZA@mail.gmail.com>
Authentication-Result: IP=46.133.72.10; mail.from=bmiv@ukr.net; dkim=pass;
	header.d=ukr.net
X-Ukrnet-Yellow: 0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.2
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

SGkgQWxsLgoKUGVyc29uYWxseSwgSSBsaWtlIFVub2NvbnYuCgoyNS4xMS4yMSAxNzo0NywgTGlu
dXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiDQv9C40YjQtToKPiBJIGRvbid0IGtub3cg
b2YgYW55IHRvb2xzIHNwZWNpZmljYWxseSBmb3IgZVB1Yi4uLiBidXQgSSByZWNlbnRseQo+IGZv
dW5kIG91dCBlUHVicyBhcmUganVzdCB6aXAgYXJjaGl2ZXMgd2l0aCBtb3N0IG9mIHRoZSBjb250
ZW50IHN0b3JlZAo+IGFzIGh0bWwgZmlsZXMgYW5kIHNvbWUgbWV0YWRhdGEgZmlsZXMgdXNlZCBi
eSBlUHViIHJlYWRlcnMuCj4gCj4gQWxzbywgSSBoYXZlbid0IHVzZWQgaXQsIGJ1dCBJJ3ZlIGhl
YXJkIG90aGVycyBkZXNjcmliZSBwYW5kb2MgYXMgdGhlCj4gYW55dGhpbmcgdG8gYW55dGhpbmcg
ZWxzZSBvZiBkb2N1bWVudCBjb252ZXJzaW9uLgo+IAo+IF9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4gQmxp
bnV4LWxpc3RAcmVkaGF0LmNvbQo+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4v
bGlzdGluZm8vYmxpbnV4LWxpc3QKPiAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRo
YXQuY29tCmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4
LWxpc3Q=

