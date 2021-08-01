Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 96B783DCDD4
	for <lists+blinux-list@lfdr.de>; Sun,  1 Aug 2021 22:51:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1627851080;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=OZHj5KeuCWRbAfy6Edw1onOgVhz+aKDtnfqm4kSEoj0=;
	b=J3fzCv2UJmpgo7y0V2y2KI5/oxYvsIjHjNPDZiRDE5gPvg9gqLn1e/Fzi+JQVLGTXvC9lN
	JMp0EUaF2nwY+hdF7cfT26lQ8so5qjCATWQATix/50KvPlugjFdx0XPPxJTfy40nmQXnSo
	AA7MGVS/gWznJOoZVG2Vzr3BdZAbME8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-576-aWHC1yBfN-2VQWLdDU9l5w-1; Sun, 01 Aug 2021 16:51:18 -0400
X-MC-Unique: aWHC1yBfN-2VQWLdDU9l5w-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id E6122801A92;
	Sun,  1 Aug 2021 20:51:13 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 9E49B60C4A;
	Sun,  1 Aug 2021 20:51:12 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 856634A7C8;
	Sun,  1 Aug 2021 20:51:11 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 171Kp7KE022276 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 1 Aug 2021 16:51:07 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id ED5CB112D18B; Sun,  1 Aug 2021 20:51:06 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E8F69112D18A
	for <blinux-list@redhat.com>; Sun,  1 Aug 2021 20:51:04 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 76BA0185A794
	for <blinux-list@redhat.com>; Sun,  1 Aug 2021 20:51:04 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-276-bV5X61ITOBSKJAd67v854w-1; Sun, 01 Aug 2021 16:51:02 -0400
X-MC-Unique: bV5X61ITOBSKJAd67v854w-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4GdCw55tkGz3qgy
	for <blinux-list@redhat.com>; Sun,  1 Aug 2021 16:51:01 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4GdCw556v4zcbc; Sun,  1 Aug 2021 16:51:01 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4GdCw54htPzcbP
	for <blinux-list@redhat.com>; Sun,  1 Aug 2021 16:51:01 -0400 (EDT)
Date: Sun, 1 Aug 2021 16:51:01 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: I'm cured of clear archlinux installs
In-Reply-To: <70766e12-5532-ce39-f6e0-fbad282ed18b@gmail.com>
Message-ID: <alpine.NEB.2.23.451.2108011645490.6857@panix1.panix.com>
References: <alpine.NEB.2.23.451.2107312319020.3719@panix1.panix.com>
	<D28B6FA8-3AC3-4031-B230-3437923E242B@gmail.com>
	<70766e12-5532-ce39-f6e0-fbad282ed18b@gmail.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
X-MIME-Autoconverted: from QUOTED-PRINTABLE to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 171Kp7KE022276
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SSBoYXZlIGluc3RhbGxlZCBhbmQgdXNlZCBhcmNobGludXggZm9yIHNldmVyYWwgeWVhcnMgYnkg
bm93LgpJIGxlYXJuZWQgVW5peCBvbiB0aGUgam9iIGluIDE5OTAgYmVmb3JlIExpbnV4IGFuZCB0
aGUgZmlyc3QgTGludXggZGlzdHJvCkkgZ290IGluc3RhbGxlZCBhbmQgdGFsa2luZyBhZnRlciBh
IHllYXIgb2YgdHJ5aW5nIHdhcyBSZWRoYXQgNS4wIGJhY2sKd2hlbiBTdGFwbGVzIHNvbGQgaXQg
YW5kIFJlZGhhdCA1LjAgd2FzIGhvdC4gIE90aGVyIGRpc3Ryb3Mgc2luY2UgdGhlbgppbmNsdWRp
bmcgU2xhY2t3YXJlIGFuZCBEZWJpYW4gYW5kIGEgZmV3IHZlcnNpb25zIG9mIEZlZG9yYSBhbmQg
dWJ1bnR1LgpTbyB0aGlzIGlzbid0IG15IGZpcnN0IHJvZGVvLgpJIGRvbid0IGNvbnNpZGVyIGFy
Y2hsaW51eCB0aGUgbW9zdCBjb21wbGV4IGluc3RhbGwgZWl0aGVyLiAgSSByZXNlcnZlIHRoZQpt
b3N0IGNvbXBsZXggaW5zdGFsbCBmb3IgZ2VudG9vLgpJIGZvcmdvdCB0byBtZW50aW9uIGRlYnVh
biB2aW51eCBzb25hci1saW51eCBncm1sIHN1c2UgdHVtYmxld2VlZCBhbmQKYW50ZXJnb3MuCgoK
T24gU3VuLCAxIEF1ZyAyMDIxLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIHdy
b3RlOgoKPiBEZWJpYW4gSXMgYWxzbyBhIGdvb2Qgb3BzaW9uLsKgIEJUVywgSGF2ZSB0aGV5IGZp
eGVkIHRoZSBwcm9ibGVtIHdpdGggYWxzYQo+IGNhdXNpbmcgb3JjYSB0byBub3Qgd29yayBjb3Jl
Y3RseT/CoCBJIGhhdmUgdHJpZWQgc2V2ZXJhbCBmZWRvcmEgcmF3aGlkZSBpbWFnZQo+IGFuZCBn
b3Qgbm90IHNwZWNoIGFzIHdlbGwgYXMgdGhlIDM0IHN0YWJsZSBpbWFnZXMuwqAgVGhhbmtzLgo+
Cj4KPgo+Cj4gT24gOC8xLzIwMjEgMzo0MCBBTSwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlz
Y3Vzc2lvbiB3cm90ZToKPiA+IEkgYmVsaWV2ZSB0aGF0IEFyY2ggaXMgZm9yICphZHZhbmNlZCog
TGludXggdXNlcnMuIFRob3NlIHdobyBhcmUgcHVzaGluZwo+ID4gQXJjaCBvbiB0aG9zZSB3aG8g
YXJlbj90IHJlYWR5IGZvciBpdCBqdXN0IGRvbj90IHNlZW0gdG8gZ2V0IGhvdyBtdWNoIG1vcmUK
PiA+IGFkdmFuY2VkIGludG8gTGludXggdGhleSBhcmUgY29tcGFyZWQgdG8gb3RoZXIgdXNlcnMu
IEk/ZCBzYXkgdHJ5IEZlZG9yYSBpZgo+ID4geW91IHdhbnQgc29tZXRoaW5nIGxpa2UgYSByb2xs
aW5nIHJlbGVhc2Ugd2l0aCBtYW55IGNvbnRyaWJ1dG9ycy4KPiA+IERldmluIFByYXRlcgo+ID4g
ci5kLnQucHJhdGVyQGdtYWlsLmNvbQo+ID4KPiA+IEh0dHBzOi8vZGV2aW5wcmF0ZXIuZmxvdW5k
ZXIub25saW5lCj4gPgo+ID4+IE9uIEp1bCAzMSwgMjAyMSwgYXQgMTA6MjQgUE0sIExpbnV4IGZv
ciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24KPiA+PiA8YmxpbnV4LWxpc3RAcmVkaGF0LmNvbT4g
d3JvdGU6Cj4gPj4KPiA+PiBhbHNhIGRvZXNuJ3Qgd29yayBwb3N0LWluc3RhbGw7IGVzcGVhay1u
ZyBhbmQgZXNwZWFrLW5nLWVzcGVhayBjb25mbGljdAo+ID4+IHdpdGggZXNwZWFrIHdoaWNoIHdv
dWxkIG5vcm1hbGx5IG5vdCBiZSBhIHByb2JsZW0gZXhjZXB0IHNwZC1jb25mIHBhcnQgb2YKPiA+
PiBzcGVlY2gtZGlzcGF0Y2hlciBjYW4ndCBydW4gYW5kIHNldCBhbHNhIGFzIGRlZmF1bHQgb3V0
cHV0IHdpdGggcHVsc2VhdWRpbwo+ID4+IG9uIHRoZSBzeXN0ZW0uICBJZiBJIHdlcmUgdG8gdXNl
IHB1bHNlYXVkaW8gYXMgb3V0cHV0IGZvcgo+ID4+IHNwZWVjaC1kaXNwYXRjaGVyIGFuZCBtYXli
ZSBnZXQgZXNwZWFrLW5nIHVwIGFuZCB3b3JraW5nIHB1bHNlYXVkaW8gYmxvY2tzCj4gPj4gYWxs
IG1lZGlhIHBsYXllcnMuCj4gPj4gV2hhdCdzIHdvcnNlIG5vIGRvY3VtZW50YXRpb24gaW4gYXJj
aHdpa2kgZm9yIGhvdyB0byBpbnN0YWxsIGVzcGVhay1uZwo+ID4+IHRoYXQncyByZWFkYWJsZSBp
biBFbmdsaXNoLgo+ID4+IEkgbWlnaHQgYmUgYWJsZSB0byBnZXQgamVudXggcnVubmluZyBlc3Bl
YWstbmcsIHRoYXQncyBteSBuZXh0IHByb2plY3QuCj4gPj4KPiA+PiBfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+ID4+IEJsaW51eC1saXN0IG1haWxpbmcg
bGlzdAo+ID4+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPiA+PiBodHRwczovL2xpc3RtYW4ucmVk
aGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4gPj4KPiA+IF9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gPiBCbGludXgtbGlzdCBtYWls
aW5nIGxpc3QKPiA+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPiA+IGh0dHBzOi8vbGlzdG1hbi5y
ZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPgo+IF9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gQmxpbnV4LWxpc3QgbWFpbGluZyBs
aXN0Cj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29t
L21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPgoKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgt
bGlzdEByZWRoYXQuY29tCmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGlu
Zm8vYmxpbnV4LWxpc3Q=

