Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	by mail.lfdr.de (Postfix) with ESMTP id 871C019B859
	for <lists+blinux-list@lfdr.de>; Thu,  2 Apr 2020 00:20:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1585779640;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:autocrypt:autocrypt;
	bh=5WWxUgWj0n567xrhIEKeD8tzb2gi0h4gTjBUx9rPxBQ=;
	b=eFLU6igHq2al307F5INxPLQ1Wrsh/u1+djmtHq2epynMnK7sDejoouGFIQLS72SzIvbv9D
	r9kTW3DUtdT761zvzgEQkn4ICoYRdGbI0zO+AmXESvixGqiMoIS1MIr3P74bLvZYeJQ8y9
	hCPsQS1kjwWnRB9sPqewD1CrhovwoXI=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-18-IyUxe5GYMJi5iNbBjQaL-w-1; Wed, 01 Apr 2020 18:20:37 -0400
X-MC-Unique: IyUxe5GYMJi5iNbBjQaL-w-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 8E95C8017F5;
	Wed,  1 Apr 2020 22:20:33 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 205DA19C69;
	Wed,  1 Apr 2020 22:20:33 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 78B7E18089C8;
	Wed,  1 Apr 2020 22:20:32 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 031MKSAL008424 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 1 Apr 2020 18:20:28 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 34E1D117922; Wed,  1 Apr 2020 22:20:28 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3043D11515F
	for <blinux-list@redhat.com>; Wed,  1 Apr 2020 22:20:25 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 75B6A8F8435
	for <blinux-list@redhat.com>; Wed,  1 Apr 2020 22:20:25 +0000 (UTC)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79]) by
	relay.mimecast.com with ESMTP id us-mta-171-OZE111KtMuyAZA32ohkE_Q-1;
	Wed, 01 Apr 2020 18:20:22 -0400
X-MC-Unique: OZE111KtMuyAZA32ohkE_Q-1
Received: from darkstar.slint.fr (sfa89-1-78-208-157-71.fbx.proxad.net
	[78.208.157.71])
	by darkstar.slint.fr (Postfix) with ESMTPSA id BBF5EBE797
	for <blinux-list@redhat.com>; Wed,  1 Apr 2020 23:20:05 +0200 (CEST)
Subject: Re: Alien::SVN
To: blinux-list@redhat.com
References: <alpine.NEB.2.21.2003311936270.11267@panix1.panix.com>
	<20200401090427.3839f720@telaviv1.shlomifish.org>
	<alpine.NEB.2.21.2004011156190.9118@panix1.panix.com>
	<20200401193036.22b07575@telaviv1.shlomifish.org>
	<2cbaa949-3333-4bdb-c2a0-1b1880f66051@slint.fr>
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
Message-ID: <e5a68357-715e-73d6-e102-49ba413e5c6c@slint.fr>
Date: Thu, 2 Apr 2020 00:20:21 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
	Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <2cbaa949-3333-4bdb-c2a0-1b1880f66051@slint.fr>
Content-Language: fr
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 031MKSAL008424
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
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

U29ycnkgSSBtaXNzZWQgb25lIGNvbW1hbmQgKGFuZCBpbmNsdWRlZCBhbiB1c2VsZXNzIG9uZSk6
CgpsZnRwIC1jICJtaXJyb3IgIGh0dHA6Ly9zbGFja3dhcmUudWsvc2xhY2t3YXJlL3NsYWNrd2Fy
ZTY0LWN1cnJlbnQvc291cmNlL2Qvc3VidmVyc2lvbi8iCmNkIHN1YnZlcnNpb24Kc3UgIyB5b3Ug
bmVlZCB0byBiZSByb290IHRvIGJ1aWxkIHRoZSBwYWNrYWdlCnNoIHN1YnZlcnNpb24uU2xhY2tC
dWlsZAoKTGUgMDIvMDQvMjAyMCDDoCAwMDoxNiwgRGlkaWVyIFNwYWllciBhIMOpY3JpdMKgOgo+
IEhpLAo+IAo+IEkgYW0gRGlkaWVyIFNwYWllciwgU2xpbnQgbWFpbnRhaW5lci4KPiAKPiBBdCB0
aW1lIG9mIHdyaXRpbmcgd2Ugc2hpcCB0aGlzIHBhY2FrYWdlIGNvbWluZyBmcm9tIFNsYWNrd2Fy
ZTY0LTE0LjI6Cj4gaHR0cDovL3NsYWNrd2FyZS51ay9zbGFja3dhcmUvc2xhY2t3YXJlNjQtMTQu
Mi9wYXRjaGVzL3BhY2thZ2VzL3N1YnZlcnNpb24tMS45LjcteDg2XzY0LTFfc2xhY2sxNC4yLnR4
ego+IAo+IFRoZSBwYWNrYWdlIHlvdSBtZW50aW9uZWQgaXMgZm9yIFNsYWNrd2FyZTY0LWN1cnJl
bnQgaW50ZW5kZWQgdG8gcHJlcGFyZQo+IHRoZSByZWxlYXNlIG9mIFNsYWNrd2FyZS0xNS4wLgo+
IAo+IFNvOgo+IDEuIElmIHRoZXJlIGlzIG5vIHJlYWwgbmVlZCB0byB1cGdyYWRlLCBrZWVwIHRo
ZSBwYWNrYWdlIHNoaXBwZWQgaW4gU2xpbnQuCj4gMS4gSWYgeW91IGhhdmUgYSByZWFsIG5lZWQg
dG8gdXBncmFkZSAod2hpY2ggb25lPyksIGJldHRlciB1c2UgdGhlIHNvdXJjZSBmaWxlcwo+IGFu
ZCBidWlsZCBhIFNsYWNrd2FyZSBwYWNrYWdlLiBHZW5lcmFsbHkgc3BlYWtpbmcgeW91IGNhbiBk
byBpdCB0aGlzIHdheToKPiAKPiBsZnRwIC1jICJtaXJyb3IgIGh0dHA6Ly9zbGFja3dhcmUudWsv
c2xhY2t3YXJlL3NsYWNrd2FyZTY0LWN1cnJlbnQvc291cmNlL2Qvc3VidmVyc2lvbi8iCj4gQ1dE
PSQocHdkKQo+IGNkIHN1YnZlcnNpb24KPiBzdSAjIHlvdSBuZWVkIHRvIGJlIHJvb3QgdG8gYnVp
bGQgdGhlIHBhY2thZ2UKPiAKPiBCdXQgaW4gdGhpcyBjYXNlIHRoZSBidWlsZCBmYWlscyB3aXRo
IHRoaXMgZXJyb3I6Cj4gY29uZmlndXJlOiBlcnJvcjogY2Fubm90IGZpbmQga2Y1LWNvbmZpZwo+
IAo+IFByb2JhYmx5IHRoaXMgdmVyc2lvbiBuZWVkcyBzb21ldGhpbmcgbm90IHNoaXBwZWQgaW4g
U2xhY2t3YXJlNjQtMTQuMiwgSSBkaWRuJ3QgaW52ZXN0aWdhdGUgZnVydGhlci4KPiAKPiBCZXN0
IHJlZ2FyZHMsCj4gCj4gRGlkaWVyCj4gCj4gCj4gTGUgMDEvMDQvMjAyMCDDoCAxODozMCwgTGlu
dXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiBhIMOpY3JpdMKgOgo+PiBIaSEKPj4KPj4g
T24gV2VkLCAxIEFwciAyMDIwIDExOjU5OjM3IC0wNDAwCj4+IExpbnV4IGZvciBibGluZCBnZW5l
cmFsIGRpc2N1c3Npb24gPGJsaW51eC1saXN0QHJlZGhhdC5jb20+IHdyb3RlOgo+Pgo+Pj4gRGlz
dHJpYnV0aW9uIHNsaW50LiBTVk46OkNvcmUgY2FtZSB1cCBhcyB1bnBhcnNlYWJsZSBpbiBjcGFu
cCB3aXRoIHVzZSBvZgo+Pj4gbyBjb21tYW5kIHRvIGNoZWNrIGZvciBvdXQgb2YgZGF0ZSBtb2R1
bGVzLiBJJ20gdXNpbmcgY3BhbnAgdG8gaW5zdGFsbAo+Pj4gdGhpcyBhbmQgdGhlIHBhY2thZ2Ug
Y2xhaW1zIHRvIHN0aWxsIGJlIGJ1aWxkaW5nIGFuZCBieSAyOjAwUE0gdG9kYXkgaXQKPj4+IHdp
bGwgaGF2ZSB0YWtlbiAyNCBob3VycyB0byBidWlsZC4gSSBjb3VsZCBqdXN0IHRyYXNoIHRoZSBi
dWlsZCBhcyBJJ3ZlCj4+PiBkb25lIGJlZm9yZSBidXQgYW0gY3VyaW91cyBhcyB0byBwb3NzaWJs
ZSBiZW5lZmljaWFsIGVmZmVjdHMgb2YgaGF2aW5nCj4+PiBTVk46OkNvcmUgdW5wYXJzZWFibGUg
Z28gYXdheSBhbmQgaGF2ZSB0aGF0IHVwZGF0ZWQuIE9uIFdlZCwgMSBBcHIgMjAyMCwKPj4+IExp
bnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4+Pgo+Pgo+PiBTaW5jZSBz
bGludCBpcyBiYXNlZCBvbiBzbGFja3dhcmUgdGhlbiBhY2NvcmRpbmcgdG8KPj4gaHR0cHM6Ly9z
bGFja3dhcmUucGtncy5vcmcvY3VycmVudC9zbGFja3dhcmUteDg2XzY0L3N1YnZlcnNpb24tMS4x
My4wLXg4Nl82NC0zLnR4ei5odG1sCj4+IC0gc3VidmVyc2lvbiB0aGVyZSAoYW5kIFNWTi9Db3Jl
LnBtICkgaXMgYXQgdGhlIGxhdGVzdCB2ZXJzaW9uLiBObyBuZWVkIHRvCj4+IHVwZ3JhZGUgYW5k
IEkgc3VnZ2VzdCB5b3Uga2lsbCB0aGUgYnVpbGQuCj4+Cj4+Pj4gRGF0ZTogV2VkLCAxIEFwciAy
MDIwIDAyOjA0OjI3Cj4+Pj4gRnJvbTogTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lv
biA8YmxpbnV4LWxpc3RAcmVkaGF0LmNvbT4KPj4+PiBUbzogTGludXggZm9yIGJsaW5kIGdlbmVy
YWwgZGlzY3Vzc2lvbiA8YmxpbnV4LWxpc3RAcmVkaGF0LmNvbT4KPj4+PiBTdWJqZWN0OiBSZTog
QWxpZW46OlNWTgo+Pj4+Cj4+Pj4gSGkhCj4+Pj4KPj4+PiBPbiBUdWUsIDMxIE1hciAyMDIwIDE5
OjM4OjIxIC0wNDAwCj4+Pj4gTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiA8Ymxp
bnV4LWxpc3RAcmVkaGF0LmNvbT4gd3JvdGU6Cj4+Pj4gIAo+Pj4+PiBpcyBBbGllbjo6U1ZOIHN1
cHBvc2VkIHRvIHRha2Ugc2V2ZXJhbCBob3VycyB0byBpbnN0YWxsPwo+Pj4+PiBJZiBubywgdGhh
dCdzIHdoYXQncyBoYXBwZW5pbmcgb3ZlciBoZXJlLgo+Pj4+PiBJZiBJIGV2ZXIgcnVuIHRoaXMg
YWdhaW4gSSB0aGluayBJIHdhbnQgdG8gd2F0Y2ggcGVybCBjb2RlIGV4ZWN1dGlvbiBhcyBpdAo+
Pj4+PiBoYXBwZW5zIHdoZW4gdGhpcyBvbmUgaW5zdGFsbHMuCj4+Pj4+ICAKPj4+Pgo+Pj4+IERp
ZCB5b3UgbWFuYWdlIHRvIHNvcnQgaXQgb3V0IGJ5IG5vdz8gSWYgbm90LCBjYW4geW91IHByb3Zp
ZGUgbW9yZSBkZXRhaWxzCj4+Pj4gYWJvdXQ6Cj4+Pj4KPj4+PiAxLiB5b3VyIGRpc3Rybyt2ZXJz
aW9uCj4+Pj4KPj4+PiAyLiB3aHkgZG8geW91IG5lZWQgQWxpZW46OlNWTj8KPj4+Pgo+Pj4+IDMu
IEhvdyBhcmUgeW91IGluc3RhbGxpbmcgaXQ/Cj4+Pj4KPj4+PiBTZWUgaHR0cHM6Ly9naXRodWIu
Y29tL3NobG9taWYvd3JpdGluZy10aGUtcGVyZmVjdC1xdWVzdGlvbiAuCj4+Pj4KPj4+PiBUaGFu
a3MhCj4+Pj4KPj4+PiAgCj4+Pj4+Cj4+Pj4+Cj4+Pj4+IC0tCj4+Pj4+Cj4+Pj4+Cj4+Pj4+IF9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+Pj4+IEJsaW51
eC1saXN0IG1haWxpbmcgbGlzdAo+Pj4+PiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4+Pj4+IGh0
dHBzOi8vd3d3LnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+Pj4+PiAg
Cj4+Pj4KPj4+Pgo+Pj4+Cj4+Pj4gLS0KPj4+Pgo+Pj4+IFNobG9taSBGaXNoICAgICAgIGh0dHBz
Oi8vd3d3LnNobG9taWZpc2gub3JnLwo+Pj4+IGh0dHBzOi8vd3d3LnNobG9taWZpc2gub3JnL2h1
bW91ci93YXlzX3RvX2RvX2l0Lmh0bWwKPj4+Pgo+Pj4+IENodWNrIE5vcnJpcyB3aWxsIGtpbGwg
eW91IGp1c3QgZm9yIHRoZSBmdW4gb2Yga2lja2luZyB5b3VyIERlYXRoJ3MgYXNzCj4+Pj4gdGls
bCBpdCBydW5zIGF3YXksIHRoZW4gYmVhdGluZyB5b3VyIHNvdWwgYmFjayBpbnRvIHlvdXIgY29y
cHNlLiAoYnkKPj4+PiBlLW5la28pLiA/IGh0dHA6Ly93d3cuc2hsb21pZmlzaC5vcmcvaHVtb3Vy
L2JpdHMvZmFjdHMvQ2h1Y2stTm9ycmlzLwo+Pj4+Cj4+Pj4gUGxlYXNlIHJlcGx5IHRvIGxpc3Qg
aWYgaXQncyBhIG1haWxpbmcgbGlzdCBwb3N0IC0gaHR0cDovL3NobG9tLmluL3JlcGx5IC4KPj4+
Pgo+Pj4+Cj4+Pj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KPj4+PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPj4+PiBCbGludXgtbGlzdEByZWRoYXQu
Y29tCj4+Pj4gaHR0cHM6Ly93d3cucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1s
aXN0ICAKPj4+Cj4+Cj4+Cj4+CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51eC1saXN0QHJlZGhhdC5j
b20KaHR0cHM6Ly93d3cucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0

