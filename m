Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [63.128.21.124])
	by mail.lfdr.de (Postfix) with ESMTP id 90A3829731F
	for <lists+blinux-list@lfdr.de>; Fri, 23 Oct 2020 18:04:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1603469097;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:autocrypt:autocrypt;
	bh=hEwhDzaUn6YqwDxBoDKUozgzmWABvfuUp2hRj2inEVk=;
	b=CzWcB5sGOu/me+2CsZAMwBAxQw0R6uZGC+5opUDddnJID4sUAbdzlRXED9KQDY4/2/5H1u
	hDdcTDBEIbXm1XPHXOz5Wrb6pE5l1iqGdMXCTjUJMJ341ehoCS1w2xqyCY+gfxpZU4T8ON
	EvxHdmlP/VzBSpSUYFaMcuKrSEMotc0=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-524-out40D07OLmfupqw2_S8ag-1; Fri, 23 Oct 2020 12:04:55 -0400
X-MC-Unique: out40D07OLmfupqw2_S8ag-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 46E7F835B58;
	Fri, 23 Oct 2020 16:04:51 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 910255D9CC;
	Fri, 23 Oct 2020 16:04:50 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 84DAA18095FF;
	Fri, 23 Oct 2020 16:04:49 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 09NG4UKV020167 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 23 Oct 2020 12:04:30 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 4C1EC202348E; Fri, 23 Oct 2020 16:04:30 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 4722D207A6D9
	for <blinux-list@redhat.com>; Fri, 23 Oct 2020 16:04:28 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 06119185A78B
	for <blinux-list@redhat.com>; Fri, 23 Oct 2020 16:04:28 +0000 (UTC)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79]) by
	relay.mimecast.com with ESMTP id us-mta-235-VFg5GC7kNUmNs4sjzWb5-Q-1;
	Fri, 23 Oct 2020 12:04:25 -0400
X-MC-Unique: VFg5GC7kNUmNs4sjzWb5-Q-1
Received: from darkstar.machine.fr (sfa89-1-78-208-157-71.fbx.proxad.net
	[78.208.157.71])
	by darkstar.slint.fr (Postfix) with ESMTPSA id 756CDBE280
	for <blinux-list@redhat.com>; Fri, 23 Oct 2020 17:03:35 +0200 (CEST)
Subject: Re: building kernel for ac97 sound card
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <alpine.NEB.2.23.451.2010230909460.7641@panix1.panix.com>
	<alpine.DEB.2.21.1.2010231616570.26808@willempc.meraka.csir.co.za>
	<alpine.NEB.2.23.451.2010231148320.4709@panix1.panix.com>
Autocrypt: addr=didier@slint.fr; prefer-encrypt=mutual; keydata=
	mQENBFY6fG8BCADH4Hf/OaE2MwXRFMrU/9oDd+YPqR/wkhmIv0veDio84fsWA5qMz1De7TEv
	dNuxIVYTznuVOd/9lpdfxQ1KV9rgD7yoBPLmjbQA1vVjB+1QylIQUV0B9AYFUsxZP32Ic2pg
	TS3US/WiZyx+/jS50ri4kvT9iDtIEu7WBWFr8YMOoq3oLkHI8Y7gBG0WsK9XYN09glhtI+bA
	jLPr/ezwEg5M3FDb4U7XFq7GcA6EEzanKMAOHdZl3lta7dv5gpgdj+38j5jPfV1cJW+J1fha
	63X72xxXGs7V6J7NGpnW7SAKfTAMXsPXZwwGIuqMQs1Z89I+2ZPJPOoV8zMncTsWzHStABEB
	AAG0H0RpZGllciBTcGFpZXIgPGRpZGllckBzbGludC5mcj6JAT8EEwEKACkCGwMHCwkIBwMC
	AQYVCAIJCgsEFgIDAQIeAQIXgAUCXcBjnwUJGlHqEgAKCRDVAgLvYMA+6v/ICAC8Oa2zXOne
	zyuFrPtNsciJWYwWamW+g5TNaY9NPnyMRNKDi7IcP6PoDwHRI8YBgo+Z9w0qFKQ/WVSI/O6s
	gm7LnOX7OEHjnub4sjrr5PHcsPRjm6iJFIgGgD+waz0K5fxcc65ti3lgHLH1tkhORyiT5EFp
	0VllWDQfPHw5avm9oopJv1FuPfZhSlFT6QhjD2ARmOrxfFBjELQZjDidckOYf/8Stoh+aK5F
	5q69DpF+bSZzOtCht+S6LT+Im5zqMgq1Dfqb3FpnVO3MyhSLeGI2nB+OFNTBGByRFKHYRsHc
	VaQBjtfsr4HnC0UR2P/bDIk/oxLnIN9nHJuL6btcf9M6
Message-ID: <356905ec-c03e-3638-fda4-5e1b9c6d6159@slint.fr>
Date: Fri, 23 Oct 2020 18:04:07 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
	Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <alpine.NEB.2.23.451.2010231148320.4709@panix1.panix.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 09NG4UKV020167
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: fr
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGVyZToKCmRpZGllclt+XSQgemdyZXAgLWkgYWM5NyAvcHJvYy9jb25maWcuZ3ogIApDT05GSUdf
U05EX0FDOTdfQ09ERUM9bQpDT05GSUdfU05EX0FDOTdfUE9XRVJfU0FWRT15CkNPTkZJR19TTkRf
QUM5N19QT1dFUl9TQVZFX0RFRkFVTFQ9MApDT05GSUdfU05EX1NPQ19BQzk3X0JVUz15CkNPTkZJ
R19TTkRfU09DX0FDOTdfQ09ERUM9bQpDT05GSUdfQUM5N19CVVM9bQoKVW5sZXNzIHlvdSBhcmUg
YnVpbGRpbmcgYSBjdXN0b20ga2VybmVsIEkgYW0gYSBiaXQgc3VycHJpc2VkOgphcyBmYXIgYXMg
SSBrbm93IHByZXR0eSBtdWNoIGFsbCBkaXN0cmlidXRpb25zIHNoaXAga2VybmVscwp3aXRoIGFj
OTcgcHJvdmlkZWQgYXMgbW9kdWxlcy4KCkRpZGllcgoKTGUgMjMvMTAvMjAyMCDDoCAxNzo1MSwg
TGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiBhIMOpY3JpdMKgOgo+IEkgdGhpbmsg
bXkgbWlzdGFrZSB3YXMgaGF2aW5nIGFjOTcgYnVpbHQgaW50byB0aGUga2VybmVsOyBjb3VsZCBi
ZSBhYzk3Cj4gZG9lc24ndCBsaWtlIHRoYXQgaG91c2luZy4gIEknbGwgdHJ5IHJlYnVpbGRpbmcg
dGhhdCBhcyBhIG1vZHVsZSBhbmQgc2VlCj4gaWYgSSBnZXQgZnVydGhlci4gIFRoZSBsaW51eCBr
ZXJuZWwgY29uZmlndXJhdGlvbiBpcyBzbyBjb21wbGV4IGl0J3Mgbm90Cj4gZWFzeSB0byBrbm93
IHdoaWNoIHRoaW5ncyBuZWVkIHRvIGJlIGluIHRoZSBrZXJuZWwgYXMgYnVpbHQtaW5zIGFuZAo+
IHdoaWNoIG5lZWQgdG8gYmUgbW9kdWxlcy4KPiAKPiBPbiBGcmksIDIzIE9jdCAyMDIwLCBMaW51
eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIHdyb3RlOgo+IAo+PiBEYXRlOiBGcmksIDIz
IE9jdCAyMDIwIDEwOjIyOjEwCj4+IEZyb206IExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1
c3Npb24gPGJsaW51eC1saXN0QHJlZGhhdC5jb20+Cj4+IFRvOiBMaW51eCBmb3IgYmxpbmQgZ2Vu
ZXJhbCBkaXNjdXNzaW9uIDxibGludXgtbGlzdEByZWRoYXQuY29tPgo+PiBTdWJqZWN0OiBSZTog
YnVpbGRpbmcga2VybmVsIGZvciBhYzk3IHNvdW5kIGNhcmQKPj4KPj4gVGhlIHNvdW5kIGNhcmQg
ZHJpdmVycyBhcmUgbW9kdWxlcywgc28ganVzdCBidWlsZCB0aGUgbW9kdWxlIGlmIG5lZWQgYmUu
Cj4+IEFjOTcgc291bmRzIHByZXR0eSBzdGFuZGFyZCB0byBtZSB0aG91Z2gsIHNvIEkgdGhpbmsg
aXQgc2hvdWxkIGJlIHBhcnQgb2YgdGhlCj4+IHN0YW5kYXJkIHNldHVwIGFscmVhZHkuCj4+IFRo
ZSBwYyBzcGVha2VyIGlzIHNvbWV0aGluZyBlbHNlIHRob3VnaC4KPj4gVGhlcmUgaXMgYSBtb2R1
bGUgY2FsbGVkIHBjc3BrciB3aGljaCBhbGxvdyB0aGUgdXNlIG9mIHRoYXQuCj4+IEFsbCBwYydz
IGRvZXMgbm90IGhhdmUgYSBzcGVha2VyIHRob3VnaC4KPj4gTWF5YmUgSSBhbSBtaXNzaW5nIHNv
bWV0aGluZyBpbiB5b3VyIG1lc3NhZ2U/Cj4+IFJlZ2FyZHMsIFdpbGxlbQo+Pgo+Pgo+Pgo+Pgo+
PiBPbiBGcmksIDIzIE9jdCAyMDIwLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9u
IHdyb3RlOgo+Pgo+Pj4gSSBoYXZlIGFuIGFjOTcgc291bmQgY2FyZCBhbmQgYSBjLW1lZGlhIHVz
YiBzb3VuZCBjYXJkIG9uIGEgc3lzdGVtLiAgSQo+Pj4gaGF2ZSBvbmx5IGhhZCBzdWNjZXNzIGFj
dGl2YXRpbmcgdGhlIHBjc3BlYWtlciB3aGVuIGJ1aWxkaW5nIGEga2VybmVsIGZvcgo+Pj4gZ2Vu
dG9vLiAgSSBoYXZlIG5vIGNsdWUgYXMgdG8gd2hhdCB0byBlbmFibGUgdG8gZ2V0IHRoaXMgZG9u
ZS4gIFRoaXMgaXMKPj4+IGV2ZW4gYWZ0ZXIgaGF2aW5nIGdvbmUgdGhyb3VnaCBsc3BjaSBvdXRw
dXQgYW5kIGxzbW9kIG91dHB1dCB3aXRoIHRoZQo+Pj4gaW5zdGFsbC1taW5pbWFsIGR2ZCBydW5u
aW5nIHRoZSBvcGVyYXRpbmcgc3lzdGVtICBUaGUgc3BlYWtlci10ZXN0IHV0aWxpdHkKPj4+IHB1
dHMgb3V0IHNvdW5kIGluIHRoZSBjaHJvb3QgZW52aXJvbm1lbnQgYW5kIGlzIHNpbGVudCBhZnRl
ciBmaXJzdCBib290Cj4+PiBpbnRvIHRoZSBuZXcgZW52aXJvbm1lbnQgbWFkZSBieSB0aGUgY29t
cGlsZWQga2VybmVsLgo+Pj4KPj4+Cj4+PiAtLQo+Pj4KPj4+IF9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QK
Pj4+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPj4+IGh0dHBzOi8vd3d3LnJlZGhhdC5jb20vbWFp
bG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+Pj4KPj4+Cj4+Cj4+IF9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+IEJsaW51eC1saXN0IG1haWxpbmcgbGlz
dAo+PiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4+IGh0dHBzOi8vd3d3LnJlZGhhdC5jb20vbWFp
bG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+Pgo+Pgo+IAoKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApCbGlu
dXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vd3d3LnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5m
by9ibGludXgtbGlzdA==

