Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 73B7975D61F
	for <lists+blinux-list@lfdr.de>; Fri, 21 Jul 2023 23:02:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1689973339;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=MBzqELPR+5uB2fDH/us8EjLmC4NvjucAvomEotAjnhU=;
	b=isVg83hSmayFc7lZwIUVMwLNsrfUycIYymPkMsSbRtYL5WGvImATuR14d+8OSkf4fzRP70
	KH9/H++xibxsAGtWbtvJLrfzsoOeQ+LUlmLGVCP3ZON0fbIwH0uhGXMK55uQB79qwfY1ma
	m3nOoSw15as2W0Sd3b3Lx2IU0YVKTBY=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-146-gLK7LoCxPqWeNgvOJHD5cw-1; Fri, 21 Jul 2023 17:02:17 -0400
X-MC-Unique: gLK7LoCxPqWeNgvOJHD5cw-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com [10.11.54.5])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 8ABAD185A78B;
	Fri, 21 Jul 2023 21:02:14 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 6EA2810E55;
	Fri, 21 Jul 2023 21:02:11 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id B805019452C5;
	Fri, 21 Jul 2023 21:02:10 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Fri, 21 Jul 2023 17:02:06 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Fedora
In-Reply-To: <mailman.1751.1689962149.687817.blinux-list@redhat.com>
References: <mailman.1180.1689778383.687817.blinux-list@redhat.com>
 <mailman.1918.1689956956.687812.blinux-list@redhat.com>
 <mailman.1941.1689957918.687819.blinux-list@redhat.com>
 <mailman.1923.1689958082.687812.blinux-list@redhat.com>
 <mailman.2021.1689958710.687818.blinux-list@redhat.com>
 <mailman.1930.1689958957.687812.blinux-list@redhat.com>
 <mailman.2024.1689959176.687818.blinux-list@redhat.com>
 <mailman.2035.1689961781.687811.blinux-list@redhat.com>
 <mailman.1751.1689962149.687817.blinux-list@redhat.com>
MIME-Version: 1.0
Message-ID: <mailman.2063.1689973329.687811.blinux-list@redhat.com>
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

ZGlzYWJsaW5nIHRoZSBwb3dlciBhbmQgc2NyZWVuIHNhdmVyIHNldHRpbmdzIG1heSBoZWxwIG9y
Y2EgdGFsayBiZXR0ZXIuCgoKLS0gSnVkZSA8amRhc2hpZWwgYXQgcGFuaXggZG90IGNvbT4gIlRo
ZXJlIGFyZSBmb3VyIGJveGVzIHRvIGJlIHVzZWQgaW4KZGVmZW5zZSBvZiBsaWJlcnR5OiBzb2Fw
LCBiYWxsb3QsIGp1cnksIGFuZCBhbW1vLiBQbGVhc2UgdXNlIGluIHRoYXQKb3JkZXIuIiBFZCBI
b3dkZXJzaGVsdCAxOTQwLgoKT24gRnJpLCAyMSBKdWwgMjAyMywgTGludXggZm9yIGJsaW5kIGdl
bmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToKCj4gRGV2aW4sCj4KPiBJIGFtIGluIHRoZSBwcm9jZXNz
IG9mIGluc3RhbGxpbmcgaXQgbm93LiBTbyBvbmNlIGl0IGlzIGluc3RhbGxlZCBpIGd1ZXNzIGkK
PiB3aWxswqDCoCBnZXQgb3JjYSBvbiBhbmQgaG9lZnVsbHkgd2l0aCBubyBpc3N1ZXMuCj4KPiBy
b2RuZXkKPgo+Cj4gT24gNy8yMS8yMDIzIDEyOjQ5LCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBk
aXNjdXNzaW9uIHdyb3RlOgo+ID4gTm90IHRoYXQgSSBjYW4gcmVtZW1iZXIuIElmIEFsdCArIFdp
bmRvd3MgKyBTIG9yIEFsdCArIFdpbmRvd3MgKyBPIGRvZXNuJ3QKPiA+IHdvcmssIGhpdCBBbHQg
KyBGMiwgdHlwZSBvcmNhLCBhbmQgcHJlc3MgRW50ZXIuCj4gPiBEZXZpbiBQcmF0ZXIKPiA+IHIu
ZC50LnByYXRlckBnbWFpbC5jb20KPiA+Cj4gPgo+ID4KPiA+Cj4gPiBPbiBGcmksIEp1bCAyMSwg
MjAyMyBhdCAxMjowNuKAr1BNIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gPAo+
ID4gYmxpbnV4LWxpc3RAcmVkaGF0LmNvbT4gd3JvdGU6Cj4gPgo+ID4+IERldmluCj4gPj4KPiA+
PiB0aGFua3MsIGkgYW0gYXNzdW1pbmcgeW91IGRpZCBub3QgaGF2ZSBhbnkgaXNzdWVzIGdldHRp
bmcgT3JjYSB0byB0dXJuCj4gPj4gb24gYWZ0ZXIgdGhlIGluc3RhbGxhdGlvbj8KPiA+Pgo+ID4+
IFJvZG5leQo+ID4+Cj4gPj4KPiA+PiBPbiA3LzIxLzIwMjMgMTI6MDEsIExpbnV4IGZvciBibGlu
ZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4gPj4+IFRoZSBtYXRlIGltYWdlIHVzZXMgdGhl
IE1hdGUgZGVza3RvcC4gSXQgd29ya2VkIGxhc3QgdGltZSBJIHRyaWVkIGl0Cj4gPj4+IERldmlu
IFByYXRlcgo+ID4+PiByLmQudC5wcmF0ZXJAZ21haWwuY29tCj4gPj4+Cj4gPj4+Cj4gPj4+Cj4g
Pj4+Cj4gPj4+IE9uIEZyaSwgSnVsIDIxLCAyMDIzIGF0IDExOjU44oCvQU0gTGludXggZm9yIGJs
aW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiA8Cj4gPj4+IGJsaW51eC1saXN0QHJlZGhhdC5jb20+IHdy
b3RlOgo+ID4+Pgo+ID4+Pj4gSGFzIGFueW9uZSB1c2VkIHRoZSBGZWRvcmEtTUFURV9Db21waXot
TGl2ZS14ODZfNjQKPiA+Pj4+Cj4gPj4+PiB3aXRoIE9yY2EgdGhhdCBEaWRpZXIgICBqdXN0IHNl
bnQgbWUgbGlua3MgdG8/Cj4gPj4+Pgo+ID4+Pj4KPiA+Pj4+IGFsc28gaG93IGFjY2Vzc2libGUg
aXMgdGhlICBGZWRvcmEgd29ya3N0YXRpb24gMzg/Cj4gPj4+Pgo+ID4+Pj4gSSBhbSB0aGlua2lu
ZyB0aGF0IGl0IHVzZXMgdGhlIEdub21lIGRlc2t0b3AuCj4gPj4+Pgo+ID4+Pj4gSSBhbSBub3Qg
dGhhdCBmYW1pbGlhciB3aXRoIGhvdyB0byBnZXQgYXJvdW5kIGluIGdub21lIHNpbmNlIGkgaGF2
ZSBub3QKPiA+Pj4+IHVzZWQgZ25vbWUgZGVza3RvcCBzaW5jZSBWaW51eC4KPiA+Pj4+Cj4gPj4+
PiBSb2RuZXkKPiA+Cj4KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwo+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+IEJsaW51eC1saXN0QHJlZGhhdC5j
b20KPiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1s
aXN0Cj4KPgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
QmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51eC1saXN0QHJlZGhhdC5jb20KaHR0cHM6Ly9s
aXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo=

