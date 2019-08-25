Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by mail.lfdr.de (Postfix) with ESMTPS id AB9A79C686
	for <lists+blinux-list@lfdr.de>; Mon, 26 Aug 2019 01:24:28 +0200 (CEST)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id 14087308421A;
	Sun, 25 Aug 2019 23:24:27 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id DFF96600C4;
	Sun, 25 Aug 2019 23:24:26 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id B81DE2551C;
	Sun, 25 Aug 2019 23:24:26 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
	[10.5.11.22])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id x7PNOO3n012892 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 25 Aug 2019 19:24:24 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 4471510016EB; Sun, 25 Aug 2019 23:24:24 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx1.redhat.com (ext-mx18.extmail.prod.ext.phx2.redhat.com
	[10.5.110.47])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3CE1810016E9
	for <blinux-list@redhat.com>; Sun, 25 Aug 2019 23:24:22 +0000 (UTC)
Received: from mail-ot1-f51.google.com (mail-ot1-f51.google.com
	[209.85.210.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id 3F082308218D
	for <blinux-list@redhat.com>; Sun, 25 Aug 2019 23:24:21 +0000 (UTC)
Received: by mail-ot1-f51.google.com with SMTP id k18so13575418otr.3
	for <blinux-list@redhat.com>; Sun, 25 Aug 2019 16:24:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:content-transfer-encoding;
	bh=SP5dzEcF0RYOB85FeEFn2o77Rx0k/QtptuAWCFz4o2Q=;
	b=Lfy96R6ZFjCqCXMXKYYizTRWAix0yGWdW4UhgCOTEMXnp5lEHhoJfhT78aD7D77u9/
	8tzfYSP0wN/B0HTZGbdu2F7xsA6bL4TZbbM7RXfVX+1lkJS3DA/NtvnpZZmYLL0rkwby
	6a5XRHT1aFXct4YryV9FxCXeUDUzLeEsw26GPJUGyossFc8l7/hfhDAj/U0BzL8jhhXj
	sqO8hPo5WGWtg+fKAnP3qzFWLyICYSDE6LYUg+uq36ezCyqJsqgqindsoZh9YQhpqpKB
	TnpU78EOGDpfhjJGmQpvCn34XCvfK3h2y4lAeH2UtgQqwRsU0cca3cyfmRc6c/tsMIE9
	9+kg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:content-transfer-encoding;
	bh=SP5dzEcF0RYOB85FeEFn2o77Rx0k/QtptuAWCFz4o2Q=;
	b=MeJCrS0O2p3gyNWRpq7mm0S463cws7JYU4+lSCE+WPop0AAnFxGl4RXvAgD52LWuvX
	2Oui6SnUTMTb4m/H+X2JKxfXEtEDc5hCz73pt8CXViKtl6Iqh2HvjRrJEBNbLBDeesgZ
	XZIG7jC2cnKm/jD77uy7+Hy65iJMqRFGI1xrxit6pniMWM83ANlBLf9kZVKuAStVrfO0
	v7VsWyiFqY+kU9UDSudK48DBkb4z9cCnCfNkYRLb42FQioeGA1fxyRVDJTaDEwmxhHHQ
	yCaw7K6g9MFla8o0WuLO8V40Ibe3NRF83lvreCB2Rc5y9PpPF3+E1fa0G+WwydJ+xR3M
	146w==
X-Gm-Message-State: APjAAAUYE63Q1U5OytavWXj2NnrD3G25COMBLR+UC9E/pDfHi/DF/LUX
	1FZDUZQDs7XYwJFJYggP5nfbwkSb/YqvjCdf6GP+VA==
X-Google-Smtp-Source: APXvYqyEOKt72kuk8Ow7qLmRXLjTZb/oqmgepYWTe/fe8Qw+lS7C9qbBkXOitHJkf+ourx4qUbay6Bc8xejge1PC600=
X-Received: by 2002:a9d:4814:: with SMTP id c20mr13574108otf.186.1566775460583;
	Sun, 25 Aug 2019 16:24:20 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a9d:48d:0:0:0:0:0 with HTTP;
	Sun, 25 Aug 2019 16:24:20 -0700 (PDT)
In-Reply-To: <DA14CE33-EEF3-4B2B-9590-E890E60D4ECE@gmail.com>
References: <Pine.LNX.4.64.1908231944410.10534@server2.shellworld.net>
	<251aee8d-1527-b391-a37e-e4fbf6799996@gmail.com>
	<alpine.NEB.2.21.1908241555430.22902@panix1.panix.com>
	<7f8743f3-bddf-6807-b2bf-0e7443c9c322@gmail.com>
	<Pine.LNX.4.64.1908250041020.12504@server2.shellworld.net>
	<6acc536b-99c9-21f7-1d40-be4d10abab70@GMAIL.COM>
	<Pine.LNX.4.64.1908251207060.2365@server2.shellworld.net>
	<a1ef7648-72f7-8fc7-e5b5-142187a91cc0@GMAIL.COM>
	<74ebe647-3c78-b87d-c7a3-aa65d2d688d1@gmail.com>
	<20190825.212134.847.19@192.168.1.131>
	<64b22aae-23e5-d645-eeb9-6c7646972090@gmail.com>
	<20190825.213109.635.20@192.168.1.131>
	<64b28f07-c53c-1943-b5de-e27bc6222f24@gmail.com>
	<CAO2sX31Df3_6iHD8bF41e3E9A0D-0vJs1Xs4nTouVk4RV5uJUQ@mail.gmail.com>
	<DA14CE33-EEF3-4B2B-9590-E890E60D4ECE@gmail.com>
Date: Sun, 25 Aug 2019 23:24:20 +0000
Message-ID: <CAO2sX31aVqEVpaBAtpqfk1D9-8qqQ34quNGs_mFk5xEOpsj+Mg@mail.gmail.com>
Subject: Re: amazon?
To: blinux-list@redhat.com
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
	(mx1.redhat.com [10.5.110.47]);
	Sun, 25 Aug 2019 23:24:21 +0000 (UTC)
X-Greylist: inspected by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.47]);
	Sun, 25 Aug 2019 23:24:21 +0000 (UTC) for IP:'209.85.210.51'
	DOMAIN:'mail-ot1-f51.google.com' HELO:'mail-ot1-f51.google.com'
	FROM:'mewtamer@gmail.com' RCPT:''
X-RedHat-Spam-Score: -0.097  (DKIM_SIGNED, DKIM_VALID, DKIM_VALID_AU,
	FREEMAIL_FROM, RCVD_IN_DNSWL_NONE, RCVD_IN_MSPIKE_H3,
	RCVD_IN_MSPIKE_WL, SPF_HELO_NONE,
	SPF_PASS) 209.85.210.51 mail-ot1-f51.google.com 209.85.210.51
	mail-ot1-f51.google.com <mewtamer@gmail.com>
X-Scanned-By: MIMEDefang 2.84 on 10.5.110.47
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id x7PNOO3n012892
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.40]); Sun, 25 Aug 2019 23:24:27 +0000 (UTC)

SHVoLCBndWVzcyBldmVuIGEgY29tcGFueSB3aXRoIGEgZGVjYWRlcyBsb25nIGhpc3Rvcnkgb2Yg
cGlzc2luZyBvZmYKdGhlaXIgY3VzdG9tZXJzIGFuZCBnZXR0aW5nIGF3YXkgd2l0aCBpdCBjYW4g
dHVybiBvdmVyIGEgbmV3IGxlYWYuLi4KKkNvbnN1bHRzIFdpa2lwZWRpYS4qIEh1aCwgZGlkbid0
IHJlYWxpemUgV2luMTAgd2FzIGFscmVhZHkgZm91ciB5ZWFycwpvbGQsIHNlZW1zIGxpa2UgaXQg
d2Fzbid0IHRoYXQgbG9uZyBhZ28gdGhhdCBldmVyeW9uZSB3YXMgY29tcGxhaW5pbmcKYWJvdXQg
TWljcm9zb2Z0IHRyeWluZyB0byBmb3JjZSB1cGRhdGUgYWxsIHRoZSBXaW43IGFuZCBXaW44IG1h
Y2hpbmVzCnRvIDEwIGFuZCBicmlja2luZyBtb3N0IG9mIHRoZW0gaW4gdGhlIHByb2Nlc3MuIEFk
bWl0dGVkbHksIHRoZSBsYXN0CnRpbWUgSSByYW4gV2luZG93cyBvbiBteSBvd24gbWFjaGluZXMg
Zm9yIGxvbmdlciB0aGFuIGl0IHRvb2sgdG8KZG93bmxvYWQgYW5kIGJ1cm4gYW4gaXNvIHRvIHJl
cGxhY2UgV2luZG93cyB3aXRoIExpbnV4IHdhcyBiYWNrIGluIHRoZQpYUCBkYXlzLCBhbmQgdGhl
IGxhc3QgdGltZSBJIHVzZWQgV2luZG93cyBsb25nIGVub3VnaCB0byBkb3dubG9hZCBhbmQKYnVy
biBhbiBpc28gd2FzIG9uIGEgV2luNyBtYWNoaW5lIHByaW9yIHRvIGdvaW5nIGJsaW5kKG5hdHVy
YWxseSwgSSd2ZQp1c2VkIFdpbm9kd3Mgb24gc2Nob29sIGNvbXB1dGVycyBzaW5jZSB0aGVuLCBi
dXQgY2FycnlpbmcgbXkgb3duCmNvbXB1dGVyIHdhcyBlYXNpZXIgdGhhbiB0cnlpbmcgdG8gZ2V0
IG15IHVuaSdzIERpc2FiaWxpdHkgc2VydmljZXMKb2ZmaWNlIHRvIGluc3RhbGwgYSBzY3JlZW4g
cmVhZGVyLCBhbmQgbXkgZXhwZXJpZW5jZSB3aXRoIEpBV1MgYW5kCk5WREEgaXMgd2hvbGVseSB0
aG91Z2ggdGltZSBzcGVudCBpbiBhIFZvY2F0aW9uYWwgUmVoYWIgZm9yIHRoZSBCbGluZApwcm9n
cmFtKS4KCk9uIDgvMjUvMTksIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gPGJs
aW51eC1saXN0QHJlZGhhdC5jb20+IHdyb3RlOgo+IE1pY3Jvc29mdCBoYXMgYmVlbiBnZXR0aW5n
IGJldHRlciBmb3IgYSBmZXcgeWVhcnMgbm93LiBOb3QgYWxsIHRoYXQgb25lCj4gdGhpbmtzIGlz
buKAmXQgdHJ1ZSBmb3IgYWxsIHRpbWUuIOKYuu+4jwo+IE5hcnJhdG9yIGlzIGFjdHVhbGx5IGlt
cHJvdmluZy4gTm90IGF0IGFuIGFsYXJtaW5nIHJhdGUgb3IgYW55dGhpbmcsIGFuZAo+IGNvcmUg
YXBwcyBpbiBXaW5kb3dzLCBlc3BlY2lhbGx5IE1haWwsIHJlbWFpbiBhIHBhaW4gZm9yIGFueSBz
Y3JlZW4gcmVhZGVyCj4gdXNlciB0byB1c2UsIGJ1dCBtYXliZSB0aGV54oCZbGwgYWN0dWFsbHkg
bGlzdGVuIHRvIGZlZWRiYWNrIG9uIHRoYXQgaXNzdWUsCj4gYW5kIG5vdCBqdXN0IGRvIHdoYXRl
dmVyIHRoZXkgZmVlbCBsaWtlIGF0IHRoZSB0aW1lLCB3aGljaCwgdG8gYmUgZmFpciwgaXMKPiB3
aGF0IG1vc3QgY29tcGFuaWVzIHNlZW0gdG8gZG8sIGV2ZW4gaW4gdGhlIGFjY2Vzc2liaWxpdHkg
c3BhY2UuICJJdCBkb2VzbuKAmXQKPiBtYXR0ZXIgd2hhdCB5b3Ugd2FudCwiIHRoZXkgc2VlbSB0
byBzYXksIOKAnHdlIGtub3cgd2hhdCB5b3Ugd2FudCwgc28gd2XigJlsbCBkbwo+IHdoYXQgd2Ug
a25vdyB5b3Ugd2FudC4iCj4KPj4gT24gQXVnIDI1LCAyMDE5LCBhdCA1OjUyIFBNLCBMaW51eCBm
b3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uCj4+IDxibGludXgtbGlzdEByZWRoYXQuY29tPiB3
cm90ZToKPj4KPj4gU2luY2Ugd2hlbiBpcyBNaWNyb3NvZnQgY29tbWl0dGVkIHRvIGFjY2Vzc2li
aWxpdHk/IEkgdGhvdWdodCB0aGUKPj4gd2hvbGUgcmVhc29uIE5WREEgZXhpc3RzIGlzIGJlY2F1
c2UgV2luZG93J3MgYnVpbHQtaW4gc2NyZWVuIHJlYWRlciBpcwo+PiBnYXJiYWdlIGFuZCBKQVdT
IGlzIHByb2hpYml0aXZlbHkgZXhwZW5zaXZlLiBBbHNvLCBJIHRob3VnaHQgTWljcm9zb2Z0Cj4+
IHdhcyBwcmV0dHkgbXVjaCB0aGUgcG9zdGVyIGNoaWxkIGZvciBzaHJ1Z2dpbmcgb2ZmIGxhd3N1
aXRzIGFuZAo+PiBjb250aW51aW5nIHRvIHNjcmV3IG92ZXIgdGhlaXIgY3VzdG9tZXJzIGFzIG11
Y2ggYXMgcG9zc2libGUuCj4+Cj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCj4+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+PiBCbGludXgtbGlzdEBy
ZWRoYXQuY29tCj4+IGh0dHBzOi8vd3d3LnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGlu
dXgtbGlzdAo+Cj4KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwo+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+IEJsaW51eC1saXN0QHJlZGhhdC5jb20K
PiBodHRwczovL3d3dy5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkJsaW51eC1saXN0
IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vd3d3LnJlZGhhdC5j
b20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdA==
