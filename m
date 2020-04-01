Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	by mail.lfdr.de (Postfix) with ESMTP id 63B5119B851
	for <lists+blinux-list@lfdr.de>; Thu,  2 Apr 2020 00:18:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1585779507;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:autocrypt:autocrypt;
	bh=0oemtFEfl7kVgbHa1jBd4j9hHcHRDKrsZJKHHCRfMMM=;
	b=OMyAhy5vzW2yGBXEViay3xN4gii0LT8lZtFXiHLUWYqmyX1EZ1/aU+bossz0RJaAazRVQv
	xMbotjNyHOCmsOiJYOYpJVnfrdKIkXxq4clabvnOPAAli11b6I2tHdNFIOMiCVXVBrrA2g
	yXUpufojcqF5itoZxRvlFLb2vaFGeLQ=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-170-MXga2oMUOhmwjL17lo460g-1; Wed, 01 Apr 2020 18:18:24 -0400
X-MC-Unique: MXga2oMUOhmwjL17lo460g-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 8335F1084426;
	Wed,  1 Apr 2020 22:18:20 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id CE79C60BE2;
	Wed,  1 Apr 2020 22:18:15 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 768C686C04;
	Wed,  1 Apr 2020 22:18:08 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 031MGm9k008267 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 1 Apr 2020 18:16:49 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id CD7362166B27; Wed,  1 Apr 2020 22:16:48 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C9A122166B2F
	for <blinux-list@redhat.com>; Wed,  1 Apr 2020 22:16:46 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 6B9AF101A55A
	for <blinux-list@redhat.com>; Wed,  1 Apr 2020 22:16:46 +0000 (UTC)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79]) by
	relay.mimecast.com with ESMTP id us-mta-9-hcOIoVwYNK6v8SU46DzJcA-1;
	Wed, 01 Apr 2020 18:16:40 -0400
X-MC-Unique: hcOIoVwYNK6v8SU46DzJcA-1
Received: from darkstar.slint.fr (sfa89-1-78-208-157-71.fbx.proxad.net
	[78.208.157.71])
	by darkstar.slint.fr (Postfix) with ESMTPSA id B6DD8BE797
	for <blinux-list@redhat.com>; Wed,  1 Apr 2020 23:16:22 +0200 (CEST)
Subject: Re: Alien::SVN
To: blinux-list@redhat.com
References: <alpine.NEB.2.21.2003311936270.11267@panix1.panix.com>
	<20200401090427.3839f720@telaviv1.shlomifish.org>
	<alpine.NEB.2.21.2004011156190.9118@panix1.panix.com>
	<20200401193036.22b07575@telaviv1.shlomifish.org>
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
Message-ID: <2cbaa949-3333-4bdb-c2a0-1b1880f66051@slint.fr>
Date: Thu, 2 Apr 2020 00:16:38 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
	Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200401193036.22b07575@telaviv1.shlomifish.org>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 031MGm9k008267
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
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGksCgpJIGFtIERpZGllciBTcGFpZXIsIFNsaW50IG1haW50YWluZXIuCgpBdCB0aW1lIG9mIHdy
aXRpbmcgd2Ugc2hpcCB0aGlzIHBhY2FrYWdlIGNvbWluZyBmcm9tIFNsYWNrd2FyZTY0LTE0LjI6
Cmh0dHA6Ly9zbGFja3dhcmUudWsvc2xhY2t3YXJlL3NsYWNrd2FyZTY0LTE0LjIvcGF0Y2hlcy9w
YWNrYWdlcy9zdWJ2ZXJzaW9uLTEuOS43LXg4Nl82NC0xX3NsYWNrMTQuMi50eHoKClRoZSBwYWNr
YWdlIHlvdSBtZW50aW9uZWQgaXMgZm9yIFNsYWNrd2FyZTY0LWN1cnJlbnQgaW50ZW5kZWQgdG8g
cHJlcGFyZQp0aGUgcmVsZWFzZSBvZiBTbGFja3dhcmUtMTUuMC4KClNvOgoxLiBJZiB0aGVyZSBp
cyBubyByZWFsIG5lZWQgdG8gdXBncmFkZSwga2VlcCB0aGUgcGFja2FnZSBzaGlwcGVkIGluIFNs
aW50LgoxLiBJZiB5b3UgaGF2ZSBhIHJlYWwgbmVlZCB0byB1cGdyYWRlICh3aGljaCBvbmU/KSwg
YmV0dGVyIHVzZSB0aGUgc291cmNlIGZpbGVzCmFuZCBidWlsZCBhIFNsYWNrd2FyZSBwYWNrYWdl
LiBHZW5lcmFsbHkgc3BlYWtpbmcgeW91IGNhbiBkbyBpdCB0aGlzIHdheToKCmxmdHAgLWMgIm1p
cnJvciAgaHR0cDovL3NsYWNrd2FyZS51ay9zbGFja3dhcmUvc2xhY2t3YXJlNjQtY3VycmVudC9z
b3VyY2UvZC9zdWJ2ZXJzaW9uLyIKQ1dEPSQocHdkKQpjZCBzdWJ2ZXJzaW9uCnN1ICMgeW91IG5l
ZWQgdG8gYmUgcm9vdCB0byBidWlsZCB0aGUgcGFja2FnZQoKQnV0IGluIHRoaXMgY2FzZSB0aGUg
YnVpbGQgZmFpbHMgd2l0aCB0aGlzIGVycm9yOgpjb25maWd1cmU6IGVycm9yOiBjYW5ub3QgZmlu
ZCBrZjUtY29uZmlnCgpQcm9iYWJseSB0aGlzIHZlcnNpb24gbmVlZHMgc29tZXRoaW5nIG5vdCBz
aGlwcGVkIGluIFNsYWNrd2FyZTY0LTE0LjIsIEkgZGlkbid0IGludmVzdGlnYXRlIGZ1cnRoZXIu
CgpCZXN0IHJlZ2FyZHMsCgpEaWRpZXIKCgpMZSAwMS8wNC8yMDIwIMOgIDE4OjMwLCBMaW51eCBm
b3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIGEgw6ljcml0wqA6Cj4gSGkhCj4gCj4gT24gV2Vk
LCAxIEFwciAyMDIwIDExOjU5OjM3IC0wNDAwCj4gTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlz
Y3Vzc2lvbiA8YmxpbnV4LWxpc3RAcmVkaGF0LmNvbT4gd3JvdGU6Cj4gCj4+IERpc3RyaWJ1dGlv
biBzbGludC4gU1ZOOjpDb3JlIGNhbWUgdXAgYXMgdW5wYXJzZWFibGUgaW4gY3BhbnAgd2l0aCB1
c2Ugb2YKPj4gbyBjb21tYW5kIHRvIGNoZWNrIGZvciBvdXQgb2YgZGF0ZSBtb2R1bGVzLiBJJ20g
dXNpbmcgY3BhbnAgdG8gaW5zdGFsbAo+PiB0aGlzIGFuZCB0aGUgcGFja2FnZSBjbGFpbXMgdG8g
c3RpbGwgYmUgYnVpbGRpbmcgYW5kIGJ5IDI6MDBQTSB0b2RheSBpdAo+PiB3aWxsIGhhdmUgdGFr
ZW4gMjQgaG91cnMgdG8gYnVpbGQuIEkgY291bGQganVzdCB0cmFzaCB0aGUgYnVpbGQgYXMgSSd2
ZQo+PiBkb25lIGJlZm9yZSBidXQgYW0gY3VyaW91cyBhcyB0byBwb3NzaWJsZSBiZW5lZmljaWFs
IGVmZmVjdHMgb2YgaGF2aW5nCj4+IFNWTjo6Q29yZSB1bnBhcnNlYWJsZSBnbyBhd2F5IGFuZCBo
YXZlIHRoYXQgdXBkYXRlZC4gT24gV2VkLCAxIEFwciAyMDIwLAo+PiBMaW51eCBmb3IgYmxpbmQg
Z2VuZXJhbCBkaXNjdXNzaW9uIHdyb3RlOgo+Pgo+IAo+IFNpbmNlIHNsaW50IGlzIGJhc2VkIG9u
IHNsYWNrd2FyZSB0aGVuIGFjY29yZGluZyB0bwo+IGh0dHBzOi8vc2xhY2t3YXJlLnBrZ3Mub3Jn
L2N1cnJlbnQvc2xhY2t3YXJlLXg4Nl82NC9zdWJ2ZXJzaW9uLTEuMTMuMC14ODZfNjQtMy50eHou
aHRtbAo+IC0gc3VidmVyc2lvbiB0aGVyZSAoYW5kIFNWTi9Db3JlLnBtICkgaXMgYXQgdGhlIGxh
dGVzdCB2ZXJzaW9uLiBObyBuZWVkIHRvCj4gdXBncmFkZSBhbmQgSSBzdWdnZXN0IHlvdSBraWxs
IHRoZSBidWlsZC4KPiAKPj4+IERhdGU6IFdlZCwgMSBBcHIgMjAyMCAwMjowNDoyNwo+Pj4gRnJv
bTogTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiA8YmxpbnV4LWxpc3RAcmVkaGF0
LmNvbT4KPj4+IFRvOiBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIDxibGludXgt
bGlzdEByZWRoYXQuY29tPgo+Pj4gU3ViamVjdDogUmU6IEFsaWVuOjpTVk4KPj4+Cj4+PiBIaSEK
Pj4+Cj4+PiBPbiBUdWUsIDMxIE1hciAyMDIwIDE5OjM4OjIxIC0wNDAwCj4+PiBMaW51eCBmb3Ig
YmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIDxibGludXgtbGlzdEByZWRoYXQuY29tPiB3cm90ZToK
Pj4+ICAKPj4+PiBpcyBBbGllbjo6U1ZOIHN1cHBvc2VkIHRvIHRha2Ugc2V2ZXJhbCBob3VycyB0
byBpbnN0YWxsPwo+Pj4+IElmIG5vLCB0aGF0J3Mgd2hhdCdzIGhhcHBlbmluZyBvdmVyIGhlcmUu
Cj4+Pj4gSWYgSSBldmVyIHJ1biB0aGlzIGFnYWluIEkgdGhpbmsgSSB3YW50IHRvIHdhdGNoIHBl
cmwgY29kZSBleGVjdXRpb24gYXMgaXQKPj4+PiBoYXBwZW5zIHdoZW4gdGhpcyBvbmUgaW5zdGFs
bHMuCj4+Pj4gIAo+Pj4KPj4+IERpZCB5b3UgbWFuYWdlIHRvIHNvcnQgaXQgb3V0IGJ5IG5vdz8g
SWYgbm90LCBjYW4geW91IHByb3ZpZGUgbW9yZSBkZXRhaWxzCj4+PiBhYm91dDoKPj4+Cj4+PiAx
LiB5b3VyIGRpc3Rybyt2ZXJzaW9uCj4+Pgo+Pj4gMi4gd2h5IGRvIHlvdSBuZWVkIEFsaWVuOjpT
Vk4/Cj4+Pgo+Pj4gMy4gSG93IGFyZSB5b3UgaW5zdGFsbGluZyBpdD8KPj4+Cj4+PiBTZWUgaHR0
cHM6Ly9naXRodWIuY29tL3NobG9taWYvd3JpdGluZy10aGUtcGVyZmVjdC1xdWVzdGlvbiAuCj4+
Pgo+Pj4gVGhhbmtzIQo+Pj4KPj4+ICAKPj4+Pgo+Pj4+Cj4+Pj4gLS0KPj4+Pgo+Pj4+Cj4+Pj4g
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPj4+PiBCbGlu
dXgtbGlzdCBtYWlsaW5nIGxpc3QKPj4+PiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4+Pj4gaHR0
cHM6Ly93d3cucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4+Pj4gIAo+
Pj4KPj4+Cj4+Pgo+Pj4gLS0KPj4+Cj4+PiBTaGxvbWkgRmlzaCAgICAgICBodHRwczovL3d3dy5z
aGxvbWlmaXNoLm9yZy8KPj4+IGh0dHBzOi8vd3d3LnNobG9taWZpc2gub3JnL2h1bW91ci93YXlz
X3RvX2RvX2l0Lmh0bWwKPj4+Cj4+PiBDaHVjayBOb3JyaXMgd2lsbCBraWxsIHlvdSBqdXN0IGZv
ciB0aGUgZnVuIG9mIGtpY2tpbmcgeW91ciBEZWF0aCdzIGFzcwo+Pj4gdGlsbCBpdCBydW5zIGF3
YXksIHRoZW4gYmVhdGluZyB5b3VyIHNvdWwgYmFjayBpbnRvIHlvdXIgY29ycHNlLiAoYnkKPj4+
IGUtbmVrbykuID8gaHR0cDovL3d3dy5zaGxvbWlmaXNoLm9yZy9odW1vdXIvYml0cy9mYWN0cy9D
aHVjay1Ob3JyaXMvCj4+Pgo+Pj4gUGxlYXNlIHJlcGx5IHRvIGxpc3QgaWYgaXQncyBhIG1haWxp
bmcgbGlzdCBwb3N0IC0gaHR0cDovL3NobG9tLmluL3JlcGx5IC4KPj4+Cj4+Pgo+Pj4gX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPj4+IEJsaW51eC1saXN0
IG1haWxpbmcgbGlzdAo+Pj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+Pj4gaHR0cHM6Ly93d3cu
cmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0ICAKPj4KPiAKPiAKPiAKCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpCbGludXgtbGlz
dCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpodHRwczovL3d3dy5yZWRoYXQu
Y29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3Q=

