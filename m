Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-74.mimecast.com (us-smtp-delivery-74.mimecast.com [63.128.21.74])
	by mail.lfdr.de (Postfix) with ESMTP id 53A4618E430
	for <lists+blinux-list@lfdr.de>; Sat, 21 Mar 2020 21:17:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1584821876;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:autocrypt:autocrypt;
	bh=CsdcF2En8+I+NujLntJIkq4ZoygcRcyOl+YciZFxtq0=;
	b=AaPkz68NvMaDVJY+Y+I4CUHGa+N4UOzSINS/rS8lRYiZP7VatuKr2RgpUDKpaILEoYJKyV
	M77pL0GprZScEzoDfjujEDH7aT1KoZ9AZyTJQMxMUMDpByEIC9Dx/AGmnrWMqf47tln0pa
	Mxp68BCD3G6rrigN/q6P8rogN8kuZIM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-302-sCN8SbPCOTuPR09GwPbhYA-1; Sat, 21 Mar 2020 16:17:54 -0400
X-MC-Unique: sCN8SbPCOTuPR09GwPbhYA-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A1FA018A07C2;
	Sat, 21 Mar 2020 20:17:50 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id F041D8D574;
	Sat, 21 Mar 2020 20:17:48 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id A20D51809567;
	Sat, 21 Mar 2020 20:17:46 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 02LKGwdx029590 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 21 Mar 2020 16:16:58 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 6840720267F2; Sat, 21 Mar 2020 20:16:58 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6411A2026E1C
	for <blinux-list@redhat.com>; Sat, 21 Mar 2020 20:16:56 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 73849101A55D
	for <blinux-list@redhat.com>; Sat, 21 Mar 2020 20:16:56 +0000 (UTC)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79]) by
	relay.mimecast.com with ESMTP id us-mta-43-4_M2du8aOM25OVwX-bqROA-1;
	Sat, 21 Mar 2020 16:16:53 -0400
X-MC-Unique: 4_M2du8aOM25OVwX-bqROA-1
Received: from darkstar.slint.fr (sfa89-1-78-208-157-71.fbx.proxad.net
	[78.208.157.71])
	by darkstar.slint.fr (Postfix) with ESMTPSA id E1F84BE791
	for <blinux-list@redhat.com>; Sat, 21 Mar 2020 20:16:37 +0100 (CET)
Subject: Re: latest archlinux kernel upgrade
To: blinux-list@redhat.com
References: <alpine.NEB.2.21.2003211557350.25508@panix1.panix.com>
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
Message-ID: <503bff3b-a6e8-9e8a-7392-df35606fba72@slint.fr>
Date: Sat, 21 Mar 2020 21:16:51 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
	Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <alpine.NEB.2.21.2003211557350.25508@panix1.panix.com>
Content-Language: fr
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 02LKGwdx029590
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgSnVkZSwKCkkgZG9uJ3QgdGhpbmsgdGhhdCB0aGUga2VybmVsIGJlIHRoZSBjdWxwcml0IGFz
IGFsbCBzcGVha3VwIGRyaXZlcnMgYXJlIHNoaXBwZWQgYXMgbW91ZHVsZXMgYWNjb3JkaW5nIHRv
IHRoZSBjb25maWcgZmlsZToKaHR0cHM6Ly9naXQuYXJjaGxpbnV4Lm9yZy9zdm50b2dpdC9wYWNr
YWdlcy5naXQvdHJlZS90cnVuay9jb25maWc/aD1wYWNrYWdlcy9saW51eAoKTWF5YmUgd2lwaW5n
IHRoZSBkaXNrIGlzIGEgYml0IGV4dHJlbWUuLi4KCk1lYW53aGlsZSB5b3UgbWF5IGNvbnRpbnVl
IHVzaW5nIHlvdXIgU2xpbnQgdW50aWwgZnVydGhlciBub3RpY2Ugb3IgdW50aWwgSSBkaWUgb2Yg
c29tZSBuYXN0eSBmbHUgKHdoaWNoZXZlciBjb21lcyBmaXJzdCkuCgpDaGVlcnMsCkRpaWRlcgoK
TGUgMjEvMDMvMjAyMCDDoCAyMTowMCwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lv
biBhIMOpY3JpdMKgOgo+IEkgdGhpbmsgaXQncyA1LjU5LTEwIGFuZCBpdCBoYXMgZGVmaW5pdGVs
eSBraWxsZWQgZXNwZWFrdXAuICBJIGNoZWNrZWQKPiB3aXRoIHRoZSBkaXNrIHVubW91bnRlZCBh
bmQgcmFuIGUyZnNjayAtcCBhbmQgZ290IGpvdXJuYWwgY2xlYW4gYW5kIG5vCj4gZXJyb3JzLgo+
IERvZXMgYSB3YXkgZXhpc3QgdG8gY2xlYXIgdGhpcywgb3IgaXMgaXQgdGltZSB0byB3aXBlIHRo
ZSBkaXNrIGFuZCByZXBsYWNlCj4gYXJjaGxpbnV4IHdpdGggZGViaWFuPwoKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxpbmcg
bGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vd3d3LnJlZGhhdC5jb20vbWFpbG1h
bi9saXN0aW5mby9ibGludXgtbGlzdA==

