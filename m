Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AAF96F1014
	for <lists+blinux-list@lfdr.de>; Fri, 28 Apr 2023 03:38:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1682645918;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=j+NKcMV+kYzZv1tZu70GC8aKfeqhQWRG7sJXvWU27xA=;
	b=Cp2qmJDEpabqZMHzrOKkneeTDeyKcvF1oZKkp8q3CgTQdhcP50ItUERdddo3ieDUpEPGno
	WTcu4ZJ6qtLgsL/sblvxLlK6EYo7NfXMLC2j5wqKJENQNRYNX8TXX9DeqZD+xDoozsLbI4
	l9nqmHF5LXRFIBwrC76vYMd98aok0/Q=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-388-N7vcen2VMgimXA1BdBxlug-1; Thu, 27 Apr 2023 21:38:33 -0400
X-MC-Unique: N7vcen2VMgimXA1BdBxlug-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com [10.11.54.4])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id E373AA0F380;
	Fri, 28 Apr 2023 01:38:31 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 0A87D2027043;
	Fri, 28 Apr 2023 01:38:25 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 6BD181946A52;
	Fri, 28 Apr 2023 01:38:25 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Fri, 28 Apr 2023 01:37:56 +0000
To: blinux-list@redhat.com
Subject: Re: Getting Lios-3 to work
In-Reply-To: <mailman.1859.1682606921.2351819.blinux-list@redhat.com>
References: <mailman.1859.1682606921.2351819.blinux-list@redhat.com>
Feedback-ID: 26663242:user:proton
MIME-Version: 1.0
Message-ID: <mailman.2333.1682645905.2351818.blinux-list@redhat.com>
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
 <mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <http://listman.redhat.com/archives/blinux-list/>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
 <mailto:blinux-list-request@redhat.com?subject=subscribe>
Reply-To: blinux-list@redhat.com
Errors-To: blinux-list-bounces@redhat.com
Sender: "Blinux-list" <blinux-list-bounces@redhat.com>
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.4
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGVsbG8sCgpMSU9TIGNlcnRhaW5seSBkb2VzIHdvcmsgdW5kZXIgVWJ1bnR1LCBhbmQgSSB0aGlu
ayBpdCBzaG91bGQgd29yayB1bmRlcgpBcmNoIGFzIHdlbGwuCgoKWW91ciBxdWVzdGlvbiBkb2Vz
bid0IGluY2x1ZGUgYW55IGRldGFpbHMgb24gaG93IHlvdSBwZXJmb3JtZWQgdGhlCmluc3RhbGxh
dGlvbiwgd2hhdCBzdWNjZWVkZWQgYW5kIHdoYXQgZGlkIG5vdCwgc28gaXQncyBoYXJkIHRvIGFk
dmljZS4KCgpGaXJzdCBvZiBhbGwsIHlvdSBzaG91bGQgbG9vayBhcm91bmQgdG8gZ2V0IHRoZSBt
aXNzaW5nIGRlcGVuZGVuY2llcywKcGVyaGFwcyB0aGV5J3JlIGp1c3QgY2FsbGVkIGRpZmZlcmVu
dGx5IGluIHRoZSBBVVIgcmVwb3NpdG9yeSBvciB0aGVyZSdzCmFuIGFsdGVybmF0aXZlIHdheSB0
byBvcHRhaW4gdGhlbS4KCgpUaGVuLCB3aGVuIHlvdSBoYXZlIGV2ZXJ5dGhpbmcgYW5kIGl0IHN0
aWxsIGRvZXNuJ3Qgd29yaywgeW91IHNob3VsZCBydW4KaXQgZnJvbSB0ZXJtaW5hbCwgaXQgd2ls
bCBnaXZlIHlvdSBzcGVjaWZpYyBoaW50IG9uIHdoYXQncyBtaXNzaW5nLgoKCkJlc3QgcmVnYXJk
cwoKClJhc3Rpc2xhdgoKCkTFiGEgMjcuIDQuIDIwMjMgbyAxNjo0NiBMaW51eCBmb3IgYmxpbmQg
Z2VuZXJhbCBkaXNjdXNzaW9uIG5hcMOtc2FsKGEpOgo+IEhpLAo+Cj4gaXMgaXQgcG9zc2libGUg
dG8gdXNlIExpb3MgMyB1bmRlciBBcmNoPyBJIGNsb25lZCB0aGUgTGlvcyAzIGdpdCwgYnV0IEkK
PiBhbSB1bmFibGUgdG8gZ2V0IGl0IHRvIHdvcmsuIFdoZW4gSSBwcmVzcyBMaW9zLCBhcHAgbm90
IG9wZW5pbmcuIE1heWJlCj4gc29tZSBkZXBlbmRlbmNpZXM/IFNvbWUgb2YgZGVwZW5kZW5jaWVz
IGxpc3RlZCBpbiByZWFkbWUubWQgY2FuJ3QgYmUKPiBmb3VuZCBpbiByZXBvcyBhbmQgYWxzbyBp
biBBVVIuCj4KPiBUaGFua3MsCj4KPiBQYXZlbAo+Cj4KPiBfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwo+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+IEJs
aW51eC1saXN0QHJlZGhhdC5jb20KPiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFu
L2xpc3RpbmZvL2JsaW51eC1saXN0Cj4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRo
YXQuY29tCmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4
LWxpc3QK

