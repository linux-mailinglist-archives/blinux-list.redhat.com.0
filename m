Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id A9BC94DB76B
	for <lists+blinux-list@lfdr.de>; Wed, 16 Mar 2022 18:37:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1647452278;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=6tGelScUjUYFtmokQ3ZIfoE+yHd0xKg4m/LcYo9O1a4=;
	b=XX+F2OP25EMNE/ypuV1yVcRl9t894daatBQUrVZzMus/7ZIhnGZAKFDUbDkZSaH6Ao21qw
	IaBJbJlaTrTU7F14ZzjUuTW8Jm8AtlHXHD2litbaF9uzIo7cuJiK6GviuFS+zvuPDLjTQC
	gobxP9Ln3r3elPTLYG7VklgDR6mY0mA=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-642-q4Ljdw0zPj2qcuRaI9KaOA-1; Wed, 16 Mar 2022 13:37:54 -0400
X-MC-Unique: q4Ljdw0zPj2qcuRaI9KaOA-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com [10.11.54.5])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 91DC4185A7A4;
	Wed, 16 Mar 2022 17:37:52 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 2314830B9D;
	Wed, 16 Mar 2022 17:37:52 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 7F1FD1940356;
	Wed, 16 Mar 2022 17:37:51 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Wed, 16 Mar 2022 18:37:27 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: getting started with Liblouis
To: blinux-list@redhat.com
References: <6df9e5ca-9db1-3155-3afe-24b47cd7c183.ref@verizon.net>
 <mailman.2021.1647388814.111205.blinux-list@redhat.com>
 <mailman.2147.1647415850.111205.blinux-list@redhat.com>
 <mailman.2542.1647450204.111203.blinux-list@redhat.com>
In-Reply-To: <mailman.2542.1647450204.111203.blinux-list@redhat.com>
Message-ID: <mailman.2599.1647452270.111210.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgQWwsCgpJdCBhcHBlYXJzIHRoYXQgbGlibG91aXMgeG1sIGlucyBtYWludGFpbmVkIGZvciBE
ZWJpYW4gYnkgU2FtdWVsIFRoaWJhdWx0IHNvCkRlYmlhbiBiYXNlZCBkaXN0cmlidXRpb25zIGdl
dCBpdCB0b28uCgpJIHdpbGwgYnVpbGQgYSBTbGludCBwYWNrYWdlIGZvciBTbGludCB1c2luZyB0
aGUgc2FtZSBzb3VyY2UgZmlsZXMgaWYgeW91IG5lZWQgdGhhdC4KCkJ1dCBwbGVhc2UgbG9vayBm
aXJzdCBhdCB0aGlzIFJFQURNRToKaHR0cHM6Ly9zYWxzYS5kZWJpYW4ub3JnL2ExMXktdGVhbS9s
aWJsb3Vpc3htbC8tL2Jsb2IvbWFzdGVyL1JFQURNRQoKYW5kIGNvbmZpcm0gb3IgaW5maXJtIHRo
YXQgaXQgaXMgd2hhdCB5b3UgYXJlIGxvb2tpbmcgZm9yLgoKQ2hlZXJzLApEaWRpZXIKLS0KRGlk
aWVyIFNwYWllcgpTbGludCBtYWludGFpbmVyLgoKTGUgMTYvMDMvMjAyMiDDoCAxODowMywgTGlu
dXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiBhIMOpY3JpdMKgOgo+IFRoYW5rcywgSmVm
Zi7CoCBJJ20gdXNpbmcgU2xpbnQuwqAgSSBkaWRuJ3Qgc2VlIGVpdGhlciBvZiB0aGUgcHJvZ3Jh
bXMgeW91Cj4gbWVudGlvbi7CoCBNYXliZSB0aGVyZSdzIHNvbWV0aGluZyBlbHNlLgo+IAo+IAo+
IEJlc3QhCj4gCj4gQWwKPiAKPiAKPiBPbiAzLzE2LzIyIDAzOjMwLCBMaW51eCBmb3IgYmxpbmQg
Z2VuZXJhbCBkaXNjdXNzaW9uIHdyb3RlOgo+PiBPbiBUdWUsIDE1IE1hciAyMDIyLCBMaW51eCBm
b3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIHdyb3RlOgo+Pgo+Pj4gSSdtIHRyeWluZyB0byBm
aW5kIG91dCBob3cgdG8gdXNlIExpYmxvdWlzIHRvIHRyYW5zbGF0ZSBkb2N1bWVudHMgZnJvbSBw
cmludAo+Pj4gdG8gQnJhaWxsZS7CoCBTcGVjaWZpY2FsbHksIG15IHdpZmUgd291bGQgbGlrZSBt
ZSB0byBmaW5kIG91dCBob3cgdG8gdHJhbnNsYXRlCj4+PiBSdXNzaWFuIGRvY3VtZW50cyBpbnRv
IEJyYWlsbGUgb25lcy7CoCBBdCB0aGUgbW9tZW50LCB0aG91Z2gsIEkgaGF2ZW4ndCB5ZXQKPj4+
IGxlYXJuZWQgYSBjb21tYW5kIHRvIHJ1biBmb3IgdHJhbnNsYXRpbmcgYW55dGhpbmc6wqAgdGhl
IExpYmxvdWlzCj4+PiBkb2N1bWVudGF0aW9uIGxvb2tzIHRvIGhhdmUgYSBsb3Qgb2YgdXNlZnVs
IG1hdGVyaWFsLCBidXQgSSBjb3VsZCBmaW5kCj4+PiBub3RoaW5nIGFib3V0IHJ1bm5pbmcgYSBj
b21tYW5kLCB3aXRoIHdoYXRldmVyIGFyZ3VtZW50cyBhbmQgb3B0aW9ucyBJIG1pZ2h0Cj4+PiBu
ZWVkLCB0byBjcmVhdGUgYSBCcmFpbGxlIG91dHB1dCBmaWxlIGZyb20gYSBwcmludCBpbnB1dCBm
aWxlLgo+Pgo+PiBJbiBEZWJpYW4sIEkgc2VlIGxpYmxvdWlzLWJpbiBhbmQgbGlibG91aXN4bWwt
YmluIHBhY2thZ2VzIHdoaWNoIGNhbiBwcm9iYWJseQo+PiBoZWxwIHlvdS7CoCBPdGhlciBkaXN0
cmlidXRpb25zIHByb2JhYmx5IGhhdmUgc29tZXRoaW5nIHNpbWlsYXIuCj4+Cj4+PiBJIHJlYWQg
YWJvdXQgYSBjb21tYW5kIGNhbGxlZCBmaWxlMmJybCwgYXBwYXJlbnRseSBwYXJ0IG9mIGEgcHJv
Z3JhbSBjYWxsZWQKPj4+IExpYmxvdWlzdXRkbWwsIGJ1dCB0aGF0IHByb2dyYW0ncyBub3Qgb24g
bXkgc3lzdGVtIGV2ZW4gdGhvdWdoIExpYmxvdWlzCj4+PiBpdHNlbGYgaXMuCj4+Cj4+IEFwcGFy
ZW50bHksIFVURE1MIGlzIHVuaWZpZWQgdGFjdGlsZSBkb2N1bWVudCBtYXJrdXAgbGFuZ3VhZ2Us
IHdoY2loIGlzCj4+IHByZXN1bWFibHkgdXNlZCBmb3IgbWFwcywgZGlhZ3JhbXMsIGV0Yy7CoCBU
aGlzIGlzIHByb2JhYmx5IG5vdCB3aGF0IHlvdSBuZWVkLgo+Pgo+PiBIVEgsCj4+IEdlb2ZmLgo+
PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+PiBCbGlu
dXgtbGlzdCBtYWlsaW5nIGxpc3QKPj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+PiBodHRwczov
L2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4gCj4gX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBCbGludXgtbGlz
dCBtYWlsaW5nIGxpc3QKPiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4gaHR0cHM6Ly9saXN0bWFu
LnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0
CkJsaW51eC1saXN0QHJlZGhhdC5jb20KaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1h
bi9saXN0aW5mby9ibGludXgtbGlzdAo=

