Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 377896789CE
	for <lists+blinux-list@lfdr.de>; Mon, 23 Jan 2023 22:41:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1674510073;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=OnvA102LiPTfWPyiur17LFDjkcnrR3D+Y6e/fpy+NMA=;
	b=gXL/pxupgUt3oIL7jdscUr1xIi+0eqYmvNRX0g5RTg5CLDpC+fFJMsJ5fWWcOVJmIPEw10
	5Rhq9UEiRgvS0fmLb534GMA3RFsVGFgsPaLTD1TY4Durr6tKfgqDsqSqctNMVq7rr0ZoCn
	Oa4fXfwmKsLPScFxV6K/8pS4poHq3HU=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-125-2pcdF-kmP0C_-2IJBuciCg-1; Mon, 23 Jan 2023 16:41:09 -0500
X-MC-Unique: 2pcdF-kmP0C_-2IJBuciCg-1
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com [10.11.54.10])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 584E6857A84;
	Mon, 23 Jan 2023 21:41:07 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id AF27D492B02;
	Mon, 23 Jan 2023 21:41:05 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 0DB901946597;
	Mon, 23 Jan 2023 21:41:05 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Mon, 23 Jan 2023 22:40:59 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.0
Subject: Re: mumble from old machine to new
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <mailman.706.1674502389.8171.blinux-list@redhat.com>
 <mailman.713.1674503420.8177.blinux-list@redhat.com>
 <mailman.698.1674507581.8169.blinux-list@redhat.com>
In-Reply-To: <mailman.698.1674507581.8169.blinux-list@redhat.com>
Message-ID: <mailman.635.1674510064.8173.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.10
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

WW91IGRvIG5vdCBuZWVkIG5hdXRpbHVzIGZvciB0aGF0LgoKSnVzdCBtb3VudCB0aGUgdGh1bWIg
ZHJpdmUsIGZvciBpbnN0YW5jZSBhcyAvbW50LCB0aGVuIHR5cGUKCmNwIH4vLmxvY2FsL3NoYXJl
L011bWJsZS9NdW1ibGUvbXVtYmxlLnNxbGl0ZSAgL21udAoKdGhlbiB1bW91bnQgdGhlIGRyaXZl
LCBtb3VudCBpdCBvbiB0aGUgbmV3IG1jaGluZSBhbHNvIGFzIC9tbnQgYW5kIHR5cGU6CgpjcCAv
bW50Ly5sb2NhbC9zaGFyZS9NdW1ibGUvTXVtYmxlL211bWJsZS5zcWxpdGUgfi8KClR5cGUgdGhl
IGNwIGNvbW1hbmRzIGFyZSByZWd1bGFyIHVzZXIuCgpDaGVlcnMsCkRpZGllcgotLQpEaWRpZXIg
U3BhaWVyClNsaW50IG1haW50YWluZXIKClBTIGl0IHdvdWxkIGhhdmUgYmVlbiB3YXkgZWFzaWVy
IHRvIHVzZSBtYWdpYy13b3JtaG9sZSwgdW5mb3J0dW5hdGVseSBhdCBsZWFzdAp1bnRpbCB5ZXN0
ZXJkYXkgbWFnaWMtd29ybWhvbGUgd2FzIG5vdCAoeWV0KSBhdmFpbGFibGUgZm9yIEZlZG9yYSAz
Ny4gV2hhdCBhIHNoYW1lIQoKTGUgMjMvMDEvMjAyMyDDoCAyMTo1OSwgTGludXggZm9yIGJsaW5k
IGdlbmVyYWwgZGlzY3Vzc2lvbiBhIMOpY3JpdMKgOgo+IEkgY2FuIGdvIHRoZXJlIGluIHRlcm1p
bmFsLgo+IEhvdyBtYXkgSSBtYWtlIHRoYXQgdmlzaWJsZSBzbyBJIGNhbiB1c2UgbmF1dGlsdXMg
dG8gY29weSB0byB0aHVtYiBkcml2ZT8KPiAKPj4gT24gSmFuIDIzLCAyMDIzLCBhdCAxMzo1MCwg
TGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiA8YmxpbnV4LWxpc3RAcmVkaGF0LmNv
bT4gd3JvdGU6Cj4+Cj4+IENvcHkgZnJvbSB0aGUgb2xkIHRvIHRoZSBuZXcgbWFjaGluZSB0aGUg
ZmlsZToKPj4gfi8ubG9jYWwvc2hhcmUvTXVtYmxlL011bWJsZS9tdW1ibGUuc3FsaXRlCj4+Cj4+
IENoZWVycywKPj4gRGlkaWVyCj4+IC0tCj4+IERpZGllciBTcGFpZXIKPj4gU2xhaW4gbWFpbnRh
aW5lcgo+Pgo+PiBMZSAyMy8wMS8yMDIzIMOgIDIwOjMyLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJh
bCBkaXNjdXNzaW9uIGEgw6ljcml0IDoKPj4+IEkgaGF2ZSB0d28gbWFjaGluZXMgd2l0aCBmZWRv
cmEgMzcuCj4+PiBNdW1ibGUgaXMgb24gdGhlIG9sZCBtYWNoaW5lLCBzZXQgdXAgYXMgSSBsaWtl
IGl0Lgo+Pj4gSSBoYXZlIGp1c3QgaW5zdGFsbGVkIG11bWJsZSBvbiB0aGUgbmV3IG1hY2hpbmUs
LCBidXQgaGF2ZSBub3QgeWV0IHB1dCBpbiBhbnl0aGluZy4KPj4+IElzIHRoZXJlIGEgd2F5IHRv
IG1vdmUgbXVtYmxlIHNldHRpbmdzIGFuZCBhbGwgZnJvbSB0aGUgb2xkIG1hY2hpbmUgdG8gdGhl
IG5ldyBtYWNoaW5lIHNvIEkgd2lsbCBub3QgbmVlZCB0byBjb25maWd1cmUgZnJvbSBzY3JhdGNo
PwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQmxpbnV4
LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51eC1saXN0QHJlZGhhdC5jb20KaHR0cHM6Ly9saXN0bWFu
LnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo=

