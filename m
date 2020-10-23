Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [63.128.21.124])
	by mail.lfdr.de (Postfix) with ESMTP id 9FC382979CC
	for <lists+blinux-list@lfdr.de>; Sat, 24 Oct 2020 01:58:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1603497516;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=QYdsa6Satc0Ti4hRDqfOAKy95jBwTk2p2tJGf5G0IIA=;
	b=ZtESdLr1LcRXuHDbOpOJUAu2Ubl917cPsGchGLXFfbGseKe7OdjFoLm75XwqNBBt4EK+1J
	/hK9oM731UvBxnUV/akaTOGOVT09qLIl3BKiCTN7u9tbhykCSp43gn5GT0auhzYGFCT1pW
	asVP8HH7SGzMnK66daJE9p7Jjulbveo=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-526-3R9lqsBGO2SNtfxVTV3Q2A-1; Fri, 23 Oct 2020 19:58:34 -0400
X-MC-Unique: 3R9lqsBGO2SNtfxVTV3Q2A-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 5CBEC6414A;
	Fri, 23 Oct 2020 23:58:30 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 12CF71992D;
	Fri, 23 Oct 2020 23:58:27 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 0068518198E2;
	Fri, 23 Oct 2020 23:58:22 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 09NNwE3C014487 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 23 Oct 2020 19:58:14 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 3890182D16; Fri, 23 Oct 2020 23:58:14 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 2DA6182D1B
	for <blinux-list@redhat.com>; Fri, 23 Oct 2020 23:58:08 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 3715980088F
	for <blinux-list@redhat.com>; Fri, 23 Oct 2020 23:58:08 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-550-ZA0xmYPiN9qC0xwLjfdSdg-1; Fri, 23 Oct 2020 19:58:05 -0400
X-MC-Unique: ZA0xmYPiN9qC0xwLjfdSdg-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4CJ1Q45b1Pzbqp
	for <blinux-list@redhat.com>; Fri, 23 Oct 2020 19:58:04 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4CJ1Q44dqCzcbf; Fri, 23 Oct 2020 19:58:04 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4CJ1Q448CyzcbW
	for <blinux-list@redhat.com>; Fri, 23 Oct 2020 19:58:04 -0400 (EDT)
Date: Fri, 23 Oct 2020 19:58:04 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: building kernel for ac97 sound card
In-Reply-To: <356905ec-c03e-3638-fda4-5e1b9c6d6159@slint.fr>
Message-ID: <alpine.NEB.2.23.451.2010231948440.18176@panix1.panix.com>
References: <alpine.NEB.2.23.451.2010230909460.7641@panix1.panix.com>
	<alpine.DEB.2.21.1.2010231616570.26808@willempc.meraka.csir.co.za>
	<alpine.NEB.2.23.451.2010231148320.4709@panix1.panix.com>
	<356905ec-c03e-3638-fda4-5e1b9c6d6159@slint.fr>
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
	lists01.pubmisc.prod.ext.phx2.redhat.com id 09NNwE3C014487
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

V2l0aCBnZW50b28sIGV2ZXJ5Ym9keSBidWlsZHMgYSBjdXN0b20ga2VybmVsOyB0aGF0J3MgYSBy
aXRlIG9mIHBhc3NhZ2UuCiBJIGRpZCBtYWtlIGNsZWFuIGluIC91c3Ivc3JjL2xpbnV4IHRoZW4g
cmFuIG1ha2UgbWVudWNvbmZpZyBhZ2FpbiBhbmQKdGhlIG9ubHkgdGhpbmcgSSBkaWQgd2FzIHRv
IGRldmljZSBkcml2ZXJzIC0+IHN0YWdpbmcgZHJpdmVycyAtPiBzcGVha3VwCmNvbnNvbGUgcmVh
ZGVyIC0+IGNoZWNrZWQgc3BlYWt1cC1jb3JlIGhhcyBhIHN0YXIgYXMgZG9lcyB1c2VyIHNwZWVj
aApkcml2ZXIgKHNwZWFrdXAtc29mdCkgdGhlbiBJIGV4aXRlZCBhbGwgdGhlIHdheSBvdXQgYW5k
IHJhbiBhbGwgdGhlIG1ha2UKc3RlcHMgYWdhaW4uICBJIHJlYm9vdGVkIHN5c3RlbSBhZnRlciBp
bnN0YWxsaW5nIGdydWIgYW5kIGhhdmUgbm8gc291bmQKb24gc291bmQgY2FyZCBpbiBiYWNrIG9m
IG1hY2hpbmUgdGhyb3VnaCB0cmFkaXRpb25hbCBzcGVha2VyIGphY2sgb3IgdXNiCnNvIGFjOTcg
aXNuJ3QgaW5jbHVkZWQgaW4gZ2VudG9vIGJ5IGRlZmF1bHQuICBNeSBndWVzcyBpcyBnZW50b28g
aXMgbGlrZQprYWxpIGxpbnV4IGluIHRoYXQgZXZlcnl0aGluZyB5b3Ugd2FudCB5b3UgaGF2ZSB0
byBleHBsaWNpdGx5IHR1cm4gb24uSQpnb3QgYWxzYXNvdW5kIGFuZCBlc3BlYWsgc2V0IHVwIGJ5
IGNvbmZpZ3VyYXRpb24gYmVmb3JlIGRvaW5nIHRoZSByZWJvb3QKdG9vLiAgSSB3aWxsIGdvIGJh
Y2sgaW4gaW4gY2hyb290IGFuZCBzZWUgaWYgSSBjYW4gZmluZCBhbiBhYzk3IG1vZHVsZQphdmFp
bGFibGUgdG8gaW5zdGFsbCBpbnRvIHRoZSBrZXJuZWwgdG8gZ2V0IHRoaXMgdGFsa2luZy4gIEZh
aWxpbmcgdGhhdCwKaXQncyB0aW1lIHRvIHB1dCBhIGRpc3RybyBvbiB0aGF0IGRpc2sgSSBjYW4g
Z2V0IHRhbGtpbmcuCgpPbiBGcmksIDIzIE9jdCAyMDIwLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJh
bCBkaXNjdXNzaW9uIHdyb3RlOgoKPiBEYXRlOiBGcmksIDIzIE9jdCAyMDIwIDEyOjA0OjA3Cj4g
RnJvbTogTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiA8YmxpbnV4LWxpc3RAcmVk
aGF0LmNvbT4KPiBUbzogTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiA8YmxpbnV4
LWxpc3RAcmVkaGF0LmNvbT4KPiBTdWJqZWN0OiBSZTogYnVpbGRpbmcga2VybmVsIGZvciBhYzk3
IHNvdW5kIGNhcmQKPgo+IEhlcmU6Cj4KPiBkaWRpZXJbfl0kIHpncmVwIC1pIGFjOTcgL3Byb2Mv
Y29uZmlnLmd6Cj4gQ09ORklHX1NORF9BQzk3X0NPREVDPW0KPiBDT05GSUdfU05EX0FDOTdfUE9X
RVJfU0FWRT15Cj4gQ09ORklHX1NORF9BQzk3X1BPV0VSX1NBVkVfREVGQVVMVD0wCj4gQ09ORklH
X1NORF9TT0NfQUM5N19CVVM9eQo+IENPTkZJR19TTkRfU09DX0FDOTdfQ09ERUM9bQo+IENPTkZJ
R19BQzk3X0JVUz1tCj4KPiBVbmxlc3MgeW91IGFyZSBidWlsZGluZyBhIGN1c3RvbSBrZXJuZWwg
SSBhbSBhIGJpdCBzdXJwcmlzZWQ6Cj4gYXMgZmFyIGFzIEkga25vdyBwcmV0dHkgbXVjaCBhbGwg
ZGlzdHJpYnV0aW9ucyBzaGlwIGtlcm5lbHMKPiB3aXRoIGFjOTcgcHJvdmlkZWQgYXMgbW9kdWxl
cy4KPgo+IERpZGllcgo+Cj4gTGUgMjMvMTAvMjAyMCA/IDE3OjUxLCBMaW51eCBmb3IgYmxpbmQg
Z2VuZXJhbCBkaXNjdXNzaW9uIGEgP2NyaXTCoDoKPiA+IEkgdGhpbmsgbXkgbWlzdGFrZSB3YXMg
aGF2aW5nIGFjOTcgYnVpbHQgaW50byB0aGUga2VybmVsOyBjb3VsZCBiZSBhYzk3Cj4gPiBkb2Vz
bid0IGxpa2UgdGhhdCBob3VzaW5nLiAgSSdsbCB0cnkgcmVidWlsZGluZyB0aGF0IGFzIGEgbW9k
dWxlIGFuZCBzZWUKPiA+IGlmIEkgZ2V0IGZ1cnRoZXIuICBUaGUgbGludXgga2VybmVsIGNvbmZp
Z3VyYXRpb24gaXMgc28gY29tcGxleCBpdCdzIG5vdAo+ID4gZWFzeSB0byBrbm93IHdoaWNoIHRo
aW5ncyBuZWVkIHRvIGJlIGluIHRoZSBrZXJuZWwgYXMgYnVpbHQtaW5zIGFuZAo+ID4gd2hpY2gg
bmVlZCB0byBiZSBtb2R1bGVzLgo+ID4KPiA+IE9uIEZyaSwgMjMgT2N0IDIwMjAsIExpbnV4IGZv
ciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4gPgo+ID4+IERhdGU6IEZyaSwgMjMg
T2N0IDIwMjAgMTA6MjI6MTAKPiA+PiBGcm9tOiBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNj
dXNzaW9uIDxibGludXgtbGlzdEByZWRoYXQuY29tPgo+ID4+IFRvOiBMaW51eCBmb3IgYmxpbmQg
Z2VuZXJhbCBkaXNjdXNzaW9uIDxibGludXgtbGlzdEByZWRoYXQuY29tPgo+ID4+IFN1YmplY3Q6
IFJlOiBidWlsZGluZyBrZXJuZWwgZm9yIGFjOTcgc291bmQgY2FyZAo+ID4+Cj4gPj4gVGhlIHNv
dW5kIGNhcmQgZHJpdmVycyBhcmUgbW9kdWxlcywgc28ganVzdCBidWlsZCB0aGUgbW9kdWxlIGlm
IG5lZWQgYmUuCj4gPj4gQWM5NyBzb3VuZHMgcHJldHR5IHN0YW5kYXJkIHRvIG1lIHRob3VnaCwg
c28gSSB0aGluayBpdCBzaG91bGQgYmUgcGFydCBvZiB0aGUKPiA+PiBzdGFuZGFyZCBzZXR1cCBh
bHJlYWR5Lgo+ID4+IFRoZSBwYyBzcGVha2VyIGlzIHNvbWV0aGluZyBlbHNlIHRob3VnaC4KPiA+
PiBUaGVyZSBpcyBhIG1vZHVsZSBjYWxsZWQgcGNzcGtyIHdoaWNoIGFsbG93IHRoZSB1c2Ugb2Yg
dGhhdC4KPiA+PiBBbGwgcGMncyBkb2VzIG5vdCBoYXZlIGEgc3BlYWtlciB0aG91Z2guCj4gPj4g
TWF5YmUgSSBhbSBtaXNzaW5nIHNvbWV0aGluZyBpbiB5b3VyIG1lc3NhZ2U/Cj4gPj4gUmVnYXJk
cywgV2lsbGVtCj4gPj4KPiA+Pgo+ID4+Cj4gPj4KPiA+PiBPbiBGcmksIDIzIE9jdCAyMDIwLCBM
aW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIHdyb3RlOgo+ID4+Cj4gPj4+IEkgaGF2
ZSBhbiBhYzk3IHNvdW5kIGNhcmQgYW5kIGEgYy1tZWRpYSB1c2Igc291bmQgY2FyZCBvbiBhIHN5
c3RlbS4gIEkKPiA+Pj4gaGF2ZSBvbmx5IGhhZCBzdWNjZXNzIGFjdGl2YXRpbmcgdGhlIHBjc3Bl
YWtlciB3aGVuIGJ1aWxkaW5nIGEga2VybmVsIGZvcgo+ID4+PiBnZW50b28uICBJIGhhdmUgbm8g
Y2x1ZSBhcyB0byB3aGF0IHRvIGVuYWJsZSB0byBnZXQgdGhpcyBkb25lLiAgVGhpcyBpcwo+ID4+
PiBldmVuIGFmdGVyIGhhdmluZyBnb25lIHRocm91Z2ggbHNwY2kgb3V0cHV0IGFuZCBsc21vZCBv
dXRwdXQgd2l0aCB0aGUKPiA+Pj4gaW5zdGFsbC1taW5pbWFsIGR2ZCBydW5uaW5nIHRoZSBvcGVy
YXRpbmcgc3lzdGVtICBUaGUgc3BlYWtlci10ZXN0IHV0aWxpdHkKPiA+Pj4gcHV0cyBvdXQgc291
bmQgaW4gdGhlIGNocm9vdCBlbnZpcm9ubWVudCBhbmQgaXMgc2lsZW50IGFmdGVyIGZpcnN0IGJv
b3QKPiA+Pj4gaW50byB0aGUgbmV3IGVudmlyb25tZW50IG1hZGUgYnkgdGhlIGNvbXBpbGVkIGtl
cm5lbC4KPiA+Pj4KPiA+Pj4KPiA+Pj4gLS0KPiA+Pj4KPiA+Pj4gX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiA+Pj4gQmxpbnV4LWxpc3QgbWFpbGluZyBs
aXN0Cj4gPj4+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPiA+Pj4gaHR0cHM6Ly93d3cucmVkaGF0
LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4gPj4+Cj4gPj4+Cj4gPj4KPiA+PiBf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+ID4+IEJsaW51
eC1saXN0IG1haWxpbmcgbGlzdAo+ID4+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPiA+PiBodHRw
czovL3d3dy5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPiA+Pgo+ID4+
Cj4gPgo+Cj4KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
Xwo+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPiBo
dHRwczovL3d3dy5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKCi0tIAoK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkJsaW51eC1s
aXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vd3d3LnJlZGhh
dC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdA==

