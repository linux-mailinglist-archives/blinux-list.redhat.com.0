Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 42BDD3E1E35
	for <lists+blinux-list@lfdr.de>; Thu,  5 Aug 2021 23:58:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1628200682;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=gUrXA8I/7dsvB4n2BtXQQcIyODDNHJwNL60sXAE03OI=;
	b=efKHQwC512hEbBhs3nhsB9BGOugO+ecwQr7UQ1f0TB0NQJnZMTHSaAWl1J5NDVGZirSoYa
	n/U0sqmeIwHr21mNpmuGItbMUYX0UdDfo15ja6wNJNE6VPSleZIhYpJNRiOsXpfUeWIlw3
	Y7jioP6ErDslK85mEmh5AeiAHQMvbNg=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-243-VcTDui3EPYqI4Xet7lFriA-1; Thu, 05 Aug 2021 17:58:00 -0400
X-MC-Unique: VcTDui3EPYqI4Xet7lFriA-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 234EE1006C80;
	Thu,  5 Aug 2021 21:57:56 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 4BD5E60CA1;
	Thu,  5 Aug 2021 21:57:52 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id B6F554BB7B;
	Thu,  5 Aug 2021 21:57:46 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 175Lsuoa003096 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 5 Aug 2021 17:54:57 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id CB37410BFD86; Thu,  5 Aug 2021 21:54:56 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C64EB10BFD82
	for <blinux-list@redhat.com>; Thu,  5 Aug 2021 21:54:51 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 71A218D138A
	for <blinux-list@redhat.com>; Thu,  5 Aug 2021 21:54:51 +0000 (UTC)
Received: from mail-qt1-f180.google.com (mail-qt1-f180.google.com
	[209.85.160.180]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-337-nanTHYJ1Phm3iYBSD4CDVA-1; Thu, 05 Aug 2021 17:54:49 -0400
X-MC-Unique: nanTHYJ1Phm3iYBSD4CDVA-1
Received: by mail-qt1-f180.google.com with SMTP id c5so4996436qtp.13
	for <blinux-list@redhat.com>; Thu, 05 Aug 2021 14:54:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=9iCd3pwrqbZKGr2PUeOkhcL5hzm4DZsfP3YicqNjcQE=;
	b=TD6HyJawYjv2XXLvDW0XtaiPh8ecM/AfthihWCl3blgMvpgNlQmiLm9juQOfZ2Wo7p
	fBqTRa8MZiGfE5QcY24rtbbA9ITB6ODJ9wFuuei7HMlHV24YlnbNb5OZiwecRoOX+Kyv
	OE1sxwZgwLb2Mp5aMm2aSdN/3rmbmR0tu6iJuNsTSC7PMgmrDMwc0SPbImI/KyihU354
	3k28uP0pyvTXogivKc7nTjfbkFVEc+MMpLMDIIfVbYu4vGA9LAqD4YXOYTWtGaiFXV7S
	I1a/gl26fyReqU6t/si047byW7JZYSSCL94zYCQEnslduGivrJTvg1dWoB5S+YSGjiGe
	JfUg==
X-Gm-Message-State: AOAM530wGx2hkrgWxvydBlS1k3E7f0wYIM0+ULMw/fvzZXfj9E8n9oy0
	EPEsIreDubblRIB86ZGYSH2JR649A9kc7w==
X-Google-Smtp-Source: ABdhPJzX9UwZ5PzoRPYEJYbjuSic0Kow9JjRAUIfBWd6eXeSB/rrtkXZ8CAZtD/4xWUDkCWQCwla5Q==
X-Received: by 2002:ac8:5d45:: with SMTP id g5mr6505051qtx.23.1628200488877;
	Thu, 05 Aug 2021 14:54:48 -0700 (PDT)
Received: from thinkpad.example.slint ([2601:192:4c80:1420::cae5])
	by smtp.gmail.com with ESMTPSA id q9sm1318836qkn.85.2021.08.05.14.54.48
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Thu, 05 Aug 2021 14:54:48 -0700 (PDT)
Subject: Re: Solus DE observations
To: blinux-list@redhat.com
References: <3c0f9041-d6e9-5fb5-2e9c-a96dc59bd86c@gmail.com>
	<7b4a0e8e-f7b2-af91-975c-d3ca3a3cbdcf@gmail.com>
	<76FFA217-1F68-444A-8DB7-C465759CD123@gmail.com>
	<fd407fcb-4241-4fd6-49e8-bd25a69f3348@gmail.com>
	<DC07B063-C1B9-49B0-89BA-7F340746AB3D@gmail.com>
	<57bd933a-c517-2ec6-0f1e-716e4a81908b@gmail.com>
	<4020EC8C-BE9D-4ABC-A1B6-EFDCB9F261ED@gmail.com>
	<2a58e6d9-54c9-8d66-7433-aebc6fcf687c@gmail.com>
	<229F2558-87BD-4F2F-907D-218C2D542480@gmail.com>
	<09938f56-8ec8-a34b-65a3-9151aaab74b9@gmail.com>
	<EFCC025D-5C8B-4997-9BDC-D0243384A3D1@gmail.com>
	<alpine.NEB.2.23.451.2108041823280.8697@panix1.panix.com>
	<df6422c1-cf3e-2e3b-ffea-4afb43627a62@gmail.com>
	<229C49E8-4453-4759-A7DE-712BDD5AC3FD@gmail.com>
	<f1f450f1-b1ef-84d0-a4d1-c7515d21b8ef@gmail.com>
	<907EC549-F01A-4345-ABFE-67B06CF6949A@gmail.com>
	<eafbdb46-966c-9e16-ae75-08e15bad2dd3@gmail.com>
	<57D4D4FF-D7FF-4CD9-9500-E011DCACABB0@gmail.com>
Message-ID: <04c11d73-fc50-649b-e020-629d3246b20c@gmail.com>
Date: Thu, 5 Aug 2021 17:54:47 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
	Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <57D4D4FF-D7FF-4CD9-9500-E011DCACABB0@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

SSB0aGluayBhIG9uY2Utd2Vla2x5IHVwZGF0ZSBpcyBhIHJlYXNvbmFibGUgc2NoZWR1bGUuwqAg
TWF5YmUgdGhlcmUgaXMgYSAKbWFpbGluZyBsaXN0IHdoZXJlIGFubm91bmNlbWVudHMgbGlrZSB0
aGlzIGFyZSBwb3N0ZWQ/IENoZWNrIHRoZSBoZWxwIApjZW50ZXIuCgoKLS1EYXZlLS0KCgoKU2Vu
dCBmcm9tIG15IExlbm92byBUaGlua3BhZCwgcnVubmluZyBTbGludCBHTlUvTGludXguICBodHRw
czovL3NsaW50LmZyIGZvciBpbmZvCgpPbiA4LzUvMjEgNTozOSBQTSwgTGludXggZm9yIGJsaW5k
IGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToKPiBIaSwgIEdvdCBpdCB0byB3b3JrIHRoaXMgbW9y
bmluZyBJIHdhcyB0b2xkIHRoZXJlIHdlcmVlIG5vIHVwZGF0ZXMgc28gSSBndWVzcyBJIGFtIGdv
b2QuICBJIHRoaW5rIHRoZSBsYXRlc3QgdmVyc2lvbiBpcyA0LjMgYXQgbGVhc3QgdGhhdCBpcyBh
Y2NvcmRpbmcgdG8gdGhlIGltYWdlIEkgZ290IHllc3RlcmRheSBhbmQgaW5zdGFsbGVkLiAgV2hl
biBJIGZpcnN0IGluc3RhbGxlZCB0aGUgc3lzdGVtIEkgZGlkIGFuIHVwZGF0ZSBvZiA2MDAgb3Ig
c28gcGFja2FnZXMgYnV0IGhhdmUgbm90IHNlZW4gYW55dGhpbmcgc2luY2UuICBJIGFtIG5vdCBl
eHBlY3RpbmcgdXBkYXRlcyBldmVyeSBkYXksIGJ1dCB3b3VsZCBiZSBuaWNlIHRvIGhhdmUgYW4g
aWRlYSBvZiBob3cgb2Z0ZW4gc3RhYmxlIHVwZGF0ZXMgY29tZSBvdXQuICBJIGFtIGd1ZXNzaW5n
IHRoYXQgaXQgd291bGQgYmUgYXQgbGVhc3Qgb25jZSBhIHdlZWsuCj4KPiBNYXR0aGV3Cj4KPgo+
Cj4+IE9uIEF1ZyA1LCAyMDIxLCBhdCA0OjQ5IFBNLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBk
aXNjdXNzaW9uIDxibGludXgtbGlzdEByZWRoYXQuY29tPiB3cm90ZToKPj4KPj4gc3VkbyBlb3Br
ZyB1cGdyYWRlIHdpbGwgdXBkYXRlIHlvdXIgc3lzdGVtLiAgRW9wa2cgaGFzIGEgbWFudWFsIHBh
Z2UuCj4+Cj4+Cj4+Cj4+IC0tIERhdmUgLS0KPj4KPj4KPj4KPj4KPj4gU2VudCBmcm9tIG15IExl
bm92byBUaGlua3BhZCwgcnVubmluZyBTbGludCBHTlUvTGludXguICBodHRwczovL3NsaW50LmZy
IGZvciBpbmZvCj4+Cj4+IE9uIDgvNC8yMSA5OjA1IFBNLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJh
bCBkaXNjdXNzaW9uIHdyb3RlOgo+Pj4gU28sIGhvdyBkbyB5b3UgY2hlY2sgZm9yIHVwZGF0ZXMg
b24gdGhlIHN5c3RlbSB1c2luZyBhIHRlcm1pbmFsPyAgU3VkbyBlb3BrZyBpbnN0YWxsIHBhY2th
Z2Ugd291bGQgaW5zdGFsbCBhIHBhY2thZ2UsIGJ1dCB3b3VsZCBzb21ldGhpbmcgbGlrZSBzdWRv
IGVvcGtnIHVwZ3JhZGUgd29yayBvciB3aGF0PyAgSSBrbm93IHlvdSBjYW4gZ28gdGhyb3VnaCBz
b2Z0d2FyZSBjZW50ZXIsIGJ1dCB3b3VsZCBsaWtlIHRvCj4+IF9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+
PiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21h
aWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPgo+IF9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4gQmxpbnV4
LWxpc3RAcmVkaGF0LmNvbQo+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlz
dGluZm8vYmxpbnV4LWxpc3QKPgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51eC1saXN0QHJlZGhhdC5j
b20KaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlz
dA==

