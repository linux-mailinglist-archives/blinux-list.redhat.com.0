Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 1218E48FA96
	for <lists+blinux-list@lfdr.de>; Sun, 16 Jan 2022 04:55:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1642305315;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=52mAPXvUquBV2we8cRVFkCTMpzH4sF0/Omv4lPcGAPQ=;
	b=MFLykQRNADNy6VkUixFBUlN54rOsW0WZ/KJCRva+l2hMywvvO1wGojTQBEeXVcuapBjJ9M
	r3PiMtvNL7nzCYFyTeQhmozrP5td1BjZCdFTOJVHftM4sd+yAW/jYBuyxJyhdg8MgNtMC4
	ikDFx3qxk3jCoUn2zr/j00nUYj4jwvA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-79-cGFwLMwQP9CA0NzMuFEFgA-1; Sat, 15 Jan 2022 22:55:11 -0500
X-MC-Unique: cGFwLMwQP9CA0NzMuFEFgA-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id AEE9F801B0B;
	Sun, 16 Jan 2022 03:55:07 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 92AAE4E2B1;
	Sun, 16 Jan 2022 03:55:07 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 585984CA93;
	Sun, 16 Jan 2022 03:55:07 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com
	[10.11.54.10])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 20G3qSQa017353 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 15 Jan 2022 22:52:28 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id F04C846D1E7; Sun, 16 Jan 2022 03:52:27 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id ECAFA46D1EB
	for <blinux-list@redhat.com>; Sun, 16 Jan 2022 03:52:27 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id D3570811E76
	for <blinux-list@redhat.com>; Sun, 16 Jan 2022 03:52:27 +0000 (UTC)
Received: from st43p00im-zteg10062001.me.com (st43p00im-zteg10062001.me.com
	[17.58.63.166]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-10-MJ2KqHbJNwifZFxmXal6UA-1; Sat, 15 Jan 2022 22:52:26 -0500
X-MC-Unique: MJ2KqHbJNwifZFxmXal6UA-1
Received: from smtpclient.apple (c-73-237-149-120.hsd1.ga.comcast.net
	[73.237.149.120])
	by st43p00im-zteg10062001.me.com (Postfix) with ESMTPS id 4B50B800610
	for <blinux-list@redhat.com>; Sun, 16 Jan 2022 03:52:25 +0000 (UTC)
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.120.0.1.13\))
Subject: Re: No Orca in Fedora
Date: Sat, 15 Jan 2022 22:52:24 -0500
References: <E0D83498-771B-46C6-A46E-F3FC7ED1E64E@icloud.com>
	<ada734e7-60f0-2562-5870-d8b1392c38d@panix.com>
To: Linux for blind general discussion <blinux-list@redhat.com>
In-Reply-To: <ada734e7-60f0-2562-5870-d8b1392c38d@panix.com>
Message-Id: <B0B90163-0798-4BFA-97E5-D970C2674C7A@icloud.com>
X-Proofpoint-Virus-Version: =?UTF-8?Q?vendor=3Dfsecure_engine=3D1.1.170-22c6f66c430a71ce266a39bfe25bc?=
	=?UTF-8?Q?2903e8d5c8f:6.0.425, 18.0.816,
	17.0.607.475.0000000_definitions?=
	=?UTF-8?Q?=3D2022-01-15=5F07:2022-01-14=5F01, 2022-01-15=5F07,
	2020-04-07?= =?UTF-8?Q?=5F01_signatures=3D0?=
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 bulkscore=0
	malwarescore=0
	suspectscore=0 mlxscore=0 mlxlogscore=999 spamscore=0 phishscore=0
	clxscore=1015 adultscore=0 classifier=spam adjust=0 reason=mlx
	scancount=1
	engine=8.12.0-2009150000 definitions=main-2201160026
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.10
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 20G3qSQa017353
X-loop: blinux-list@redhat.com
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://listman.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T0sgdGhhbmtzLApJ4oCZbGwganVzdCBkZWxldGUgdGhlIEZlZG9yYSBWTS4gSXRzIG5vdCB3b3J0
aCB0aGUgaGFzc2xlLgoKCj4gT24gSmFuIDE1LCAyMDIyLCBhdCAxMDozMiBQTSwgTGludXggZm9y
IGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiA8YmxpbnV4LWxpc3RAcmVkaGF0LmNvbT4gd3JvdGU6
Cj4gCj4gSXQgd29uJ3QuICBWZXJ5IGZldyBmbGF2b3JzIG9mIEZlZG9yYSBoYXZlIG9yY2EgaW4g
dGhlbS4KPiBmZWRvcmEtd29ya3N0YXRpb24gSSB0aGluayBpcyBnbm9tZSBoYXMgb3JjYSBidXQg
c28gZmFyIGFzIEkgbm93IGtub3csCj4gdGhhdCdzIHRoZSBvbmx5IHNwaW4gd2l0aCBvcmNhIGlu
IGl0Lgo+IEhvdyB0byBnZXQgYXJvdW5kIHRoaXMgd291bGQgYmUgdG8gaGF2ZSBhIGtpY2tzdGFy
dCBmaWxlIG1hZGUgZm9yIGEKPiBmZWRvcmEtd29ya3N0YXRpb24gc3BpbiBpbnN0YWxsLgo+IE9u
Y2UgdGhhdCBraWNrc3RhcnQgZmlsZSBpcyBtYWRlLCB5b3UnbGwgaGF2ZSB0byB1bmRlcnN0YW5k
IGtpY2tzdGFydCBmaWxlCj4gc3ludGF4IGFuZCB0aGUgcG9zdC1pbnN0YWxsIGNvbW1hbmQuCj4g
WW91J2Qgd2FudCB0byBwdXQgYSBwb3N0LWluc3RhbGwgY29tbWFuZCBpbiB0aGF0IGluc3RhbGxz
IG9yY2EgYW5kIGFsbCBvZgo+IGl0cyBkZXBlbmRlbmNpZXMgYW5kIHRoZW4gdXNlIHRoZSBraWNr
c3RhcnQgZmlsZSB5b3UgbW9kaWZpZWQgdG8gaW5zdGFsbAo+IHlvdXIgZGVzaXJlZCBzcGluLgo+
IAo+IAo+IE9uIFNhdCwgMTUgSmFuIDIwMjIsIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1
c3Npb24gd3JvdGU6Cj4gCj4+IEhpLAo+PiBJIGRvd25sb2FkZWQgRmVkb3JhLUNpbm5hbW9uLUxp
dmUteDg2XzY0LTM1LTEuMgo+PiBTdXBlcitBbHQrUyBkaWQgbm90IHN0YXJ0IE9yY2EsIHNvIEkg
cHJlc3NlZCBhbHQrRjIgYW5kIHR5cGVkIG9yY2EgYW5kIGhpdCBlbnRlciwgYnV0IGdvdCBub3Ro
aW5nLgo+PiBTbyBJIHRoZW4gcHJlc3NlZCBhbHQrY3RybCtUIGFuZCB0eXBlZCBvcmNhIGluIHRo
ZSB0ZXJtaW5hbC4gSSB1c2VkIG15IHBob25lIHRvIHJlYWQgdGhlIHNjcmVlbiB0byBnZXQgb3Jj
YSBjb21tYW5kIG5vdCBmb3VuZC4KPj4gV2hhdHMgZ29pbmcgb24/Cj4+IFRoYW5rcywKPj4gUm9i
Cj4+IAo+PiAKPj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KPj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+IEJsaW51eC1saXN0QHJlZGhhdC5jb20K
Pj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlz
dAo+PiAKPj4gCj4gCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KPiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPiBCbGludXgtbGlzdEByZWRoYXQuY29t
Cj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlz
dAo+IAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkJs
aW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vbGlz
dG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3Q=

