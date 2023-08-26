Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id B3C4678950F
	for <lists+blinux-list@lfdr.de>; Sat, 26 Aug 2023 11:17:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1693041445;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=5nSPNRQk6DlV2romhYKAja2xOkVCvOe3deckoEzZtrQ=;
	b=EUfKFhlacQwfItMn6qAdeZkBmcERDD6r6e7cfP/HTRfbYih/qULMT9SRL+dKvoyhLMJ9t0
	rGT1b4v8Ea8c7ICE/895B2nxyytM9fu/dWpJd8VwTsH63LPttbOqrRdeLjesxW0zRQyWsI
	hkaHCj/e2njvEUozovyRmSOUny9g3UU=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-682-9midoXHlOzCVG5AUnZGM5Q-1; Sat, 26 Aug 2023 05:17:20 -0400
X-MC-Unique: 9midoXHlOzCVG5AUnZGM5Q-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com [10.11.54.3])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 6562E8D40A1;
	Sat, 26 Aug 2023 09:17:19 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 558541121319;
	Sat, 26 Aug 2023 09:17:14 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id B2EE919465B8;
	Sat, 26 Aug 2023 09:17:13 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Sat, 26 Aug 2023 05:17:08 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: microknoppix download
In-Reply-To: <mailman.18.1693035882.1829984.blinux-list@redhat.com>
References: <mailman.1740.1692953847.18723.blinux-list@redhat.com>
 <mailman.1821.1692956046.18725.blinux-list@redhat.com>
 <mailman.1702.1692956975.18731.blinux-list@redhat.com>
 <mailman.1703.1692957281.18731.blinux-list@redhat.com>
 <mailman.1788.1692969348.18730.blinux-list@redhat.com>
 <mailman.1765.1692969505.18727.blinux-list@redhat.com>
 <mailman.1969.1692973663.18729.blinux-list@redhat.com>
 <mailman.18.1693035882.1829984.blinux-list@redhat.com>
MIME-Version: 1.0
Message-ID: <mailman.13.1693041432.1829977.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.3
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SSBnb3QgS05PUFBJWF85LjFEVkQgZG93bmxvYWRpbmcgd2l0aCBjdG9ycmVudCBhbmQgSSBoYXZl
IHRoZSBkYWVtb24KcnVubmluZy4gIEkgd2FzIGFibGUgdG8gdmVyaWZ5IHRoaXMgc2luY2UgdGhp
cyBwYWNrYWdlIGNyZWF0ZXMgaXRzIG93bgpzdWJkaXJlY3RvcnkgYW5kIGNoZWNraW5nIGluIHRo
YXQgc3ViZGlyZWN0b3J5IGZvdW5kIHRoZSBmaWxlcyBpdCB3YXMKZG93bmxvYWRpbmcuCgoKLS0g
SnVkZSA8amRhc2hpZWwgYXQgcGFuaXggZG90IGNvbT4gIlRoZXJlIGFyZSBmb3VyIGJveGVzIHRv
IGJlIHVzZWQgaW4KZGVmZW5zZSBvZiBsaWJlcnR5OiBzb2FwLCBiYWxsb3QsIGp1cnksIGFuZCBh
bW1vLiBQbGVhc2UgdXNlIGluIHRoYXQKb3JkZXIuIiBFZCBIb3dkZXJzaGVsdCAxOTQwLgoKT24g
U2F0LCAyNiBBdWcgMjAyMywgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90
ZToKCj4gQW5vdGhlciBlcnJvciA0MDQuCj4KPgo+IC0tCj4gSnVkZSA8amRhc2hpZWwgYXQgcGFu
aXggZG90IGNvbT4KPiAiVGhlcmUgYXJlIGZvdXIgYm94ZXMgdG8gYmUgdXNlZCBpbiBkZWZlbnNl
IG9mIGxpYmVydHk6Cj4gc29hcCwgYmFsbG90LCBqdXJ5LCBhbmQgYW1tby4KPiBQbGVhc2UgdXNl
IGluIHRoYXQgb3JkZXIuIgo+IEVkIEhvd2RlcnNoZWx0IDE5NDAuCj4KPiBPbiBGcmksIDI1IEF1
ZyAyMDIzLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIHdyb3RlOgo+Cj4gPiBE
b24ndCBrbm93IHdoYXRzIGdvaW5nIHdyb25nLgo+ID4gVHJ5IGl0IGluIHR3byBzdGVwcyAoYm90
aCBjb21tYW5kcyBhcyBvbmUgbGluZSkuCj4gPiBEb3dubG9hZCB0aGUgdHJhY2tlciBmaWxlOgo+
ID4KPiA+IHdnZXQKPiA+ICJodHRwOi8vdG9ycmVudC51bml4LWFnLnVuaS1rbC5kZS90b3JyZW50
cy9LTk9QUElYX1Y5LjFDRC0yMDIxLTAxLTI1LUVOLnRvcnJlbnQiCj4gPgo+ID4gRG93bmxvYWQg
dGhlIGRhdGEgdG8gZGVzaXJlZCBkaXJlY3RvcnkgKC13IFBBVEgpOgo+ID4KPiA+IHRyYW5zbWlz
c2lvbi1jbGkgLXcgfi90bXAgS05PUFBJWF9WOS4xQ0QtMjAyMS0wMS0yNS1FTi50b3JyZW50Cj4g
Pgo+ID4gVGhpcyB3b3JrZWQgZm9yIG1lIHRlc3RpbmcgaXQgb25seSBhIG1pbnV0ZSBhZ28uCj4g
PiBIVEgKPiA+IGd1ZW50ZXIKPiA+Cj4gPiBBbSAyNS4wOC4yMyB1bSAxNToxOCBzY2hyaWViIExp
bnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb246Cj4gPiA+IEludGVyZXN0aW5nLCBJIG9u
bHkgZ290IDEgZm9yIGFuIGVycm9yIHZhbHVlIGFuZCB0aGF0J3MgZ29vZCB0byBrbm93IGZvcgo+
ID4gPiB3cml0aW5nIHNjcmlwdHMuCj4gPiA+Cj4gPiA+Cj4gPiA+IC0tIEp1ZGUgPGpkYXNoaWVs
IGF0IHBhbml4IGRvdCBjb20+ICJUaGVyZSBhcmUgZm91ciBib3hlcyB0byBiZSB1c2VkIGluCj4g
PiA+IGRlZmVuc2Ugb2YgbGliZXJ0eTogc29hcCwgYmFsbG90LCBqdXJ5LCBhbmQgYW1tby4gUGxl
YXNlIHVzZSBpbiB0aGF0Cj4gPiA+IG9yZGVyLiIgRWQgSG93ZGVyc2hlbHQgMTk0MC4KPiA+ID4K
PiA+ID4gT24gRnJpLCAyNSBBdWcgMjAyMywgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vz
c2lvbiB3cm90ZToKPiA+ID4KPiA+ID4+IEkgZ290IGVycm9yIDQwNCB3aGVuIHVzaW5nIHRoYXQg
dXJsIGluIGxmdHAgYW5kIHRyYW5zbWlzc2lvbi1jbGkgc2ltcGx5Cj4gPiA+PiBmYWlsZWQgdG8g
ZG93bmxvYWQuICBXaGF0IEknbSBnb2luZyB0byBkbyBuZXh0IHRvIGhlbHAgbXkgbGVhcm5pbmcg
aXMgdG8KPiA+ID4+IHJ1biBpdCBpbiBsZnRwIG9uIGEgc2luZ2xlIGxpbmUgYW5kIHRoZW4gY2Fw
dHVyZSB0aGUgZXJyb3IgdmFsdWUgdGhhdAo+ID4gPj4gcmV0dXJucyB3aXRoICQ/LiAgVGhpcyB3
YXkgSSBjYW4gaW1wcm92ZSBteSBvd24gc2NyaXB0IHdyaXRpbmcuCj4gPiA+Pgo+ID4gPj4KPiA+
ID4+IC0tCj4gPiA+PiBKdWRlIDxqZGFzaGllbCBhdCBwYW5peCBkb3QgY29tPgo+ID4gPj4gIlRo
ZXJlIGFyZSBmb3VyIGJveGVzIHRvIGJlIHVzZWQgaW4gZGVmZW5zZSBvZiBsaWJlcnR5Ogo+ID4g
Pj4gc29hcCwgYmFsbG90LCBqdXJ5LCBhbmQgYW1tby4KPiA+ID4+IFBsZWFzZSB1c2UgaW4gdGhh
dCBvcmRlci4iCj4gPiA+PiBFZCBIb3dkZXJzaGVsdCAxOTQwLgo+ID4gPj4KPiA+ID4+IE9uIEZy
aSwgMjUgQXVnIDIwMjMsIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6
Cj4gPiA+Pgo+ID4gPj4+IEFuZCB0aGUgdG9ycmVudCBmb3IgdGhlIENEIGltYWdlICg2NjggbWVn
YWJ5dGVzIG9ubHkgdmVyc3VzIGFib3ZlIERWRAo+ID4gPj4+IGltYWdlIG9mCj4gPiA+Pj4gNC4z
NyBHQikgaXMgaGVyZToKPiA+ID4+PiBodHRwOi8vdG9ycmVudC51bml4LWFnLnVuaS1rbC5kZS90
b3JyZW50cy9LTk9QUElYX1Y5LjFDRC0yMDIxLTAxLTI1LUVOLnRvcnJlbnQKPiA+ID4+Pgo+ID4g
Pj4+Pj4gQW0gMjUuMDguMjMgdW0gMTA6NTcgc2NocmllYiBMaW51eCBmb3IgYmxpbmQgZ2VuZXJh
bCBkaXNjdXNzaW9uOgo+ID4gPj4+Pj4+IEhhcyBhbnlvbmUgZ290IGEgZG93bmxvYWQgdGhhdCBj
YW4gZG93bmxvYWQgdGhlIGxhdGVzdCBlbmdsaXNoIHZlcnNpb24KPiA+ID4+Pj4+PiBvZgo+ID4g
Pj4+Pj4+IG1pY3Jva25vcHBpeD/CoCBFdmVyeW9uZSBvZiB0aGUgbWlycm9ycyBvbmx5IGhhcyBn
ZXJtYW4gdGV4dCBvbiBpdCBhbmQgSQo+ID4gPj4+Pj4+IGRpZG4ndCBzdHVkeSB0aGF0IGxhbmd1
YWdlIGVub3VnaCB0byB1bmRlcnN0YW5kIHRoZSB3ZWJzaXRlJ3MgY29udGVudC4KPiA+ID4+Pj4+
PiBJJ20gaGF2aW5nIGJldHRlciBsdWNrIGRvd25sb2FkaW5nIHRocm91Z2ggYml0dG9ycmVudCB0
aGVzZSBkYXlzIHRoYW4KPiA+ID4+Pj4+PiB3aXRoCj4gPiA+Pj4+Pj4gb3RoZXIgZG93bmxvYWRl
cnMgZ2l2ZW4gdGhlIGxvdyBncmFkZSBvZiB2ZXJpem9uIGZpb3MgY29ubmVjdGl2aXR5Lgo+ID4g
Pj4+Pj4+IHdnZXQgZm9yIGluc3RhbmNlIGlzIGRvd25sb2FkaW5nIGlzbydzIHRoYXQgZmFpbCBz
aGEyNTZzdW0gLWMgdGVzdHMKPiA+ID4+Pj4+PiBvbmNlCj4gPiA+Pj4+Pj4gZG93bmxvYWRlZCBh
bmQgaXQgZG9lcyB0aGF0IHBlcnNpc3RlbnRseS4KPiA+ID4+Pgo+ID4gLS0KPiA+IC4KPiA+Cj4g
PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+ID4gQmxp
bnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4gPiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4gPiBodHRw
czovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4gPgo+
ID4KPgo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4g
QmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+IGh0dHBz
Oi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPgoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQmxpbnV4LWxpc3Qg
bWFpbGluZyBsaXN0CkJsaW51eC1saXN0QHJlZGhhdC5jb20KaHR0cHM6Ly9saXN0bWFuLnJlZGhh
dC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo=

