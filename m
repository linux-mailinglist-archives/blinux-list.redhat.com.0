Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 4D5843F4BA1
	for <lists+blinux-list@lfdr.de>; Mon, 23 Aug 2021 15:22:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1629724940;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=MsJavHUeJFWrcKD1d1wlcLXBnl0/FPFCrLahOfwSOk8=;
	b=SbnjeA+EWYrOXNmXiCmR81cK4rujjfTIaE1/6bUQ6/i7Up1vos+Sd79Cmw2EgHtCOxceDT
	M9idCzUgGSHtEET12Q7yi6mrdXJ1bc1duOf3QLbOQ7ALojruijpw9Aftgw1Zt7uoboAzMw
	DBmVnvTdye8ZNOTG+3xmQGCbBIDAHag=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-598-cJ-A8EgjNGSD6gRz8Wr1RA-1; Mon, 23 Aug 2021 09:22:18 -0400
X-MC-Unique: cJ-A8EgjNGSD6gRz8Wr1RA-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id ADA4DCC624;
	Mon, 23 Aug 2021 13:22:14 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B23F860861;
	Mon, 23 Aug 2021 13:22:13 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 690AA181A0F8;
	Mon, 23 Aug 2021 13:22:10 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 17NDM5So007165 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 23 Aug 2021 09:22:06 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 98E6E202F2F0; Mon, 23 Aug 2021 13:22:05 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 91C31202F2ED
	for <blinux-list@redhat.com>; Mon, 23 Aug 2021 13:22:02 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id DE4DC800159
	for <blinux-list@redhat.com>; Mon, 23 Aug 2021 13:22:02 +0000 (UTC)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79]) by
	relay.mimecast.com with ESMTP id us-mta-566-u4qLwmlJOxqemMP7n149OA-1;
	Mon, 23 Aug 2021 09:22:00 -0400
X-MC-Unique: u4qLwmlJOxqemMP7n149OA-1
Received: from ici.slint.fr (sfa89-1-78-208-157-71.fbx.proxad.net
	[78.208.157.71])
	by darkstar.slint.fr (Postfix) with ESMTPSA id DA750A076F
	for <blinux-list@redhat.com>; Mon, 23 Aug 2021 13:21:48 +0200 (CEST)
Subject: Re: Assigning audio devices for applications
To: blinux-list@redhat.com
References: <20210823.124438.168.1@[192.168.1.100]>
Message-ID: <8b0792c8-75b7-0861-7a43-50e3088ba54b@slint.fr>
Date: Mon, 23 Aug 2021 15:21:54 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
	Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <20210823.124438.168.1@[192.168.1.100]>
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
	lists01.pubmisc.prod.ext.phx2.redhat.com id 17NDM5So007165
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
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

SGVsbG8sCgp0aGlzIGRlcGVuZHMgb24gd2hpY2ggZGlzdHJpYnV0aW9uIGFuZCBzY3JlZW4gcmVh
ZGVyIHlvdSBhcmUgdXNpbmcuIApXaGljaCBhcmUKdGhleT8KCkluIFNsaW50IHRoYXQgSSBtYWlu
dGFpbiBlc3BlYWt1cCBob25vcnMgdGhlIHZhbHVlIG9mIEFMU0FfQ0FSRC4KCk1heWJlIGZlbnJp
ciBkb2VzIHRoZSBzYW1lIGlmIGluIHRoZSBjb25maWcgZmlsZSBzZXR0aW5ncy5jb25mIGRyaXZl
ciBpcyAKc2V0IHRvCmdlbmVyaWNEcml2ZXIgb3IgZXNwZWFrRHJpdmVyLCBJIGRpZG4ndCBjaGVj
ayB5ZXQuCgpEaWRpZXIKLS0KRGlkaWVyIFNwYWllcgpTbGludCBtYWludGFpbmVyCmRpZGllcmF0
c2xpbnRkb3RmcgoKTGUgMjMvMDgvMjAyMSDDoCAxNDo0NCwgTGludXggZm9yIGJsaW5kIGdlbmVy
YWwgZGlzY3Vzc2lvbiBhIMOpY3JpdMKgOgo+IEl0J3MgYmVlbiBhIHdoaWxlIHNpbmNlIEkgZGlk
IHRoaXMgYW5kIEkgZG9uJ3QgaGF2ZSBteSBub3RlcyBhbnltb3JlLgo+IEkgd2FudCB0byB1c2Ug
bXkgVVNCIHNvdW5kIGNhcmQgZm9yIHNwZWVjaCBvdXRwdXQgYW5kIG15ICBvbmJvYXJkIGNhcmQg
Zm9yIG1lZGlhLiBJIGRvIG5vdCBoYXZlIHB1bHNlIGluc3RhbGxlZCwgb25seSBhbHNhIGFuZCBs
aWJhby4KPiBXaGF0IGlzIHRoZSBiZXN0IHdheSBvZiBhY2NvbXBsaXNoaW5nIHRoaXM/CgoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQmxpbnV4LWxpc3Qg
bWFpbGluZyBsaXN0CkJsaW51eC1saXN0QHJlZGhhdC5jb20KaHR0cHM6Ly9saXN0bWFuLnJlZGhh
dC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdA==

