Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 22FD52972F0
	for <lists+blinux-list@lfdr.de>; Fri, 23 Oct 2020 17:54:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1603468451;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:autocrypt:autocrypt;
	bh=zp3LwMkTnX2wUfIwVqDk6e1n79Tw547CFi8sEM7GzqE=;
	b=K4Ocgz8Z59d8BDq9T6iD6ZBw35dUA3SNOnLfOaKN2+PeiIQTkbdVzNPw2shNL7FH/+fOmd
	5iTw895CWWcMsJwjD7DB+ZtQZDZRO48whFF08HpztGO1R2LVliAuZ/1Li4LvMvtTq3U3G9
	Zall2pCwDk62gPkhQwz0GCPV47so4ao=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-415-hWRW1uMiMQSVwMRh916lEw-1; Fri, 23 Oct 2020 11:54:08 -0400
X-MC-Unique: hWRW1uMiMQSVwMRh916lEw-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 065E7804B83;
	Fri, 23 Oct 2020 15:54:03 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 5484027BB4;
	Fri, 23 Oct 2020 15:54:02 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id BC1309230A;
	Fri, 23 Oct 2020 15:54:01 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 09NFrxIp018389 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 23 Oct 2020 11:53:59 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id E29777D296; Fri, 23 Oct 2020 15:53:58 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id DB6BC30B86
	for <blinux-list@redhat.com>; Fri, 23 Oct 2020 15:53:55 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 502881021E16
	for <blinux-list@redhat.com>; Fri, 23 Oct 2020 15:53:55 +0000 (UTC)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79]) by
	relay.mimecast.com with ESMTP id us-mta-523-8pbAHPHVPcSCHIu5oT5nZw-1;
	Fri, 23 Oct 2020 11:53:52 -0400
X-MC-Unique: 8pbAHPHVPcSCHIu5oT5nZw-1
Received: from darkstar.machine.fr (sfa89-1-78-208-157-71.fbx.proxad.net
	[78.208.157.71])
	by darkstar.slint.fr (Postfix) with ESMTPSA id 7C685BE280
	for <blinux-list@redhat.com>; Fri, 23 Oct 2020 16:53:02 +0200 (CEST)
Subject: Re: building kernel for ac97 sound card
To: blinux-list@redhat.com
References: <alpine.NEB.2.23.451.2010230909460.7641@panix1.panix.com>
	<bbc1c7c4-52d7-6cc5-3d67-7d724d6e5eb8@slint.fr>
	<alpine.NEB.2.23.451.2010231146140.4709@panix1.panix.com>
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
Message-ID: <9ed0227b-29c7-8f17-e7c0-b44bd525e50d@slint.fr>
Date: Fri, 23 Oct 2020 17:53:34 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
	Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <alpine.NEB.2.23.451.2010231146140.4709@panix1.panix.com>
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
	lists01.pubmisc.prod.ext.phx2.redhat.com id 09NFrxIp018389
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
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: fr
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

QmUgYXdhcmUgdGhhdCBqdXN0IGhlYXJpbmcgYSBiZWVwIHdoZSBzdGFydGluZyB0aGUgY29tcHV5
ZXIKb25seSB0ZWxscyB5b3UgdGhhdCB0aGUgbWFjaGluZSBpcyByZWFkeSB0byBib290LCBub3Qg
dGhhdAphIHN5c3RlbSB3aWxsIGFjdHVhbGx5IHJ1cyBhZnRhciBoYXZpbmcgdHJpZWQgdG8gYm9v
dC4uLgoKTGUgMjMvMTAvMjAyMCDDoCAxNzo0NywgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlz
Y3Vzc2lvbiBhIMOpY3JpdMKgOgo+IEknbSBnb2luZyB0byBoYXZlIHRvIHJlY29uZmlndXJlIHRv
IGdldCB0aGUgc291bmQgY2FyZCB3b3JraW5nLiAgSWYgSQo+IGhhZG4ndCBnb3QgcGNzcGVha2Vy
IHdvcmtpbmcgSSdkIG5ldmVyIGhhdmUga25vd24gaWYgSSBoYWQgYW55dGhpbmcKPiB3b3JraW5n
IG9uIHRoZSBtYWNoaW5lLgo+IAo+IE9uIEZyaSwgMjMgT2N0IDIwMjAsIExpbnV4IGZvciBibGlu
ZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4gCj4+IERhdGU6IEZyaSwgMjMgT2N0IDIwMjAg
MTA6MTc6NTQKPj4gRnJvbTogTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiA8Ymxp
bnV4LWxpc3RAcmVkaGF0LmNvbT4KPj4gVG86IGJsaW51eC1saXN0QHJlZGhhdC5jb20KPj4gU3Vi
amVjdDogUmU6IGJ1aWxkaW5nIGtlcm5lbCBmb3IgYWM5NyBzb3VuZCBjYXJkCj4+Cj4+IEhlbGxv
LAo+Pgo+PiBUbyBjaGVjayBpZiB0aGUgdGhlIHBjc3BrciBkcml2ZXIgaXMgaW5jbHVkZWQgaW4g
eW91ciBydW5uaW5nIGtlcm5lbCwgdHlwZToKPj4gemdyZXAgLWkgcGNzcGtyIC9wcm9jL2NvbmZp
Zy5nego+Pgo+PiBPdXRwdXQgaGVyZSAoU2xpbnQ2NC0xNC4yLjEuMik6Cj4+IENPTkZJR19IQVZF
X1BDU1BLUl9QTEFURk9STT15Cj4+IENPTkZJR19QQ1NQS1JfUExBVEZPUk09eQo+PiBDT05GSUdf
SU5QVVRfUENTUEtSPW0KPj4KPj4gSWYgaW5zdGVhZCB0aGUgbGFzdCBsaW5lIGlzOwo+PiBDT05G
SUdfSU5QVVRfUENTUEtSPW4KPj4KPj4geW91IHdpbGwgbmVlZCBhbm90aGVyIGtlcm5lbCBvciBy
ZWNvbmZpZ3VyZSBpdC4KPj4gUENTUEtSIGlzIHVuZGVyIGRyaXZlcnMvaW5wdXQvbWlzIGluIHRo
ZSBrZXJuZWwgdHJlZQo+Pgo+PiBFbHNlIHlvdSBqdXN0IG5lZWQgdG8gdHlwZSBhcyByb290Ogo+
PiBtb2Rwcm9iZSBwY3Nwa3IKPj4gbG8gbG9hZCB0aGUgbW9kdWxlLgo+Pgo+PiBUaGlzIGlzc3Vl
IGlzIG5vdCByZWxhdGVkIHRvIHlvdXIgc291bmQgY2FyZCBhbmQgYWM5NywgYXMgdGhlIGJlZXAK
Pj4gY29tZXMgZnJvbSB0aGUgaW50ZXJuYWwgc3BlYWtlciBhdHRhY2hlZCB0byB0aGUgbW90aGVy
IGJvYXJkLCBub3QKPj4gZnJvbSBhIHNvdW5kIGNhcmQuCj4+Cj4+IERpZGllciBTcGFpZXIKPj4g
U2xpbnQgbWFpbnRhaW5lcgo+Pgo+Pgo+PiBMZSAyMy8xMC8yMDIwID8gMTU6MTUsIExpbnV4IGZv
ciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gYSA/Y3JpdMKgOgo+Pj4gSSBoYXZlIGFuIGFjOTcg
c291bmQgY2FyZCBhbmQgYSBjLW1lZGlhIHVzYiBzb3VuZCBjYXJkIG9uIGEgc3lzdGVtLiAgSQo+
Pj4gaGF2ZSBvbmx5IGhhZCBzdWNjZXNzIGFjdGl2YXRpbmcgdGhlIHBjc3BlYWtlciB3aGVuIGJ1
aWxkaW5nIGEga2VybmVsIGZvcgo+Pj4gZ2VudG9vLiAgSSBoYXZlIG5vIGNsdWUgYXMgdG8gd2hh
dCB0byBlbmFibGUgdG8gZ2V0IHRoaXMgZG9uZS4gIFRoaXMgaXMKPj4+IGV2ZW4gYWZ0ZXIgaGF2
aW5nIGdvbmUgdGhyb3VnaCBsc3BjaSBvdXRwdXQgYW5kIGxzbW9kIG91dHB1dCB3aXRoIHRoZQo+
Pj4gaW5zdGFsbC1taW5pbWFsIGR2ZCBydW5uaW5nIHRoZSBvcGVyYXRpbmcgc3lzdGVtICBUaGUg
c3BlYWtlci10ZXN0IHV0aWxpdHkKPj4+IHB1dHMgb3V0IHNvdW5kIGluIHRoZSBjaHJvb3QgZW52
aXJvbm1lbnQgYW5kIGlzIHNpbGVudCBhZnRlciBmaXJzdCBib290Cj4+PiBpbnRvIHRoZSBuZXcg
ZW52aXJvbm1lbnQgbWFkZSBieSB0aGUgY29tcGlsZWQga2VybmVsLgoKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlz
dApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vd3d3LnJlZGhhdC5jb20vbWFpbG1hbi9s
aXN0aW5mby9ibGludXgtbGlzdA==

