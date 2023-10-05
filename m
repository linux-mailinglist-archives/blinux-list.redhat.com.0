Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 55ECA7BA9A6
	for <lists+blinux-list@lfdr.de>; Thu,  5 Oct 2023 20:59:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1696532379;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=aXBB/73xgEFM0ZCC+ADYytFr35k61auArq5LShn4sLc=;
	b=d4Wrs8USXJEHpNGoRKMSkKV7UZC2moKMoIKxJmPHHnipEe1h5yNW9dBfJwu6zZWsQF+DgN
	1W2SmenQCCEcVOhE5uMKfWXIA88ZDBjgLmNBCNNBh70dZvFs1QsDJZOVmipAGeLVFGtcm9
	fDkOkM33T/2tKQ6XZ2QXAKXHa49Grvw=
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-176-9hH69NZdMv6nshKAYCp6vg-1; Thu, 05 Oct 2023 14:59:30 -0400
X-MC-Unique: 9hH69NZdMv6nshKAYCp6vg-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com [10.11.54.2])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 61CD03822E9F;
	Thu,  5 Oct 2023 18:59:28 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 2DD3D40C6EC0;
	Thu,  5 Oct 2023 18:59:28 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 9E47919465B1;
	Thu,  5 Oct 2023 18:59:27 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Thu, 5 Oct 2023 14:59:19 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Intro.
In-Reply-To: <mailman.1524.1696527438.2981445.blinux-list@redhat.com>
References: <mailman.776.1696418321.2981445.blinux-list@redhat.com>
 <mailman.784.1696420428.2981444.blinux-list@redhat.com>
 <mailman.1346.1696489387.2981448.blinux-list@redhat.com>
 <mailman.1572.1696525144.2981444.blinux-list@redhat.com>
 <mailman.1524.1696527438.2981445.blinux-list@redhat.com>
MIME-Version: 1.0
Message-ID: <mailman.1585.1696532367.2981449.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.2
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

U2xpbnQgaXMgYW4gaXNvIGFuZCBpcyBhdmFpbGFibGUgYXMgYSB0b3JyZW50LgpodHRwczovL3Ns
YWNrd2FyZS51ay9zbGludC94ODZfNjQvc2xpbnQtMTUuMC9pc28vc2xpbnQ2NC0xNS4wLTUuaXNv
LnNoYTI1NgpodHRwczovL3NsYWNrd2FyZS51ay9zbGludC94ODZfNjQvc2xpbnQtMTUuMC9pc28v
c2xpbnQ2NC0xNS4wLTUuaXNvCgpJZiB5b3UgaGF2ZSBzaGEyNTZzdW0gb24geW91ciBtYWNoaW5l
IHJ1biB0aGUgZm9sbG93aW5nIGNvbW1hbmQgYW5kIGlmIGl0CnJldHVybnMgdGhlIG5hbWUgb2Yg
dGhlIGlzbyBmb2xsb3dlZCBieSBvayB5b3UgbGlrZWx5IGdvdCBhIGdvb2QgZG93bmxvYWQuCnNo
YTI1NnN1bSAtYyBodHRwczovL3NsYWNrd2FyZS51ay9zbGludC94ODZfNjQvc2xpbnQtMTUuMC9p
c28vc2xpbnQ2NC0xNS4wLTUuaXNvLnNoYTI1NgotLSAKSnVkZSA8amRhc2hpZWwgYXQgcGFuaXgg
ZG90IGNvbT4KIlRoZXJlIGFyZSBmb3VyIGJveGVzIHRvIGJlIHVzZWQgaW4gZGVmZW5zZSBvZiBs
aWJlcnR5Ogpzb2FwLCBiYWxsb3QsIGp1cnksIGFuZCBhbW1vLgpQbGVhc2UgdXNlIGluIHRoYXQg
b3JkZXIuIgpFZCBIb3dkZXJzaGVsdCAxOTQwLgoKT24gVGh1LCA1IE9jdCAyMDIzLCBMaW51eCBm
b3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIHdyb3RlOgoKPiBIaSBpcyAgdGhpcyBhIGJpc3Ry
bywgb3IgIGEgcGFja2FnZSB0aGF0IGNhbiBiZSBkb3dubG9hZGVkPyBJZiB0aGlzIGlzICBwYWNr
YWdlIGNhbiAgaXQuIFJ1biB1bmRlciBVYnVudHUsIG9yIGRpZmZlcmVudC4KPgo+Cj4KPiA+IE9u
IE9jdCA1LCAyMDIzLCBhdCAxNjo1OCwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lv
biA8YmxpbnV4LWxpc3RAcmVkaGF0LmNvbT4gd3JvdGU6Cj4gPgo+ID4gSSdtIGdvaW5nIHRvIHJl
Y29tbWVuZCBzbGludCBhbmQgSSByZWNvbW1lbmQgd2hlbiB5b3UgaW5zdGFsbCBzbGludCB0bwo+
ID4gc3RhcnQgaW4gY29uc29sZS4gIFRoZSByZWFzb24gdG8gc3RhcnQgaW4gY29uc29sZSBpcyB5
b3UgbG9nIGluIGluCj4gPiBjb25zb2xlLiAgVGhlIHN0YXJ0eCBzY3JpcHQgeW91IHJ1biBhZnRl
ciBsb2dpbi4gIElmIGZvciB3aGF0ZXZlciByZWFzb24KPiA+IHlvdXIgZ3JhcGhpY2FsIGVudmly
b25tZW50IGZhaWxzIHRvIHdvcmssIHlvdSBhdCBsZWFzdCBoYXZlIGEgY2hhbmNlIHRvIGRvCj4g
PiBzb21ldGhpbmcgYWJvdXQgaXQgc2luY2UgeW91J3JlIGFscmVhZHkgbG9nZ2VkIGluLiAgVGhl
IG5pZ2h0bWFyZQo+ID4gc2l0dWF0aW9uIGZvciBncmFwaGljYWwgdXNlcnMgd2hvIHN0YXJ0IGlu
IGdyYXBoaWNzIG1vZGUgaXMgdGhlaXIgbG9naW4KPiA+IGRvZXNuJ3Qgd29yayBhbmQgdGhlbiB0
aGV5IGhhdmUgYSBwYXBlcndlaWdodCB1bnRpbCB0aGV5IHJlaW5zdGFsbCB0aGUKPiA+IHN5c3Rl
bS4KPiA+Cj4gPgo+ID4gLS0gSnVkZSA8amRhc2hpZWwgYXQgcGFuaXggZG90IGNvbT4gIlRoZXJl
IGFyZSBmb3VyIGJveGVzIHRvIGJlIHVzZWQgaW4KPiA+IGRlZmVuc2Ugb2YgbGliZXJ0eTogc29h
cCwgYmFsbG90LCBqdXJ5LCBhbmQgYW1tby4gUGxlYXNlIHVzZSBpbiB0aGF0Cj4gPiBvcmRlci4i
IEVkIEhvd2RlcnNoZWx0IDE5NDAuCj4gPgo+ID4gT24gVGh1LCA1IE9jdCAyMDIzLCBMaW51eCBm
b3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIHdyb3RlOgo+ID4KPiA+PiBIZWxsbywgSSBjYW4g
dGVsbCB0aGUgZGlmZmVyZW5jZSBiZXR3ZWVuIGxpZ2h0IGFuZCBkYXJrLiBJIGhhdmUgdXNlZCBh
bGwgd2luZG93cyBPUyBzeXN0ZW1zIGZyb20gd2F5IGJhY2sgd2luZG93czcsIEJpbGx5Cj4gPj4K
PiA+PiBTZW50IGZyb20gTWFpbCBmb3IgV2luZG93cwo+ID4+Cj4gPj4gRnJvbTogTGludXggZm9y
IGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbgo+ID4+IFNlbnQ6IDA0IE9jdG9iZXIgMjAyMyAxMjo1
Mwo+ID4+IFRvOiBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uCj4gPj4gU3ViamVj
dDogUmU6IEludHJvLgo+ID4+Cj4gPj4gQSBjb3VwbGUgcXVlc3Rpb25zLgo+ID4+IEluIHlvdXIg
Y2FzZSBpcyBibGluZCBkZWZpbmVkIGFzIG5vIHVzZWFibGUgdmlzaW9uIGluY2x1ZGluZyBubyBh
YmlsaXR5IHRvCj4gPj4gc2VlIGxpZ2h0Pwo+ID4+IFdoYXQgb3BlcmF0aW5nIHN5c3RlbSBvciBv
cGVyYXRpbmcgc3lzdGVtcyBkaWQgeW91IHVzZSBiZWZvcmUgTGludXg/Cj4gPj4gQW5zd2VycyB0
byB0aGVzZSB0d28gcXVlc3Rpb25zIG91Z2h0IHRvIGhlbHAgdGhlIGxpc3QgZ2V0IHlvdSBiZXR0
ZXIKPiA+PiBndWlkZWFuY2UuCj4gPj4KPiA+Pgo+ID4+IC0tIEp1ZGUgPGpkYXNoaWVsIGF0IHBh
bml4IGRvdCBjb20+ICJUaGVyZSBhcmUgZm91ciBib3hlcyB0byBiZSB1c2VkIGluCj4gPj4gZGVm
ZW5zZSBvZiBsaWJlcnR5OiBzb2FwLCBiYWxsb3QsIGp1cnksIGFuZCBhbW1vLiBQbGVhc2UgdXNl
IGluIHRoYXQKPiA+PiBvcmRlci4iIEVkIEhvd2RlcnNoZWx0IDE5NDAuCj4gPj4KPiA+PiBPbiBX
ZWQsIDQgT2N0IDIwMjMsIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6
Cj4gPj4KPiA+Pj4gSGkgZ3V5cywgc28gZ2xhZCB0byBiZSBqb2luaW5nIHRoaXMgZ3JvdXAuIEkg
a25vdyBub3RoaW5nIGFib3V0IExpbnV4IHBsYXRmb3JtIGJ1dCB3b3VsZCBsaWtlIHRvIHRyeSBM
aW51eCBmb3IgbXlzZWxmLiBUaGUgcHJvYmxlbSBpcyBJIHdvdWxkbuKAmXQga25vdyB3aGljaCB2
ZXJzaW9uIHRvIHRyeSBvdXQgZmlyc3QgYW5kIHRoYXQgaXMgb25lIHJlYXNvbiBmb3Igam9pbmlu
ZyB0aGlzIGdyb3VwLiBJIGFtIGEgYmxpbmQgcGVuc2lvbmVyIGxpdmluZyBpbiBTY290bGFuZCBV
Sy4gSUYgeW91IGNvdWxkIHByb3ZpZGUgbWUgd2l0aCBoZWxwL2FkdmljZSBvbiB3aGljaCB2ZXJz
aW9uIG9mIExpbnV4IHdvdWxkIGJlIGJlc3QgZm9yIG1lIEkgd291bGQgYXBwcmVjaWF0ZSBpdCBp
bmRlZWQsIEJpbGx5Cj4gPj4+Cj4gPj4+IFNlbnQgZnJvbSBNYWlsIGZvciBXaW5kb3dzCj4gPj4+
Cj4gPj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4g
Pj4+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+ID4+PiBCbGludXgtbGlzdEByZWRoYXQuY29t
Cj4gPj4+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4
LWxpc3QKPiA+Pj4KPiA+Pgo+ID4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCj4gPj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4gPj4gQmxpbnV4LWxp
c3RAcmVkaGF0LmNvbQo+ID4+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlz
dGluZm8vYmxpbnV4LWxpc3QKPiA+Pgo+ID4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCj4gPj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4gPj4gQmxp
bnV4LWxpc3RAcmVkaGF0LmNvbQo+ID4+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxt
YW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPiA+Pgo+ID4KPiA+IF9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gPiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QK
PiA+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPiA+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29t
L21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPgo+IF9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4gQmxp
bnV4LWxpc3RAcmVkaGF0LmNvbQo+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4v
bGlzdGluZm8vYmxpbnV4LWxpc3QKPgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51eC1saXN0QHJlZGhh
dC5jb20KaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgt
bGlzdAo=

