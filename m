Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	by mail.lfdr.de (Postfix) with ESMTP id 8C2FA1F8AE9
	for <lists+blinux-list@lfdr.de>; Sun, 14 Jun 2020 23:40:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1592170836;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:autocrypt:autocrypt;
	bh=jYNM9qDQUCqnQtA97z9YhrCvRRwtxX6XuHnlv2KyXbU=;
	b=ZKmmu8ncDUhZW0lgsP1NUtl16dbh7AJ+HcRX+eWyFpURuJbngClQV6eJPG4FJOTxyArZcY
	aNENKebnMCF/GOETsNMx7BkhPj1Zl+KRiqS1ygf6QVbYkiPXEH4Q3H2aU6VwbYcqidSz8z
	ZdCJkcSo+GlnnsFmBoCHmh9giqtgasQ=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-176-NQrrYbA6O6q2seUR-wHHIQ-1; Sun, 14 Jun 2020 17:40:34 -0400
X-MC-Unique: NQrrYbA6O6q2seUR-wHHIQ-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 86A0980B71D;
	Sun, 14 Jun 2020 21:40:29 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 25AEC7CAAC;
	Sun, 14 Jun 2020 21:40:29 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 535DF833B8;
	Sun, 14 Jun 2020 21:40:25 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 05ELeI1x006275 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 14 Jun 2020 17:40:18 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id A8E10110F3AD; Sun, 14 Jun 2020 21:40:18 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A3D27110F3AC
	for <blinux-list@redhat.com>; Sun, 14 Jun 2020 21:40:16 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 9FF348007AC
	for <blinux-list@redhat.com>; Sun, 14 Jun 2020 21:40:16 +0000 (UTC)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79]) by
	relay.mimecast.com with ESMTP id us-mta-339-eDSp35SbMYS9g4YcI5VXqQ-1;
	Sun, 14 Jun 2020 17:40:14 -0400
X-MC-Unique: eDSp35SbMYS9g4YcI5VXqQ-1
Received: from darkstar.slint.fr (men75-h08-176-172-247-100.dsl.sta.abo.bbox.fr
	[176.172.247.100])
	by darkstar.slint.fr (Postfix) with ESMTPSA id 5E985BE791
	for <blinux-list@redhat.com>; Sun, 14 Jun 2020 22:33:59 +0200 (CEST)
Subject: Re: Prospects for an accessible and open version of Android?
To: blinux-list@redhat.com
References: <CABKqQvFWNxksnpwQ0YfytwaYnd1bAkkWB9LjmnJtZWW_1zepyw@mail.gmail.com>
	<498E62FA-D270-418F-91D0-003022B137B5@cfcl.com>
	<DF019091-ECBE-48AC-8B3F-A85FCB13F98F@gmail.com>
	<68F8B348-C5F3-4E40-9731-CB928C1E1786@cfcl.com>
	<3FF9DFF0-EBA2-41FA-AF6D-41A15F7D96B3@gmail.com>
	<1E64643A-5D91-45E2-A546-970F7E14EF28@cfcl.com>
	<alpine.DEB.2.22.394.2006141355001.3348482@chime>
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
Message-ID: <eb770c6c-c8e6-84d6-973c-e3afc118ca1b@slint.fr>
Date: Sun, 14 Jun 2020 23:34:26 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
	Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <alpine.DEB.2.22.394.2006141355001.3348482@chime>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 05ELeI1x006275
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T3IsIHRoaXMgaXMgdG8gYXZvaWQgU1BGL0RLSU0gYXV0aGVudGljYXRpb24gZmFpbHVyZS4KCkFz
IGFuIGV4YW1wbGUsIEkgaGF2ZSBhbiBlbWFpbCBzZXJ2ZXIgd2l0aCBES0lNIGVuYWJsZWQgZm9y
IHRoZSBkb21haW4KbmFtZSBzbGludC5mciB0aGF0IEkgb3duIGFuZCB1c2UgZm9yIHRoZSBTbGlu
dCBkaXN0cmlidXRpb24sIGNmLjoKaHR0cHM6Ly9zbGludC5mcgoKU28sIHRoZSByZWNlaXZlciBv
ZiBhbiBlbWFpbCBzZW50IHdpdGggYSBGcm9tOiBhZGRyZXNzIHdpdGggdGhlIGRvbWFpbgpuYW1l
IHNsaW50LmZyIGNhbiBhdXRoZW50aWNhdGUgaXQgY2hlY2tpbmcgdGhhdCB0aGUgZW1haWwgd2Fz
IHNlbnQgZnJvbQpteSBzZXJ2ZXIncyBJUCBhZGRyZXNzIGFuZCBub3QgZnVydGhlciBtb2RpZmll
ZCBpZiByZS1zZW50IGJ5IGEgbWFpbGluZwpsaXN0IHRvIGFsbCByZWdpc3RlcmVkIHVzZXJzLgoK
TWFueSBtYWlsaW5nIGxpc3RzIGtlZXAgdGhlIEZyb206IGZpZWxkIGFzIGlzIChmb3IgdGhpcyBl
bWFpbCB0aGF0IHdvdWxkCmJlOiBkaWRpZXJAc2xpbnQuZnIpIGJ1dCBtb2RpZnkgaXRzIGNvbnRl
bnQsIGxpa2UgdG8gYWRkIGEgZm9vdGVyLiBUaGVuCnRoZSBlbWFpbCB3aWxsIGZhaWwgdGhlIGF1
dGhlbnRpY2F0aW9uIGZhaWx1cmUgYnkgdGhlIHNlcnZlciB0aGF0CnJlY2VpdmVzIHRoZSBlbWFp
bCBzZW50IGJ5IHRoZSBtYWlsaW5nIGxpc3QsIGFuZCBwb3NzaWJseSByZWplY3QgaXQgb3IKcHV0
IGl0IGluIGEgc3BhbSBmb2xkZXIsIGFjY29yZGluZyB0byB0aGVpciBwb2xpY3kgYW5kIHRoZSBp
bnN0cnVjdGlvbnMKZ2l2ZW4gYnkgdGhlIGluaXRpYWwgc2VuZGluZyBzZXJ2ZXIsIHdyaXR0ZW4g
aW4gYSBETUFSQyByZWNvcmQuCgpJIGRvbid0IGtub3cgaWYgdGhpcyB0aGUgbWFpbiByZWFzb24s
IGJ1dCBub3Qgd3JpdGluZyB0aGUgaW5pdGlhbApwb3N0ZXIncyBlbWFpbCBhZGRyZXNzIGluIHRo
ZSBGcm9tOiBmaWVsZCBwcmV2ZW50cyBhdXRoZW50aWNhdGlvbgpmYWlsdXJlcy4KClRvIGNvcGUg
d2l0aCB0aGlzIHBvbGljeSwgbGV0J3MgaWRlbnRpZnkgb3Vyc2VsdmVzIGluIHRoZSBib2R5IG9m
IHRoZQplbWFpbHMgd2Ugc2VudCB0byB0aGUgbGlzdC4KCkkgZG8gaXQgYmVsb3c6CkRpZGllciBT
cGFpZXIKU2xpbnQgbWFpbnRhaW5lcgoKTGUgMTQvMDYvMjAyMCDDoCAyMjo1NiwgTGludXggZm9y
IGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiBhIMOpY3JpdMKgOgo+IEkgdGhpbmsgbWFueSB5ZWFy
cyBhZ28gdGhlcmUgd2VyZSBsb3RzIG9mIHNwYW0gd2hpY2ggY2FtZSB0aHJvdWdoIHRoaXMgbGlz
dCwgc28gdGhleSBhbHRlcmVkIHRvIHRoaXMgY3VycmVudCB3YXkKPiBDaGltZQoKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxp
bmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vd3d3LnJlZGhhdC5jb20vbWFp
bG1hbi9saXN0aW5mby9ibGludXgtbGlzdA==

