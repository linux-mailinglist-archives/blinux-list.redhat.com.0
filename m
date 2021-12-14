Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id A13C6474320
	for <lists+blinux-list@lfdr.de>; Tue, 14 Dec 2021 14:01:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1639486864;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=kaGxklv8KXHBxMHTVAhD6mSTtoYSjCLzPB0nySjrv38=;
	b=BkhNBxc25v6HZGFRogegvlpWEcPCOkEkN5wPUwdfqJHfc3uDgeI0JNlO5PtGbudvELSR7l
	sctbcOM3RGRABxj9So7zUleOuJwYrjb7f/cOuVGEz/AZrLZMAD0pF4IgolQl3lLgDivU/G
	7XT5NbR3pE3VzuDP+y/DOeb8l6oIKXQ=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-590-1GRslZPzOsmjpv1gWEjnmg-1; Tue, 14 Dec 2021 08:01:00 -0500
X-MC-Unique: 1GRslZPzOsmjpv1gWEjnmg-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 9E5311023F52;
	Tue, 14 Dec 2021 13:00:47 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 7F6A75E279;
	Tue, 14 Dec 2021 13:00:47 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id D70FB1806D03;
	Tue, 14 Dec 2021 13:00:45 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1BED0bIA031439 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 14 Dec 2021 08:00:37 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 74280112131F; Tue, 14 Dec 2021 13:00:37 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast10.extmail.prod.ext.rdu2.redhat.com [10.11.55.26])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6ECFB1121315
	for <blinux-list@redhat.com>; Tue, 14 Dec 2021 13:00:34 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 3A5611C1CD49
	for <blinux-list@redhat.com>; Tue, 14 Dec 2021 13:00:34 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-374-ZwuTQmgiOe2LwhRwMyibKA-1; Tue, 14 Dec 2021 08:00:32 -0500
X-MC-Unique: ZwuTQmgiOe2LwhRwMyibKA-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4JCz4w0VS6z43Mq
	for <blinux-list@redhat.com>; Tue, 14 Dec 2021 08:00:32 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4JCz4w080lzcbc; Tue, 14 Dec 2021 08:00:31 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4JCz4v6vSnzcbC
	for <blinux-list@redhat.com>; Tue, 14 Dec 2021 08:00:31 -0500 (EST)
Date: Tue, 14 Dec 2021 08:00:31 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Attempting a Jenux install, again.
In-Reply-To: <70d6b356-24f0-a06f-29ab-86fc8adad896@gmail.com>
Message-ID: <alpine.NEB.2.23.451.2112140757430.6262@panix1.panix.com>
References: <1C2D6AE2-C6C3-4776-AE48-7265C64E8C87@gmail.com>
	<426b2a95-a664-626f-971f-ecea89acc81c@gmail.com>
	<0fb25799-2064-5123-b645-5779fe020c0f@gmail.com>
	<alpine.NEB.2.23.451.2112140727470.19510@panix1.panix.com>
	<70d6b356-24f0-a06f-29ab-86fc8adad896@gmail.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
X-MIME-Autoconverted: from QUOTED-PRINTABLE to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 1BED0bIA031439
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

QmVmb3JlIHlvdSBnaXZlIHVwIG9uIEplbnV4IHRoaXMgdGltZSBwbGVhc2UgbG9nIGluIGFzIHJv
b3QgYW5kIGRvOgphbWl4ZXIgc2V0IE1hc3RlciAxMDAlIHVubXV0ZTthbHNhY3RsIHN0b3JlCkl0
IGNvdWxkIGJlIHRoZSBzb3VuZCBjYXJkIHZvbHVtZSBpcyBzdXByZXNzZWQgYW5kIGlmIHlvdSBw
bHVnIGEgaGVhZHNldAppbnRvIHRoZSBjb21wdXRlciBhbmQgaGVhciBzcGVlY2ggbm90IGFsbCB0
aGF0IGxvdWQsIHRoYXQnbGwgYmUgd2hhdCdzCmhhcHBlbmVkLiAgSW4gYW55IGNhc2UgdGhhbmtz
IGZvciB0aGUgaGVhZHMgdXAuCgoKT24gVHVlLCAxNCBEZWMgMjAyMSwgTGludXggZm9yIGJsaW5k
IGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToKCj4gSGksCj4KPgo+IEkgZGlkIHVzZSB0aGUgbGF0
ZXN0IGFzIG9mIGFib3V0IDE1IGhvdXJzIGFnby4gSSBkaWQgYWxzbyB2ZXJpZnkgdGhlIGlzby4K
Pgo+Cj4gVGhlIGlzc3VlIHRoaXMgdGltZSBpcyB0aGF0IGFmdGVyIHJ1bm5pbmcgdGhlIGluc3Rh
bGxlciBhbmQgcmVib290aW5nLCBub3RoaW5nCj4gc3Bva2UuIHRoZSBzZWVpbmdBSSBvbiB0aGUg
aXBob25lIGNvdWxkIHJlYWQgdGhlIHNjcmVlbiBqdXN0IGZpbmUsIGJ1dCBJCj4gY291bGRuJ3QK
Pgo+Cj4gTGFzdCB0aW1lIGl0IHdhcyBvcmNhIGluIE1hdGUgdGhhdCBkaWRuJ3Qgd2FudCB0byBj
b21lIG9uLCBubyBtYXR0ZXIgd2hhdCBJCj4gZG8uCj4KPgo+IEkgZm91bmQgdGhhdCB3aXRoIEpl
bnV4LCBuZXZlciBleHBlY3QgdGhlIHNhbWUgdGhpbmcgdG8gZ28gd3JvbmcgdHdpY2UsCj4gaG93
ZXZlciBzb21ldGhpbmcgd2lsbCBicmVhay4KPgo+Cj4gV2FybSByZWdhcmRzLAo+Cj4KPiBCcmFu
ZHQKPgo+IE9uIDIwMjEvMTIvMTQgMTQ6MzEsIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1
c3Npb24gd3JvdGU6Cj4gPiBKZW51eCBnZXRzIHJlZ3VsYXIgdXBkYXRlcyBsYXRlc3QgaXMgMjAy
MS4xMS4xNyB1bmxlc3MgdGhhdCBjaGFuZ2VkIHRvZGF5Lgo+ID4gRGlkIHlvdSB2ZXJpZnkgeW91
ciBpc28gZG93bmxvYWQ/ICBJZiBJIGZpbmQgYW4gLnNoYTUxMiBmaWxlIGZpbGUgZm9yIGFuCj4g
PiBpc28sIEkgd29uJ3QgaW5zdGFsbCB0aGUgaXNvIHdpdGhvdXQgZmlyc3QgdmVyaWZ5aW5nIGl0
IHdpdGggdGhlIC5zaGE1MTIKPiA+IGZpbGUuICBTbyB0d28gcG90ZW50aWFsIHByb2JsZW1zIG5v
dCB1c2luZyBjdXJyZW50IEplbnV4IGluc3RhbGwgaXNvIG9yCj4gPiBmYWlsZWQgdG8gdmVyaWZ5
IGlzby4gIElmIHlvdSBkb24ndCBoYXZlIHRob3NlIHR3byBwcm9ibGVtcywgcGxlYXNlIHdyaXRl
Cj4gPiBkbmwubmFzaEBnbWFpbC5jb20gYW5kIGxldCBoaW0ga25vdyB0aGUgcHJvYmxlbSB5b3Ug
ZW5jb3VudGVyZWQgb24geW91cgo+ID4gaW5zdGFsbCBmYWlsLiAgVGhhdCBvbmUgaXMgdGhlIGRl
dmVsb3Blci4KPiA+Cj4gPgo+ID4gT24gVHVlLCAxNCBEZWMgMjAyMSwgTGludXggZm9yIGJsaW5k
IGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToKPiA+Cj4gPj4gSGksCj4gPj4KPiA+Pgo+ID4+IEpl
bnV4IGZhaWxlZCBvbiBtZSwgYWdhaW4uIEkgdGhpbmsgSSdsbCBnaXZlIGl0IGEgc2tpcCBmb3Ig
bm93LCB0aGF0IGlzCj4gPj4gdW5sZXNzCj4gPj4gdGhlIGRldiBhY3R1YWxseSBmaXhlcyB0aGUg
dGhpbmcuCj4gPj4KPiA+Pgo+ID4+IEkgYW0gb24gRmVkb3JhLCBmb3Igbm93LCBiZWNhdXNlIGl0
IHdhcyB0aGUgbmVhcmVzdCBVc2Igc3RpY2sgSSBjb3VsZCBncmFiCj4gPj4gcXVpY2tseS4KPiA+
Pgo+ID4+Cj4gPj4gSSBtaWdodCBqdXN0IGdpdmUgdGhlIHZhbmlsbGEgQXJjaCBJU08gYW5vdGhl
ciBnby4gV2h5IG5vdD8KPiA+Pgo+ID4+IE9uIDIwMjEvMTIvMTQgMTM6MDUsIExpbnV4IGZvciBi
bGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4gPj4+ICDCoG9yIE1hbmphcm8gQXJjaGl0
ZWN0Lgo+ID4+Pgo+ID4+PiBQZXJzb25hbGx5LiBJJ3ZlIGhhZCBzdWNjZXNzIHdpdGggdGhlIHZh
bmlsbGEgQXJjaCBJU08gYW5kIHRoZSBndWlkZWQKPiA+Pj4gaW5zdGFsbGVyICh0aGUgYXJjaGlu
c3RhbGwgb25lKSwgSSBqdXN0IHNldCBpdCB0byBib290IHVwIHRhbGtpbmcsIHdlbnQKPiA+Pj4g
dGhyb3VnaCBpdCBhbmQgYWRkZWQgaW4gYWxzYS11dGlscy9lc3BlYWt1cCBhbmQgdGhlbiBwdXQK
PiA+Pj4gc3BlZWNoLWRpc3BhdGNoZXIvT3JjYS92b2ljZXMgYW5kIGEgd2luZG93IG1hbmFnZXIg
b24gb25jZSB0aGUgc3lzdGVtIHdhcwo+ID4+PiBpbnN0YWxsZWQuCj4gPj4+Cj4gPj4+Cj4gPj4+
IEplbnV4IGhhcyBuZXZlciByZWFsbHkgd29ya2VkIGZvciBtZSBvbiBhIFZNIG9yIGJhcmUgbWV0
YWwgYXQgYWxsLCB3aGVyZWFzCj4gPj4+IHRoZSBvZmZpY2lhbCBhcmNoIElTTyBpcyB3b3JraW5n
IHJhdGhlciB3ZWxsLCBhbmQgSSBkdW5ubyBpZiB0aGUgQXJjaGl0ZWN0Cj4gPj4+IGVkaXRpb24g
aXMgMzYvNjQgYml0IG9yIDMyYml0IG9ubHkgb3IgNjRiaXQgb25seS4gQWRtaXR0ZWRseSwgSSd2
ZSBnb3QgYQo+ID4+PiA2NGJpdCBVRUZJIHN5c3RlbSBzbyB0aGUgb2ZmaWNpYWwgSVNvIHdvcmtz
IGZsYXdsZXNzbHkgb24gaXQgaG93ZXZlciwgYnV0Cj4gPj4+IFlNTVYgb24gdGhhdCBvbmVZZXMs
IGJ1dCB5b3UgcHJvYmFibHkgZG9uJ3Qgd2FudCB0byBoZWFyIGl0IGlmIHlvdSBhcmUgc2V0Cj4g
Pj4+IG9uIHVzaW5nIEplbnV4IGhvd2V2ZXIuCj4gPj4+Cj4gPj4+IE9uIDEyLzE0LzIxIDA5OjE4
LCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIHdyb3RlOgo+ID4+Pj4gSGkgYWxs
LAo+ID4+Pj4KPiA+Pj4+IEkgZGVjaWRlZCB0byBnaXZlIEplbnV4IGFub3RoZXIgZ28sIGxhc3Qg
dGltZSwgbm8gbWF0dGVyIHdoYXQgSSB0cmllZCwgSQo+ID4+Pj4gY291bGRuJ3QgZ2V0IG9yY2Eg
dG8gY29tZSBvbiBhZnRlciBsb2dnaW5nIGluIHRvIHRoZSBzeXN0ZW0uCj4gPj4+Pgo+ID4+Pj4g
RG9lcyBhbnlvbmUgaGF2ZSBhbnkgYWR2aWNlPwo+ID4+Pj4KPiA+Pj4+IEFsc28sIGlmIHRoaXMg
ZG9lc24ndCB3b3JrIG91dCwgaXMgdGhlcmUgYSBndWlkZSBmb3IgZG9pbmcgYSBNYW5qYXJvCj4g
Pj4+PiBhcmNoaXRlY3QgaW5zdGFsbD8gIk1hbmphcm8gVGFsa2luZyIgZ290IHVwZGF0ZWQgYSBs
aXR0bGUgd2hpbGUgYWdvLCBhbmQKPiA+Pj4+IGlmLCBhcyBJIHNhaWQsIEplbnV4IGRvZXNuJ3Qg
d29yayBvdXQsIEknZCBsaWtlIHRvIGdpdmUgdGhhdCBvbmUgYSBnby4KPiA+Pj4+Cj4gPj4+PiBU
aGFua3Mgc28gbG9uZy4KPiA+Pj4+Cj4gPj4+PiBXYXJtIHJlZ2FyZHMsCj4gPj4+Pgo+ID4+Pj4g
QnJhbmR0IFN0ZWVua2FtcAo+ID4+Pj4KPiA+Pj4+IFNlbnQgZnJvbSBteSBNYWNCb29rIEFpcgo+
ID4+Pj4KPiA+Pj4+IENvbnRhY3Q6Cj4gPj4+Pgo+ID4+Pj4gUGhvbmU6ICsyNyAoMCk2MCA1MjUg
OTE4MSA8dGVsOi8vKzI3NjA1MjU5MTgxPgo+ID4+Pj4KPiA+Pj4+IEVtYWlsOiBicmFuZHQuc3Rl
ZW5rYW1wQGdtYWlsLmNvbSA8bWFpbHRvOmJyYW5kdC5zdGVlbmthbXBAZ21haWwuY29tPgo+ID4+
Pj4KPiA+Pj4+IFR3aXR0ZXI6IEBicmFuZHRzdGVlbmthbXAgPGh0dHA6Ly93d3cudHdpdHRlci5j
b20vYnJhbmR0c3RlZW5rYW1wPgo+ID4+Pj4KPiA+Pj4+Cj4gPj4+Pgo+ID4+Pj4KPiA+Pj4+IF9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gPj4+PiBCbGlu
dXgtbGlzdCBtYWlsaW5nIGxpc3QKPiA+Pj4+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPiA+Pj4+
IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QK
PiA+Pj4+Cj4gPj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCj4gPj4+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+ID4+PiBCbGludXgtbGlzdEByZWRo
YXQuY29tCj4gPj4+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8v
YmxpbnV4LWxpc3QKPiA+Pgo+ID4KPiA+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCj4gPiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPiA+IEJsaW51eC1s
aXN0QHJlZGhhdC5jb20KPiA+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlz
dGluZm8vYmxpbnV4LWxpc3QKPgo+CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51eC1saXN0QHJlZGhh
dC5jb20KaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgt
bGlzdA==

