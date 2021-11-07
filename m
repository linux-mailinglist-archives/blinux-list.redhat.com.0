Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id CA2084473CA
	for <lists+blinux-list@lfdr.de>; Sun,  7 Nov 2021 17:28:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1636302523;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=8Afupmw4ytSp/F5iitqi2kTjXywA58IWlk07oGKRUjQ=;
	b=NFM0RURZ1NY4QWpAXAA1NCiGTttwwtuzWs+SRIlhL7/Id779Dl7ozjYd5gWKzSTx23dFCk
	emm6f/CsIDnQP7Kye4tUYEjdYhG+pyBIr1RyKIA5VmzwhVMqeqsj2XgqpwhbS52tIZjC5d
	Nm1AhYujW70B5OhFTCCNmt6NoE04ChI=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-478-_4I1xd5NPpSX3pii-2cD9g-1; Sun, 07 Nov 2021 11:28:40 -0500
X-MC-Unique: _4I1xd5NPpSX3pii-2cD9g-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A6EE1802C91;
	Sun,  7 Nov 2021 16:28:36 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id BC5115D9DE;
	Sun,  7 Nov 2021 16:28:35 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 6CC6118199EE;
	Sun,  7 Nov 2021 16:28:32 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
	[10.11.54.2])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1A7GSQ8V018991 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 7 Nov 2021 11:28:26 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 3AC4D4047279; Sun,  7 Nov 2021 16:28:26 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 365E64047272
	for <blinux-list@redhat.com>; Sun,  7 Nov 2021 16:28:26 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 1CCFA811E78
	for <blinux-list@redhat.com>; Sun,  7 Nov 2021 16:28:26 +0000 (UTC)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79]) by
	relay.mimecast.com with ESMTP id us-mta-389-yEuxtw5FMXaFbprz-_cDzA-1;
	Sun, 07 Nov 2021 11:28:24 -0500
X-MC-Unique: yEuxtw5FMXaFbprz-_cDzA-1
Received: from [192.168.0.10] (sfa89-1-78-208-157-71.fbx.proxad.net
	[78.208.157.71])
	by darkstar.slint.fr (Postfix) with ESMTPSA id CDFECA1CF2
	for <blinux-list@redhat.com>; Sun,  7 Nov 2021 15:27:48 +0100 (CET)
Message-ID: <7fdad532-a6c6-a6f3-7964-a08ed50d46f6@slint.fr>
Date: Sun, 7 Nov 2021 17:28:22 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.2.1
Subject: Re: Slint
To: blinux-list@redhat.com
References: <CAN8Cudg02ZE3tr+k0AfNYg9ZuiAJMGHkdsQKYuBtKMB1j8Y2Kg@mail.gmail.com>
	<CAGJxbF6wY1vpn1xQs1YeMNuXt5Gc4+AD4KDmyrNOP0b4mDEcpg@mail.gmail.com>
	<CAN8CudjaRk2jZkoycQmYY4F96spmJq8wFwWwdawR432Ky-TY7Q@mail.gmail.com>
	<66A05B38-1ADB-4E9A-BA3D-D0CB26FA0D72@gmail.com>
	<CAN8CudjXSE2YiiRdw3nhc0L2dF24Xeex+7VpyHScmfS5Le46UA@mail.gmail.com>
	<Pine.LNX.4.64.2111062234340.1006457@server2.shellworld.net>
	<20211107153903.j3obqxnmww7xcijn@begin>
	<d7ed8f37-ab31-2175-2693-a6da83082d90@gmail.com>
In-Reply-To: <d7ed8f37-ab31-2175-2693-a6da83082d90@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.2
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 1A7GSQ8V018991
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

SG8gSG93YXJkLAoKbm8gdGhlcmUgaXMgbm8gMzIgYml0IHZlcnNpb24gYXQgdGltZSBvZiB3cml0
aW5nLgoKSSBtYWludGFpbiBTbGludCBhbG9uZSBhbmQgZG8gbm90IGhhdmUgdGhlIHRpbWUgbmVl
ZGVkIHRvIG1haW50YWluIHR3bwphcmNoaXRlY3R1cmVzLCBzb3JyeS4KCkZvciB0aGlzIHRvIGhh
cHBlbiBlaXRoZXIgc29tZW9uZSBuZWVkIHRvIHZvbHVudGVlciBkb2luZyB0aGF0LCBvciBpbiB0
aGUKZnV0dXJlIChhZnRlciB0aGUgbmV4dCBTbGFja3dhcmUgcmVsZWFzZSkgSSBtYW5hZ2UgdG8g
aGF2ZSBsZXNzIHNwZWNpZmljCnBhY2thZ2VzIHRvIG1haW50YWluIGluIGFkZGl0aW9uIHRvIHRo
b3NlIHByb3ZpZGVkIGJ5IFNsYWNrd2FyZS4KCkNoZWVycywKRGlkaWVyCi0tLQpEaWRpZXIgU3Bh
aWVyClNsaW50IG1haW50YWluZXIKCgoKTGUgMDcvMTEvMjAyMSDDoCAxNzowMywgTGludXggZm9y
IGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiBhIMOpY3JpdMKgOgo+IEkgaGF2ZSBhIGxpbmsgdG8g
YSBzbGludCBoYWFuZGJvb2suwqAgSXQgc2VlbXMgdG8gaW5kaWNhdGUgdGhhdCBzbGludCAKPiBv
bmx5IHJ1bnMgb24gYSA2NCBiaXQgc3lzdGVtLsKgIElzIHRoYXQgY29ycmVjdD/CoCBNYXliZSB0
aGVyZSdzIGEgMzIgYml0IAo+IHZlcnNpb24/Cj4gCj4gSG93YXJkCgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0
CkJsaW51eC1saXN0QHJlZGhhdC5jb20KaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1h
bi9saXN0aW5mby9ibGludXgtbGlzdA==

