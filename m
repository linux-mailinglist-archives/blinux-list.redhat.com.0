Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 804384459DF
	for <lists+blinux-list@lfdr.de>; Thu,  4 Nov 2021 19:39:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1636051194;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=0QOtZcanstlNfkxWZ3ocLsM6uzATbJEZr02KExmm2Sk=;
	b=AHsxi9aY4pcBawCti6PTuJqQd+pUnLoJ8Id/HnmetAO5qn2UDm+MbIhPmfKPVxln13xwBi
	a4ZIC8vCpycZ1hefjY2yARAtkl7PhnJnA4Ba3vBkB87HlA1nS9weCOcRl9qZf3RBqlYtGI
	GE3sKZrJRViiQpcG+1CFx7yvynDjG80=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-592-OCx6SpLQOKilnv8sCq2Khg-1; Thu, 04 Nov 2021 14:39:51 -0400
X-MC-Unique: OCx6SpLQOKilnv8sCq2Khg-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 95FB08066F4;
	Thu,  4 Nov 2021 18:39:47 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id DA30F19723;
	Thu,  4 Nov 2021 18:39:46 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id CBA441806D04;
	Thu,  4 Nov 2021 18:39:43 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1A4Idc4u011554 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 4 Nov 2021 14:39:39 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id ACE9B2026D69; Thu,  4 Nov 2021 18:39:38 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A74182026D65
	for <blinux-list@redhat.com>; Thu,  4 Nov 2021 18:39:35 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 9EEFD899EC1
	for <blinux-list@redhat.com>; Thu,  4 Nov 2021 18:39:35 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-314-E-jzpeI0N-mshDGunCJhOg-1; Thu, 04 Nov 2021 14:39:34 -0400
X-MC-Unique: E-jzpeI0N-mshDGunCJhOg-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4HlXVY4WT7z3lDN
	for <blinux-list@redhat.com>; Thu,  4 Nov 2021 14:39:33 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4HlXVY3mYBzcbc; Thu,  4 Nov 2021 14:39:33 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4HlXVY3P8SzcbP
	for <blinux-list@redhat.com>; Thu,  4 Nov 2021 14:39:33 -0400 (EDT)
Date: Thu, 4 Nov 2021 14:39:33 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: FYI - The Yggdrasil Screen Reader Project
In-Reply-To: <87825a97-2bc8-b8ed-38a6-87abeb41575f@seznam.cz>
Message-ID: <alpine.NEB.2.23.451.2111041438530.26686@panix1.panix.com>
References: <E5949DF0-363D-4D79-9E4A-5CB468223B5C@icloud.com>
	<1f2e65f8-3d25-a02f-39d3-59e80f4270af@gmail.com>
	<C4D8F75A-ADC8-4F6F-8F4C-9AE2BB8B0792@cfcl.com>
	<0156E832-953A-4EE3-BBC7-8ACB8FBE5DE3@icloud.com>
	<CAGJxbF4mikSfj9O8UVb3JJUhpOCwjzkB-G_vZPmMwaHMkRpmvA@mail.gmail.com>
	<Pine.LNX.4.64.2111041353520.673755@server2.shellworld.net>
	<87825a97-2bc8-b8ed-38a6-87abeb41575f@seznam.cz>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
X-MIME-Autoconverted: from QUOTED-PRINTABLE to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 1A4Idc4u011554
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

WW91IGRvbid0IHdhbnQgdG8gaW5zdGFsbCBwcm90b3R5cGVzIHVubGVzcyB5b3UncmUgcmVhbGx5
IGludG8Kc2VsZi1pbmZsaWN0ZWQgcGFpbi4KCgpPbiBUaHUsIDQgTm92IDIwMjEsIExpbnV4IGZv
ciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cgo+IEhlbGxvLAo+Cj4gYW5kIGhvdyBj
YW4gSSBpbnN0YWxsIHRoaXMgc2NyZWVucmVhZGVyIG9uIFVidW50dSBNYXRlPyBJcyBzb21lIHdh
eSB0byBoYXZlIGl0Cj4gaW5zdGFsbGVkIGluIFJwaT8KPgo+IHRoYW5rcyBhIGxvdC4KPgo+IEJl
c3QgcmVnYXJkcwo+Cj4gVm9qdGEuCj4KPiBEbmUgMDQuIDExLiAyMSB2IDE4OjU1IExpbnV4IGZv
ciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gbmFwc2FsKGEpOgo+ID4gLi5hbmQgb25seSBzb2Z0
d2FyZSBzb3VyY2VzLCB3aGljaCBhcmUgaW5jb25zaXN0ZW50Pwo+ID4gVGhlaXIgY2xhaW0gd2Fz
IHRvIHByb3ZpZGUgY2hvaWNlcyBJIGJlbGlldmUsIHNvIGlmIHRoZXkgYXJlIG5vdCBkb2luZyB0
aGF0Cj4gPiBtdWNoLCB3aGF0IG1ha2VzIGl0IHNvIHdvbmRlcmZ1bD8KPiA+IEthcmVuCj4gPgo+
ID4KPiA+Cj4gPiBPbiBUaHUsIDQgTm92IDIwMjEsIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRp
c2N1c3Npb24gd3JvdGU6Cj4gPgo+ID4+IEl0J3MgcHJvYmFibHkgdXNpbmcgc3BlZWNoLWRpc3Bh
dGNoZXIuCj4gPj4gRGV2aW4gUHJhdGVyCj4gPj4gci5kLnQucHJhdGVyQGdtYWlsLmNvbQo+ID4+
Cj4gPj4KPiA+Pgo+ID4+Cj4gPj4gT24gVGh1LCBOb3YgNCwgMjAyMSBhdCA4OjUwIEFNIExpbnV4
IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gPAo+ID4+IGJsaW51eC1saXN0QHJlZGhhdC5j
b20+IHdyb3RlOgo+ID4+Cj4gPj4+IEhpLAo+ID4+PiBIYXZlIGFueSBvZiB5b3UgdHJpZWQgdGhp
cyBuZXcgc2NyZWVuIHJlYWRlcj8KPiA+Pj4gSXMgaXQgdXNpbmcgU3BlYWs/Cj4gPj4+Cj4gPj4+
IFRoYW5rcywKPiA+Pj4gUm9iCj4gPj4+Cj4gPj4+Cj4gPj4+PiBPbiBOb3YgMSwgMjAyMSwgYXQg
OToyNiBQTSwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiA8Cj4gPj4+IGJsaW51
eC1saXN0QHJlZGhhdC5jb20+IHdyb3RlOgo+ID4+Pj4KPiA+Pj4+IEZXSVcsIEkganVzdCByYW4g
YWNyb3NzIHRoaXMgaW4gSGFja2VyIE5ld3MuLi4KPiA+Pj4+Cj4gPj4+Pj4gQWNjZXNzaWJpbGl0
eSBvbiBMaW51eCBoYXMgaGlzdG9yaWNhbGx5IGJlZW4gdW5kZXItZGV2ZWxvcGVkLAo+ID4+PiB1
bmRlci1tYWludGFpbmVkLCBhbmQsIHRoZXJlZm9yZSwgZ2FpbmVkIGEgcmVwdXRhdGlvbiBvZiBi
ZWluZyBxdWl0ZQo+ID4+PiBwYWluZnVsIHRvIHVzZSBhcyBhIGRhaWx5IGRyaXZlciBhbW9uZyBk
aXNhYmxlZCBwZW9wbGUuIFdlIHdhbnQgdG8gY2hhbmdlCj4gPj4+IHRoYXQuCj4gPj4+Pj4KPiA+
Pj4+PiBZZ2dkcmFzaWwgaXMgYSBuZXcgcHJvamVjdCB0aGF0IGFpbXMgdG8gY3JlYXRlIGEgYmV0
dGVyIExpbnV4IHNjcmVlbgo+ID4+PiByZWFkZXIsIHdyaXR0ZW4gaW4gUnVzdC4gVGhyb3VnaCB0
aGlzIHByb2plY3QsIHdlIGFpbSB0byBwcm92aWRlIGEgYmV0dGVyCj4gPj4+IHNjcmVlbiByZWFk
aW5nIGV4cGVyaWVuY2UgdGhhbiB0aGUgb25lIHdlIGN1cnJlbnRseSBoYXZlIGluIE9yY2EuIEEg
c2NyZWVuCj4gPj4+IHJlYWRlciB3aXRoIGFsbCB0aGUgbW9kZXJuIGZlYXR1cmVzIGEgV2luZG93
cyBvciBNYWNPUyB1c2VyIHdvdWxkIGV4cGVjdAo+ID4+PiBmcm9tIHRoZWlyIGNvbXB1dGVycywg
c29tZSBvZiB3aGljaCBhcmUgb3V0bGluZWQgYmVsb3cuCj4gPj4+Pj4KPiA+Pj4+PiDCoMKgwqDC
oCA/IE9iamVjdCBuYXZpZ2F0aW9uCj4gPj4+Pj4gwqDCoMKgwqAgPyBPQ1IKPiA+Pj4+PiDCoMKg
wqDCoCA/IGN1c3RvbWlzYWJsZSBuYXZpZ2F0aW9uIGNvbW1hbmRzCj4gPj4+Pj4gwqDCoMKgwqAg
PyBhIHBvd2VyZnVsIGFkZC1vbiBtZWNoYW5pc20KPiA+Pj4+PiDCoMKgwqDCoCA/IGFuZCBtb3Jl
Lgo+ID4+Pj4KPiA+Pj4+IFRoZSBZZ2dkcmFzaWwgU2NyZWVuIFJlYWRlciBQcm9qZWN0Cj4gPj4+
PiBodHRwczovL3lnZ2RyYXNpbC1zci5naXRodWIuaW8vCj4gPj4+PiBodHRwczovL25ld3MueWNv
bWJpbmF0b3IuY29tL2l0ZW0/aWQ9MjkwNTYxNjgKPiA+Pj4+Cj4gPj4+PiAtIFJpY2ggTW9yaW4K
PiA+Pj4+Cj4gPj4+Pgo+ID4+Pj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KPiA+Pj4+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+ID4+Pj4gQmxpbnV4
LWxpc3RAcmVkaGF0LmNvbQo+ID4+Pj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1h
bi9saXN0aW5mby9ibGludXgtbGlzdAo+ID4+Pgo+ID4+Pgo+ID4+PiBfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+ID4+PiBCbGludXgtbGlzdCBtYWlsaW5n
IGxpc3QKPiA+Pj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+ID4+PiBodHRwczovL2xpc3RtYW4u
cmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4gPj4gX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiA+PiBCbGludXgtbGlzdCBtYWls
aW5nIGxpc3QKPiA+PiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4gPj4gaHR0cHM6Ly9saXN0bWFu
LnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+ID4KPiA+IF9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gPiBCbGludXgtbGlzdCBt
YWlsaW5nIGxpc3QKPiA+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPiA+IGh0dHBzOi8vbGlzdG1h
bi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPiA+Cj4KPiBfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IEJsaW51eC1saXN0IG1h
aWxpbmcgbGlzdAo+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPiBodHRwczovL2xpc3RtYW4ucmVk
aGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4KCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QK
QmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFu
L2xpc3RpbmZvL2JsaW51eC1saXN0

