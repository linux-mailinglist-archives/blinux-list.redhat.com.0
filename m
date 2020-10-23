Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [63.128.21.124])
	by mail.lfdr.de (Postfix) with ESMTP id AC9A429733E
	for <lists+blinux-list@lfdr.de>; Fri, 23 Oct 2020 18:10:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1603469432;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:autocrypt:autocrypt;
	bh=bPRRhXnCe9N1D6XQoxQQTsKc1Fba85SAcSKCmv56bcI=;
	b=eeyYBiu1UO0GdHlQMTYPsuEJH9lOcN8p1v+lJ61rmDklbgFxl2dHf9HjmiUKJCdodsF3sZ
	p2xcqDwz0/v0Q3BBlAxpqUUb1LIAI133y4+ABpM5cIaOh1Sd4aVe0PlYGoZm+1tfL9y+qb
	Xn7udmYrlt/OF20TkaDrA4zxtWrnD30=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-106-LNjRS9W8OhaVm7DR2i-xdw-1; Fri, 23 Oct 2020 12:10:30 -0400
X-MC-Unique: LNjRS9W8OhaVm7DR2i-xdw-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 8525F64097;
	Fri, 23 Oct 2020 16:10:26 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id DAC3A60BFA;
	Fri, 23 Oct 2020 16:10:25 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 3448B9230A;
	Fri, 23 Oct 2020 16:10:25 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 09NGALVT020966 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 23 Oct 2020 12:10:21 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 93ACFB07B1; Fri, 23 Oct 2020 16:10:21 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 8E54185CCE
	for <blinux-list@redhat.com>; Fri, 23 Oct 2020 16:10:19 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 3892B102F1E5
	for <blinux-list@redhat.com>; Fri, 23 Oct 2020 16:10:19 +0000 (UTC)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79]) by
	relay.mimecast.com with ESMTP id us-mta-212-YAF2pZ5FPaiv1fb1aQtueg-1;
	Fri, 23 Oct 2020 12:10:15 -0400
X-MC-Unique: YAF2pZ5FPaiv1fb1aQtueg-1
Received: from darkstar.machine.fr (sfa89-1-78-208-157-71.fbx.proxad.net
	[78.208.157.71])
	by darkstar.slint.fr (Postfix) with ESMTPSA id 10823BE280
	for <blinux-list@redhat.com>; Fri, 23 Oct 2020 17:09:22 +0200 (CEST)
Subject: Re: building kernel for ac97 sound card
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <alpine.NEB.2.23.451.2010230909460.7641@panix1.panix.com>
	<alpine.DEB.2.21.1.2010231616570.26808@willempc.meraka.csir.co.za>
	<alpine.NEB.2.23.451.2010231148320.4709@panix1.panix.com>
	<356905ec-c03e-3638-fda4-5e1b9c6d6159@slint.fr>
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
Message-ID: <23595b0e-fb22-9fcf-a73b-449d9a7d674c@slint.fr>
Date: Fri, 23 Oct 2020 18:09:54 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
	Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <356905ec-c03e-3638-fda4-5e1b9c6d6159@slint.fr>
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
	lists01.pubmisc.prod.ext.phx2.redhat.com id 09NGALVT020966
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: fr
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

RnV0aGVyIEkganVzdCBjaGVja2VkLCB0aGUgZ2VuZXJpYyBBU29DIEFDOTcgQ09ERUMgZHJpdmVy
CmNhbiBvbmx5ICBiZSBidWlsdCBhcyBhIG1vZHVsZS4gSG93IGNvbWUgY2FuIHlvdSBoYXZlIGl0
IGJ1aWx0LWluCnRoZSBrZXJuZWw/CgpEaWRpZXIKCkxlIDIzLzEwLzIwMjAgw6AgMTg6MDQsIERp
ZGllciBTcGFpZXIgYSDDqWNyaXTCoDoKPiBIZXJlOgo+IAo+IGRpZGllclt+XSQgemdyZXAgLWkg
YWM5NyAvcHJvYy9jb25maWcuZ3ogIAo+IENPTkZJR19TTkRfQUM5N19DT0RFQz1tCj4gQ09ORklH
X1NORF9BQzk3X1BPV0VSX1NBVkU9eQo+IENPTkZJR19TTkRfQUM5N19QT1dFUl9TQVZFX0RFRkFV
TFQ9MAo+IENPTkZJR19TTkRfU09DX0FDOTdfQlVTPXkKPiBDT05GSUdfU05EX1NPQ19BQzk3X0NP
REVDPW0KPiBDT05GSUdfQUM5N19CVVM9bQo+IAo+IFVubGVzcyB5b3UgYXJlIGJ1aWxkaW5nIGEg
Y3VzdG9tIGtlcm5lbCBJIGFtIGEgYml0IHN1cnByaXNlZDoKPiBhcyBmYXIgYXMgSSBrbm93IHBy
ZXR0eSBtdWNoIGFsbCBkaXN0cmlidXRpb25zIHNoaXAga2VybmVscwo+IHdpdGggYWM5NyBwcm92
aWRlZCBhcyBtb2R1bGVzLgo+IAo+IERpZGllcgo+IAo+IExlIDIzLzEwLzIwMjAgw6AgMTc6NTEs
IExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gYSDDqWNyaXTCoDoKPj4gSSB0aGlu
ayBteSBtaXN0YWtlIHdhcyBoYXZpbmcgYWM5NyBidWlsdCBpbnRvIHRoZSBrZXJuZWw7IGNvdWxk
IGJlIGFjOTcKPj4gZG9lc24ndCBsaWtlIHRoYXQgaG91c2luZy4gIEknbGwgdHJ5IHJlYnVpbGRp
bmcgdGhhdCBhcyBhIG1vZHVsZSBhbmQgc2VlCj4+IGlmIEkgZ2V0IGZ1cnRoZXIuICBUaGUgbGlu
dXgga2VybmVsIGNvbmZpZ3VyYXRpb24gaXMgc28gY29tcGxleCBpdCdzIG5vdAo+PiBlYXN5IHRv
IGtub3cgd2hpY2ggdGhpbmdzIG5lZWQgdG8gYmUgaW4gdGhlIGtlcm5lbCBhcyBidWlsdC1pbnMg
YW5kCj4+IHdoaWNoIG5lZWQgdG8gYmUgbW9kdWxlcy4KPj4KPj4gT24gRnJpLCAyMyBPY3QgMjAy
MCwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToKPj4KPj4+IERhdGU6
IEZyaSwgMjMgT2N0IDIwMjAgMTA6MjI6MTAKPj4+IEZyb206IExpbnV4IGZvciBibGluZCBnZW5l
cmFsIGRpc2N1c3Npb24gPGJsaW51eC1saXN0QHJlZGhhdC5jb20+Cj4+PiBUbzogTGludXggZm9y
IGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiA8YmxpbnV4LWxpc3RAcmVkaGF0LmNvbT4KPj4+IFN1
YmplY3Q6IFJlOiBidWlsZGluZyBrZXJuZWwgZm9yIGFjOTcgc291bmQgY2FyZAo+Pj4KPj4+IFRo
ZSBzb3VuZCBjYXJkIGRyaXZlcnMgYXJlIG1vZHVsZXMsIHNvIGp1c3QgYnVpbGQgdGhlIG1vZHVs
ZSBpZiBuZWVkIGJlLgo+Pj4gQWM5NyBzb3VuZHMgcHJldHR5IHN0YW5kYXJkIHRvIG1lIHRob3Vn
aCwgc28gSSB0aGluayBpdCBzaG91bGQgYmUgcGFydCBvZiB0aGUKPj4+IHN0YW5kYXJkIHNldHVw
IGFscmVhZHkuCj4+PiBUaGUgcGMgc3BlYWtlciBpcyBzb21ldGhpbmcgZWxzZSB0aG91Z2guCj4+
PiBUaGVyZSBpcyBhIG1vZHVsZSBjYWxsZWQgcGNzcGtyIHdoaWNoIGFsbG93IHRoZSB1c2Ugb2Yg
dGhhdC4KPj4+IEFsbCBwYydzIGRvZXMgbm90IGhhdmUgYSBzcGVha2VyIHRob3VnaC4KPj4+IE1h
eWJlIEkgYW0gbWlzc2luZyBzb21ldGhpbmcgaW4geW91ciBtZXNzYWdlPwo+Pj4gUmVnYXJkcywg
V2lsbGVtCj4+Pgo+Pj4KPj4+Cj4+Pgo+Pj4gT24gRnJpLCAyMyBPY3QgMjAyMCwgTGludXggZm9y
IGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToKPj4+Cj4+Pj4gSSBoYXZlIGFuIGFjOTcg
c291bmQgY2FyZCBhbmQgYSBjLW1lZGlhIHVzYiBzb3VuZCBjYXJkIG9uIGEgc3lzdGVtLiAgSQo+
Pj4+IGhhdmUgb25seSBoYWQgc3VjY2VzcyBhY3RpdmF0aW5nIHRoZSBwY3NwZWFrZXIgd2hlbiBi
dWlsZGluZyBhIGtlcm5lbCBmb3IKPj4+PiBnZW50b28uICBJIGhhdmUgbm8gY2x1ZSBhcyB0byB3
aGF0IHRvIGVuYWJsZSB0byBnZXQgdGhpcyBkb25lLiAgVGhpcyBpcwo+Pj4+IGV2ZW4gYWZ0ZXIg
aGF2aW5nIGdvbmUgdGhyb3VnaCBsc3BjaSBvdXRwdXQgYW5kIGxzbW9kIG91dHB1dCB3aXRoIHRo
ZQo+Pj4+IGluc3RhbGwtbWluaW1hbCBkdmQgcnVubmluZyB0aGUgb3BlcmF0aW5nIHN5c3RlbSAg
VGhlIHNwZWFrZXItdGVzdCB1dGlsaXR5Cj4+Pj4gcHV0cyBvdXQgc291bmQgaW4gdGhlIGNocm9v
dCBlbnZpcm9ubWVudCBhbmQgaXMgc2lsZW50IGFmdGVyIGZpcnN0IGJvb3QKPj4+PiBpbnRvIHRo
ZSBuZXcgZW52aXJvbm1lbnQgbWFkZSBieSB0aGUgY29tcGlsZWQga2VybmVsLgoKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxp
bmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vd3d3LnJlZGhhdC5jb20vbWFp
bG1hbi9saXN0aW5mby9ibGludXgtbGlzdA==

