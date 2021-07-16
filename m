Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id E5EB63CB74F
	for <lists+blinux-list@lfdr.de>; Fri, 16 Jul 2021 14:20:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1626438026;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=5gGARyt7cBO0eBSsq2WTJbQAgSU2ml7LAyLqCwjMbNg=;
	b=QQfykIj2lw0xZ6ZjpqXL2I5Vv7+PBkREM83Lg0uTddqd56vKIgM+P2dXCLy+/LuNDnGc8/
	f2mg53l+MKgI7E5Whmgi274vMJJGrTjgJvTDJFLOyPtIZKRKvIAw1/IuBeGic/oqNN8j1P
	c4wD5M83h/Y6vrLJS+J5QiOC2BDyHQ8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-537-j53i28BEN7yN5J6ZNKTk2A-1; Fri, 16 Jul 2021 08:20:24 -0400
X-MC-Unique: j53i28BEN7yN5J6ZNKTk2A-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id EB7CC56C98;
	Fri, 16 Jul 2021 12:20:19 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 81D7A5D9C6;
	Fri, 16 Jul 2021 12:20:19 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 51F574A712;
	Fri, 16 Jul 2021 12:20:18 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 16GCKCef018515 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 16 Jul 2021 08:20:12 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 152C320A8C0C; Fri, 16 Jul 2021 12:20:12 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 10D62207AD36
	for <blinux-list@redhat.com>; Fri, 16 Jul 2021 12:20:09 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 7E69E80B718
	for <blinux-list@redhat.com>; Fri, 16 Jul 2021 12:20:09 +0000 (UTC)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79]) by
	relay.mimecast.com with ESMTP id us-mta-581-Pec7adCZMxuExqyPTMiq8w-1;
	Fri, 16 Jul 2021 08:20:07 -0400
X-MC-Unique: Pec7adCZMxuExqyPTMiq8w-1
Received: from ici.slint.fr (sfa89-1-78-208-157-71.fbx.proxad.net
	[78.208.157.71])
	by darkstar.slint.fr (Postfix) with ESMTPSA id B2CD3A41C0
	for <blinux-list@redhat.com>; Fri, 16 Jul 2021 13:19:34 +0200 (CEST)
Subject: Re: Where can I find ocrdesktop
To: blinux-list@redhat.com
References: <cb842f3f-188c-13e1-2bc1-a699cbb577a8@gmail.com>
Message-ID: <5d2b2cee-e18d-12e5-6dd5-debae0e79e06@slint.fr>
Date: Fri, 16 Jul 2021 14:19:55 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
	Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <cb842f3f-188c-13e1-2bc1-a699cbb577a8@gmail.com>
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
	lists01.pubmisc.prod.ext.phx2.redhat.com id 16GCKCef018515
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

SGkgYWdhaW4sCgpDaHJ5cycgcmVwbyBpcyBoZXJlOgoKaHR0cHM6Ly9naXRodWIuY29tL2Nocnlz
ODcvb2NyZGVza3RvcAoKYWJvdXQgbGludXgtYTExeS5vcmcsIEkganVzdCBwb3N0ZWQgYSBtZXNz
YWdlIGluIHRoZSAjYTExeSBjaGFubmVsIG9mCmlyYy5saW51eC1hMTF5Lm9yZyBidXQgQ2hyeXMg
aXMgbm90IGluIHRoZSByb29tIGF0IHRoZSBtb21lbnQuCgpDaGVlcnMsCgpEaWRpZXIKLS0KRGlk
aWVyIFNwYWllcgpTbGludCBtYWludGFpbmVyCmRpZGllcmF0c2xpbnRkb3RmcgpodHRwczovL3Ns
aW50LmZyCgpMZSAxNi8wNy8yMDIxIMOgIDEzOjU2LCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBk
aXNjdXNzaW9uIGEgw6ljcml0wqA6Cj4gSGksCj4gCj4gSSBkb3dubG9hZGVkIExpb3MgMyBhbmQg
aXQgaXMgd29ya2luZyBmb3IgbWUuIE5vdywgSSB3YW50IHRvIGRvd25sb2FkIAo+IG9jcmRlc2t0
b3AsIHdoaWNoIHdhcyBwcmV2aW91c2x5IGxvY2F0ZWQgYXQgbGludXgtYTExeS5vcmcsIGJ1dCB3
aGVuIEkgCj4gZW50ZXIgdGhpcyBhZGRyZXNzLCBGaXJlZm94IGNhbiBub3QgbG9hZCBpdC4gU28s
IGNhbiBJIGRvd25sb2FkIAo+IG9jcmRlc2t0b3AgZnJvbSBzb21lIG5ldyBsb2NhdGlvbj8gR29v
Z2xlIGlzbid0IGhlbHBpbmcuCj4gCj4gVGhhbmtzLAo+IAo+IFBhdmVsCgoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBs
aXN0CkJsaW51eC1saXN0QHJlZGhhdC5jb20KaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFp
bG1hbi9saXN0aW5mby9ibGludXgtbGlzdA==

