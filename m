Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 13138440CB3
	for <lists+blinux-list@lfdr.de>; Sun, 31 Oct 2021 05:07:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1635653247;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=1eSpu5fYYeKjFv7dyDiYF4Qk/b9UGtzRtJUUDX2G8CM=;
	b=NKYD9gYPFaiMD3CPVKydrENiEUvK5n4wXauneuYIZjhn9s+2MaErtnMw1gOzbSEa3QRYUw
	YQfPqPbN/o8pozlL4Sqg8HrbHDHlhMijYEEnHlBGeZK0/3vumc4pD6DFvWvhuvR9QjFuA1
	r9PPuB4TLsnAFUvX7ZlxH6tl96QfL8o=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-555-zbjA_n6hPiqbV1YTkovb1A-1; Sun, 31 Oct 2021 00:07:23 -0400
X-MC-Unique: zbjA_n6hPiqbV1YTkovb1A-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 79939802B61;
	Sun, 31 Oct 2021 04:07:19 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6653C6060F;
	Sun, 31 Oct 2021 04:07:18 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 1DA6E1803B30;
	Sun, 31 Oct 2021 04:07:15 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 19V479iW022028 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 31 Oct 2021 00:07:09 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 9B0182166B2D; Sun, 31 Oct 2021 04:07:09 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 9556A2166B25
	for <blinux-list@redhat.com>; Sun, 31 Oct 2021 04:07:04 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id D4FB0101AA6A
	for <blinux-list@redhat.com>; Sun, 31 Oct 2021 04:07:03 +0000 (UTC)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79]) by
	relay.mimecast.com with ESMTP id us-mta-49-adfcSYqvOR2fLJIJiFKWpg-1;
	Sun, 31 Oct 2021 00:07:01 -0400
X-MC-Unique: adfcSYqvOR2fLJIJiFKWpg-1
Received: from [192.168.0.10] (sfa89-1-78-208-157-71.fbx.proxad.net
	[78.208.157.71])
	by darkstar.slint.fr (Postfix) with ESMTPSA id CD55BA390C
	for <blinux-list@redhat.com>; Sun, 31 Oct 2021 03:06:27 +0100 (CET)
Message-ID: <bbde2318-352c-e9ad-96ad-e7ea4ec0b902@slint.fr>
Date: Sun, 31 Oct 2021 05:06:58 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.2.1
Subject: Re: have any of you mannaged to successfully install linux alongside
	with windows?
To: blinux-list@redhat.com
References: <8e1506f5-960a-0c44-4008-087d87da5e7d@gmail.com>
In-Reply-To: <8e1506f5-960a-0c44-4008-087d87da5e7d@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 19V479iW022028
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

SGVsbG8gSWJyYWhpbSwKCnRoaXMgaXMgZWFzaWx5IGRvbmUgd2l0aCBTbGludCwgaWYgV2luZG93
cyBib290cyBpbiBFRkkgbW9kZToKaHR0cHM6Ly9zbGludC5mci9kb2MvSGFuZEJvb2suaHRtbAoK
Q2hlZXJzLApEaWRpZXIKLS0KRGlkaWVyIFNwYWllcgpTbGludCBtYWludGFpbmVyCgoKTGUgMzEv
MTAvMjAyMSDDoCAwNDoxOCwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiBhIMOp
Y3JpdMKgOgo+IEhlbGxvIGZvbGtzLAo+IAo+IEkgaGF2ZSBiZWVuIHBsYXlpbmcgd2l0aCBMaW51
eCBtaW50IGFuZCBBY2Nlc3NpYmxlIENvY29udXQgZm9yIG92ZXIgMjQgCj4gaG91cnMuIEkgYW0g
Z2V0dGluZyB0byBsaWtlIHRoaXMgc3lzdGVtLiBIb3dldmVyLCBXaGVuIEkgY29udGVtcGxhdGVk
IAo+IGluc3RhbGxpbmcgb24gbXkgaGFyZCBkaXNrLCBJIGZvdW5kIHRoZSBpbnN0YWxsYXRpb24g
cHJvY2VzcyBhIGxpdHRsZSAKPiBjb25mdXNpbmcgYW5kIHNjYXJ5LiBJIGFsd2F5cyByZXZlcnRl
ZCBiYWNrIGFuZCBhYm9ydGVkIHRoZSBpbnN0YWxsYXRpb24gCj4gdG8gcHJldmVudCBhbiB1bmlu
dGVuZGVkIGRhbWFnZSB0byBteSB3aW5kb3dzIG9wZXJhdGluZyBzeXN0ZW0uCj4gCj4gSWYgYW55
IG9mIHlvdSBoYXZlIHN1Y2Nlc3NmdWxseSBtYW5hZ2VkIHRvIGluc3RhbGwgbGludXggYWxvbmdz
aWRlIHdpdGggCj4gd2luZG93cyBvbiB0aGUgc2FtZSBoYXJkIGRpc2ssIHBsZWFzZSBhZHZpc2Ug
bWUgb24gaG93IHRvIGdvIGFib3V0IGl0IAo+IHNhZmVseS4KPiAKPiBSZWdhcmRzLAo+IAo+IEli
cmFoaW0KCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpC
bGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpodHRwczovL2xp
c3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0

