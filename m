Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id CA28238C907
	for <lists+blinux-list@lfdr.de>; Fri, 21 May 2021 16:17:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1621606675;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=tkuMUJldqqU15VQzn8ywIvuk5OSMZpLKypoMsE4QmQk=;
	b=Td6cjxGQWlGoaIHmyQ7sGtioubwjlmkt5YSCLw3kLnQrteSPXpBzt1BlqYksY5u6hyB0AF
	wuBPz0VoxWYU9rL0DrCk1KgvcH2SnLpbig47cDpVTuK+tuA5m+UWnmTtRC4XPCnzvTF1Eq
	640D0Ub4IVPhMrH6IjGyd37gf0LMKr0=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-144-oCXuWU9yM-OSrX2UZ8CuKQ-1; Fri, 21 May 2021 10:17:53 -0400
X-MC-Unique: oCXuWU9yM-OSrX2UZ8CuKQ-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A626F101371C;
	Fri, 21 May 2021 14:17:50 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 8C71B5D9CA;
	Fri, 21 May 2021 14:17:50 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 3733444A5A;
	Fri, 21 May 2021 14:17:49 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 14LEHi7J007120 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 21 May 2021 10:17:44 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 2785A167EF5; Fri, 21 May 2021 14:17:44 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 22AFC167EF3
	for <blinux-list@redhat.com>; Fri, 21 May 2021 14:17:44 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 06858833AEB
	for <blinux-list@redhat.com>; Fri, 21 May 2021 14:17:44 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-472-JoZjf8NIMM-TmAg-VMfVsQ-1; Fri, 21 May 2021 10:17:41 -0400
X-MC-Unique: JoZjf8NIMM-TmAg-VMfVsQ-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4FmpbT0wz3z3kxD
	for <blinux-list@redhat.com>; Fri, 21 May 2021 10:17:41 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4FmpbT0ryQzcbc; Fri, 21 May 2021 10:17:41 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4FmpbT0pL9zcbW
	for <blinux-list@redhat.com>; Fri, 21 May 2021 10:17:41 -0400 (EDT)
Date: Fri, 21 May 2021 10:17:40 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: A question about Fenrir on Arch linux
In-Reply-To: <7e97d005-f579-329d-b89a-877cd850b424@gmail.com>
Message-ID: <alpine.NEB.2.23.451.2105211016530.24532@panix1.panix.com>
References: <0e57a608-299f-e90f-f5aa-432e6cab3eb5@gmail.com>
	<16e11231-c90b-c724-157f-f4017ff23ab6@slint.fr>
	<4d72b722-1e65-6b34-d1d4-2d168f3fff9c@gmail.com>
	<a8000f0d-1831-4a35-c7c5-da79f853000c@linux-a11y.org>
	<43d3b1f6-a50a-2e99-a9b4-5a9a6026faf3@gmail.com>
	<9a7f1b78-1b65-774a-494a-d2c5bc2090f9@linux-a11y.org>
	<2dd1a3a9-93e5-c1c8-6188-0f1b61e9367f@gmail.com>
	<760ead03-5616-e06e-d8e2-8961a0ba970a@linux-a11y.org>
	<7e97d005-f579-329d-b89a-877cd850b424@gmail.com>
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
	lists01.pubmisc.prod.ext.phx2.redhat.com id 14LEHi7J007120
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGF2ZSB5b3UgcnVuIHNwZC1jb25mIGFuZCBzZWxlY3RlZCBlc3BlYWstbmcgYXMgeW91ciBzeW50
aGVzaXplciBmb3IKc3BlZWNoLWRpc3BhdGNoZXI/CgoKT24gRnJpLCAyMSBNYXkgMjAyMSwgTGlu
dXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToKCj4gSGVsbG8gdGhlcmUsCj4K
Pgo+IHJlbW92aW5nIGVzcGVhayBkb2Vzbid0IGZpeCBpdCwgdGhlIHNhbWUgcHJvYmxlbSBzdGls
bCBwZXJzaXN0cy4KPgo+IEJlc3QgcmVnYXJkcy4KPgo+IEZyYW5jaXNjby4KPgo+Cj4gT24gNS8y
MS8yMSAxMjozNiBQTSwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToK
PiA+IEhvd2R5Cj4gPgo+ID4+IEkgaGF2ZSBlc3BlYWssIHNveCwgYW5kIHhjbGlwIGluc3RhbGxl
ZCwgcGx1cyBwdWxzZWF1ZGlvLCBwdWxzZWF1ZGlvLWFsc2EsCj4gPj4gYWxzYS11dGlscyBhbmQg
cGx1Z2lucy4KPiA+IGVzcGVhay1uZyBpcyB1c2VkIGJ5IGRlZmF1bHQgaW5zdGVhZCBvZiBlc3Bl
YWsuIGVzcGVhay1uZyBpcyB0aGUgc3VjY2Vzc29yCj4gPiBvZiBlc3BlYWsuIGRvIHRha2UgY2Fy
ZSB0byBub3QgaW5zdGFsbCBlc3BlYWsgYnV0IGVzcGVhay1uZyBhbmQgZ2l2ZSBhbm90aGVyCj4g
PiBzaG90IDopLgo+ID4KPiA+Cj4gPiBBbSAyMS4wNS4yMSB1bSAxMTo0NyBzY2hyaWViIExpbnV4
IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb246Cj4gPj4gSGVsbG8gdGhlcmUsCj4gPj4KPiA+
Pgo+ID4+IEp1c3QgZm9yIHRoZSBoZWNrIG9mIGl0LCBJIHJlZGlkIGEgY2xlYW4gaW5zdGFsbCBv
ZiBhcmNoIHdpdGggcHVsc2VhdWRpbwo+ID4+IHRoaXMgdGltZSwgYW5kIEkgY29uZmlndXJlZCBl
dmVyeXRoaW5nIEkgbmVlZGVkIHJ1bm5pbmcgdGhlIHNoIHNjcmlwdCB5b3UKPiA+PiBpbmRpY2F0
ZWQuCj4gPj4KPiA+PiBJdCBoYWxmIHdvcmtzLCBhbmQgaGFsZiBkb2Vzbid0Lgo+ID4+Cj4gPj4g
V2hhdCBJIG1lYW4gYnkgdGhhdCBpcyB0aGF0IHdoZW4gSSByZXN0YXJ0ZWQgdGhlIG1hY2hpbmUs
IGp1c3QgYSBmZXcKPiA+PiBzZWNvbmRzIGFnbyBhbmQgcmFuIGZlbnJpciBhcyBzdWRvZXIsIGl0
IHBsYXllZCB0aGUgc291bmQgaWNvbiwgdGhpbmcgdGhhdAo+ID4+IHdpdGggcGlwZXdpcmUgZGlk
bid0IGhhcHBlbiwgYnV0IGdhdmUgbWUgbm8gc3BlZWNoIGF0IGFsbC4KPiA+Pgo+ID4+IEkgaGF2
ZSBlc3BlYWssIHNveCwgYW5kIHhjbGlwIGluc3RhbGxlZCwgcGx1cyBwdWxzZWF1ZGlvLCBwdWxz
ZWF1ZGlvLWFsc2EsCj4gPj4gYWxzYS11dGlscyBhbmQgcGx1Z2lucy4KPiA+Pgo+ID4+IEFueSBz
dWdnZXN0aW9ucz8KPiA+Pgo+ID4+IFRoYW5rcyBhZ2Fpbi4KPiA+Pgo+ID4+IEJlc3QgcmVnYXJk
cy4KPiA+Pgo+ID4+IEZyYW5jaXNjby4KPiA+Pgo+ID4+IE9uIDUvMTgvMjEgNTowNiBQTSwgTGlu
dXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToKPiA+Pj4gSG93ZHksCj4gPj4+
Cj4gPj4+IGRvIHlvdSBoYXZlIHRoZSByZXF1aXJlbWVudHMgZm9yIHRoZSBnZW5lcmljIHNvdW5k
IC8gdm9pY2UgZHJpdmVycwo+ID4+PiBpbnN0YWxsZWQ/Cj4gPj4+IFRvIGdldCBzdXJlLCByZWlu
c3RhbGwgaXQgZXhlY3V0ZToKPiA+Pj4gc3VkbyBwYWNtYW4gLVMgc294IGVzcGVhay1uZyB4Y2xp
cAo+ID4+Pgo+ID4+PiBzb3ggaXMgdXNlZCBmb3IgcGxheSBzb3VuZCwgZXNwZWFrIGZvciB2b2lj
ZSBvdXRwdXQgaW4gdGhlIGRlZmF1bHQKPiA+Pj4gY29uZmlndXJhdGlvbiwgeGNsaXAgaXMgYSBm
dW5ueSB0b3kgdG8gbGV0IGZlbnJpciBzaGFyZSB0aGUgY2xpcGJvYXJkCj4gPj4+IGJldHdlZW4g
eW91ciBHVUkgYW5kIFRlcm1pbmFsLgo+ID4+Pgo+ID4+PiBzdGFydCBmZW5yaXIgZm9yIHRlc3Rp
bmcgaW4gZm9yZWdyb3VuZCAtIHlvdSBjYW4gc3RvcCBpdCB1c2luZyBDVFJMICsgQwo+ID4+PiBz
dWRvIGZlbnJpcgo+ID4+Pgo+ID4+PiBkaWQgeW91IGhlYXIgdGhlIHN0YXJ0dXAgc291bmQ/IGZl
bnJpciBwbGF5cyBhIGxpdHRsZSBzb3VuZGljb24gYXQKPiA+Pj4gc3RhcnR1cC4KPiA+Pj4KPiA+
Pj4gaWYgbm90LCB0aGVuIHB1bHNlYXVkaW8gaXMgbm90IGNvbmZpZ3VyZWQuCj4gPj4+IHNob3J0
IHN0b3J5IGV4ZWN1dGU6Cj4gPj4+ICMgY29uZmlndXJlIHVzZXIKPiA+Pj4gL3Vzci9zaGFyZS9m
ZW5yaXJzY3JlZW5yZWFkZXIvdG9vbHMvY29uZmlndXJlX3B1bHNlLnNoCj4gPj4+ICMgY29uZmln
dXJlIHJvb3QKPiA+Pj4gc3VkbyAvdXNyL3NoYXJlL2ZlbnJpcnNjcmVlbnJlYWRlci90b29scy9j
b25maWd1cmVfcHVsc2Uuc2gKPiA+Pj4KPiA+Pj4gIyBuZWVkIHRvIHJlc3RhcnQgdGhhdCB0aGUg
Y29uZmlndXJhdGlvbiBmb3IgYm90aCBnZXQgYWN0aXZlCj4gPj4+Cj4gPj4+IHJlc3RhcnQKPiA+
Pj4KPiA+Pj4gdGhlbiByZXRyeQo+ID4+Pgo+ID4+PiBzdWRvIGZlbnJpcgo+ID4+Pgo+ID4+PiBs
b25nIHN0b3JyeTogZmVucmlyIG5lZWRzIGJ5IGRlZmF1bHQgdG8gcnVuIGFzIHJvb3QgdG8gY29s
bGVjdCB0aGUgZGF0YSBvbgo+ID4+PiB5b3VyIHNjcmVlbiBvciBjYXB1dHJlIHRoZSBpbnB1dCBk
ZXZpY2VzLiBpZiBmZW5yaXIgc3BlYWtzIG9yIGNyZWF0ZXMKPiA+Pj4gc291bmQsIGl0IGRvZXMg
dGhpcyBhcyByb290IHVzZXIuIHlvdSB3b250IGhlYXIgc291bmQgb2YgYW4gb3RoZXIgdXNlciBi
eQo+ID4+PiBwdWxzZWF1ZGlvIChzb3VuZCBzZXJ2ZXIpIGRlc2lnbi4gV2UgbmVlZCB0byB0cmFu
c3BvcnQgdGhlIHNvdW5kIGNyZWF0ZWQKPiA+Pj4gYXMgcm9vdCB0byB0aGUgc291bmQgc2VydmVy
IHlvdSBoYXZlIHJ1bm5pbmcgYXMgdXNlciB0byBmaW5hbGx5IGhlYXIgdGhlCj4gPj4+IHNvdW5k
Lgo+ID4+Pgo+ID4+PiBmZW5yaXIgcHJvdmlkZXMgMiBzY3JpcHRzIChzZWUgYWJvdmUpIHRvIGNv
bmZpZ3VyZSB0aGUgcm9vdCBwdXNlIGF1ZGlvIHRvCj4gPj4+IHNlbmQgdGhlIGRhdGEgdG8geW91
ciB1c2VyIGFuZCBjb25maWd1cmUgdXNlciBwdWxzZSBhdWRpbyB0byBsaXN0ZW4gdG8gdGhlCj4g
Pj4+IHNvdW5kIHNlbnQgYnkgcm9vdCBhbmQgcGxheSBpdC4KPiA+Pj4KPiA+Pj4gY2hlZXJzIGNo
cnlzCj4gPj4+Cj4gPj4+Cj4gPj4+IDE4LjA1LjIxIHVtIDE0OjQ2IHNjaHJpZWIgTGludXggZm9y
IGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbjoKPiA+Pj4KPiA+Pj4+IEhlbGxvIHRoZXJlLAo+ID4+
Pj4KPiA+Pj4+Cj4gPj4+PiBUaGFua3Mgc28gbXVjaCwgbm93LCB0aGF0IHBhcnQgb2YgdGhlIHBy
b2JsZW0gaXMgc29sdmVkIQo+ID4+Pj4KPiA+Pj4+IFRoZSBvdGhlciBwYXJ0LCBob3cgZXZlciwg
dGhhdCBpcyBub3Qgc29sdmVkLCBpcyB0aGF0IGZlbnJpciBkb2Vzbid0Cj4gPj4+PiBzcGVhayB3
aXRoIGVzcGVhaywgb3IgZXNwZWFrLW5nLgo+ID4+Pj4KPiA+Pj4+IERvIEkgaGF2ZSB0byBzZXQg
c29tZXRoaW5nIHNvbWV3aGVyZSBmb3IgdGhhdCB0byBoYXBwZW4/Cj4gPj4+Pgo+ID4+Pj4gVGhh
bmtzIGFnYWluLgo+ID4+Pj4KPiA+Pj4+IEJlc3QgcmVnYXJkcy4KPiA+Pj4+Cj4gPj4+PiBGcmFu
Y2lzY28uCj4gPj4+Pgo+ID4+Pj4gT24gNS8xOC8yMSAxMDoyNCBBTSwgTGludXggZm9yIGJsaW5k
IGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToKPiA+Pj4+PiBIb3dkeSBGcmFuY2lzY28sCj4gPj4+
Pj4KPiA+Pj4+PiBpIGRvbnQga25vdyB3aHkgdGhvc2UgbGlicyBhcmUgbm90IGFuIGRlcGVuZGVu
Y3kgYnkgcHl0aG9uLXB5ZW5jaGFudCBpZgo+ID4+Pj4+IHRob3NlIGFyZSBzcHJlYWQgd2Fybmlu
Z3MuIE1heWJlIHRoaXMgc2hvdWxkIGJlIHJlcG9ydGVkIHRvIHRoZSBwYWNrYWdlCj4gPj4+Pj4g
bWFpbnRhaW5lci4gQnV0IGFueXdheS4KPiA+Pj4+Pgo+ID4+Pj4+IHlvdSBjYW4gYXNrIHBhY21h
biB3aGF0IHBhY2thZ2UgY29udGFpbnMgdGhlIHNwZWNpZmljIGZpbGUgeW91IG5lZWQgYnkKPiA+
Pj4+PiAic3VkbyBwYWNtYW4gLUZ5IGZpbGVuYW1lIi4gaGVyZSBpIGRpZCB0aGlzIGZvciBmb3Ig
ZXhhbXBsZSBpbgo+ID4+Pj4+IGxpYnZva2tvLnNvOgo+ID4+Pj4+Cj4gPj4+Pj4gMTA6MTQgW2No
cnlzQGJsYWNrYmVhc3Qgfl0gOikgJCBzdWRvIHBhY21hbiAtRnkgbGlidm9pa2tvLnNvCj4gPj4+
Pj4gW3N1ZG9dIFBhc3N3b3J0IGY/ciBjaHJ5czoKPiA+Pj4+PiA6OiBTeW5jaHJvbmlzaWVyZSBQ
YWtldGRhdGVuYmFua2VuLi4uCj4gPj4+Pj4gwqBjb3JlIDkwMyw1IEtpQsKgIDYsMTcgTWlCL3Mg
MDA6MDAKPiA+Pj4+PiBbIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMj
IyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjI10KPiA+Pj4+PiAxMDAlCj4gPj4+Pj4gwqBl
eHRyYSA5LDMgTWlCwqAgMjYsOSBNaUIvcyAwMDowMAo+ID4+Pj4+IFsjIyMjIyMjIyMjIyMjIyMj
IyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMj
XQo+ID4+Pj4+IDEwMCUKPiA+Pj4+PiDCoGNvbW11bml0eSAyMiw4IE1pQsKgIDI5LDYgTWlCL3Mg
MDA6MDEKPiA+Pj4+PiBbIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMj
IyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjI10KPiA+Pj4+PiAxMDAlCj4gPj4+Pj4gwqBt
dWx0aWxpYiAyMjIsNSBLaULCoCAxMiw4IE1pQi9zIDAwOjAwCj4gPj4+Pj4gWyMjIyMjIyMjIyMj
IyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMj
IyMjIyNdCj4gPj4+Pj4gMTAwJQo+ID4+Pj4+IGV4dHJhL2xpYnZvaWtrbyA0LjMuMS0xCj4gPj4+
Pj4gwqDCoMKgIHVzci9saWIvbGlidm9pa2tvLnNvCj4gPj4+Pj4gMTA6MTUgW2NocnlzQGJsYWNr
YmVhc3Qgfl0gOikgJAo+ID4+Pj4+Cj4gPj4+Pj4gc28gdGhlIHBhY2thZ2UgeW91IG5lZWQgZm9y
IGxpYnZva2tvLnNvIGlzICJsaWJ2b2lra28iCj4gPj4+Pj4gdG8gc2lsZW5jZSBvdXQgYWxsIHRo
ZSB3YXJuaW5ncyBkbyB0aGlzOgo+ID4+Pj4+IHN1ZG8gcGFjbWFuIC1TIGxpYnZvaWtrbyBudXNw
ZWxsIGhzcGVsbAo+ID4+Pj4+Cj4gPj4+Pj4gdGhpcyBpbnN0YWxsIGFsbCAzIChJTU8gb3B0aW9u
YWwgZGVwZW5kZW5jeSdzLCB3aGF0IHNob3VsZCBub3QgY3JlYXRlIGEKPiA+Pj4+PiB3YXJuaW5n
LCBidXQgd2VsbCwgaXQgaXMgbGlrZSBpdCBpcykKPiA+Pj4+Pgo+ID4+Pj4+IGkgdXNlIGlyc3Np
IGFzIElSQyAoY29tbWFuZGxpbmUpIGNsaWVudC4gdGhlcmUgaXMgYWxzbyBQaWRnaW4gKGFzCj4g
Pj4+Pj4gZ3JhcGhpY2FsIGNsaWVudCkuIGJvdGggYXJlIHZlcnkgbmljZS4KPiA+Pj4+Pgo+ID4+
Pj4+IGxvb2tpbmcgZm9yd2FyZCB0byBzZWUgeW91IGluIElSQyA6KS4KPiA+Pj4+Pgo+ID4+Pj4+
IGNoZWVycyBjaHJ5cwo+ID4+Pj4+Cj4gPj4+Pj4KPiA+Pj4+PiBBbSAxOC4wNS4yMSB1bSAwODo1
NyBzY2hyaWViIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb246Cj4gPj4+Pj4+IEhl
bGxvIHRoZXJlLAo+ID4+Pj4+Pgo+ID4+Pj4+Pgo+ID4+Pj4+PiBJIG1hbmFnZWQgdG8gaW5zdGFs
bCBvbmUgb2YgdGhlIGxpYnJhcmllcywgYnV0IG5vdCB0aGUgb3RoZXIgdHdvLCBzbwo+ID4+Pj4+
PiB0aGFua3MgZm9yIHRoYXQuCj4gPj4+Pj4+Cj4gPj4+Pj4+IEFsc28sIHRoYW5rcyBmb3Igc3Vn
Z2VzdGluZyB0byB1c2UgeWF5LCBJIGp1c3QgaW5zdGFsbGVkIGl0LCBJIGRpZG4ndAo+ID4+Pj4+
PiBrbm93IHlhb3VydCB3YXMgZGVwcmVjYXRlZC4KPiA+Pj4+Pj4KPiA+Pj4+Pj4gTXkgcXVlc3Rp
b24gbm93IGlzLCBhbmQgdGhpcydsbCBiZSBkdW0sIHdoYXQgYXJlIHJlY29tbWVuZGVkIElSQwo+
ID4+Pj4+PiBjbGllbnRzPyBob3cgZG8gSSBnZXQgdGhlbSB3b3JraW5nPyB3aGF0IHNob3VsZCBJ
IGtub3cgYmVmb3JlIGpvaW5pbmcKPiA+Pj4+Pj4gYW4gSVJDIGNoYW5uZWwsIHdoYXQgZXZlciBp
dCBtaWdodCBiZT8KPiA+Pj4+Pj4KPiA+Pj4+Pj4gVGhhbmtzIGFnYWluLgo+ID4+Pj4+Pgo+ID4+
Pj4+PiBCZXN0IHJlZ2FyZHMuCj4gPj4+Pj4+Cj4gPj4+Pj4+IEZyYW5jaXNjby4KPiA+Pj4+Pj4K
PiA+Pj4+Pj4gT24gNS8xNy8yMSA5OjE5IFBNLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNj
dXNzaW9uIHdyb3RlOgo+ID4+Pj4+Pj4gSGksIEkganVzdCBwb3N0ZWQgYSBsaW5rIHRvIHRoaXMg
bWVzc2FnZSBpbnRlbmRlZCB0byBjaHJ5cyAoRmVucmlyCj4gPj4+Pj4+PiBhdXRob3IpIG9uIHRo
ZSAjYTExeSBjaGFubmVsIG9mIGlyYy5saW51eC1hMTF5Lm9yZy4KPiA+Pj4+Pj4+Cj4gPj4+Pj4+
PiBNYXliZSBqb2luIGhpbSB0aGVyZT8KPiA+Pj4+Pj4+Cj4gPj4+Pj4+PiBEaWRpZXIKPiA+Pj4+
Pj4+Cj4gPj4+Pj4+PiBMZSAxNy8wNS8yMDIxID8gMjA6MTUsIExpbnV4IGZvciBibGluZCBnZW5l
cmFsIGRpc2N1c3Npb24gYSA/Y3JpdMKgOgo+ID4+Pj4+Pj4+IEhlbGxvIGV2ZXJ5b25lLAo+ID4+
Pj4+Pj4+Cj4gPj4+Pj4+Pj4KPiA+Pj4+Pj4+PiBJIGp1c3QgZG93bmxvYWRlZCBmZW5yaXItZ2l0
IGZyb20gdGhlIEFVUiB1c2luZyB5YW91cnQuCj4gPj4+Pj4+Pj4KPiA+Pj4+Pj4+PiBXaGVuIEkg
dHJ5IHRvIHJ1biBmZW5yaXIgd2l0aCB0aGUgY29tbWFuZAo+ID4+Pj4+Pj4+Cj4gPj4+Pj4+Pj4g
ZmVucmlyCj4gPj4+Pj4+Pj4KPiA+Pj4+Pj4+PiBpbiBhIHRlcm1pbmFsLCBob3cgZXZlciwgaSBn
ZXQgZmVucmlyJ3Mgc3RhcnR1cCBzb3VuZCwgYW5kIHRoaXM6Cj4gPj4+Pj4+Pj4KPiA+Pj4+Pj4+
Pgo+ID4+Pj4+Pj4+IFtmcmFuY2lzY29AQmx1ZWJsaW5rIH5dJCBmZW5yaXIKPiA+Pj4+Pj4+PiAq
KiAocHJvY2Vzczo3MDA4KTogV0FSTklORyAqKjogMjA6MTI6NDUuMzc0OiBFcnJvciBsb2FkaW5n
IHBsdWdpbjoKPiA+Pj4+Pj4+PiBsaWJoc3BlbGwuc28uCj4gPj4+Pj4+Pj4gMDogY2Fubm90IG9w
ZW4gc2hhcmVkIG9iamVjdCBmaWxlOiBObyBzdWNoIGZpbGUgb3IgZGlyZWN0b3J5Cj4gPj4+Pj4+
Pj4gKiogKHByb2Nlc3M6NzAwOCk6IFdBUk5JTkcgKio6IDIwOjEyOjQ1LjM3NDogRXJyb3IgbG9h
ZGluZyBwbHVnaW46Cj4gPj4+Pj4+Pj4gbGlidm9pa2tvLnNvLgo+ID4+Pj4+Pj4+IDE6IGNhbm5v
dCBvcGVuIHNoYXJlZCBvYmplY3QgZmlsZTogTm8gc3VjaCBmaWxlIG9yIGRpcmVjdG9yeQo+ID4+
Pj4+Pj4+ICoqIChwcm9jZXNzOjcwMDgpOiBXQVJOSU5HICoqOiAyMDoxMjo0NS4zNzc6IEVycm9y
IGxvYWRpbmcgcGx1Z2luOgo+ID4+Pj4+Pj4+IGxpYm51c3BlbGwuc28KPiA+Pj4+Pj4+PiAuNDog
Y2Fubm90IG9wZW4gc2hhcmVkIG9iamVjdCBmaWxlOiBObyBzdWNoIGZpbGUgb3IgZGlyZWN0b3J5
Cj4gPj4+Pj4+Pj4KPiA+Pj4+Pj4+Pgo+ID4+Pj4+Pj4+IEFueSBpZGVhcyBvbiBob3cgdG8gZml4
IGl0LCBhbmQgbm8gc3BlZWNoIGVpdGhlci4KPiA+Pj4+Pj4+Pgo+ID4+Pj4+Pj4+IFRoYW5rIHlv
dSBmb3IgYW55IGFuc3dlci4KPiA+Pj4+Pj4+Pgo+ID4+Pj4+Pj4+IEJlc3QgcmVnYXJkcy4KPiA+
Pj4+Pj4+Pgo+ID4+Pj4+Pj4+IEZyYW5jaXNjby4KPiA+Pj4+Pj4+Pgo+ID4+Pj4+Pj4+IF9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gPj4+Pj4+Pj4gQmxp
bnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4gPj4+Pj4+Pj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+
ID4+Pj4+Pj4+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxp
bnV4LWxpc3QKPiA+Pj4+Pj4+Pgo+ID4+Pj4+Pj4KPiA+Pj4+Pj4+Cj4gPj4+Pj4+PiBfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+ID4+Pj4+Pj4gQmxpbnV4
LWxpc3QgbWFpbGluZyBsaXN0Cj4gPj4+Pj4+PiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4gPj4+
Pj4+PiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1s
aXN0Cj4gPj4+Pj4+Cj4gPj4+Pj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCj4gPj4+Pj4+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+ID4+Pj4+PiBC
bGludXgtbGlzdEByZWRoYXQuY29tCj4gPj4+Pj4+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29t
L21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPiA+Pj4+Pgo+ID4+Pj4+Cj4gPj4+Pj4gX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiA+Pj4+PiBCbGlu
dXgtbGlzdCBtYWlsaW5nIGxpc3QKPiA+Pj4+PiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4gPj4+
Pj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlz
dAo+ID4+Pj4KPiA+Pj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCj4gPj4+PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPiA+Pj4+IEJsaW51eC1saXN0
QHJlZGhhdC5jb20KPiA+Pj4+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlz
dGluZm8vYmxpbnV4LWxpc3QKPiA+Pj4KPiA+Pj4KPiA+Pj4gX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KPiA+Pj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0
Cj4gPj4+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPiA+Pj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhh
dC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+ID4+Cj4gPj4gX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiA+PiBCbGludXgtbGlzdCBtYWls
aW5nIGxpc3QKPiA+PiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4gPj4gaHR0cHM6Ly9saXN0bWFu
LnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+ID4KPiA+Cj4gPiBfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+ID4gQmxpbnV4LWxp
c3QgbWFpbGluZyBsaXN0Cj4gPiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4gPiBodHRwczovL2xp
c3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4KPiBfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IEJsaW51eC1saXN0IG1h
aWxpbmcgbGlzdAo+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPiBodHRwczovL2xpc3RtYW4ucmVk
aGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4KCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QK
QmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFu
L2xpc3RpbmZvL2JsaW51eC1saXN0

