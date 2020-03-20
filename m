Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-74.mimecast.com (us-smtp-delivery-74.mimecast.com [216.205.24.74])
	by mail.lfdr.de (Postfix) with ESMTP id 335FC18D8D6
	for <lists+blinux-list@lfdr.de>; Fri, 20 Mar 2020 21:08:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1584734900;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=mkAfaittu5RYBI/zytBFisJHsva9juxMdJjf69RPaMg=;
	b=iw7iMy5uodc1LU4N27ZQpAjawsClEFWxnbdZnrjFKHcEqtyQIDAKntM5Jh+rOKcyHLSNsp
	X81snubTVQjkGnzh26g9uFfxbvBiD2Zf6SZCKpzRTsnOVlF2jEc46v3Xi6MIGRg7iLakDR
	P2XHRpGHhNH8q4rOWu9ByU4cjlb9wWs=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-381-1xYQVu8LPGitv-C9l9jxhQ-1; Fri, 20 Mar 2020 16:08:18 -0400
X-MC-Unique: 1xYQVu8LPGitv-C9l9jxhQ-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id E945118A5500;
	Fri, 20 Mar 2020 20:08:12 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 2250F90817;
	Fri, 20 Mar 2020 20:08:11 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id BBCB81809567;
	Fri, 20 Mar 2020 20:08:07 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 02KK7xRY001332 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 20 Mar 2020 16:07:59 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 3EA9E2166B30; Fri, 20 Mar 2020 20:07:59 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3A1992166AE6
	for <blinux-list@redhat.com>; Fri, 20 Mar 2020 20:07:56 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 6EE1A8F68F8
	for <blinux-list@redhat.com>; Fri, 20 Mar 2020 20:07:56 +0000 (UTC)
Received: from mail-out-02.crystone.se (mail-out-02.crystone.se
	[93.90.145.12]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-226-PDojXw5GMLi38Dr5whVOzQ-1; Fri, 20 Mar 2020 16:07:53 -0400
X-MC-Unique: PDojXw5GMLi38Dr5whVOzQ-1
X-Halon-ID: 79229066-6ae6-11ea-8ee7-005056912ff2
Authorized-sender: anders@pipkrokodil.se
Received: from [10.5.0.2] (unknown [185.65.135.164])
	by mail-out-02.crystone.se (Halon) with ESMTPSA
	id 79229066-6ae6-11ea-8ee7-005056912ff2;
	Fri, 20 Mar 2020 21:07:50 +0100 (CET)
Mime-Version: 1.0 (Mac OS X Mail 13.4 \(3608.80.23.2.2\))
Subject: Re: What distribution will work with the virtual machine on a Mac?
Date: Fri, 20 Mar 2020 21:07:48 +0100
References: <22c752d8-c3ab-f251-7776-c80067fb6b59@gmail.com>
	<8A15AD66-5504-4D26-A304-7B98EE4F3D09@gmail.com>
	<95c9eba9-d7c9-586d-6e17-5ec3f3c001ec@gmail.com>
	<822F2734-8569-45B7-BA28-654D34301B37@pipkrokodil.se>
	<18493EC7-A642-46DC-ACED-CE6737BBB800@gmail.com>
To: blinux-list@redhat.com
In-Reply-To: <18493EC7-A642-46DC-ACED-CE6737BBB800@gmail.com>
Message-Id: <2BC7B964-CFA3-4E58-8C5F-24A2B1A7EEC3@pipkrokodil.se>
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 02KK7xRY001332
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkhCllvdSBzaG91bGQgcHJlc3MgdGhlIHN1cGVyICsgYWx0ICsgcyB0byBzdGFydCBpdC4KaWYg
eW91IGhlYXIgYSBib25rIHNvdW5kIHRoZW4geW91IGRvbuKAmXQgaGF2ZSBmb2N1cyBvbiBsaW51
eC4KWW91IGhhdmUgdG8gZXhwZXJpbWVudCBhIGJpdCB0byBnZXQgdGhpcyBnb2luZy4KSSBoYWUg
dHJpZWQgdWJ1bnR1IHdpdGggbm8gbHVjayBidXQgdmludXggd29ya2VkIGFuZCBpIGd1ZXNzIHNs
aW50IHdpbGwgd29yayBhcyBpdCBjb21lcyB1cCB0YWxraW5nLgovQQoKPiAyMCBtYXJzIDIwMjAg
a2wuIDE5OjI1IHNrcmV2IExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gPGJsaW51
eC1saXN0QHJlZGhhdC5jb20+Ogo+IAo+IEhpIHNvIGlmIEkgdXNlIFVidW50dSAxOSBob3cgZHVl
IEkgZ2V0IHNwZWVjaCBvbiB0aGUgc3lzdGVtPyBJbiBvdGhlciB3b3JkcyBob3cgZHVlIEkgc3Rh
cnQgT3JjYSB3aGluIEkgbG9naW4/Cj4gCj4+IE9uIE1hciAyMCwgMjAyMCwgYXQgMDM6MzQsIExp
bnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gPGJsaW51eC1saXN0QHJlZGhhdC5jb20+
IHdyb3RlOgo+PiAKPj4gSGkhCj4+IEFueSBkaXN0cm8gdGhhdCBhcmUgYWNjZXNzaWJsZSBpIHRo
aW5rLgo+PiBJIHVzZSBhbiBvbGQgdmludXggNS4xIHN5c3RlbSBidXQgaSB0aGluayB1YnVudHUg
b3IgZmVkb3JhIG1pZ2h0IHdvcmsgYXMgd2VsbC4KPj4gVm13YXJlIEZ1c2lvbiBmb3IgbWFjIGlz
IHByaXR0eSBzdHJhaWdodCBmb3J3YXJkLgo+PiAvQQo+PiAKPj4+IDE5IG1hcnMgMjAyMCBrbC4g
MjM6MTAgc2tyZXYgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiA8YmxpbnV4LWxp
c3RAcmVkaGF0LmNvbT46Cj4+PiAKPj4+IEkgY2FuJ3Qgc3BlYWsgdG8gYSBNYWMsIGJ1dCB5b3Ug
Y2FuIGRlZmluaXRlbHkgdXNlIExpbnV4IGluIGEgdmlydHVhbCBtYWNoaW5lIHdpdGggc3BlZWNo
LiBJJ3ZlIHVzZWQgaXQgd2l0aCBWTXdhcmUsIHdoaWNoIGhhcyBhIHByb2R1Y3QgZm9yIHRoZSBN
YWMsIGFuZCB3aXRoIFFFTVUvS1ZNLiBPdGhlcnMgaGF2ZSB1c2VkIGl0IHdpdGggVmlydHVhbCBC
b3ggYXMgd2VsbC4KPj4+IAo+Pj4gCj4+PiBPbiAzLzE5LzIwIDE6NTkgUE0sIExpbnV4IGZvciBi
bGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4+Pj4gSGVsbG8sIG15IHN1YmplY3QgbGlu
ZSBwcmV0dHkgbXVjaCBleHBsYWlucyB0aGUgYmlnIHNpdHVhdGlvbi4gIFdoYXQgSeKAmW0gd29u
ZGVyaW5nIGlzICB3aWxsIEZlZG9yYSB3b3JrIGJldHRlciB0aGFuIFVidW50dT8gIFRoZSBvdGhl
ciB0aGluZyB0aGF0IEkgYXBwYXJlbnRseSBhIGJhbmsgbXVzdCBjb25zaWRlciwgIHdpbGwgYW55
IG9mIHRoaXMgd29yayB3b3VsZCBzcGVlY2ggaW4gYSB2aXJ0dWFsIG1hY2hpbmUgZW52aXJvbm1l
bnQ/ICBBbnkgdGhvdWdodHMgZnJvbSBhbnlvbmU/Cj4+Pj4gCj4+Pj4gU2luY2VyZWx5IE1hdXJp
Y2UgTWluZXMuCj4+Pj4gCj4+Pj4gCj4+Pj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KPj4+PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPj4+PiBCbGlu
dXgtbGlzdEByZWRoYXQuY29tCj4+Pj4gaHR0cHM6Ly93d3cucmVkaGF0LmNvbS9tYWlsbWFuL2xp
c3RpbmZvL2JsaW51eC1saXN0Cj4+PiAKPj4+IC0tIAo+Pj4gQ2hyaXN0b3BoZXIgKENKKQo+Pj4g
Q2hhbHRhaW4gYXQgR21haWwKPj4+IAo+Pj4gCj4+PiBfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwo+Pj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+PiBC
bGludXgtbGlzdEByZWRoYXQuY29tCj4+PiBodHRwczovL3d3dy5yZWRoYXQuY29tL21haWxtYW4v
bGlzdGluZm8vYmxpbnV4LWxpc3QKPj4gCj4+IAo+PiBfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwo+PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPj4gQmxp
bnV4LWxpc3RAcmVkaGF0LmNvbQo+PiBodHRwczovL3d3dy5yZWRoYXQuY29tL21haWxtYW4vbGlz
dGluZm8vYmxpbnV4LWxpc3QKPiAKPiAKPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwo+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+IEJsaW51eC1saXN0
QHJlZGhhdC5jb20KPiBodHRwczovL3d3dy5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxp
bnV4LWxpc3QKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpodHRwczov
L3d3dy5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3Q=

