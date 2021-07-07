Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 328F83BEBDB
	for <lists+blinux-list@lfdr.de>; Wed,  7 Jul 2021 18:16:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1625674607;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=ijhOeeONBhe/pO+xP6B8D6bbiwT+ACwAxAYOhSW3ZfM=;
	b=hM+SomJK8I8Dpnsy2SzAdhq+0UB4gSVJflUbBNiJ5CvWJTjr559iO9B0r2hdaWUPgsgCci
	wGSSLigxOlgbgvGJ8AA3gHeR/MjFHQHKtijmm7nymuv/G35S33oJdxF2TbYBZzmeiO6QcW
	9idlcJgzlL2wkxSql8qCWAtDOHIyYEw=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-132-BP-laMbZMe6xEda1VaFLZg-1; Wed, 07 Jul 2021 12:16:45 -0400
X-MC-Unique: BP-laMbZMe6xEda1VaFLZg-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id E5B1C1800D41;
	Wed,  7 Jul 2021 16:16:41 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 55A5B5D9F0;
	Wed,  7 Jul 2021 16:16:36 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 6E6124EA29;
	Wed,  7 Jul 2021 16:16:32 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 167GGPO9011294 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 7 Jul 2021 12:16:25 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 39E44DEE86; Wed,  7 Jul 2021 16:16:25 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 351EADEE83
	for <blinux-list@redhat.com>; Wed,  7 Jul 2021 16:16:22 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id A5C2D8C6A49
	for <blinux-list@redhat.com>; Wed,  7 Jul 2021 16:16:22 +0000 (UTC)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79]) by
	relay.mimecast.com with ESMTP id us-mta-396-TUUVYnkrN7K-sgzVpMbXMg-1;
	Wed, 07 Jul 2021 12:16:20 -0400
X-MC-Unique: TUUVYnkrN7K-sgzVpMbXMg-1
Received: from ici.slint.fr (sfa89-1-78-208-157-71.fbx.proxad.net
	[78.208.157.71])
	by darkstar.slint.fr (Postfix) with ESMTPSA id A8E52A4246
	for <blinux-list@redhat.com>; Wed,  7 Jul 2021 17:15:49 +0200 (CEST)
Subject: Re: Starting linux again
To: blinux-list@redhat.com
References: <DB16B662-5338-426B-9905-3B6BA296F181@gmail.com>
	<d3f4bde5-6968-ee76-3534-df0cad1758e7@schoeppi.net>
	<alpine.OSX.2.23.453.2107070838440.7280@soladeogloria.local>
	<f59d22b1-f0b6-207d-6c26-a83845de2a51@schoeppi.net>
	<alpine.NEB.2.23.451.2107071131520.6390@panix1.panix.com>
Message-ID: <a4374f6d-bc30-91ca-86c8-87c41803c23f@slint.fr>
Date: Wed, 7 Jul 2021 18:16:12 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
	Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <alpine.NEB.2.23.451.2107071131520.6390@panix1.panix.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 167GGPO9011294
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
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

SSBjb25maXJtIHRoYXQgU2xpbnQgaXMgYWNjZXNzaWJsZSB3aXRoIHNwZWVjaCBhbmQgQnJhaWxs
ZSBmcm9tIHRoZSAKYmVnaW5uaW5nIG9mCmluc3RhbGxhdGlvbi4gSSBhbHNvIHByb3ZpZGVzIHVw
IHRvIGRhdGUgYWNjZXNzaWJpbGl0eSBzb2Z0d2FyZTogZXNwZWFrdXAsCnNwZWVjaGQtdXAsIGZl
bnJpciwgb3JjYSwgc3BlZWNoLWRpc3BhdGNoZXIgZW1hY3NwZWFrLCBzcGVlY2hkLWVsLCBicmx0
dHkgdG8KbWVudGlvbiB0aGUgbWFpbiBvbmVzLCBhbGwgaW5zdGFsbGVkIGJ5IGRlZmF1bHQuIFNw
ZWVjaCBhbmQgYnJhaWxsZSBhcmUKYXZhaWxhYmxlIGluIHRleHQgbW9kZSBhcyBpbiBncmFwaGlj
YWwgZW52aXJvbm1lbnRzIGxpa2UgTWF0ZS4KClRoZSBzZXR0aW5ncyBzcGVjaWZpYyB0byBlc3Bl
YWt1cCBvciBzcGVlY2hkLXVwIG9yIHlvdXIgaGFyZCBzeW50aGVzaXplciwgaWYKc2F2ZWQgd2l0
aCB0aGUgY29tbWFuZCBzcGVha3VwLXNhdmUsIHdpbGwgYmUgcmVzdG9yZWQgYXQgbmV4dCBib290
LgoKTGluayB0byB0aGUgU2xpbnQgSGFuZGJvb2sgKHRvIGJlIGNvbXBsZXRlZCk6Cmh0dHBzOi8v
c2xpbnQuZnIvZG9jL0hhbmRCb29rLmh0bWwKCkNoZWVycywKRGlkaWVyCi0tCkRpZGllciBTcGFp
ZXIKCgpMZSAwNy8wNy8yMDIxIMOgIDE3OjMzLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNj
dXNzaW9uIGEgw6ljcml0wqA6Cj4gQWN0dWFsbHksIGRlYmlhbiBkb2VzIG5vdCBoYXZlIHRoZSBt
b3N0IGFjY2Vzc2libGUgaW5zdGFsbGVyLiAgRm9yIHRoYXQsCj4gaXQncyBlaXRoZXIgU2xpbnQg
b3IgSmVudXguCj4gSW4gb3JkZXIgdG8gZ2V0IGRlYmlhbiBzY3JlZW4gcmVhZGVyIGFjY2Vzc2li
aWxpdHkgZ29pbmcsIHlvdSBoYXZlIHRvIGtub3cKPiBhYm91dCBhbmQgdXNlIGEgYm9vdCBwYXJh
bWV0ZXIuICBXaXRoIHNsaW50IGFuZCBKZW51eCwgbm8gc3VjaCBib290Cj4gcGFyYW1ldGVyIGlz
IG5lY2Vzc2FyeS4KPiAKPiAKPiBPbiBXZWQsIDcgSnVsIDIwMjEsIExpbnV4IGZvciBibGluZCBn
ZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4gCj4+IERlYmlhbiBoYXMgdGhlIG1vc3QgYWNjZXNz
aWJsZSBpbnN0YWxsZXIgQUZBSUssIGFsbCBvdGhlciBkaXN0cm9zIEkga25vdyBhcmUKPj4gbm90
IHRoYXQgZWFzeSB0byBzZXR1cC4gU28gZGVmZW5hdGx5IGdpdmUgRGViaWFuIGEgdHJ5IDstKS4K
Pj4KPj4gQ2hlZXJzLAo+Pgo+PiAgICBTY2hvZXAKPj4KPj4KPj4KPj4gQW0gMDcuMDcuMjAyMSB1
bSAxNTozOSBzY2hyaWViIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb246Cj4+PiBU
aGF0J3MgZ3JlYXQgbmV3cyEgSSBoYWQgc2VlbiBhIGNvbW1lbnQgc29tZXdoZXJlIGFib3V0IGRl
YmlhbiBubyBsb25nZXIKPj4+IGhhdmluZyBhbiBhY2Nlc3NpYmxlIGluc3RhbGwgYnV0IGlmIGl0
IHN0aWxsIGRvZXMsIEkgd2lsbCBkZWZpbml0ZWx5IGdvIHRvCj4+PiB0aGF0IGZpcnN0LgoKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkJsaW51eC1saXN0
IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vbGlzdG1hbi5yZWRo
YXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3Q=

