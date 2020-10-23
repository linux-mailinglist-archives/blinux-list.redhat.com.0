Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 561AD2979CF
	for <lists+blinux-list@lfdr.de>; Sat, 24 Oct 2020 02:00:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1603497641;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=SqNgLkXocElbS57Ti1m0BoLe1A1BnKIWZKf6IFeIrpQ=;
	b=Xin8Mm4LUUh4JzXf3G9VfRcKrzt2RbiVMCXW/mtmBHn+a62H7Az2msHKd/k3D+swR7CEUF
	PJxFMOE/aru2o+blzhuFqyvJ+9DP/c5/Ox8nylsSm/c5Po3M9pKcuacnGpik8JqwzyhnTZ
	DEUruRbybOmuPLK8fNDg7UUVBU4smt0=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-507-dKIDhtGNO92_9lp2quQmcQ-1; Fri, 23 Oct 2020 20:00:39 -0400
X-MC-Unique: dKIDhtGNO92_9lp2quQmcQ-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 0A5231868400;
	Sat, 24 Oct 2020 00:00:35 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E3A9C55763;
	Sat, 24 Oct 2020 00:00:34 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 611F118198E2;
	Sat, 24 Oct 2020 00:00:34 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 09NNxViI014603 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 23 Oct 2020 19:59:32 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id C1FFD82D13; Fri, 23 Oct 2020 23:59:31 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id BC47982D16
	for <blinux-list@redhat.com>; Fri, 23 Oct 2020 23:59:28 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id C6889811E76
	for <blinux-list@redhat.com>; Fri, 23 Oct 2020 23:59:28 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-338-LyWDXf8EOuKIHibVpTGInA-1; Fri, 23 Oct 2020 19:59:26 -0400
X-MC-Unique: LyWDXf8EOuKIHibVpTGInA-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4CJ1Rf1v7xzbv2
	for <blinux-list@redhat.com>; Fri, 23 Oct 2020 19:59:26 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4CJ1Rf1YyVzcbf; Fri, 23 Oct 2020 19:59:26 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4CJ1Rf1Vcmzcbd
	for <blinux-list@redhat.com>; Fri, 23 Oct 2020 19:59:26 -0400 (EDT)
Date: Fri, 23 Oct 2020 19:59:26 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: building kernel for ac97 sound card
In-Reply-To: <23595b0e-fb22-9fcf-a73b-449d9a7d674c@slint.fr>
Message-ID: <alpine.NEB.2.23.451.2010231958380.18176@panix1.panix.com>
References: <alpine.NEB.2.23.451.2010230909460.7641@panix1.panix.com>
	<alpine.DEB.2.21.1.2010231616570.26808@willempc.meraka.csir.co.za>
	<alpine.NEB.2.23.451.2010231148320.4709@panix1.panix.com>
	<356905ec-c03e-3638-fda4-5e1b9c6d6159@slint.fr>
	<23595b0e-fb22-9fcf-a73b-449d9a7d674c@slint.fr>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 09NNxViI014603
X-loop: blinux-list@redhat.com
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://www.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://www.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://www.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SSBidWlsdCBpdCBpbnRvIHRoZSBrZXJuZWwsIGhvd2V2ZXIgYXMgd2UgYWxsIGtub3csIGl0IGRp
ZG4ndCB3b3JrLgoKT24gRnJpLCAyMyBPY3QgMjAyMCwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwg
ZGlzY3Vzc2lvbiB3cm90ZToKCj4gRGF0ZTogRnJpLCAyMyBPY3QgMjAyMCAxMjowOTo1NAo+IEZy
b206IExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gPGJsaW51eC1saXN0QHJlZGhh
dC5jb20+Cj4gVG86IExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gPGJsaW51eC1s
aXN0QHJlZGhhdC5jb20+Cj4gU3ViamVjdDogUmU6IGJ1aWxkaW5nIGtlcm5lbCBmb3IgYWM5NyBz
b3VuZCBjYXJkCj4KPiBGdXRoZXIgSSBqdXN0IGNoZWNrZWQsIHRoZSBnZW5lcmljIEFTb0MgQUM5
NyBDT0RFQyBkcml2ZXIKPiBjYW4gb25seSAgYmUgYnVpbHQgYXMgYSBtb2R1bGUuIEhvdyBjb21l
IGNhbiB5b3UgaGF2ZSBpdCBidWlsdC1pbgo+IHRoZSBrZXJuZWw/Cj4KPiBEaWRpZXIKPgo+IExl
IDIzLzEwLzIwMjAgPyAxODowNCwgRGlkaWVyIFNwYWllciBhID9jcml0wqA6Cj4gPiBIZXJlOgo+
ID4KPiA+IGRpZGllclt+XSQgemdyZXAgLWkgYWM5NyAvcHJvYy9jb25maWcuZ3oKPiA+IENPTkZJ
R19TTkRfQUM5N19DT0RFQz1tCj4gPiBDT05GSUdfU05EX0FDOTdfUE9XRVJfU0FWRT15Cj4gPiBD
T05GSUdfU05EX0FDOTdfUE9XRVJfU0FWRV9ERUZBVUxUPTAKPiA+IENPTkZJR19TTkRfU09DX0FD
OTdfQlVTPXkKPiA+IENPTkZJR19TTkRfU09DX0FDOTdfQ09ERUM9bQo+ID4gQ09ORklHX0FDOTdf
QlVTPW0KPiA+Cj4gPiBVbmxlc3MgeW91IGFyZSBidWlsZGluZyBhIGN1c3RvbSBrZXJuZWwgSSBh
bSBhIGJpdCBzdXJwcmlzZWQ6Cj4gPiBhcyBmYXIgYXMgSSBrbm93IHByZXR0eSBtdWNoIGFsbCBk
aXN0cmlidXRpb25zIHNoaXAga2VybmVscwo+ID4gd2l0aCBhYzk3IHByb3ZpZGVkIGFzIG1vZHVs
ZXMuCj4gPgo+ID4gRGlkaWVyCj4gPgo+ID4gTGUgMjMvMTAvMjAyMCA/IDE3OjUxLCBMaW51eCBm
b3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIGEgP2NyaXTCoDoKPiA+PiBJIHRoaW5rIG15IG1p
c3Rha2Ugd2FzIGhhdmluZyBhYzk3IGJ1aWx0IGludG8gdGhlIGtlcm5lbDsgY291bGQgYmUgYWM5
Nwo+ID4+IGRvZXNuJ3QgbGlrZSB0aGF0IGhvdXNpbmcuICBJJ2xsIHRyeSByZWJ1aWxkaW5nIHRo
YXQgYXMgYSBtb2R1bGUgYW5kIHNlZQo+ID4+IGlmIEkgZ2V0IGZ1cnRoZXIuICBUaGUgbGludXgg
a2VybmVsIGNvbmZpZ3VyYXRpb24gaXMgc28gY29tcGxleCBpdCdzIG5vdAo+ID4+IGVhc3kgdG8g
a25vdyB3aGljaCB0aGluZ3MgbmVlZCB0byBiZSBpbiB0aGUga2VybmVsIGFzIGJ1aWx0LWlucyBh
bmQKPiA+PiB3aGljaCBuZWVkIHRvIGJlIG1vZHVsZXMuCj4gPj4KPiA+PiBPbiBGcmksIDIzIE9j
dCAyMDIwLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIHdyb3RlOgo+ID4+Cj4g
Pj4+IERhdGU6IEZyaSwgMjMgT2N0IDIwMjAgMTA6MjI6MTAKPiA+Pj4gRnJvbTogTGludXggZm9y
IGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiA8YmxpbnV4LWxpc3RAcmVkaGF0LmNvbT4KPiA+Pj4g
VG86IExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gPGJsaW51eC1saXN0QHJlZGhh
dC5jb20+Cj4gPj4+IFN1YmplY3Q6IFJlOiBidWlsZGluZyBrZXJuZWwgZm9yIGFjOTcgc291bmQg
Y2FyZAo+ID4+Pgo+ID4+PiBUaGUgc291bmQgY2FyZCBkcml2ZXJzIGFyZSBtb2R1bGVzLCBzbyBq
dXN0IGJ1aWxkIHRoZSBtb2R1bGUgaWYgbmVlZCBiZS4KPiA+Pj4gQWM5NyBzb3VuZHMgcHJldHR5
IHN0YW5kYXJkIHRvIG1lIHRob3VnaCwgc28gSSB0aGluayBpdCBzaG91bGQgYmUgcGFydCBvZiB0
aGUKPiA+Pj4gc3RhbmRhcmQgc2V0dXAgYWxyZWFkeS4KPiA+Pj4gVGhlIHBjIHNwZWFrZXIgaXMg
c29tZXRoaW5nIGVsc2UgdGhvdWdoLgo+ID4+PiBUaGVyZSBpcyBhIG1vZHVsZSBjYWxsZWQgcGNz
cGtyIHdoaWNoIGFsbG93IHRoZSB1c2Ugb2YgdGhhdC4KPiA+Pj4gQWxsIHBjJ3MgZG9lcyBub3Qg
aGF2ZSBhIHNwZWFrZXIgdGhvdWdoLgo+ID4+PiBNYXliZSBJIGFtIG1pc3Npbmcgc29tZXRoaW5n
IGluIHlvdXIgbWVzc2FnZT8KPiA+Pj4gUmVnYXJkcywgV2lsbGVtCj4gPj4+Cj4gPj4+Cj4gPj4+
Cj4gPj4+Cj4gPj4+IE9uIEZyaSwgMjMgT2N0IDIwMjAsIExpbnV4IGZvciBibGluZCBnZW5lcmFs
IGRpc2N1c3Npb24gd3JvdGU6Cj4gPj4+Cj4gPj4+PiBJIGhhdmUgYW4gYWM5NyBzb3VuZCBjYXJk
IGFuZCBhIGMtbWVkaWEgdXNiIHNvdW5kIGNhcmQgb24gYSBzeXN0ZW0uICBJCj4gPj4+PiBoYXZl
IG9ubHkgaGFkIHN1Y2Nlc3MgYWN0aXZhdGluZyB0aGUgcGNzcGVha2VyIHdoZW4gYnVpbGRpbmcg
YSBrZXJuZWwgZm9yCj4gPj4+PiBnZW50b28uICBJIGhhdmUgbm8gY2x1ZSBhcyB0byB3aGF0IHRv
IGVuYWJsZSB0byBnZXQgdGhpcyBkb25lLiAgVGhpcyBpcwo+ID4+Pj4gZXZlbiBhZnRlciBoYXZp
bmcgZ29uZSB0aHJvdWdoIGxzcGNpIG91dHB1dCBhbmQgbHNtb2Qgb3V0cHV0IHdpdGggdGhlCj4g
Pj4+PiBpbnN0YWxsLW1pbmltYWwgZHZkIHJ1bm5pbmcgdGhlIG9wZXJhdGluZyBzeXN0ZW0gIFRo
ZSBzcGVha2VyLXRlc3QgdXRpbGl0eQo+ID4+Pj4gcHV0cyBvdXQgc291bmQgaW4gdGhlIGNocm9v
dCBlbnZpcm9ubWVudCBhbmQgaXMgc2lsZW50IGFmdGVyIGZpcnN0IGJvb3QKPiA+Pj4+IGludG8g
dGhlIG5ldyBlbnZpcm9ubWVudCBtYWRlIGJ5IHRoZSBjb21waWxlZCBrZXJuZWwuCj4KPgo+IF9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gQmxpbnV4LWxp
c3QgbWFpbGluZyBsaXN0Cj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+IGh0dHBzOi8vd3d3LnJl
ZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAoKLS0gCgoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBs
aXN0CkJsaW51eC1saXN0QHJlZGhhdC5jb20KaHR0cHM6Ly93d3cucmVkaGF0LmNvbS9tYWlsbWFu
L2xpc3RpbmZvL2JsaW51eC1saXN0

