Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A4FE5BBE96
	for <lists+blinux-list@lfdr.de>; Sun, 18 Sep 2022 17:10:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1663513825;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=7ttwddmelzh2mtVYfwPEfpkGEjrHfO8+5G5z/HQZphs=;
	b=GzHtlezEXu6VKdrYguPrJonidFxzBogozg64/CYE+c+ye7wViVwhbw9x1+HqKZvmah7kEJ
	5xlEKG6N2AW2taw+QYhs8gsEpP6SJrBKoHc6ArH8vQnk9TVQdb+dLvl4zbNXx6HBfECCCY
	iAyI7TQm73yvVoOVdWGfaRIQiyxxSk0=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-86-7kQu0pZ7MmWgcT1o0PeFQg-1; Sun, 18 Sep 2022 11:10:22 -0400
X-MC-Unique: 7kQu0pZ7MmWgcT1o0PeFQg-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com [10.11.54.5])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id B36CC101A52A;
	Sun, 18 Sep 2022 15:10:20 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 1637617584;
	Sun, 18 Sep 2022 15:10:20 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 1D5A219465A0;
	Sun, 18 Sep 2022 15:10:19 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Mime-Version: 1.0 (1.0)
Subject: Re: KDE Plasma 5.26 beta questions
Date: Sun, 18 Sep 2022 17:10:13 +0200
References: <mailman.1123.1663511932.6076.blinux-list@redhat.com>
In-Reply-To: <mailman.1123.1663511932.6076.blinux-list@redhat.com>
To: blinux-list@redhat.com
Message-ID: <mailman.1010.1663513818.6081.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.5
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SG93ZHksCgpMaWtlIGkgd3JvdGUsIGkgbSBjdXJyZW50bHkgbm90IG9uIG15IGNvbXB1dGVyLiBJ
IHNlbmQgdGhlIGluc3RydWN0aW9ucyB3aGVuIGkgYXJyaXZlIGF0IGhvbWUuCgpDaGVlcnMgY2hy
eXMKCgo+IEFtIDE4LjA5LjIwMjIgdW0gMTY6Mzkgc2NocmllYiBMaW51eCBmb3IgYmxpbmQgZ2Vu
ZXJhbCBkaXNjdXNzaW9uIDxibGludXgtbGlzdEByZWRoYXQuY29tPjoKPiAKPiDvu79TdXJlLCBJ
IGdvdCBkb2NrZXIgc2V0IHVwIHNvIGhvdyB3b3VsZCBJIGdvIGFib3V0IHRoaXM/Cj4gCj4gSSB0
cmllZCB2aWEgcXVpY2tlbXUgd2l0aCBubyBsdWNrLCBPcmNhIGRpZG4ndCBzZWVtIHRvIGNvbWUg
dXAgaW4gdGhlIGlzbyB0aGF0IHF1aWNrZW11IHB1bGxlZCBkb3duIGZvciBLREUgTmVvbiB1bnN0
YWJsZS4gU28geWVzLCBJJ2xsIHRha2UgdGhhdCBob3cgdG8gZ3VpZGUgeWVzIHBsZWFzZQo+IAo+
IAo+IAo+PiBPbiA5LzE4LzIyIDE1OjMwLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNz
aW9uIHdyb3RlOgo+PiBIb3dkeSwKPj4gCj4+IFRvIGdldCBpdCBpbiBvZmZpY2lhbCBBcmNoTGlu
dXggUmVwb3NpdG9yeSB5b3UgbWlnaHQgbmVlZCB0byB3YWl0IHRpbCBLREUgUGxhc21hIDUuMjYg
aXMgcmVsZWFzZWQuCj4+IAo+PiBCdXQgaSBqdXN0IHNlYXJjaGVkIGEgZWFzeSB3YXkgZm9yIHRl
c3RpbmcgS0RFIE5lb24gRGV2ZWxvcG1lbnQgbmlnaHRseSB1c2luZyBkb2NrZXIuICBBcyB1c2Vy
cyBzaG91bGQgYmUgYWJsZSB0byBnZXQgaW52b2x2ZWQgaW4gYWNjZXNzaWJpbGl0eSBkZXZlbG9w
bWVudCBhbmQgdGVzdGluZyBwcm9jZXNzLgo+PiAKPj4gSSBtIGN1cnJlbnRseSBub3Qgb24gbXkg
bWFjaGluZSBidXQgaSBhbHJlYWR5IGhhdmUgYSB3b3JraW5nIGhvd3RvIHRvIHNoYXJlIHdpdGgg
eW91Lgo+PiAKPj4gQnkgdGhlIHdheSwgS0RFIGp1c3Qgdm90ZXMgaXRzIGdvYWxzLiBLREUgdm90
ZXMgMyBnb2Fscy4gT25seSA2IGdvYWxzIGF2YWlsYWJsZSBmb3Igdm90aW5nLiBBY2Nlc3NpYmls
aXR5IGlzIG9uZSBvZiB0aGVtLiBTbyB0aGUgY2hhbmNlIGlzIHZlcnkgaGVpZ2ggdGhhdCBQbGFz
bWEgNS4yNiB3YXMganVzdCB0aGUgZmlyc3Qgc2hvdCBvZiBhIGxvbmcgc2VyaWVzIG9mIGFjY2Vz
c2liaWxpdHkgaW1wcm92ZW1lbnRzLiBCeSB0aGUgd2F5IG1vc3Qgb2YgcmVjZW50ICB3b3JrIGlz
IGRvbmUgYnkgY2FybCBzd2FuIGFuZCBmdXNpb25mdXR1cmUuIFNvIHRoZSBjaGVycnkgZ29lcyB0
aGVyZS4KPj4gCj4+IEkgbSBjdXJyZW50bHkgbW9zdGx5IGJ1c3kgaW4gZ2V0dGluZyBvcmNhIHJl
YmFzZWQgb24gYW4gcGx1Z2luIGFyY2hpdGVjdHVyZS4KPj4gCj4+IEludGVyZXN0aW5nIHRpbWVz
IGFoZWFkIGluIHRlcm1zIG9mIGFjY2Vzc2liaWxpdHkuCj4+IAo+PiBDaGVlcnMgY2hyeXMKPj4g
Cj4+Pj4gQW0gMTguMDkuMjAyMiB1bSAxNjoyMCBzY2hyaWViIExpbnV4IGZvciBibGluZCBnZW5l
cmFsIGRpc2N1c3Npb24gPGJsaW51eC1saXN0QHJlZGhhdC5jb20+Ogo+Pj4gCj4+PiDvu79TbyBx
dWljayBxdWVzdGlvbiwgc2luY2UgS0RFIC5QbGFzbWEgNS4yNiBiZXRhIGlzIGEgdGhpbmcsIHdp
dGggYXBwYXJlbnRseSBBMTFZIGltcHJvdmVtZW50cywgZ29pbmcgYnkgbnVtZXJvdXMgWVQgdmlk
cywgS0RFLm9yZyBhbmQgdGhlaXIgKGFkbWl0dGVkbHkgbWFzc2l2ZSkgY2hhbmdlbG9nLi4uCj4+
PiAKPj4+IElzIGl0IHdvcnRoIHRlc3RpbmcgaXQgb3V0PyBMb29raW5nIGF0IG15IHJlcG9zIG9u
IEFyY2ggSSdtIHNlZWluZyA1LjI1LjktMSBoZXJlLCBhbmQgbm90IHNlZWluZyBhbnkgb2YgdGhl
IHVwZGF0ZXMgbGlzdGVkIGluIHRoZSBjaGFuZ2Vsb2csIGkuZS4gdGhlIGRpYWxvZ3MgYXJlIHN0
aWxsIGluYWNjZXNzaWJsZSwgdGhlIGNsb2NrIGRvZXNuJ3QgcGxheSBuaWNlIHdpdGggT3JjYSwg
ZXQgYWwuCj4+PiAKPj4+IFNvIGRvIEkgbmVlZCB0byB3YWl0IG9uIHRoZSBmdWxsIHJlbGVhc2Ug
b2YgNS4yNiB0byBnZXQgYWxsIHRoZSBuZXcgZmVhdHVyZXMgdGhlbiwgc2luY2UgdGhlIHdheSBJ
IHJlYWQgS0RFJ3MgYmV0YS9yZWxlYXNlIHNjZWR1bGUgaXMgdGhlIGJldGEgaXMgZmVhdHVyZSBj
b21wbGV0ZSBpZiBJIHVuZGVyc3RhbmQgaXQgcmlnaHQgb3IgYW0gSSBub3QgdW5kZXJzdGFuZGlu
ZyBob3cgS0RFIGRvZXMgdGhlaXIgYmV0YXMKPj4+IAo+Pj4gCj4+PiBJIGtub3cgQ3J5cyBoYXMg
YmVlbiBkb2luZyBhIGxvdCBvZiB3b3JrIHdpdGggS0RFIHNvIEknbSBob3BpbmcgZm9yIHlvdXIg
aW5wdXQgb24gdGhpcywgc2luY2UgSSd2ZSBiZWVlbiB0b2xkIGJ5IG90aGVyIGZvbGtzIG9mZiBs
aXN0IHRoZXkndmUgaGFkIG11Y2ggbXVjaCBiZXR0ZXIgZXhwZXJpZW5jZXMgd2l0aCBpdCBhbmQg
Z2V0dGluZyB0aGluZ3MgdG8gd29yayB0aGF0IEkgY2FuJ3QsIGZvciBleGFtcGxlCj4+PiAKPj4+
IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+PiBCbGlu
dXgtbGlzdCBtYWlsaW5nIGxpc3QKPj4+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPj4+IGh0dHBz
Oi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPj4+IAo+
PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+PiBCbGlu
dXgtbGlzdCBtYWlsaW5nIGxpc3QKPj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+PiBodHRwczov
L2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4gCj4gX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBCbGludXgtbGlz
dCBtYWlsaW5nIGxpc3QKPiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4gaHR0cHM6Ly9saXN0bWFu
LnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0
CkJsaW51eC1saXN0QHJlZGhhdC5jb20KaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1h
bi9saXN0aW5mby9ibGludXgtbGlzdAo=

