Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	by mail.lfdr.de (Postfix) with ESMTP id 6FE9422B99F
	for <lists+blinux-list@lfdr.de>; Fri, 24 Jul 2020 00:34:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1595543685;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:autocrypt:autocrypt;
	bh=EUAxofzXALuk3aXYzLKmv+jzDPEfBFqdiBic50+BNrE=;
	b=DX605/IxNGos5uDwc7BCtPlPzrMHbMimIMwdMLurDxweeKsEoqYPb68wXwsld/dSOWTiiA
	U4BoHRwsXTI17YIwWvQKSH2o6V9QZ6Mna7uRgqAtOBCJLPVV8Xt66Jwy8bfUhtulplReV8
	ai/aTXaIhukh1cma2PxqMY7i02zW1ZM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-174-iYN6HvN1Odqm-BfuZDM9uA-1; Thu, 23 Jul 2020 18:34:43 -0400
X-MC-Unique: iYN6HvN1Odqm-BfuZDM9uA-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 56ED918C63C3;
	Thu, 23 Jul 2020 22:34:39 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 1D0F61B46C;
	Thu, 23 Jul 2020 22:34:39 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 49399730C4;
	Thu, 23 Jul 2020 22:34:38 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 06NMSo6T003259 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 23 Jul 2020 18:28:50 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 143B311BC65D; Thu, 23 Jul 2020 22:28:50 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 0F7A311BC639
	for <blinux-list@redhat.com>; Thu, 23 Jul 2020 22:28:47 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id C7B2C1832D2B
	for <blinux-list@redhat.com>; Thu, 23 Jul 2020 22:28:47 +0000 (UTC)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79]) by
	relay.mimecast.com with ESMTP id us-mta-119-7N1HOjH-ODORblMY34HaRA-1;
	Thu, 23 Jul 2020 18:28:44 -0400
X-MC-Unique: 7N1HOjH-ODORblMY34HaRA-1
Received: from machine.ici.fr (sfa89-1-78-208-157-71.fbx.proxad.net
	[78.208.157.71])
	by darkstar.slint.fr (Postfix) with ESMTPSA id 1A6BDBE797
	for <blinux-list@redhat.com>; Thu, 23 Jul 2020 23:21:09 +0200 (CEST)
Subject: Re: installing speakup on RHEL 7/8
To: blinux-list@redhat.com
References: <02d601d65bb9$cd357b80$67a07280$.ref@yahoo.com>
	<02d601d65bb9$cd357b80$67a07280$@yahoo.com>
	<20200718110724.GA2593@rednote.net>
	<015301d65fa8$16604280$4320c780$@yahoo.com>
	<20200723165930.GB2593@rednote.net>
	<00d901d6613a$4090d7c0$c1b28740$@yahoo.com>
Autocrypt: addr=didier@slint.fr; prefer-encrypt=mutual; keydata=
	xsBNBFY6fG8BCADH4Hf/OaE2MwXRFMrU/9oDd+YPqR/wkhmIv0veDio84fsWA5qMz1De7TEv
	dNuxIVYTznuVOd/9lpdfxQ1KV9rgD7yoBPLmjbQA1vVjB+1QylIQUV0B9AYFUsxZP32Ic2pg
	TS3US/WiZyx+/jS50ri4kvT9iDtIEu7WBWFr8YMOoq3oLkHI8Y7gBG0WsK9XYN09glhtI+bA
	jLPr/ezwEg5M3FDb4U7XFq7GcA6EEzanKMAOHdZl3lta7dv5gpgdj+38j5jPfV1cJW+J1fha
	63X72xxXGs7V6J7NGpnW7SAKfTAMXsPXZwwGIuqMQs1Z89I+2ZPJPOoV8zMncTsWzHStABEB
	AAHNH0RpZGllciBTcGFpZXIgPGRpZGllckBzbGludC5mcj7CwH8EEwEKACkCGwMHCwkIBwMC
	AQYVCAIJCgsEFgIDAQIeAQIXgAUCXcBjnwUJGlHqEgAKCRDVAgLvYMA+6v/ICAC8Oa2zXOne
	zyuFrPtNsciJWYwWamW+g5TNaY9NPnyMRNKDi7IcP6PoDwHRI8YBgo+Z9w0qFKQ/WVSI/O6s
	gm7LnOX7OEHjnub4sjrr5PHcsPRjm6iJFIgGgD+waz0K5fxcc65ti3lgHLH1tkhORyiT5EFp
	0VllWDQfPHw5avm9oopJv1FuPfZhSlFT6QhjD2ARmOrxfFBjELQZjDidckOYf/8Stoh+aK5F
	5q69DpF+bSZzOtCht+S6LT+Im5zqMgq1Dfqb3FpnVO3MyhSLeGI2nB+OFNTBGByRFKHYRsHc
	VaQBjtfsr4HnC0UR2P/bDIk/oxLnIN9nHJuL6btcf9M6zsBNBFY6fG8BCACqDQKHSw0ElDkw
	PPpNguL0ujOyygO30xlLyfW9pWOEycHSLhLzvDTlFkvr5IxvyCDBIFBdzpkeQqh1+ZxrFliw
	Wyj+9/roJlIjxeAyNs2xQZ7tQM6K5xtbUs8O5YtkCCO3OegAiLgmzzgxes79Qy+V3ciKbl+v
	rsNu7T9ro3zZhyinci1eOCcKEtXFPQW5P4woB+6+JheN9pIiDkjojmdC+xkvDadP7kJYKp19
	Itys/CbNvxEoOLsgeJhsZSmNU2QNhXkLfr7+AC99fb/c5ZDTNPRBqgLJCp+gTxn1QVJrAbq2
	OP3refmSRxdA3yUDMjxEeHwDNZJL9aEtTDlTzPk5ABEBAAHCwGUEGAEKAA8CGwwFAl1EQo4F
	CQjq+XYACgkQ1QIC72DAPurGhAf+LKNM5AajZNNnccq3bWawqsY1P5ZtFvZLPxMbx2xsnYaM
	8UPe/tGfuxp+q1ouCRKgvtefjd2eBLGXaysCA5r3Jv+hgdjPKEJut3rARhTJMaDwjKOcOTHG
	AhFtpsjBkVXuCBxEpNBEypyis3w4kQUCxP7nro4yzdXY7s6EbadNd8nG4B8qFt4JxnqJnZWl
	97mBQFJjFXlkAM+0eAkpF+rYzL6QKCKydO2Xcz7UTSMe/blXtZUjHxyr8Nh1G+ywEbkmQP+l
	QhcxJYJbK+q4zNM0U64zzLRwIvVknpdEzJKiFXsydnm9VFE9tzC6a+h40du2OdhkoNDVuFSq
	aG2M5OmN/Q==
Message-ID: <daba66f6-da1e-a915-dd5d-9569e5d3dcaf@slint.fr>
Date: Fri, 24 Jul 2020 00:21:42 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
	Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <00d901d6613a$4090d7c0$c1b28740$@yahoo.com>
Content-Language: fr
X-Mimecast-Bulk-Signature: yes
X-Mimecast-Spam-Signature: bulk
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 06NMSo6T003259
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

TWF5YmUgSSB3aWxsIGxvb2sgcGVzc2ltaXN0aWMsIGJ1dCBJIGNhbid0IGZpbmQgYSByZWNlbnQg
Y29tbWl0IGhlcmU6Cmh0dHBzOi8vZ2l0aHViLmNvbS90b3J2YWxkcy9saW51eC9jb21taXRzL21h
c3Rlci9kcml2ZXJzL3N0YWdpbmcvc3BlYWt1cAp0aGV0IHdvdWxkIGJlIGFuIGluZGljYXRpb24g
b2YgYSBzdGF0dXMgY2hhbmdlIG9uIHRoZSBob3Jpem9uLgoKUHJvcG9zYWxzIGhhdmUgYmVlbiBt
YWRlIHRvIGVuaGFuY2UgdGhlIGRvY3VtZW50YXRpb24gb2YgdGhlIHZhcmlvdXMKaGFyZHdhcmUg
bW9kZWxzIGJ1dCB0aGF0IGRvZW4ndCBzZWVtIHRvIGhhdmUgYmVlbiBtZXJnZWQgZWl0aGVyIGFs
dGhvdWdoCnRoaXMgd2FzIHJlcXVlc3RlZCB0byBnZXQgb3V0IG9mIHRoZSBzdGFnaW5nIHN0YXR1
cyBpZiBJIHJlbW1lYmVyIHdlbGwsCnNvLi4uIAoKQ2YuIHRoZSB0aHJlYWQgYmVnaW5uaW5nIHdp
dGggdGhpcyBtZXNzYWdlIG9uIHRoZSBzcGVha3VwIE1MOgpodHRwczovL3d3dy5zcGluaWNzLm5l
dC9saXN0cy9saW51eC1zcGVha3VwL21zZzYxODU2Lmh0bWwKYW5kIHRoZSBmb2xsb3ctdXAgdGhy
ZWFkIGJlZ2lubmluZyBoZXJlOgpodHRwczovL3d3dy5zcGluaWNzLm5ldC9saXN0cy9saW51eC1z
cGVha3VwL21zZzYyMjEyLmh0bWwKCkRpZGllcgoKTGUgMjMvMDcvMjAyMCDDoCAyMzo0MywgTGlu
dXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiBhIMOpY3JpdMKgOgo+IAo+IFRoYW5rcyBh
Z2FpbiBKYW5pbmEsIHRoaXMgaXMgZGVmaW5pdGVseSBnb29kIGluZm8uICBTbywgc3BlYWt1cCBp
cyBtb3ZpbmcKPiBpbnRvIHRoZSBtYWluIHRydW5rIHNvb24/ICBUaGF0J3MgZGVmaW5pdGVseSBn
b29kIG5ld3MhIQo+IAo+IFRoZSBpcm9ueSBvZiB0aGlzIHN0b3J5IGlzLCB3aGF0IHdlIGFyZSB0
YWxraW5nIGFib3V0IGhlcmUsICpJUyogdGhlIHNlY29uZAo+IHNtYWxsIG1hY2hpbmUgCj4gCj4g
LS1EYXZpZAo+IAo+IAo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tCj4gRnJvbTogYmxpbnV4
LWxpc3QtYm91bmNlc0ByZWRoYXQuY29tIDxibGludXgtbGlzdC1ib3VuY2VzQHJlZGhhdC5jb20+
IE9uCj4gQmVoYWxmIE9mIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24KPiBTZW50
OiBUaHVyc2RheSwgSnVseSAyMywgMjAyMCAxMDowMCBBTQo+IFRvOiBMaW51eCBmb3IgYmxpbmQg
Z2VuZXJhbCBkaXNjdXNzaW9uIDxibGludXgtbGlzdEByZWRoYXQuY29tPgo+IFN1YmplY3Q6IFJl
OiBpbnN0YWxsaW5nIHNwZWFrdXAgb24gUkhFTCA3LzgKPiAKPiBUaGUgZGlydHkgbGl0dGxlIHNl
Y3JldCBpcyB0aGF0IHRoZSBVLlMuIEdvdmVybm1lbnQgZ2F2ZSBSZWRoYXQgYSBwYXNzIHVuZGVy
Cj4gNTA4IGJhY2sgYXJvdW5kIDIwMDIgd2hlbiB0aGUgdGhlIHRoZW4gbmV3IFNlYy4gNTA4IHJl
Z3VsYXRpb25zIHdoZXJlIG5ld2x5Cj4gaW4gZm9yY2UuCj4gCj4gU28sIHdpdGggdGhlaXIgcGFz
cyB0aGV5IGhhcHBpbHkgc3RlcHBlZCBhd2F5LiBXaGlsZSB0aGV5IGRpZCBpbmRlZWQKPiBwYXJ0
aWNpcGF0ZSBpbiBvdXIgTmF0aW9uYWwgU2NpZW5jZSBGb3VuZGF0aW9uIHNwb25zb3JlZCBjb25m
ZXJlbmNlIG9uIExpbnV4Cj4gYW5kIGRlc2t0b3AgYWNjZXNzaWJpbGl0eSwgdGhleSB3ZXJlIGZh
ciBtb3JlIGludGVyZXN0ZWQgaW4gZGVza3RvcCB0aGFuCj4gY29uc29sZSBhY2Nlc3NpYmlsaXR5
IGFsbCBhbG9uZyBhZnRlciAyMDAyLgo+IAo+IEl0IG1heSBiZSB0aW1lIHRvIHJldmlzaXQgdGhh
dCAxOC15ZWFyIG9sZCBkZWNpc2lvbiwgYnV0IHRoYXQgd29uJ3QgbGlrZWx5Cj4gaGVscCB5b3Ug
aW4gdGhlIHNob3J0IHJ1bi4KPiAKPiBCZXN0IGFkdmljZSBJIGNhbiBjb25jb3QgaXMgdG8gZ2V0
IGEgc2Vjb25kIHNtYWxsIG1hY2hpbmUgdXAgYW5kIHNzaCBpbiB0bwo+IHRoZSBSSEVMIHN5c3Rl
bS4gTm90IGEgZ3JlYXQgc29sdXRpb24sIEkga25vdy4KPiAKPiBQUzogSSdtIHVuYXdhcmUgd2hl
dGhlciBSZWRoYXQgaGFzIG5hbWVkIGFuIGFjY2Vzc2liaWxpdHkgb2ZmaWNlciBvciBub3QuCj4g
SG93ZXZlciwgUmVkaGF0IGlzIG5vdyBvd25lZCBieSBJQk0gd2hvIGRlZmluaXRlbHkgZG9lcyBo
YXZlIGFjY2Vzc2liaWxpdHkKPiBwZW9wbGUuIFNoYWtpbmcgdGhlaXIgY2FnZSBtYXkgYmUgdGhl
IGJldHRlciB3YXkgdG8gYXBwcm9hY2ggdGhpcy0tc3RpbGwgYQo+IGxvbmdlciB0ZXJtIHN0cmF0
ZWd5LCBidXQgdGhleSBkbyBuZWVkIHRvIGRvIHNvbWV0aGluZyB3aGVuIFNwZWFrdXAgbGVhdmVz
Cj4gc3RhZ2luZywgc28gbWF5YmUgbm90IHNvIHZlcnkgbG9uZyB0ZXJtIGFmdGVyIGFsbC4KPiAK
PiBodGguCj4gCj4gSmFuaW5hCj4gCj4gTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lv
biB3cml0ZXM6Cj4+Cj4+IFRoYW5rcyBKYW5pbmEgZm9yIHRoZSBpbmZvLCBJIHdvbmRlciBpZiBh
bnlvbmUgd2UgY2FuIGFzayBpbnNpZGUgUmVkIAo+PiBoYXQgdG8gc2hlZCBzb21lIGxpZ2h0IG9u
IHRoaXMgdG9waWMsIGFzIEkgYW0gdW5hYmxlIHRvIGZpbmQgYW55IAo+PiBjb250YWN0IGluZm8g
Zm9yIHRoZWlyIGFjY2Vzc2liaWxpdHkgdGVhbS4KPj4KPj4gSSBpbWFnaW5lIEkgY2FuJ3QgYmUg
dGhlIG9ubHkgb25lIG91dCB0aGVyZSB3aG8gaXMgdHJ5aW5nIHRvIHVzZSAKPj4gc3BlYWt1cCB3
aXRoIFJIRUwsIG9yIGFtIEk/Cj4+Cj4+IC0tRGF2aWQKPj4KPj4KPj4gLS0tLS1PcmlnaW5hbCBN
ZXNzYWdlLS0tLS0KPj4gRnJvbTogYmxpbnV4LWxpc3QtYm91bmNlc0ByZWRoYXQuY29tIDxibGlu
dXgtbGlzdC1ib3VuY2VzQHJlZGhhdC5jb20+IAo+PiBPbiBCZWhhbGYgT2YgTGludXggZm9yIGJs
aW5kIGdlbmVyYWwgZGlzY3Vzc2lvbgo+PiBTZW50OiBTYXR1cmRheSwgSnVseSAxOCwgMjAyMCA0
OjA3IEFNCj4+IFRvOiBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIDxibGludXgt
bGlzdEByZWRoYXQuY29tPgo+PiBTdWJqZWN0OiBSZTogaW5zdGFsbGluZyBzcGVha3VwIG9uIFJI
RUwgNy84Cj4+Cj4+IFdoZW4gaGUgd2FzIHN0aWxsIGFsaXZlLCBCaWxsIEFja2VyIHJvdXRpbmVs
eSBidWlsdCBGZWRvcmEga2VybmVscyAKPj4gdGhhdCBpbmNsdWRlZCBTcGVha3VwLCBib3RoIGJl
Zm9yZSBhbmQgYWZ0ZXIgU3BlYWt1cCBiZWNhbWUgcGFydCBvZgo+IHN0YWdpbmcuCj4+IEkga25v
dyBmb3IgYSBmYWN0IHRoYXQgQmlsbCB0cmllZCwgYW5kIG5ldmVyIHN1Y2NlZWRlZCBhdCBidWls
ZGluZyAKPj4gU3BlYWt1cCBpbnRvIFJIRUwuIE5vdyBCaWxsJ3MgYmVlbiBnb25lIGZvciBhIGZl
dyB5ZWFycywgYnV0IEkndmUgbm8gCj4+IHJlYXNvbiB0byBiZWxpZXZlIHRoZSBlbnZpcm9ubWVu
dCBoYXMgc3VkZGVubHkgYmVjb21lIFNwZWFrdXAgZnJpZW5kbHksCj4gc29ycnkgdG8gc2F5Lgo+
Pgo+PiBObywgSSBkb24ndCByZWNhbGwgd2hhdCB0aGUgYmxvY2sgd2FzL3dlcmUuCj4+Cj4+IEkg
a25vdyB0aGF0J3Mgbm90IHdoYXQgeW91IHdhbnRlZCB0byBoZWFyLCBidXQgaXQncyB0aGUgYmVz
dCBhbnN3ZXIgSSAKPj4gY2FuIHByb3ZpZGUgYW5kIEkgZG9uJ3QgYmVsaWV2ZSB5b3UncmUgZ29p
bmcgdG8gZmluZCB2ZXJ5IG11Y2ggZGlmZmVyZW50Cj4gaW5mby4KPj4gSSdsbCBiZSBoYXBweSB0
byBiZSBwcm92ZW4gd3JvbmcsIG9mIGNvdXJzZS4KPj4KPj4gSXQnbGwgYmUgaW50ZXJlc3Rpbmcg
dG8gc2VlIHdoYXQgUkhFTCBkb2VzIHdoZW4gU3BlYWt1cCBmaW5hbGx5IAo+PiBiZWNvbWVzIGEg
Zmlyc3QgY2xhc3Mga2VybmVsIGNpdGl6ZW4uIElmIEkgdW5kZXJzdGFuZCB0aGUgc2l0dWF0aW9u
IAo+PiBjb3JyZWN0bHksIHRoYXQgc2hvdWxkIGNvbWUgZmFpcmx5IHNvb24uCj4+Cj4+IEJlc3Qs
Cj4+Cj4+IEphbmluYQo+Pgo+PiBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIHdy
aXRlczoKPj4+ICAKPj4+Cj4+PiBIaSB0aGVyZSAtCj4+Pgo+Pj4gIAo+Pj4KPj4+IEkgYW0gZ2V0
dGluZyBhIHdvcmtzdGF0aW9uIGF0IHdvcmsgdGhhdCB3aWxsIGJlIHJ1bm5pbmcgUkhFTCA3IG9y
IDguICAKPj4+IEZyb20gd2hhdCBJIHVuZGVyc3RhbmQsIHNwZWFrdXAgaXMgbm90IGEgcGFja2Fn
ZSBpbiB5dW0sIGJ1dCBpdCBpcyAKPj4+IG5vdyBwYXJ0IG9mIHRoZSBrZXJuZWwgc3RhZ2luZyB0
cmVlLgo+Pj4KPj4+ICAKPj4+Cj4+PiBEb2VzIGFueW9uZSBoYXZlIGluc3RydWN0aW9ucyBvbiBo
b3cgdG8gZ2V0IHNwZWFrdXAgaW5zdGFsbGVkIGFuZCAKPj4+IHJ1bm5pbmcgb24gUkhFTCA3IG9y
IDggdXNpbmcgc29mdHdhcmUgc3BlZWNoPwo+Pj4KPj4+ICAKPj4+Cj4+PiBBbnkgaGVscCBhcHBy
ZWNpYXRlZCwgdGhhbmsgeW91IHZlcnkgbXVjaCBpbiBhZHZhbmNlCj4+Pgo+Pj4gIAo+Pj4KPj4+
IC0tRGF2aWQKPj4+Cj4+PiAgCj4+Pgo+Pj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KPj4+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+Pj4gQmxpbnV4
LWxpc3RAcmVkaGF0LmNvbQo+Pj4gaHR0cHM6Ly93d3cucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3Rp
bmZvL2JsaW51eC1saXN0Cj4+Cj4+IC0tCj4+Cj4+IEphbmluYSBTYWprYQo+PiBodHRwczovL2xp
bmtlZGluLmNvbS9pbi9qc2Fqa2EKPj4KPj4gTGludXggRm91bmRhdGlvbiBGZWxsb3cKPj4gRXhl
Y3V0aXZlIENoYWlyLCBBY2Nlc3NpYmlsaXR5IFdvcmtncm91cDoJaHR0cDovL2ExMXkub3JnCj4+
Cj4+IFRoZSBXb3JsZCBXaWRlIFdlYiBDb25zb3J0aXVtIChXM0MpLCBXZWIgQWNjZXNzaWJpbGl0
eSBJbml0aWF0aXZlIChXQUkpCj4+IENvLUNoYWlyLCBBY2Nlc3NpYmxlIFBsYXRmb3JtIEFyY2hp
dGVjdHVyZXMJaHR0cDovL3d3dy53My5vcmcvd2FpL2FwYQo+Pgo+PiBfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+PiBCbGludXgtbGlzdCBtYWlsaW5nIGxp
c3QKPj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+PiBodHRwczovL3d3dy5yZWRoYXQuY29tL21h
aWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPj4KPj4KPj4gX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KPj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+
IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPj4gaHR0cHM6Ly93d3cucmVkaGF0LmNvbS9tYWlsbWFu
L2xpc3RpbmZvL2JsaW51eC1saXN0Cj4gCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51eC1saXN0QHJl
ZGhhdC5jb20KaHR0cHM6Ly93d3cucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1s
aXN0

