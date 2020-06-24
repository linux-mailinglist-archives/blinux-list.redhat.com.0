Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	by mail.lfdr.de (Postfix) with ESMTP id EAB00207118
	for <lists+blinux-list@lfdr.de>; Wed, 24 Jun 2020 12:26:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1592994387;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:autocrypt:autocrypt;
	bh=GnoPkMf3dWjaZorXHQIqcvho9oQNi0T455ZwrHTd09M=;
	b=VdHyNUp5LOiGvPdBAgi0TIc3+mIjPRnZodetKeDdTcWaeSFhCHBniv0FW8er5lFRbjMQRw
	FoIFsCk1m9OCQCTpi1mhwiA+WdG4SWGt+dD7soOxdFd0nhROkklF16ZrxfIm6xfzIHYmwY
	OgSM8sxN9gqPfDmRMlvbIwBQoBnbquQ=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-45-J99bKJ7qMwKTCqO_-Em40g-1; Wed, 24 Jun 2020 06:26:24 -0400
X-MC-Unique: J99bKJ7qMwKTCqO_-Em40g-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 9EA22804002;
	Wed, 24 Jun 2020 10:26:20 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 427E91CD;
	Wed, 24 Jun 2020 10:26:20 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 4E1EB1809547;
	Wed, 24 Jun 2020 10:26:19 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 05OAQEk4020886 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 24 Jun 2020 06:26:14 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 8563C20182A3; Wed, 24 Jun 2020 10:26:14 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 7F0992026971
	for <blinux-list@redhat.com>; Wed, 24 Jun 2020 10:26:08 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 63772858F03
	for <blinux-list@redhat.com>; Wed, 24 Jun 2020 10:26:08 +0000 (UTC)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79]) by
	relay.mimecast.com with ESMTP id us-mta-440-E5AZjdNnNsubGE7vr0Kw0Q-1;
	Wed, 24 Jun 2020 06:26:05 -0400
X-MC-Unique: E5AZjdNnNsubGE7vr0Kw0Q-1
Received: from darkstar.slint.fr (men75-h08-176-172-247-100.dsl.sta.abo.bbox.fr
	[176.172.247.100])
	by darkstar.slint.fr (Postfix) with ESMTPSA id A5032BE797
	for <blinux-list@redhat.com>; Wed, 24 Jun 2020 11:25:35 +0200 (CEST)
Subject: Re: vlc bookmarks
To: blinux-list@redhat.com
References: <alpine.NEB.2.22.394.2006232114040.7776@panix1.panix.com>
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
Message-ID: <d0af7122-f6f8-be45-e33a-78eb5e13379e@slint.fr>
Date: Wed, 24 Jun 2020 12:26:04 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
	Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <alpine.NEB.2.22.394.2006232114040.7776@panix1.panix.com>
Content-Language: fr
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 05OAQEk4020886
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
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

TGUgMjQvMDYvMjAyMCDDoCAwMzoxNiwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lv
biBhIMOpY3JpdMKgOgo+IEZvciBjb21tYW5kIGxpbmUgdXNlcnMgb2YgdmxjIHdpbGwgaXQgYmUg
cG9zc2libGUgdG8gcGF1c2UgaW4gYSByYXRoZXIKPiBsb25nIG1wMyBmaWxlIGFuZCBzYXZlIGEg
Ym9va21hcmsgYXQgdGhhdCBzcG90IHRoZW4gbGF0ZXIgcmV0dXJuIHRvIHRoYXQKPiBib29rbWFy
az8KCgpJIGRvbid0IGtub3cgZm9yIHZsYywgYnV0IHVzaW5nIG1wdiBqdXN0IHByZXNzIFEgKGNh
cGl0YWwgbGV0dGVyKToKdGhpcyBzdG9yZXMgdGhlIGN1cnJlbnQgcGxheWJhY2sgcG9zaXRpb24g
dGhlIHF1aXQuIFBsYXlpbmcgdGhlIHNhbWUKZmlsZSBsYXRlciB3aWxsIHJlc3VtZSBhdCB0aGUg
b2xkIHBsYXliYWNrIHBvc2l0aW9uIGlmIHBvc3NpYmxlLgoKSSBqdXN0IHRyaWVkIHdpdGggYSBt
cDMgZmlsZSwgaXQgd29ya3MuIEl0IGFsc28gd29ya2tzIHBsYXlpbmcgYQp5b3V0dWJlIHZpZGVv
IGxpa2UgdGhpczoKCm1wdiAtLW5vLXZpZGVvIGh0dHBzOi8vd3d3LnlvdXR1YmUuY29tL3dhdGNo
P3Y9bnpPdEI2ZkpoaXcKCkl0IHRoZW4gcXVpdCBhZnRlciBoYXZpbmcgZGlzcGxheWVkOgpTYXZp
bmcgc3RhdGUuCgpXaGVuIHBsYXlpbmcgdGhlIHNhbWUgZmlsZSBuZXh0IHRpbWUgaXQgZGlzcGxh
eXM6ClJlc3VtaW5nIHBsYXliYWNrLiBUaGlzIGJlaGF2aW9yIGNhbiBiZSBkaXNhYmxlZCB3aXRo
IC0tbm8tcmVzdW1lLXBsYXliYWNrCgpUaGVuICBpdCByZXN1bWVzIHBsYXlpbmcgd2hlcmUgaXQg
c3RvcHBlZCBsYXN0IHRpbWUuCgpJdCBjb3VsZCBoYXJkbHkgYmUgc2ltcGxlciwgSSB0aGluay4K
Ci0tCkRpZGllciBTcGFpZXIKRGlkaWVyCgoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RA
cmVkaGF0LmNvbQpodHRwczovL3d3dy5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4
LWxpc3Q=

