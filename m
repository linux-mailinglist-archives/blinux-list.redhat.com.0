Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-74.mimecast.com (us-smtp-delivery-74.mimecast.com [216.205.24.74])
	by mail.lfdr.de (Postfix) with ESMTP id 68ED218CECA
	for <lists+blinux-list@lfdr.de>; Fri, 20 Mar 2020 14:26:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1584710782;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=DVM5KZX33EsGfzCKp/lDj0yA2WqSpFXl8LENxlBTZNo=;
	b=E5FHqy90zpf5vb9NajERrKSAoyTE1hFxqjaYYMc65MHCeFnqVcO5hbPP30ExPha0tUuM/e
	yDFpW+dXY815mEhiM8gT3RPcnxT0OJHROfRJiQMU0xmewfS5adT5R7I89lXoyJrJXLPoSl
	CGLtucrmxzWI4HlZT1H1pjx3Xa35Q1Q=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-43-74meMQ7gPPyNMrjeJyzXEw-1; Fri, 20 Mar 2020 09:26:20 -0400
X-MC-Unique: 74meMQ7gPPyNMrjeJyzXEw-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 0DBF81857BEA;
	Fri, 20 Mar 2020 13:26:16 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id DBDAC62937;
	Fri, 20 Mar 2020 13:26:13 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 6746218089CD;
	Fri, 20 Mar 2020 13:26:10 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 02KDQ2vM019796 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 20 Mar 2020 09:26:02 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 16CB81054F0C; Fri, 20 Mar 2020 13:26:02 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 1304611A60F9
	for <blinux-list@redhat.com>; Fri, 20 Mar 2020 13:25:59 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 81CF58CC924
	for <blinux-list@redhat.com>; Fri, 20 Mar 2020 13:25:59 +0000 (UTC)
Received: from mail-out-01.crystone.se (mail-out-01.crystone.se
	[93.90.145.11]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-436-0WoJfwgRMI-JDpIv5-lmfg-1; Fri, 20 Mar 2020 09:25:56 -0400
X-MC-Unique: 0WoJfwgRMI-JDpIv5-lmfg-1
X-Halon-ID: 534819aa-6aae-11ea-93b4-005056917149
Authorized-sender: anders@pipkrokodil.se
Received: from [10.5.0.2] (unknown [185.65.135.164])
	by mail-out-01.crystone.se (Halon) with ESMTPSA
	id 534819aa-6aae-11ea-93b4-005056917149;
	Fri, 20 Mar 2020 14:25:54 +0100 (CET)
Mime-Version: 1.0 (Mac OS X Mail 13.4 \(3608.80.23.2.2\))
Subject: Re: What distribution will work with the virtual machine on a Mac?
Date: Fri, 20 Mar 2020 14:25:54 +0100
References: <22c752d8-c3ab-f251-7776-c80067fb6b59@gmail.com>
	<8A15AD66-5504-4D26-A304-7B98EE4F3D09@gmail.com>
	<95c9eba9-d7c9-586d-6e17-5ec3f3c001ec@gmail.com>
	<822F2734-8569-45B7-BA28-654D34301B37@pipkrokodil.se>
	<C3948E7C-D9E1-43A4-AFE3-CC77F6726C53@gmail.com>
To: blinux-list@redhat.com
In-Reply-To: <C3948E7C-D9E1-43A4-AFE3-CC77F6726C53@gmail.com>
Message-Id: <8551857C-94C3-4C88-ABD8-17A25E590495@pipkrokodil.se>
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 02KDQ2vM019796
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
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkhCllvdSBoYXZlIHRvIHVzZSB0aGUgd2luZG93cyBjaG9vc2VyIGZvciB0aGF0LgovQQoKPiAy
MCBtYXJzIDIwMjAga2wuIDEzOjEwIHNrcmV2IExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1
c3Npb24gPGJsaW51eC1saXN0QHJlZGhhdC5jb20+Ogo+IAo+IFdoZW4gdHJ5aW5nIHRvIHVzZSBG
dXNpb24sIEkgaGFkIGEgaGFyZCB0aW1lIHN3aXRjaGluZyBiZXR3ZWVuIG9wZXJhdGluZyBzeXN0
ZW1zIHdpdGggdGhlIGtleWJvYXJkLgo+IAo+PiBPbiBNYXIgMjAsIDIwMjAsIGF0IDU6MzQgQU0s
IExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gPGJsaW51eC1saXN0QHJlZGhhdC5j
b20+IHdyb3RlOgo+PiAKPj4gSGkhCj4+IEFueSBkaXN0cm8gdGhhdCBhcmUgYWNjZXNzaWJsZSBp
IHRoaW5rLgo+PiBJIHVzZSBhbiBvbGQgdmludXggNS4xIHN5c3RlbSBidXQgaSB0aGluayB1YnVu
dHUgb3IgZmVkb3JhIG1pZ2h0IHdvcmsgYXMgd2VsbC4KPj4gVm13YXJlIEZ1c2lvbiBmb3IgbWFj
IGlzIHByaXR0eSBzdHJhaWdodCBmb3J3YXJkLgo+PiAvQQo+PiAKPj4+IDE5IG1hcnMgMjAyMCBr
bC4gMjM6MTAgc2tyZXYgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiA8YmxpbnV4
LWxpc3RAcmVkaGF0LmNvbT46Cj4+PiAKPj4+IEkgY2FuJ3Qgc3BlYWsgdG8gYSBNYWMsIGJ1dCB5
b3UgY2FuIGRlZmluaXRlbHkgdXNlIExpbnV4IGluIGEgdmlydHVhbCBtYWNoaW5lIHdpdGggc3Bl
ZWNoLiBJJ3ZlIHVzZWQgaXQgd2l0aCBWTXdhcmUsIHdoaWNoIGhhcyBhIHByb2R1Y3QgZm9yIHRo
ZSBNYWMsIGFuZCB3aXRoIFFFTVUvS1ZNLiBPdGhlcnMgaGF2ZSB1c2VkIGl0IHdpdGggVmlydHVh
bCBCb3ggYXMgd2VsbC4KPj4+IAo+Pj4gCj4+PiBPbiAzLzE5LzIwIDE6NTkgUE0sIExpbnV4IGZv
ciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4+Pj4gSGVsbG8sIG15IHN1YmplY3Qg
bGluZSBwcmV0dHkgbXVjaCBleHBsYWlucyB0aGUgYmlnIHNpdHVhdGlvbi4gIFdoYXQgSeKAmW0g
d29uZGVyaW5nIGlzICB3aWxsIEZlZG9yYSB3b3JrIGJldHRlciB0aGFuIFVidW50dT8gIFRoZSBv
dGhlciB0aGluZyB0aGF0IEkgYXBwYXJlbnRseSBhIGJhbmsgbXVzdCBjb25zaWRlciwgIHdpbGwg
YW55IG9mIHRoaXMgd29yayB3b3VsZCBzcGVlY2ggaW4gYSB2aXJ0dWFsIG1hY2hpbmUgZW52aXJv
bm1lbnQ/ICBBbnkgdGhvdWdodHMgZnJvbSBhbnlvbmU/Cj4+Pj4gCj4+Pj4gU2luY2VyZWx5IE1h
dXJpY2UgTWluZXMuCj4+Pj4gCj4+Pj4gCj4+Pj4gX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KPj4+PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPj4+PiBC
bGludXgtbGlzdEByZWRoYXQuY29tCj4+Pj4gaHR0cHM6Ly93d3cucmVkaGF0LmNvbS9tYWlsbWFu
L2xpc3RpbmZvL2JsaW51eC1saXN0Cj4+PiAKPj4+IC0tIAo+Pj4gQ2hyaXN0b3BoZXIgKENKKQo+
Pj4gQ2hhbHRhaW4gYXQgR21haWwKPj4+IAo+Pj4gCj4+PiBfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwo+Pj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+
PiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4+PiBodHRwczovL3d3dy5yZWRoYXQuY29tL21haWxt
YW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPj4gCj4+IAo+PiBfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwo+PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPj4g
QmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+PiBodHRwczovL3d3dy5yZWRoYXQuY29tL21haWxtYW4v
bGlzdGluZm8vYmxpbnV4LWxpc3QKPiAKPiAKPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwo+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+IEJsaW51eC1s
aXN0QHJlZGhhdC5jb20KPiBodHRwczovL3d3dy5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8v
YmxpbnV4LWxpc3QKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpodHRw
czovL3d3dy5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3Q=

