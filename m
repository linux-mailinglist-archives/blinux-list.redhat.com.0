Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 892F038CC41
	for <lists+blinux-list@lfdr.de>; Fri, 21 May 2021 19:36:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1621618560;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=9PpPyX5OoRslDHhwCuiFIdk7ffxcRA2nHnndtTYPi7o=;
	b=UVm/zv5iEMmuEa5SQ8cHQgzSacg/3BItoO5xpsnHYO/dlw/rUJ058+PppK14pii7tr6glE
	028UBhj6n0+hH/4JQufMGcpwl3qf2sx6uWU1CbxMoGGC5L5DXiZHv6zKCsvpxK64rQnLc1
	jddsd3EA3fwsUA33aKs7PqvOWzwImdI=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-244-9nS7V6S4M7yO-aS81DgZvQ-1; Fri, 21 May 2021 13:35:58 -0400
X-MC-Unique: 9nS7V6S4M7yO-aS81DgZvQ-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 021766D587;
	Fri, 21 May 2021 17:35:55 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B2C14100164A;
	Fri, 21 May 2021 17:35:54 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 300101800BB4;
	Fri, 21 May 2021 17:35:54 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 14LHZnVZ025339 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 21 May 2021 13:35:50 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id B8D6F1692BA; Fri, 21 May 2021 17:35:49 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B356516C2C4
	for <blinux-list@redhat.com>; Fri, 21 May 2021 17:35:46 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 81BD295F343
	for <blinux-list@redhat.com>; Fri, 21 May 2021 17:35:46 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-404-ucWcZKnXMEqO3ukqJrFMmw-1; Fri, 21 May 2021 13:35:44 -0400
X-MC-Unique: ucWcZKnXMEqO3ukqJrFMmw-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4Fmv0017Xhz44RC
	for <blinux-list@redhat.com>; Fri, 21 May 2021 13:35:44 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4Fmv000MhSzcbc; Fri, 21 May 2021 13:35:44 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4Fmtzz748HzcbW
	for <blinux-list@redhat.com>; Fri, 21 May 2021 13:35:43 -0400 (EDT)
Date: Fri, 21 May 2021 13:35:43 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: A question about Fenrir on Arch linux
In-Reply-To: <3b3d3279-de17-85f4-3212-6d724d5275ee@gmail.com>
Message-ID: <alpine.NEB.2.23.451.2105211334160.19566@panix1.panix.com>
References: <0e57a608-299f-e90f-f5aa-432e6cab3eb5@gmail.com>
	<16e11231-c90b-c724-157f-f4017ff23ab6@slint.fr>
	<4d72b722-1e65-6b34-d1d4-2d168f3fff9c@gmail.com>
	<a8000f0d-1831-4a35-c7c5-da79f853000c@linux-a11y.org>
	<43d3b1f6-a50a-2e99-a9b4-5a9a6026faf3@gmail.com>
	<9a7f1b78-1b65-774a-494a-d2c5bc2090f9@linux-a11y.org>
	<2dd1a3a9-93e5-c1c8-6188-0f1b61e9367f@gmail.com>
	<760ead03-5616-e06e-d8e2-8961a0ba970a@linux-a11y.org>
	<7e97d005-f579-329d-b89a-877cd850b424@gmail.com>
	<alpine.NEB.2.23.451.2105211016530.24532@panix1.panix.com>
	<3b3d3279-de17-85f4-3212-6d724d5275ee@gmail.com>
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
X-MIME-Autoconverted: from QUOTED-PRINTABLE to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 14LHZnVZ025339
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SXQncyBhIGdvb2QgaWRlYSB0byBydW4gYWxsIHRlc3RzIGluIHNwZC1jb25mIGFuZCB2ZXJpZnkg
YWxsIG9mIHRoZW0gd29yay4KSWYgb25lIG9mIG9yIG1vcmUgb2YgdGhlbSBmYWlsLCB0aG9zZSB3
aWxsIGJlIHlvdXIgYmFycmllcnMgZm9yIG5vdy4KCgoKT24gRnJpLCAyMSBNYXkgMjAyMSwgTGlu
dXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToKCj4gSGVsbG8gdGhlcmUsCj4K
Pgo+IFllcyBJIGhhdmUgcnVuIFNwZC1jb25mLCBidXQgbm8gbHVjay4gdGhlIG91dHB1dCBtb2R1
bGUgaXMgc2V0IHRvIGVzcGVhay1uZy4KPgo+IEJlc3QgcmVnYXJkcy4KPgo+IEZyYW5jaXNjbwo+
Cj4gT24gNS8yMS8yMSA0OjE3IFBNLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9u
IHdyb3RlOgo+ID4gSGF2ZSB5b3UgcnVuIHNwZC1jb25mIGFuZCBzZWxlY3RlZCBlc3BlYWstbmcg
YXMgeW91ciBzeW50aGVzaXplciBmb3IKPiA+IHNwZWVjaC1kaXNwYXRjaGVyPwo+ID4KPiA+Cj4g
PiBPbiBGcmksIDIxIE1heSAyMDIxLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9u
IHdyb3RlOgo+ID4KPiA+PiBIZWxsbyB0aGVyZSwKPiA+Pgo+ID4+Cj4gPj4gcmVtb3ZpbmcgZXNw
ZWFrIGRvZXNuJ3QgZml4IGl0LCB0aGUgc2FtZSBwcm9ibGVtIHN0aWxsIHBlcnNpc3RzLgo+ID4+
Cj4gPj4gQmVzdCByZWdhcmRzLgo+ID4+Cj4gPj4gRnJhbmNpc2NvLgo+ID4+Cj4gPj4KPiA+PiBP
biA1LzIxLzIxIDEyOjM2IFBNLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIHdy
b3RlOgo+ID4+PiBIb3dkeQo+ID4+Pgo+ID4+Pj4gSSBoYXZlIGVzcGVhaywgc294LCBhbmQgeGNs
aXAgaW5zdGFsbGVkLCBwbHVzIHB1bHNlYXVkaW8sCj4gPj4+PiBwdWxzZWF1ZGlvLWFsc2EsCj4g
Pj4+PiBhbHNhLXV0aWxzIGFuZCBwbHVnaW5zLgo+ID4+PiBlc3BlYWstbmcgaXMgdXNlZCBieSBk
ZWZhdWx0IGluc3RlYWQgb2YgZXNwZWFrLiBlc3BlYWstbmcgaXMgdGhlIHN1Y2Nlc3Nvcgo+ID4+
PiBvZiBlc3BlYWsuIGRvIHRha2UgY2FyZSB0byBub3QgaW5zdGFsbCBlc3BlYWsgYnV0IGVzcGVh
ay1uZyBhbmQgZ2l2ZQo+ID4+PiBhbm90aGVyCj4gPj4+IHNob3QgOikuCj4gPj4+Cj4gPj4+Cj4g
Pj4+IEFtIDIxLjA1LjIxIHVtIDExOjQ3IHNjaHJpZWIgTGludXggZm9yIGJsaW5kIGdlbmVyYWwg
ZGlzY3Vzc2lvbjoKPiA+Pj4+IEhlbGxvIHRoZXJlLAo+ID4+Pj4KPiA+Pj4+Cj4gPj4+PiBKdXN0
IGZvciB0aGUgaGVjayBvZiBpdCwgSSByZWRpZCBhIGNsZWFuIGluc3RhbGwgb2YgYXJjaCB3aXRo
IHB1bHNlYXVkaW8KPiA+Pj4+IHRoaXMgdGltZSwgYW5kIEkgY29uZmlndXJlZCBldmVyeXRoaW5n
IEkgbmVlZGVkIHJ1bm5pbmcgdGhlIHNoIHNjcmlwdCB5b3UKPiA+Pj4+IGluZGljYXRlZC4KPiA+
Pj4+Cj4gPj4+PiBJdCBoYWxmIHdvcmtzLCBhbmQgaGFsZiBkb2Vzbid0Lgo+ID4+Pj4KPiA+Pj4+
IFdoYXQgSSBtZWFuIGJ5IHRoYXQgaXMgdGhhdCB3aGVuIEkgcmVzdGFydGVkIHRoZSBtYWNoaW5l
LCBqdXN0IGEgZmV3Cj4gPj4+PiBzZWNvbmRzIGFnbyBhbmQgcmFuIGZlbnJpciBhcyBzdWRvZXIs
IGl0IHBsYXllZCB0aGUgc291bmQgaWNvbiwgdGhpbmcKPiA+Pj4+IHRoYXQKPiA+Pj4+IHdpdGgg
cGlwZXdpcmUgZGlkbid0IGhhcHBlbiwgYnV0IGdhdmUgbWUgbm8gc3BlZWNoIGF0IGFsbC4KPiA+
Pj4+Cj4gPj4+PiBJIGhhdmUgZXNwZWFrLCBzb3gsIGFuZCB4Y2xpcCBpbnN0YWxsZWQsIHBsdXMg
cHVsc2VhdWRpbywKPiA+Pj4+IHB1bHNlYXVkaW8tYWxzYSwKPiA+Pj4+IGFsc2EtdXRpbHMgYW5k
IHBsdWdpbnMuCj4gPj4+Pgo+ID4+Pj4gQW55IHN1Z2dlc3Rpb25zPwo+ID4+Pj4KPiA+Pj4+IFRo
YW5rcyBhZ2Fpbi4KPiA+Pj4+Cj4gPj4+PiBCZXN0IHJlZ2FyZHMuCj4gPj4+Pgo+ID4+Pj4gRnJh
bmNpc2NvLgo+ID4+Pj4KPiA+Pj4+IE9uIDUvMTgvMjEgNTowNiBQTSwgTGludXggZm9yIGJsaW5k
IGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToKPiA+Pj4+PiBIb3dkeSwKPiA+Pj4+Pgo+ID4+Pj4+
IGRvIHlvdSBoYXZlIHRoZSByZXF1aXJlbWVudHMgZm9yIHRoZSBnZW5lcmljIHNvdW5kIC8gdm9p
Y2UgZHJpdmVycwo+ID4+Pj4+IGluc3RhbGxlZD8KPiA+Pj4+PiBUbyBnZXQgc3VyZSwgcmVpbnN0
YWxsIGl0IGV4ZWN1dGU6Cj4gPj4+Pj4gc3VkbyBwYWNtYW4gLVMgc294IGVzcGVhay1uZyB4Y2xp
cAo+ID4+Pj4+Cj4gPj4+Pj4gc294IGlzIHVzZWQgZm9yIHBsYXkgc291bmQsIGVzcGVhayBmb3Ig
dm9pY2Ugb3V0cHV0IGluIHRoZSBkZWZhdWx0Cj4gPj4+Pj4gY29uZmlndXJhdGlvbiwgeGNsaXAg
aXMgYSBmdW5ueSB0b3kgdG8gbGV0IGZlbnJpciBzaGFyZSB0aGUgY2xpcGJvYXJkCj4gPj4+Pj4g
YmV0d2VlbiB5b3VyIEdVSSBhbmQgVGVybWluYWwuCj4gPj4+Pj4KPiA+Pj4+PiBzdGFydCBmZW5y
aXIgZm9yIHRlc3RpbmcgaW4gZm9yZWdyb3VuZCAtIHlvdSBjYW4gc3RvcCBpdCB1c2luZyBDVFJM
ICsgQwo+ID4+Pj4+IHN1ZG8gZmVucmlyCj4gPj4+Pj4KPiA+Pj4+PiBkaWQgeW91IGhlYXIgdGhl
IHN0YXJ0dXAgc291bmQ/IGZlbnJpciBwbGF5cyBhIGxpdHRsZSBzb3VuZGljb24gYXQKPiA+Pj4+
PiBzdGFydHVwLgo+ID4+Pj4+Cj4gPj4+Pj4gaWYgbm90LCB0aGVuIHB1bHNlYXVkaW8gaXMgbm90
IGNvbmZpZ3VyZWQuCj4gPj4+Pj4gc2hvcnQgc3RvcnkgZXhlY3V0ZToKPiA+Pj4+PiAjIGNvbmZp
Z3VyZSB1c2VyCj4gPj4+Pj4gL3Vzci9zaGFyZS9mZW5yaXJzY3JlZW5yZWFkZXIvdG9vbHMvY29u
ZmlndXJlX3B1bHNlLnNoCj4gPj4+Pj4gIyBjb25maWd1cmUgcm9vdAo+ID4+Pj4+IHN1ZG8gL3Vz
ci9zaGFyZS9mZW5yaXJzY3JlZW5yZWFkZXIvdG9vbHMvY29uZmlndXJlX3B1bHNlLnNoCj4gPj4+
Pj4KPiA+Pj4+PiAjIG5lZWQgdG8gcmVzdGFydCB0aGF0IHRoZSBjb25maWd1cmF0aW9uIGZvciBi
b3RoIGdldCBhY3RpdmUKPiA+Pj4+Pgo+ID4+Pj4+IHJlc3RhcnQKPiA+Pj4+Pgo+ID4+Pj4+IHRo
ZW4gcmV0cnkKPiA+Pj4+Pgo+ID4+Pj4+IHN1ZG8gZmVucmlyCj4gPj4+Pj4KPiA+Pj4+PiBsb25n
IHN0b3JyeTogZmVucmlyIG5lZWRzIGJ5IGRlZmF1bHQgdG8gcnVuIGFzIHJvb3QgdG8gY29sbGVj
dCB0aGUgZGF0YQo+ID4+Pj4+IG9uCj4gPj4+Pj4geW91ciBzY3JlZW4gb3IgY2FwdXRyZSB0aGUg
aW5wdXQgZGV2aWNlcy4gaWYgZmVucmlyIHNwZWFrcyBvciBjcmVhdGVzCj4gPj4+Pj4gc291bmQs
IGl0IGRvZXMgdGhpcyBhcyByb290IHVzZXIuIHlvdSB3b250IGhlYXIgc291bmQgb2YgYW4gb3Ro
ZXIgdXNlcgo+ID4+Pj4+IGJ5Cj4gPj4+Pj4gcHVsc2VhdWRpbyAoc291bmQgc2VydmVyKSBkZXNp
Z24uIFdlIG5lZWQgdG8gdHJhbnNwb3J0IHRoZSBzb3VuZCBjcmVhdGVkCj4gPj4+Pj4gYXMgcm9v
dCB0byB0aGUgc291bmQgc2VydmVyIHlvdSBoYXZlIHJ1bm5pbmcgYXMgdXNlciB0byBmaW5hbGx5
IGhlYXIgdGhlCj4gPj4+Pj4gc291bmQuCj4gPj4+Pj4KPiA+Pj4+PiBmZW5yaXIgcHJvdmlkZXMg
MiBzY3JpcHRzIChzZWUgYWJvdmUpIHRvIGNvbmZpZ3VyZSB0aGUgcm9vdCBwdXNlIGF1ZGlvCj4g
Pj4+Pj4gdG8KPiA+Pj4+PiBzZW5kIHRoZSBkYXRhIHRvIHlvdXIgdXNlciBhbmQgY29uZmlndXJl
IHVzZXIgcHVsc2UgYXVkaW8gdG8gbGlzdGVuIHRvCj4gPj4+Pj4gdGhlCj4gPj4+Pj4gc291bmQg
c2VudCBieSByb290IGFuZCBwbGF5IGl0Lgo+ID4+Pj4+Cj4gPj4+Pj4gY2hlZXJzIGNocnlzCj4g
Pj4+Pj4KPiA+Pj4+Pgo+ID4+Pj4+IDE4LjA1LjIxIHVtIDE0OjQ2IHNjaHJpZWIgTGludXggZm9y
IGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbjoKPiA+Pj4+Pgo+ID4+Pj4+PiBIZWxsbyB0aGVyZSwK
PiA+Pj4+Pj4KPiA+Pj4+Pj4KPiA+Pj4+Pj4gVGhhbmtzIHNvIG11Y2gsIG5vdywgdGhhdCBwYXJ0
IG9mIHRoZSBwcm9ibGVtIGlzIHNvbHZlZCEKPiA+Pj4+Pj4KPiA+Pj4+Pj4gVGhlIG90aGVyIHBh
cnQsIGhvdyBldmVyLCB0aGF0IGlzIG5vdCBzb2x2ZWQsIGlzIHRoYXQgZmVucmlyIGRvZXNuJ3QK
PiA+Pj4+Pj4gc3BlYWsgd2l0aCBlc3BlYWssIG9yIGVzcGVhay1uZy4KPiA+Pj4+Pj4KPiA+Pj4+
Pj4gRG8gSSBoYXZlIHRvIHNldCBzb21ldGhpbmcgc29tZXdoZXJlIGZvciB0aGF0IHRvIGhhcHBl
bj8KPiA+Pj4+Pj4KPiA+Pj4+Pj4gVGhhbmtzIGFnYWluLgo+ID4+Pj4+Pgo+ID4+Pj4+PiBCZXN0
IHJlZ2FyZHMuCj4gPj4+Pj4+Cj4gPj4+Pj4+IEZyYW5jaXNjby4KPiA+Pj4+Pj4KPiA+Pj4+Pj4g
T24gNS8xOC8yMSAxMDoyNCBBTSwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3
cm90ZToKPiA+Pj4+Pj4+IEhvd2R5IEZyYW5jaXNjbywKPiA+Pj4+Pj4+Cj4gPj4+Pj4+PiBpIGRv
bnQga25vdyB3aHkgdGhvc2UgbGlicyBhcmUgbm90IGFuIGRlcGVuZGVuY3kgYnkgcHl0aG9uLXB5
ZW5jaGFudAo+ID4+Pj4+Pj4gaWYKPiA+Pj4+Pj4+IHRob3NlIGFyZSBzcHJlYWQgd2FybmluZ3Mu
IE1heWJlIHRoaXMgc2hvdWxkIGJlIHJlcG9ydGVkIHRvIHRoZQo+ID4+Pj4+Pj4gcGFja2FnZQo+
ID4+Pj4+Pj4gbWFpbnRhaW5lci4gQnV0IGFueXdheS4KPiA+Pj4+Pj4+Cj4gPj4+Pj4+PiB5b3Ug
Y2FuIGFzayBwYWNtYW4gd2hhdCBwYWNrYWdlIGNvbnRhaW5zIHRoZSBzcGVjaWZpYyBmaWxlIHlv
dSBuZWVkIGJ5Cj4gPj4+Pj4+PiAic3VkbyBwYWNtYW4gLUZ5IGZpbGVuYW1lIi4gaGVyZSBpIGRp
ZCB0aGlzIGZvciBmb3IgZXhhbXBsZSBpbgo+ID4+Pj4+Pj4gbGlidm9ra28uc286Cj4gPj4+Pj4+
Pgo+ID4+Pj4+Pj4gMTA6MTQgW2NocnlzQGJsYWNrYmVhc3Qgfl0gOikgJCBzdWRvIHBhY21hbiAt
RnkgbGlidm9pa2tvLnNvCj4gPj4+Pj4+PiBbc3Vkb10gUGFzc3dvcnQgZj9yIGNocnlzOgo+ID4+
Pj4+Pj4gOjogU3luY2hyb25pc2llcmUgUGFrZXRkYXRlbmJhbmtlbi4uLgo+ID4+Pj4+Pj4gwqBj
b3JlIDkwMyw1IEtpQsKgIDYsMTcgTWlCL3MgMDA6MDAKPiA+Pj4+Pj4+IFsjIyMjIyMjIyMjIyMj
IyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMj
IyMjXQo+ID4+Pj4+Pj4gMTAwJQo+ID4+Pj4+Pj4gwqBleHRyYSA5LDMgTWlCwqAgMjYsOSBNaUIv
cyAwMDowMAo+ID4+Pj4+Pj4gWyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMj
IyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyNdCj4gPj4+Pj4+PiAxMDAlCj4gPj4+
Pj4+PiDCoGNvbW11bml0eSAyMiw4IE1pQsKgIDI5LDYgTWlCL3MgMDA6MDEKPiA+Pj4+Pj4+IFsj
IyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMj
IyMjIyMjIyMjIyMjIyMjXQo+ID4+Pj4+Pj4gMTAwJQo+ID4+Pj4+Pj4gwqBtdWx0aWxpYiAyMjIs
NSBLaULCoCAxMiw4IE1pQi9zIDAwOjAwCj4gPj4+Pj4+PiBbIyMjIyMjIyMjIyMjIyMjIyMjIyMj
IyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjI10KPiA+
Pj4+Pj4+IDEwMCUKPiA+Pj4+Pj4+IGV4dHJhL2xpYnZvaWtrbyA0LjMuMS0xCj4gPj4+Pj4+PiDC
oMKgwqAgdXNyL2xpYi9saWJ2b2lra28uc28KPiA+Pj4+Pj4+IDEwOjE1IFtjaHJ5c0BibGFja2Jl
YXN0IH5dIDopICQKPiA+Pj4+Pj4+Cj4gPj4+Pj4+PiBzbyB0aGUgcGFja2FnZSB5b3UgbmVlZCBm
b3IgbGlidm9ra28uc28gaXMgImxpYnZvaWtrbyIKPiA+Pj4+Pj4+IHRvIHNpbGVuY2Ugb3V0IGFs
bCB0aGUgd2FybmluZ3MgZG8gdGhpczoKPiA+Pj4+Pj4+IHN1ZG8gcGFjbWFuIC1TIGxpYnZvaWtr
byBudXNwZWxsIGhzcGVsbAo+ID4+Pj4+Pj4KPiA+Pj4+Pj4+IHRoaXMgaW5zdGFsbCBhbGwgMyAo
SU1PIG9wdGlvbmFsIGRlcGVuZGVuY3kncywgd2hhdCBzaG91bGQgbm90IGNyZWF0ZQo+ID4+Pj4+
Pj4gYQo+ID4+Pj4+Pj4gd2FybmluZywgYnV0IHdlbGwsIGl0IGlzIGxpa2UgaXQgaXMpCj4gPj4+
Pj4+Pgo+ID4+Pj4+Pj4gaSB1c2UgaXJzc2kgYXMgSVJDIChjb21tYW5kbGluZSkgY2xpZW50LiB0
aGVyZSBpcyBhbHNvIFBpZGdpbiAoYXMKPiA+Pj4+Pj4+IGdyYXBoaWNhbCBjbGllbnQpLiBib3Ro
IGFyZSB2ZXJ5IG5pY2UuCj4gPj4+Pj4+Pgo+ID4+Pj4+Pj4gbG9va2luZyBmb3J3YXJkIHRvIHNl
ZSB5b3UgaW4gSVJDIDopLgo+ID4+Pj4+Pj4KPiA+Pj4+Pj4+IGNoZWVycyBjaHJ5cwo+ID4+Pj4+
Pj4KPiA+Pj4+Pj4+Cj4gPj4+Pj4+PiBBbSAxOC4wNS4yMSB1bSAwODo1NyBzY2hyaWViIExpbnV4
IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb246Cj4gPj4+Pj4+Pj4gSGVsbG8gdGhlcmUsCj4g
Pj4+Pj4+Pj4KPiA+Pj4+Pj4+Pgo+ID4+Pj4+Pj4+IEkgbWFuYWdlZCB0byBpbnN0YWxsIG9uZSBv
ZiB0aGUgbGlicmFyaWVzLCBidXQgbm90IHRoZSBvdGhlciB0d28sIHNvCj4gPj4+Pj4+Pj4gdGhh
bmtzIGZvciB0aGF0Lgo+ID4+Pj4+Pj4+Cj4gPj4+Pj4+Pj4gQWxzbywgdGhhbmtzIGZvciBzdWdn
ZXN0aW5nIHRvIHVzZSB5YXksIEkganVzdCBpbnN0YWxsZWQgaXQsIEkgZGlkbid0Cj4gPj4+Pj4+
Pj4ga25vdyB5YW91cnQgd2FzIGRlcHJlY2F0ZWQuCj4gPj4+Pj4+Pj4KPiA+Pj4+Pj4+PiBNeSBx
dWVzdGlvbiBub3cgaXMsIGFuZCB0aGlzJ2xsIGJlIGR1bSwgd2hhdCBhcmUgcmVjb21tZW5kZWQg
SVJDCj4gPj4+Pj4+Pj4gY2xpZW50cz8gaG93IGRvIEkgZ2V0IHRoZW0gd29ya2luZz8gd2hhdCBz
aG91bGQgSSBrbm93IGJlZm9yZSBqb2luaW5nCj4gPj4+Pj4+Pj4gYW4gSVJDIGNoYW5uZWwsIHdo
YXQgZXZlciBpdCBtaWdodCBiZT8KPiA+Pj4+Pj4+Pgo+ID4+Pj4+Pj4+IFRoYW5rcyBhZ2Fpbi4K
PiA+Pj4+Pj4+Pgo+ID4+Pj4+Pj4+IEJlc3QgcmVnYXJkcy4KPiA+Pj4+Pj4+Pgo+ID4+Pj4+Pj4+
IEZyYW5jaXNjby4KPiA+Pj4+Pj4+Pgo+ID4+Pj4+Pj4+IE9uIDUvMTcvMjEgOToxOSBQTSwgTGlu
dXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToKPiA+Pj4+Pj4+Pj4gSGksIEkg
anVzdCBwb3N0ZWQgYSBsaW5rIHRvIHRoaXMgbWVzc2FnZSBpbnRlbmRlZCB0byBjaHJ5cyAoRmVu
cmlyCj4gPj4+Pj4+Pj4+IGF1dGhvcikgb24gdGhlICNhMTF5IGNoYW5uZWwgb2YgaXJjLmxpbnV4
LWExMXkub3JnLgo+ID4+Pj4+Pj4+Pgo+ID4+Pj4+Pj4+PiBNYXliZSBqb2luIGhpbSB0aGVyZT8K
PiA+Pj4+Pj4+Pj4KPiA+Pj4+Pj4+Pj4gRGlkaWVyCj4gPj4+Pj4+Pj4+Cj4gPj4+Pj4+Pj4+IExl
IDE3LzA1LzIwMjEgPyAyMDoxNSwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiBh
ID9jcml0wqA6Cj4gPj4+Pj4+Pj4+PiBIZWxsbyBldmVyeW9uZSwKPiA+Pj4+Pj4+Pj4+Cj4gPj4+
Pj4+Pj4+Pgo+ID4+Pj4+Pj4+Pj4gSSBqdXN0IGRvd25sb2FkZWQgZmVucmlyLWdpdCBmcm9tIHRo
ZSBBVVIgdXNpbmcgeWFvdXJ0Lgo+ID4+Pj4+Pj4+Pj4KPiA+Pj4+Pj4+Pj4+IFdoZW4gSSB0cnkg
dG8gcnVuIGZlbnJpciB3aXRoIHRoZSBjb21tYW5kCj4gPj4+Pj4+Pj4+Pgo+ID4+Pj4+Pj4+Pj4g
ZmVucmlyCj4gPj4+Pj4+Pj4+Pgo+ID4+Pj4+Pj4+Pj4gaW4gYSB0ZXJtaW5hbCwgaG93IGV2ZXIs
IGkgZ2V0IGZlbnJpcidzIHN0YXJ0dXAgc291bmQsIGFuZCB0aGlzOgo+ID4+Pj4+Pj4+Pj4KPiA+
Pj4+Pj4+Pj4+Cj4gPj4+Pj4+Pj4+PiBbZnJhbmNpc2NvQEJsdWVibGluayB+XSQgZmVucmlyCj4g
Pj4+Pj4+Pj4+PiAqKiAocHJvY2Vzczo3MDA4KTogV0FSTklORyAqKjogMjA6MTI6NDUuMzc0OiBF
cnJvciBsb2FkaW5nIHBsdWdpbjoKPiA+Pj4+Pj4+Pj4+IGxpYmhzcGVsbC5zby4KPiA+Pj4+Pj4+
Pj4+IDA6IGNhbm5vdCBvcGVuIHNoYXJlZCBvYmplY3QgZmlsZTogTm8gc3VjaCBmaWxlIG9yIGRp
cmVjdG9yeQo+ID4+Pj4+Pj4+Pj4gKiogKHByb2Nlc3M6NzAwOCk6IFdBUk5JTkcgKio6IDIwOjEy
OjQ1LjM3NDogRXJyb3IgbG9hZGluZyBwbHVnaW46Cj4gPj4+Pj4+Pj4+PiBsaWJ2b2lra28uc28u
Cj4gPj4+Pj4+Pj4+PiAxOiBjYW5ub3Qgb3BlbiBzaGFyZWQgb2JqZWN0IGZpbGU6IE5vIHN1Y2gg
ZmlsZSBvciBkaXJlY3RvcnkKPiA+Pj4+Pj4+Pj4+ICoqIChwcm9jZXNzOjcwMDgpOiBXQVJOSU5H
ICoqOiAyMDoxMjo0NS4zNzc6IEVycm9yIGxvYWRpbmcgcGx1Z2luOgo+ID4+Pj4+Pj4+Pj4gbGli
bnVzcGVsbC5zbwo+ID4+Pj4+Pj4+Pj4gLjQ6IGNhbm5vdCBvcGVuIHNoYXJlZCBvYmplY3QgZmls
ZTogTm8gc3VjaCBmaWxlIG9yIGRpcmVjdG9yeQo+ID4+Pj4+Pj4+Pj4KPiA+Pj4+Pj4+Pj4+Cj4g
Pj4+Pj4+Pj4+PiBBbnkgaWRlYXMgb24gaG93IHRvIGZpeCBpdCwgYW5kIG5vIHNwZWVjaCBlaXRo
ZXIuCj4gPj4+Pj4+Pj4+Pgo+ID4+Pj4+Pj4+Pj4gVGhhbmsgeW91IGZvciBhbnkgYW5zd2VyLgo+
ID4+Pj4+Pj4+Pj4KPiA+Pj4+Pj4+Pj4+IEJlc3QgcmVnYXJkcy4KPiA+Pj4+Pj4+Pj4+Cj4gPj4+
Pj4+Pj4+PiBGcmFuY2lzY28uCj4gPj4+Pj4+Pj4+Pgo+ID4+Pj4+Pj4+Pj4gX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiA+Pj4+Pj4+Pj4+IEJsaW51eC1s
aXN0IG1haWxpbmcgbGlzdAo+ID4+Pj4+Pj4+Pj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+ID4+
Pj4+Pj4+Pj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGlu
dXgtbGlzdAo+ID4+Pj4+Pj4+Pj4KPiA+Pj4+Pj4+Pj4KPiA+Pj4+Pj4+Pj4gX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiA+Pj4+Pj4+Pj4gQmxpbnV4LWxp
c3QgbWFpbGluZyBsaXN0Cj4gPj4+Pj4+Pj4+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPiA+Pj4+
Pj4+Pj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgt
bGlzdAo+ID4+Pj4+Pj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCj4gPj4+Pj4+Pj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4gPj4+Pj4+Pj4gQmxp
bnV4LWxpc3RAcmVkaGF0LmNvbQo+ID4+Pj4+Pj4+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29t
L21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPiA+Pj4+Pj4+Cj4gPj4+Pj4+PiBfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+ID4+Pj4+Pj4gQmxpbnV4
LWxpc3QgbWFpbGluZyBsaXN0Cj4gPj4+Pj4+PiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4gPj4+
Pj4+PiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1s
aXN0Cj4gPj4+Pj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCj4gPj4+Pj4+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+ID4+Pj4+PiBCbGludXgtbGlz
dEByZWRoYXQuY29tCj4gPj4+Pj4+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4v
bGlzdGluZm8vYmxpbnV4LWxpc3QKPiA+Pj4+Pgo+ID4+Pj4+IF9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gPj4+Pj4gQmxpbnV4LWxpc3QgbWFpbGluZyBs
aXN0Cj4gPj4+Pj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+ID4+Pj4+IGh0dHBzOi8vbGlzdG1h
bi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPiA+Pj4+IF9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gPj4+PiBCbGludXgtbGlz
dCBtYWlsaW5nIGxpc3QKPiA+Pj4+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPiA+Pj4+IGh0dHBz
Oi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPiA+Pj4K
PiA+Pj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiA+
Pj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4gPj4+IEJsaW51eC1saXN0QHJlZGhhdC5jb20K
PiA+Pj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgt
bGlzdAo+ID4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
Cj4gPj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4gPj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNv
bQo+ID4+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4
LWxpc3QKPiA+Pgo+ID4KPiA+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCj4gPiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPiA+IEJsaW51eC1saXN0QHJl
ZGhhdC5jb20KPiA+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8v
YmxpbnV4LWxpc3QKPgo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNv
bQo+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxp
c3QKPgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkJs
aW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vbGlz
dG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3Q=

