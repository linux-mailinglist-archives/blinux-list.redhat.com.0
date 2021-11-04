Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FFAE445A73
	for <lists+blinux-list@lfdr.de>; Thu,  4 Nov 2021 20:10:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1636053045;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=6aNVIKsurV0+rgDFSzt541Z4+icl74Hee6jbFaRpvRI=;
	b=XmU5QRyGiuUnP7vHbaNL1fHhV473Ed+nFL8qoK+1/AwZ4j1Ytk+Yifqsoo+Jm0D7veSXAx
	Nq+XkwtZ0LoDvZc4z8Z5NbiBe/2afKp+CS2IT2VUBvOR3Kzqxitl2v9DvBGhWtkPSZ3CrD
	a+sXHiFg1m3o+Op/LkaJZxua7EPwfUo=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-226-9mvfGD4lMf-OV0Aw-t8_YA-1; Thu, 04 Nov 2021 15:10:41 -0400
X-MC-Unique: 9mvfGD4lMf-OV0Aw-t8_YA-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 1C713BD535;
	Thu,  4 Nov 2021 19:10:37 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id DA39760BF1;
	Thu,  4 Nov 2021 19:10:34 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 110C44EA2A;
	Thu,  4 Nov 2021 19:10:29 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com
	[10.11.54.1])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1A4JAOoI015450 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 4 Nov 2021 15:10:24 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 7B70F40CFD10; Thu,  4 Nov 2021 19:10:24 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 7422F40CFD0A
	for <blinux-list@redhat.com>; Thu,  4 Nov 2021 19:10:24 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 58DDE899EC1
	for <blinux-list@redhat.com>; Thu,  4 Nov 2021 19:10:24 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-21-MFG70ufjNzySIh0NTfZTcw-1; Thu, 04 Nov 2021 15:10:21 -0400
X-MC-Unique: MFG70ufjNzySIh0NTfZTcw-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4HlYB4689zz3nGW
	for <blinux-list@redhat.com>; Thu,  4 Nov 2021 15:10:20 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4HlYB45VwVzcbc; Thu,  4 Nov 2021 15:10:20 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4HlYB453QPzcbW
	for <blinux-list@redhat.com>; Thu,  4 Nov 2021 15:10:20 -0400 (EDT)
Date: Thu, 4 Nov 2021 15:10:20 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: FYI - The Yggdrasil Screen Reader Project
In-Reply-To: <alpine.NEB.2.23.451.2111041439440.26686@panix1.panix.com>
Message-ID: <alpine.NEB.2.23.451.2111041507290.1004@panix1.panix.com>
References: <E5949DF0-363D-4D79-9E4A-5CB468223B5C@icloud.com>
	<1f2e65f8-3d25-a02f-39d3-59e80f4270af@gmail.com>
	<C4D8F75A-ADC8-4F6F-8F4C-9AE2BB8B0792@cfcl.com>
	<0156E832-953A-4EE3-BBC7-8ACB8FBE5DE3@icloud.com>
	<CAGJxbF4mikSfj9O8UVb3JJUhpOCwjzkB-G_vZPmMwaHMkRpmvA@mail.gmail.com>
	<Pine.LNX.4.64.2111041353520.673755@server2.shellworld.net>
	<87825a97-2bc8-b8ed-38a6-87abeb41575f@seznam.cz>
	<alpine.NEB.2.23.451.2111041439440.26686@panix1.panix.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.1
X-MIME-Autoconverted: from QUOTED-PRINTABLE to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 1A4JAOoI015450
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

TGV0IG1lIHB1dCB0aGlzIGFub3RoZXIgd2F5LiAgRm9yIG5ldyBzb2Z0d2FyZSwgdGhlcmUgaXMg
YSBzaWduIHlvdSByZWFsbHkKc2hvdWxkIHJlYWQ6ICJDT05TVFJVQ1RJT04gWk9ORTogSEFSRCBI
QVRTIHdvcm4gYmV5b25kIHRoaXMgcG9pbnQhIi4gIElmCnlvdSBoYXZlIGEgSEFSRCBIQVQgYW5k
IGFyZSB3aWxsaW5nIHRvIGVudGVyIENPTlNUUlVDVElPTiBaT05FUywgYW5kIHlvdQphcmUgbm90
IGFmcmFpZCB0byBjb21waWxlIHNvdXJjZSBjb2RlIHByb2plY3RzIGxpa2UgdGhpcyBtYXkgZmxv
YXQgeW91cgpib2F0LgoKCk9uIFRodSwgNCBOb3YgMjAyMSwgTGludXggZm9yIGJsaW5kIGdlbmVy
YWwgZGlzY3Vzc2lvbiB3cm90ZToKCj4gVGhpcyBpcyBsaWtlbHkgYWxwaGF3YXJlIGF0IGJlc3Qg
bm93IGFuZCBhbHBoYSBjb21lcyBiZWZvcmUgYmV0YSBmb3IgYQo+IHJlYXNvbi4KPgo+Cj4gT24g
VGh1LCA0IE5vdiAyMDIxLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIHdyb3Rl
Ogo+Cj4gPiBIZWxsbywKPiA+Cj4gPiBhbmQgaG93IGNhbiBJIGluc3RhbGwgdGhpcyBzY3JlZW5y
ZWFkZXIgb24gVWJ1bnR1IE1hdGU/IElzIHNvbWUgd2F5IHRvIGhhdmUgaXQKPiA+IGluc3RhbGxl
ZCBpbiBScGk/Cj4gPgo+ID4gdGhhbmtzIGEgbG90Lgo+ID4KPiA+IEJlc3QgcmVnYXJkcwo+ID4K
PiA+IFZvanRhLgo+ID4KPiA+IERuZSAwNC4gMTEuIDIxIHYgMTg6NTUgTGludXggZm9yIGJsaW5k
IGdlbmVyYWwgZGlzY3Vzc2lvbiBuYXBzYWwoYSk6Cj4gPiA+IC4uYW5kIG9ubHkgc29mdHdhcmUg
c291cmNlcywgd2hpY2ggYXJlIGluY29uc2lzdGVudD8KPiA+ID4gVGhlaXIgY2xhaW0gd2FzIHRv
IHByb3ZpZGUgY2hvaWNlcyBJIGJlbGlldmUsIHNvIGlmIHRoZXkgYXJlIG5vdCBkb2luZyB0aGF0
Cj4gPiA+IG11Y2gsIHdoYXQgbWFrZXMgaXQgc28gd29uZGVyZnVsPwo+ID4gPiBLYXJlbgo+ID4g
Pgo+ID4gPgo+ID4gPgo+ID4gPiBPbiBUaHUsIDQgTm92IDIwMjEsIExpbnV4IGZvciBibGluZCBn
ZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4gPiA+Cj4gPiA+PiBJdCdzIHByb2JhYmx5IHVzaW5n
IHNwZWVjaC1kaXNwYXRjaGVyLgo+ID4gPj4gRGV2aW4gUHJhdGVyCj4gPiA+PiByLmQudC5wcmF0
ZXJAZ21haWwuY29tCj4gPiA+Pgo+ID4gPj4KPiA+ID4+Cj4gPiA+Pgo+ID4gPj4gT24gVGh1LCBO
b3YgNCwgMjAyMSBhdCA4OjUwIEFNIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24g
PAo+ID4gPj4gYmxpbnV4LWxpc3RAcmVkaGF0LmNvbT4gd3JvdGU6Cj4gPiA+Pgo+ID4gPj4+IEhp
LAo+ID4gPj4+IEhhdmUgYW55IG9mIHlvdSB0cmllZCB0aGlzIG5ldyBzY3JlZW4gcmVhZGVyPwo+
ID4gPj4+IElzIGl0IHVzaW5nIFNwZWFrPwo+ID4gPj4+Cj4gPiA+Pj4gVGhhbmtzLAo+ID4gPj4+
IFJvYgo+ID4gPj4+Cj4gPiA+Pj4KPiA+ID4+Pj4gT24gTm92IDEsIDIwMjEsIGF0IDk6MjYgUE0s
IExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gPAo+ID4gPj4+IGJsaW51eC1saXN0
QHJlZGhhdC5jb20+IHdyb3RlOgo+ID4gPj4+Pgo+ID4gPj4+PiBGV0lXLCBJIGp1c3QgcmFuIGFj
cm9zcyB0aGlzIGluIEhhY2tlciBOZXdzLi4uCj4gPiA+Pj4+Cj4gPiA+Pj4+PiBBY2Nlc3NpYmls
aXR5IG9uIExpbnV4IGhhcyBoaXN0b3JpY2FsbHkgYmVlbiB1bmRlci1kZXZlbG9wZWQsCj4gPiA+
Pj4gdW5kZXItbWFpbnRhaW5lZCwgYW5kLCB0aGVyZWZvcmUsIGdhaW5lZCBhIHJlcHV0YXRpb24g
b2YgYmVpbmcgcXVpdGUKPiA+ID4+PiBwYWluZnVsIHRvIHVzZSBhcyBhIGRhaWx5IGRyaXZlciBh
bW9uZyBkaXNhYmxlZCBwZW9wbGUuIFdlIHdhbnQgdG8gY2hhbmdlCj4gPiA+Pj4gdGhhdC4KPiA+
ID4+Pj4+Cj4gPiA+Pj4+PiBZZ2dkcmFzaWwgaXMgYSBuZXcgcHJvamVjdCB0aGF0IGFpbXMgdG8g
Y3JlYXRlIGEgYmV0dGVyIExpbnV4IHNjcmVlbgo+ID4gPj4+IHJlYWRlciwgd3JpdHRlbiBpbiBS
dXN0LiBUaHJvdWdoIHRoaXMgcHJvamVjdCwgd2UgYWltIHRvIHByb3ZpZGUgYSBiZXR0ZXIKPiA+
ID4+PiBzY3JlZW4gcmVhZGluZyBleHBlcmllbmNlIHRoYW4gdGhlIG9uZSB3ZSBjdXJyZW50bHkg
aGF2ZSBpbiBPcmNhLiBBIHNjcmVlbgo+ID4gPj4+IHJlYWRlciB3aXRoIGFsbCB0aGUgbW9kZXJu
IGZlYXR1cmVzIGEgV2luZG93cyBvciBNYWNPUyB1c2VyIHdvdWxkIGV4cGVjdAo+ID4gPj4+IGZy
b20gdGhlaXIgY29tcHV0ZXJzLCBzb21lIG9mIHdoaWNoIGFyZSBvdXRsaW5lZCBiZWxvdy4KPiA+
ID4+Pj4+Cj4gPiA+Pj4+PiDCoMKgwqDCoCA/IE9iamVjdCBuYXZpZ2F0aW9uCj4gPiA+Pj4+PiDC
oMKgwqDCoCA/IE9DUgo+ID4gPj4+Pj4gwqDCoMKgwqAgPyBjdXN0b21pc2FibGUgbmF2aWdhdGlv
biBjb21tYW5kcwo+ID4gPj4+Pj4gwqDCoMKgwqAgPyBhIHBvd2VyZnVsIGFkZC1vbiBtZWNoYW5p
c20KPiA+ID4+Pj4+IMKgwqDCoMKgID8gYW5kIG1vcmUuCj4gPiA+Pj4+Cj4gPiA+Pj4+IFRoZSBZ
Z2dkcmFzaWwgU2NyZWVuIFJlYWRlciBQcm9qZWN0Cj4gPiA+Pj4+IGh0dHBzOi8veWdnZHJhc2ls
LXNyLmdpdGh1Yi5pby8KPiA+ID4+Pj4gaHR0cHM6Ly9uZXdzLnljb21iaW5hdG9yLmNvbS9pdGVt
P2lkPTI5MDU2MTY4Cj4gPiA+Pj4+Cj4gPiA+Pj4+IC0gUmljaCBNb3Jpbgo+ID4gPj4+Pgo+ID4g
Pj4+Pgo+ID4gPj4+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwo+ID4gPj4+PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPiA+ID4+Pj4gQmxpbnV4LWxp
c3RAcmVkaGF0LmNvbQo+ID4gPj4+PiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFu
L2xpc3RpbmZvL2JsaW51eC1saXN0Cj4gPiA+Pj4KPiA+ID4+Pgo+ID4gPj4+IF9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gPiA+Pj4gQmxpbnV4LWxpc3Qg
bWFpbGluZyBsaXN0Cj4gPiA+Pj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+ID4gPj4+IGh0dHBz
Oi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPiA+ID4+
IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gPiA+PiBC
bGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPiA+ID4+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPiA+
ID4+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxp
c3QKPiA+ID4KPiA+ID4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KPiA+ID4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4gPiA+IEJsaW51eC1saXN0QHJl
ZGhhdC5jb20KPiA+ID4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5m
by9ibGludXgtbGlzdAo+ID4gPgo+ID4KPiA+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCj4gPiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPiA+IEJsaW51
eC1saXN0QHJlZGhhdC5jb20KPiA+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4v
bGlzdGluZm8vYmxpbnV4LWxpc3QKPiA+Cj4KPgo+IF9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4gQmxpbnV4
LWxpc3RAcmVkaGF0LmNvbQo+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlz
dGluZm8vYmxpbnV4LWxpc3QKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNv
bQpodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0

