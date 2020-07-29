Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com [207.211.31.120])
	by mail.lfdr.de (Postfix) with ESMTP id 40E68232177
	for <lists+blinux-list@lfdr.de>; Wed, 29 Jul 2020 17:25:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1596036345;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:autocrypt:autocrypt;
	bh=2dTVT5K97b1LQ0jwYAB6TKG0NsJ/VLKM0x8S3b4TNXk=;
	b=Qy1oqjjonxT1Vg+1I4dfYuSkVHdmjYyNh1mpztIqs4oZAyiPp7O0jQFk4BAZvhfFBtIeFD
	nuZlEiKoDqIx1E8lxx0g/6rRlITKB6Dhnf08wHwrT84mL64ITBnf00n9uxb5kw+DS2GDgI
	JN+fjs+yg8iSlLmoruUonPwtaYHWPXc=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-9-1UxSPGiuNzGaMhdUSoI2Vg-1; Wed, 29 Jul 2020 11:25:37 -0400
X-MC-Unique: 1UxSPGiuNzGaMhdUSoI2Vg-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 028D879EC5;
	Wed, 29 Jul 2020 15:25:33 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 10DB4101E58A;
	Wed, 29 Jul 2020 15:25:27 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id EF22A1809563;
	Wed, 29 Jul 2020 15:25:19 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 06TFOSY7032149 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 29 Jul 2020 11:24:28 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 4FD3D2156A50; Wed, 29 Jul 2020 15:24:28 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D0DEF2157F23
	for <blinux-list@redhat.com>; Wed, 29 Jul 2020 15:24:21 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 9A0818007CD
	for <blinux-list@redhat.com>; Wed, 29 Jul 2020 15:24:21 +0000 (UTC)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79]) by
	relay.mimecast.com with ESMTP id us-mta-371-wRW-z1HgMpOqC3S1I9kHoQ-1;
	Wed, 29 Jul 2020 11:24:18 -0400
X-MC-Unique: wRW-z1HgMpOqC3S1I9kHoQ-1
Received: from machine.ici.fr (sfa89-1-78-208-157-71.fbx.proxad.net
	[78.208.157.71])
	by darkstar.slint.fr (Postfix) with ESMTPSA id F15FBBE7DC
	for <blinux-list@redhat.com>; Wed, 29 Jul 2020 16:23:42 +0200 (CEST)
Subject: Re: installing speakup on RHEL 7/8
To: blinux-list@redhat.com
References: <02d601d65bb9$cd357b80$67a07280$.ref@yahoo.com>
	<02d601d65bb9$cd357b80$67a07280$@yahoo.com>
	<20200718110724.GA2593@rednote.net>
	<015301d65fa8$16604280$4320c780$@yahoo.com>
	<20200723165930.GB2593@rednote.net>
	<00d901d6613a$4090d7c0$c1b28740$@yahoo.com>
	<daba66f6-da1e-a915-dd5d-9569e5d3dcaf@slint.fr>
	<20200726163624.y7loskvf3jg4nw65@function>
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
Message-ID: <54181004-f8ea-344a-29e7-ab437c03f22f@slint.fr>
Date: Wed, 29 Jul 2020 17:24:15 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
	Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200726163624.y7loskvf3jg4nw65@function>
Content-Language: fr
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 06TFOSY7032149
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

TGUgMjYvMDcvMjAyMCDDoCAxODozNiwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lv
biBhIMOpY3JpdMKgOgo+IEFuZCB0aGUgc3lzZnMgcGF0Y2ggc3VibWl0dGVkIGJ5IE9rYXNoIGRp
ZCBnZXQgY29tbWl0dGVkIGluLiBOb2JvZHkKPiBzZWVtcyB0byBoYXZlIHRoZW4gdGFrZW4gdGhl
IHRpbWUgdG8gY2hlY2sgd2hhdCdzIGxlZnQgaW4gdGhlIFRPRE8gbGlzdCwKPiBidXQgSSBndWVz
cyBpdCdzIG5vdyBlbXB0eSBhbmQgc3BlYWt1cCBjYW4gZ28gdG8gbWFpbmxpbmUuCj4gCj4gU2Ft
dWVsCgpUaGVuIG9uIHRoZSBzcGVha3VwIG1haWxpbmcgbGlzdApMZSAyOS8wNy8yMDIwIMOgIDE0
OjE5LCBTYW11ZWwgVGhpYmF1bHQgYSDDqWNyaXQgOgo+IEdyZWcgS0gsIGxlIG1lci4gMjkganVp
bC4gMjAyMCAxNDowNTozMyArMDIwMCwgYSBlY3JpdDoKPj4gT24gV2VkLCBKdWwgMjksIDIwMjAg
YXQgMDI6MzU6MzFBTSArMDIwMCwgU2FtdWVsIFRoaWJhdWx0IHdyb3RlOgo+Pj4gVGhlIG5hc3R5
IFRPRE8gaXRlbXMgYXJlIGRvbmUuCj4+Pgo+Pj4gU2lnbmVkLW9mZi1ieTogU2FtdWVsIFRoaWJh
dWx0IDxoaWRkZW4gZW1haWwgYWRkcmVzcz4KPj4KPj4gTm93IGFwcGxpZWQsIHRoYW5rcyBmb3Ig
YWxsIG9mIHRoZSB3b3JrIHNvIGZhci4KPj4KPj4gSSB3aWxsIGJlIGdsYWQgdG8gbWVyZ2UgcGF0
Y2hlcyBmb3IgdGhpcyBzdWJzeXN0ZW0gdG8gTGludXMgaWYgeW91IHdhbnQKPj4gbWUgdG8gY29s
bGVjdCB0aGVtLiAgSWYgc28sIGZlZWwgZnJlZSB0byBmb3J3YXJkIHRoZW0gb24gdG8gbWUsIG9y
IHNlbmQKPj4gbWUgYSBwdWxsIHJlcXVlc3QuCj4gCj4gT2shCj4gCj4gVGhhbmtzLAo+IFNhbXVl
bAoKVGhlbiBvbiB0aGUgc2FtZSB0aHJlYWQ6CkxlIDI5LzA3LzIwMjAgw6AgMTQ6MjAsIFNhbXVl
bCBUaGliYXVsdCBhIMOpY3JpdCA6Cj4gRm9yIGluZm9ybWF0aW9uIGZvciB0aGUgc3BlYWt1cCBt
YWlsaW5nIGxpc3Q6IHRoYXQgbWVhbnMgc3BlYWt1cCBpbgo+IG1haW5saW5lIExpbnV4IHByb2Jh
Ymx5IGluIGl0cyB2ZXJzaW9uIDUuOS4KPiAKPiBTYW11ZWwKClRoYW5rcyBTYW11ZWwhCgpOb3Qg
dGhhdCBpdCBtYXR0ZXJzIG11Y2ggZm9yIFNsYWNrd2FyZSBhbmQgZGVyaXZhdGl2ZXMgYXMgc3Bl
YWt1cCBkcml2ZXJzCmhhdmUgYmVlbiBwcm92aWRlZCBpbiBTbGFja3dhcmUgc2luY2UgdmVyc2lv
biA4LjAgcmVsZWFzZWQgb24gMjAwMS0wNi0yNywKaW4ga2VybmVsIHZlcnNpb24gMi4yLjE5Li4u
CgpCdXQgaG9wZWZ1bGx5IGl0IHdpbGwgaGVscCB1c2VycyBvZiBvdGhlciBkaXN0cmlidXRpb25z
LCBsaWtlIFJIRUwuCgpCZXN0IHJlZ2FyZHMgCgpEaWRpZXIKCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxp
bnV4LWxpc3RAcmVkaGF0LmNvbQpodHRwczovL3d3dy5yZWRoYXQuY29tL21haWxtYW4vbGlzdGlu
Zm8vYmxpbnV4LWxpc3Q=

