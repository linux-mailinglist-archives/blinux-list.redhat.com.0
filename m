Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	by mail.lfdr.de (Postfix) with ESMTP id B66E31F03E8
	for <lists+blinux-list@lfdr.de>; Sat,  6 Jun 2020 02:24:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1591403063;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=VPPmP9ENUTJiqTbbuGPJS/4CGiGsKBkuQ+Ot1KJjPw8=;
	b=XPsUBL/sco5FWzufuT90WqXAlooysifJKzIlCS3EO1i6jO3+XZOhHFbgShTF0Zh3GY0TV8
	7oYio1B3+7QQwIoRuW2cuDv5OIZCMZZpsykpHhWZp3cWfsZmTAAgpeMRjtAyWD25WZXSV0
	9HqvGL/eHrTRi5z0FhvdPePVjhCNCQ4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-482-gCRoEdesP56MD6pDYU6uog-1; Fri, 05 Jun 2020 20:24:21 -0400
X-MC-Unique: gCRoEdesP56MD6pDYU6uog-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id ECC501009619;
	Sat,  6 Jun 2020 00:24:16 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B122C1010426;
	Sat,  6 Jun 2020 00:24:13 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 1C3E71804768;
	Sat,  6 Jun 2020 00:24:08 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 055IKdVH029000 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 5 Jun 2020 14:20:39 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id A11002028E91; Fri,  5 Jun 2020 18:20:39 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 9C2C62029F72
	for <blinux-list@redhat.com>; Fri,  5 Jun 2020 18:20:37 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 97BCE81C897
	for <blinux-list@redhat.com>; Fri,  5 Jun 2020 18:20:37 +0000 (UTC)
Received: from mail-ed1-f50.google.com (mail-ed1-f50.google.com
	[209.85.208.50]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-472-RyNRa1C9P_2UxmuQ1fsFYQ-1; Fri, 05 Jun 2020 14:20:35 -0400
X-MC-Unique: RyNRa1C9P_2UxmuQ1fsFYQ-1
Received: by mail-ed1-f50.google.com with SMTP id e12so8200535eds.2
	for <blinux-list@redhat.com>; Fri, 05 Jun 2020 11:20:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:references:in-reply-to:subject:date
	:message-id:mime-version:content-transfer-encoding:thread-index
	:content-language:disposition-notification-to;
	bh=4ySIPOS5cGKRZ7JUq1adOP7kbRGy0MSIDHAjFuWbvJo=;
	b=fLPdHzLsLbNLtWOBWkwn4AL3oAc5UgguL3HKSE2sJ+8m2dYNS2G9XVRw44oBqVjmhG
	YXEN1Ape2/LJLwhtL12Ba6COjs/ZwLkBgdiyUSrSu9CTzX57lzhquJIh+FocJuntaeWX
	6UOZehIE0TMMKm2LRTMOSTbwGSGvUS7EJq0xfdB1zUoF/5AWmnLmjcYtjVMkV5IYR3qk
	7qR0iXLm6MReCfVJC375aJwb2jt8M2Db3xosyZ/K2n1pST51FMLm6u1VjsPX+4gfmJO6
	mxQ/dhFpkQe7s6K4tYMa1GXEDlQtCRqJ9Hw8bsTji3e4XA4FTqXbYavi0zFDC2NYeDAV
	KY4A==
X-Gm-Message-State: AOAM5311u970eeAVIrz3qXMbb0dIhNQTmv8tLLjVxQutYoildN631fJE
	dFBRv3mrab+eEsjjyOhbdUvSfeojzvE=
X-Google-Smtp-Source: ABdhPJzL7lwz04vGKAfFYg6FiNcxkhw8KRVAHT55BgUn7gHqlzOycgrp5bgdsC+JuelYx+bgTmJfOg==
X-Received: by 2002:a05:6402:128b:: with SMTP id
	w11mr5257961edv.377.1591381233229; 
	Fri, 05 Jun 2020 11:20:33 -0700 (PDT)
Received: from DESKTOPJA0BLKE ([45.222.11.55])
	by smtp.gmail.com with ESMTPSA id
	bm9sm5365814edb.84.2020.06.05.11.20.31 for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 05 Jun 2020 11:20:32 -0700 (PDT)
X-Google-Original-From: <BRANDT.STEENKAMP@GMAIL.COM>
To: <blinux-list@redhat.com>
References: <19fe1f20-9bc7-9fc7-6702-a34021279d54@gmail.com>
	<AD0DEA51-255F-48CB-A427-C861671A73CC@gmail.com>
In-Reply-To: <AD0DEA51-255F-48CB-A427-C861671A73CC@gmail.com>
Subject: RE: Tiling WM with Orca, anyone?
Date: Fri, 5 Jun 2020 20:20:29 +0200
Message-ID: <016a01d63b65$ff8d8a10$fea89e30$@GMAIL.COM>
MIME-Version: 1.0
Thread-Index: AQER8SoVZbZA6ltVLS33rEI/3+DKPwFuAseiqkd4u3A=
Content-Language: en-za
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 055IKdVH029000
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

UmVnYXJkaW5nIFVidW50dSBtYXRlIG9uIHRoYXQgbWFjaGluZSwgaXNzdWVzIGFzIGluIGl0IGRv
ZXNuJ3QgcnVuLiBJIGtub3cgaXQgaXMgYSA2NCBiaXQgbWFjaGluZSwgcHJvYmFibHkgb25lIG9m
IHRoZSBvbGRlc3Qgc3RpbGwgd29ya2luZyBvbmVzIHRoYXQgSSBoYXZlIGV2ZXIgc2Vlbi4gV2Fz
IHRoaW5raW5nIGRyb3AgYXJjaCBvbiB0aGVyZSwgYnV0IGhhdmUgbm8gY2x1ZSB3aGF0IHRvIGRv
IGFib3V0IGEgR1VJIGZvciB0aGUgZ3V5IHNpbmNlIGhlJ3MgYSB0b3RhbCBuZXdiaWUuCgpXYXJt
IHJlZ2FyZHMvR3JvZXRuaXMvaGVyemxpY2hlIEdyw7zDn2UsCgpCcmFuZHQgU3RlZW5rYW1wCgpD
b250YWN0L0tvbnRhay9Lb250YWt0CgpUd2l0dGVyOiB3d3cudHdpdHRlci5jb20vYnJhbmR0c3Rl
ZW5rYW1wCgpTa3lwZTogYnJhbmR0LnN0ZWVua2FtcDAwNwoKLS0tLS1PcmlnaW5hbCBNZXNzYWdl
LS0tLS0KRnJvbTogYmxpbnV4LWxpc3QtYm91bmNlc0ByZWRoYXQuY29tIDxibGludXgtbGlzdC1i
b3VuY2VzQHJlZGhhdC5jb20+IE9uIEJlaGFsZiBPZiBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBk
aXNjdXNzaW9uClNlbnQ6IFRodXJzZGF5LCAwNCBKdW5lIDIwMjAgMDM6MjMKVG86IGJsaW51eC1s
aXN0QHJlZGhhdC5jb20KU3ViamVjdDogUmU6IFRpbGluZyBXTSB3aXRoIE9yY2EsIGFueW9uZT8K
CkJ5IOKAmGlzc3Vlc+KAmSwgZG8geW91IG1lYW4gcHJvYmxlbXM/CldoaWNoIGRpc3RyaWJ1dGlv
biBhcmUgeW91IHRyeWluZyB0byB1c2U/CldpdGggc29tZSB2ZXJzaW9ucyBvZiB1YnVudHUgbWF0
ZSBJIGZpbmQgdGhleSB3b3JrLgpXaXRoIHVidW50dSBtYXRlIDIwLjQgSSBmaW5kIEkgY2Fubm90
IGluc3RhbGwgYmVjYXVzZSBvZiB0aGUgZmFjdCB0aGF0IG9yY2Egc2F5cyDigJhpbnN0YWxsIGFz
IHN1cGVyIHVzZXLigJkgYnV0IG5vdCBhbGwgdGhlIGNob2ljZXMgdGhhdCBhcmUgb24gdGhlIGlu
c3RhbGwgc2NyZWVuLgoKPiBPbiBKdW4gMywgMjAyMCwgYXQgNDoyNyBQTSwgTGludXggZm9yIGJs
aW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiA8YmxpbnV4LWxpc3RAcmVkaGF0LmNvbT4gd3JvdGU6Cj4g
Cj4gSGkgZXZlcnlvbmUsCj4gCj4gSSBuZWVkIHRvIGluc3RhbGwgYSBkaXN0cm8gb24gYSBtaW5p
bWFsaXN0IG1hY2hpbmUgZm9yIGEgYmxpbmQgTGludXggbmV3YmllLCBidXQgaW4gdGVzdGluZyBl
dmVuIE1hdGUgaXMgaGF2aW5nIGlzc3Vlcy4gT2ssIGl0J3MgYSBwaWVjZSBvZiBqdW5rLCBidXQg
YWxsIHRoZSBndXkncyBnb3QuCj4gCj4gSSB3YXMgdGhpbmtpbmcgc29tZXRoaW5nIGxpa2UgaTMs
IGJ1dCBteSByZXNlYXJjaCBzaG93cyBpc3N1ZXMuIFdoYXQgd291bGQgeW91IHN1Z2dlc3Q/IFRo
ZSBtYWNoaW5lIGlzIHByb2JhYmx5IG9sZCBlbm91Z2ggc28gSSBjb3VsZCBoYXZlIGJvdWdodCBp
dCBzZWNvbmQgaGFuZCB3aGVuIEkgZmluaXNoZWQgaGlnaCBzY2hvb2wgMTYgeWVhcnMgYWdvLgo+
IAo+IC0tIAo+IFdhcm0gcmVnYXJkcy9Hcm9ldG5pcy9IZXJ6bGljaGUgR3LDvMOfZSwKPiAKPiBC
cmFuZHQgU3RlZW5rYW1wCj4gCj4gU2VudCB1c2luZyBUaHVuZGVyYmlyZCBmcm9tIFVidW50dSBN
YXRlIDIwLjA0Cj4gCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KPiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPiBCbGludXgtbGlzdEByZWRoYXQuY29t
Cj4gaHR0cHM6Ly93d3cucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0CgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQmxpbnV4LWxp
c3QgbWFpbGluZyBsaXN0CkJsaW51eC1saXN0QHJlZGhhdC5jb20KaHR0cHM6Ly93d3cucmVkaGF0
LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0CgoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51
eC1saXN0QHJlZGhhdC5jb20KaHR0cHM6Ly93d3cucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZv
L2JsaW51eC1saXN0

