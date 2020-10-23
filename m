Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [63.128.21.124])
	by mail.lfdr.de (Postfix) with ESMTP id C736329712F
	for <lists+blinux-list@lfdr.de>; Fri, 23 Oct 2020 16:18:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1603462717;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:autocrypt:autocrypt;
	bh=Ar3w14NWX+p6tPnCnFPx/0jh7TISgLyPnNcbjPVsmtg=;
	b=F2+RZhpYR4r/U2NuBLpSDbpkytuwUqaTqQkFtqQdemiH8TeUFe7kBEQmwU78A5jkD3AT5a
	GLId/QcZAwlVFO2LdhAkgoPQIGuggnd0nxi+ZW7fhlQBmdg39JUbXe+11CzFcEdQkFguoW
	dYzMLYFLGK3Facw5nlwoLjGqZCCKs8o=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-236-3UA5Zt7AN2ioFkjYlWNVIA-1; Fri, 23 Oct 2020 10:18:35 -0400
X-MC-Unique: 3UA5Zt7AN2ioFkjYlWNVIA-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 0303A1009E2B;
	Fri, 23 Oct 2020 14:18:31 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 2FA845C1DA;
	Fri, 23 Oct 2020 14:18:30 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 7E91992302;
	Fri, 23 Oct 2020 14:18:27 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 09NEIIoj007261 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 23 Oct 2020 10:18:19 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id C0B23201E75E; Fri, 23 Oct 2020 14:18:18 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id BC38D2017E8F
	for <blinux-list@redhat.com>; Fri, 23 Oct 2020 14:18:16 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 71781800962
	for <blinux-list@redhat.com>; Fri, 23 Oct 2020 14:18:16 +0000 (UTC)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79]) by
	relay.mimecast.com with ESMTP id us-mta-62-bYdNGtU6MKaVSed6DinXwQ-1;
	Fri, 23 Oct 2020 10:18:12 -0400
X-MC-Unique: bYdNGtU6MKaVSed6DinXwQ-1
Received: from darkstar.machine.fr (sfa89-1-78-208-157-71.fbx.proxad.net
	[78.208.157.71])
	by darkstar.slint.fr (Postfix) with ESMTPSA id 29A8BBE280
	for <blinux-list@redhat.com>; Fri, 23 Oct 2020 15:17:22 +0200 (CEST)
Subject: Re: building kernel for ac97 sound card
To: blinux-list@redhat.com
References: <alpine.NEB.2.23.451.2010230909460.7641@panix1.panix.com>
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
Message-ID: <bbc1c7c4-52d7-6cc5-3d67-7d724d6e5eb8@slint.fr>
Date: Fri, 23 Oct 2020 16:17:54 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
	Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <alpine.NEB.2.23.451.2010230909460.7641@panix1.panix.com>
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
	lists01.pubmisc.prod.ext.phx2.redhat.com id 09NEIIoj007261
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
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGVsbG8sCgpUbyBjaGVjayBpZiB0aGUgdGhlIHBjc3BrciBkcml2ZXIgaXMgaW5jbHVkZWQgaW4g
eW91ciBydW5uaW5nIGtlcm5lbCwgdHlwZToKemdyZXAgLWkgcGNzcGtyIC9wcm9jL2NvbmZpZy5n
egoKT3V0cHV0IGhlcmUgKFNsaW50NjQtMTQuMi4xLjIpOgpDT05GSUdfSEFWRV9QQ1NQS1JfUExB
VEZPUk09eQpDT05GSUdfUENTUEtSX1BMQVRGT1JNPXkKQ09ORklHX0lOUFVUX1BDU1BLUj1tCgpJ
ZiBpbnN0ZWFkIHRoZSBsYXN0IGxpbmUgaXM7CkNPTkZJR19JTlBVVF9QQ1NQS1I9bgoKeW91IHdp
bGwgbmVlZCBhbm90aGVyIGtlcm5lbCBvciByZWNvbmZpZ3VyZSBpdC4KUENTUEtSIGlzIHVuZGVy
IGRyaXZlcnMvaW5wdXQvbWlzIGluIHRoZSBrZXJuZWwgdHJlZQoKRWxzZSB5b3UganVzdCBuZWVk
IHRvIHR5cGUgYXMgcm9vdDoKbW9kcHJvYmUgcGNzcGtyCmxvIGxvYWQgdGhlIG1vZHVsZS4KClRo
aXMgaXNzdWUgaXMgbm90IHJlbGF0ZWQgdG8geW91ciBzb3VuZCBjYXJkIGFuZCBhYzk3LCBhcyB0
aGUgYmVlcApjb21lcyBmcm9tIHRoZSBpbnRlcm5hbCBzcGVha2VyIGF0dGFjaGVkIHRvIHRoZSBt
b3RoZXIgYm9hcmQsIG5vdApmcm9tIGEgc291bmQgY2FyZC4KCkRpZGllciBTcGFpZXIKU2xpbnQg
bWFpbnRhaW5lcgoKCkxlIDIzLzEwLzIwMjAgw6AgMTU6MTUsIExpbnV4IGZvciBibGluZCBnZW5l
cmFsIGRpc2N1c3Npb24gYSDDqWNyaXTCoDoKPiBJIGhhdmUgYW4gYWM5NyBzb3VuZCBjYXJkIGFu
ZCBhIGMtbWVkaWEgdXNiIHNvdW5kIGNhcmQgb24gYSBzeXN0ZW0uICBJCj4gaGF2ZSBvbmx5IGhh
ZCBzdWNjZXNzIGFjdGl2YXRpbmcgdGhlIHBjc3BlYWtlciB3aGVuIGJ1aWxkaW5nIGEga2VybmVs
IGZvcgo+IGdlbnRvby4gIEkgaGF2ZSBubyBjbHVlIGFzIHRvIHdoYXQgdG8gZW5hYmxlIHRvIGdl
dCB0aGlzIGRvbmUuICBUaGlzIGlzCj4gZXZlbiBhZnRlciBoYXZpbmcgZ29uZSB0aHJvdWdoIGxz
cGNpIG91dHB1dCBhbmQgbHNtb2Qgb3V0cHV0IHdpdGggdGhlCj4gaW5zdGFsbC1taW5pbWFsIGR2
ZCBydW5uaW5nIHRoZSBvcGVyYXRpbmcgc3lzdGVtICBUaGUgc3BlYWtlci10ZXN0IHV0aWxpdHkK
PiBwdXRzIG91dCBzb3VuZCBpbiB0aGUgY2hyb290IGVudmlyb25tZW50IGFuZCBpcyBzaWxlbnQg
YWZ0ZXIgZmlyc3QgYm9vdAo+IGludG8gdGhlIG5ldyBlbnZpcm9ubWVudCBtYWRlIGJ5IHRoZSBj
b21waWxlZCBrZXJuZWwuCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51eC1saXN0QHJlZGhhdC5jb20K
aHR0cHM6Ly93d3cucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0

