Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 6725E3D2482
	for <lists+blinux-list@lfdr.de>; Thu, 22 Jul 2021 15:22:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1626960153;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=upD7hVTMn1bfMhKV9DeHX4TiRdN55PxzYeUiLZVMrXk=;
	b=S2pRJPbsdMIskjOjg3JYi0GshBoA3F8uaVNO9R62cwBoUgatgJpkQyx6SHqBjWFKlQsUlW
	AwF72TXTcFwArT89ptIefAu/kIyv/J8HnBQbvk+0HpQ4mpNSXDA+s6l64qD/VCk9VnIzb2
	BporSIUVV4uCGghtkiNsZ0+pUH1qUq4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-436-HlEOS1g2NQuNPnf-lcl7bw-1; Thu, 22 Jul 2021 09:22:31 -0400
X-MC-Unique: HlEOS1g2NQuNPnf-lcl7bw-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 44D2D804148;
	Thu, 22 Jul 2021 13:22:28 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D40496F97F;
	Thu, 22 Jul 2021 13:22:27 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 1E9E04BB7C;
	Thu, 22 Jul 2021 13:22:27 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 16MDMKIs006683 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 22 Jul 2021 09:22:20 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 7058B106258; Thu, 22 Jul 2021 13:22:20 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6C14E104850
	for <blinux-list@redhat.com>; Thu, 22 Jul 2021 13:22:17 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id BDCF880120D
	for <blinux-list@redhat.com>; Thu, 22 Jul 2021 13:22:17 +0000 (UTC)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79]) by
	relay.mimecast.com with ESMTP id us-mta-585-As5E96MtP3qBT5yt6aJgTg-1;
	Thu, 22 Jul 2021 09:22:15 -0400
X-MC-Unique: As5E96MtP3qBT5yt6aJgTg-1
Received: from ici.slint.fr (sfa89-1-78-208-157-71.fbx.proxad.net
	[78.208.157.71])
	by darkstar.slint.fr (Postfix) with ESMTPSA id 36ED3A3E44
	for <blinux-list@redhat.com>; Thu, 22 Jul 2021 13:22:13 +0200 (CEST)
Subject: Re: A question on speakup
To: blinux-list@redhat.com
References: <ac70ffcc-fbf1-626e-9348-559c650efce7@gmail.com>
	<5e378258-7faf-6589-1ab2-59cd30ce33fa@slint.fr>
	<d8126558-ed6e-87cd-bac9-1a8bd4390fef@gmail.com>
Message-ID: <f4215214-cbae-695c-0c96-8bb7b7911c8e@slint.fr>
Date: Thu, 22 Jul 2021 15:22:12 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
	Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <d8126558-ed6e-87cd-bac9-1a8bd4390fef@gmail.com>
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
	lists01.pubmisc.prod.ext.phx2.redhat.com id 16MDMKIs006683
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

SGksCgp0aGUgdm9pY2UgaXMgc2V0IGluIC9ldGMvZXNwZWFrdXAuY29uZgoKVG8gbGlzdCB0aGUg
YXZhaWxhYmxlIG9uZXMgKGZvciBlc3BlYWstbmcpOgpsaXN0LWVzcGVhay1uZy12b2ljZXMKCkNo
ZWVycywKRGlkaWVyCgpMZSAyMi8wNy8yMDIxIMOgIDE0OjQwLCBMaW51eCBmb3IgYmxpbmQgZ2Vu
ZXJhbCBkaXNjdXNzaW9uIGEgw6ljcml0wqA6Cj4gSGkgYWdhaW4sCj4gCj4gCj4gRm9yIHNvbWUg
cmVhc29uIGVzcGVha3VwIGNvbWVzIHVwIHRhbGtpbmcgd2l0aCBhIHJhdGhlciBiYWQgVVMgYWNj
ZW50LiAKPiBJcyB0aGVyZSBhIHdheSB0byBjaGFuZ2UgdGhlICJsYW5ndWFnZSIgd2l0aG91dCBr
aWxsaW5nIGVzcGVha3VwPyBFdmVyeSAKPiB0aW1lIEkgZG8gc28sIFNwZWFrdXAgd2lsbCByZXN0
b3JlIG15IHByZXZpb3VzIHNldHRpbmdzLCB3aGljaCwgCj4gdW5mb3J0dW5hdGVseSBpbmNsdWRl
cyB0aGUgYmFkIFVTIHZvaWNlLgo+IAo+IAo+IFdhcm0gcmVnYXJkcywKPiAKPiBCcmFuZHQgU3Rl
ZW5rYW1wCj4gCj4gU2VudCB1c2luZyBUaHVuZGVyYmlyZCBmcm9tIFNsaW50Cj4gCj4gT24gNy8y
Mi8yMSAxMjozMCBQTSwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToK
Pj4gSGkgQnJhbmR0LAo+Pgo+PiBmb3IgU2xpbnQ6Cj4+Cj4+IGh0dHBzOi8vc2xpbnQuZnIvZG9j
L0hhbmRCb29rLmh0bWwjX2NvbmZpZ3VyZV9hX2NvbnNvbGVfc2NyZWVuX3JlYWRlcgo+Pgo+PiBJ
IGRvbid0IGtub3cgYSBzcGVjaWZpYyBzb2Z0d2FyZSBzeW50aGVzaXplciBmb3IgRGVjdGFsaywg
YnV0IGp1c3QgCj4+IHR5cGUgYXMgcm9vdDoKPj4gc3BlYWstd2l0aAo+Pgo+PiBUbyBrbm93IG1v
cmU6Cj4+IGh0dHBzOi8vc2xpbnQuZnIvZG9jL0hhbmRCb29rLmh0bWwjX2Nob29zZV9hX2NvbnNv
bGVfc2NyZWVuX3JlYWRlcgo+Pgo+PiBDaGVlcnMsCj4+IERpZGllcgo+PiAtLSAKPj4gRGlkaWVy
IFNwYWllcgo+Pgo+PiBMZSAyMi8wNy8yMDIxIMOgIDEyOjA5LCBMaW51eCBmb3IgYmxpbmQgZ2Vu
ZXJhbCBkaXNjdXNzaW9uIGEgw6ljcml0wqA6Cj4+PiBIaSBhbGwsCj4+Pgo+Pj4KPj4+IEkgdXNl
IHRvIGtub3cgaG93IHRvIHN0b3JlIGFuZCB0aGVuIHJlc3RvcmUgbXkgc3BlYWt1cCBzZXR0aW5n
cywgCj4+PiBob3dldmVyLCB0byBteSB1dHRlciBzaGFtZSwgSSBmb3Jnb3QgaG93IHRvIGRvIHRo
aXMuCj4+Pgo+Pj4KPj4+IEkgYWxzbyByZWFkIHNvbWV3aGVyZSB0aGF0IHRoZXJlIGlzIGEgc29m
dHdhcmUgRGVjdGFsayBzeW50aGVzaXplciAKPj4+IGF2YWlsYWJsZS4gSWYgYW55b25lIGtub3dz
IGhvdyB0byBpbnN0YWxsIGFuZCBjb25maWd1cmUgdGhpcyB0byB3b3JrIAo+Pj4gd2l0aCBzcGVh
a3VwLCBpdCB3b3VsZCByZWFsbHkgYmUgYXBwcmVjaWF0ZWQuCj4+Pgo+Pgo+Pgo+PiBfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+PiBCbGludXgtbGlzdCBt
YWlsaW5nIGxpc3QKPj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+PiBodHRwczovL2xpc3RtYW4u
cmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4gCj4gX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBCbGludXgtbGlzdCBtYWlsaW5n
IGxpc3QKPiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5j
b20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAoKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgt
bGlzdEByZWRoYXQuY29tCmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGlu
Zm8vYmxpbnV4LWxpc3Q=

