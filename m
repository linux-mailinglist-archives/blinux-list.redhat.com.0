Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id EECFA4B15FF
	for <lists+blinux-list@lfdr.de>; Thu, 10 Feb 2022 20:12:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1644520348;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=34Dapk1A2wxBfCk1MmURsm5NWI33mxa0yTGg1GUojQU=;
	b=jG14S1m7sUk529L6+TMBH3GrnL/Lq9Rs/dLrhXgo/dtlfOYDGAu1jNzjFrjHxg79rAmC75
	yrclxyDrVSAcEMmnXpFksoDDZIRhQYu33lgWa5fMV/u/yVNc5sKo9KjKw7+hJ2BYCFaKnh
	aRBF/eGeFLhn68ApKzDEYl0qhK7v8bI=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-471-4dAH3rhaPWiY-uXEPl6A4w-1; Thu, 10 Feb 2022 14:12:26 -0500
X-MC-Unique: 4dAH3rhaPWiY-uXEPl6A4w-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id D7AFB346C8;
	Thu, 10 Feb 2022 19:12:19 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 5214D6091B;
	Thu, 10 Feb 2022 19:12:18 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id A146618095C9;
	Thu, 10 Feb 2022 19:12:12 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com
	[10.11.54.8])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 21AJBXWN031548 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 10 Feb 2022 14:11:33 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id B4CCBC080B9; Thu, 10 Feb 2022 19:11:33 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast09.extmail.prod.ext.rdu2.redhat.com [10.11.55.25])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B11A2C080B8
	for <blinux-list@redhat.com>; Thu, 10 Feb 2022 19:11:33 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 9862328EE16C
	for <blinux-list@redhat.com>; Thu, 10 Feb 2022 19:11:33 +0000 (UTC)
Received: from mail-qv1-f51.google.com (mail-qv1-f51.google.com
	[209.85.219.51]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-411-O9PRfd5zPLOEwFcr6yUYDg-1; Thu, 10 Feb 2022 14:11:31 -0500
X-MC-Unique: O9PRfd5zPLOEwFcr6yUYDg-1
Received: by mail-qv1-f51.google.com with SMTP id v10so6020201qvk.7
	for <blinux-list@redhat.com>; Thu, 10 Feb 2022 11:11:31 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:content-transfer-encoding;
	bh=cEaiKmYXzGOhnhMcPWuv1zWMJ6eof4ugdPUL31cKfrg=;
	b=Kvt7RVOGvaZkgUrF5PMdVZowDbdUrfbp8ax4wsSbtidN72CfQ2aMa6kJ4zEevaAsKp
	DZqvNRd6OKzFow22lvjJFKP7hWwCOOadyFd/4SExGqAHTV/GMBwAEzHgVnW5OYFPW6qq
	bvvufl6HwTiBjmWrTy29FZASM2JTucvkcRIF6ODJgO7zycsmIM71sDq9zUnJgckGlMIN
	EiF6JTwUS6jyEB2ZgzLHBGTvT+t3vWIQOvFat98eQ3FsgWjK9r5DjKX60cZ3nbGosLuy
	IoeTvEoSXH4eVEm7HAr5r4biIldYJ+nAaGDR5qFWAp4t0R1ipfgFDxYWAGFX50ZZpwyT
	BEkQ==
X-Gm-Message-State: AOAM530MWB+jCU9zlabTi3oIQ7sjlBb+bnkOMstfzjZ2OmkUah2hMFXY
	fOwoKDnan2/5QRsfBeMqPHTvz8wiTvhQtD8Y2fMqFjUh
X-Google-Smtp-Source: ABdhPJxZhIpnk/uFcDUoZi4rsrY/6nUChvNTlnWU16X1u/b1dT1Ns9JiPsws1oTfEMfZACx6sfm5kmV1BtXfYq5RfHA=
X-Received: by 2002:ad4:5941:: with SMTP id eo1mr6066033qvb.50.1644520290593; 
	Thu, 10 Feb 2022 11:11:30 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:6214:d06:0:0:0:0 with HTTP; Thu, 10 Feb 2022 11:11:30
	-0800 (PST)
In-Reply-To: <313791f3-8549-681d-52d3-a3eea4621ba2@gmail.com>
References: <7a0e0ac7-5e7d-a41a-b775-6782a87ba869@protonmail.com>
	<Pine.LNX.4.64.2202091755540.340174@server2.shellworld.net>
	<71517fe5-f206-4f11-0df6-8f3de20c6231@gmail.com>
	<Pine.LNX.4.64.2202101303530.513193@server2.shellworld.net>
	<313791f3-8549-681d-52d3-a3eea4621ba2@gmail.com>
Date: Thu, 10 Feb 2022 19:11:30 +0000
Message-ID: <CAO2sX30hbz93wap3DHx=7pAb9M5r7S8hXG7zvWGzjeJ9nmHpGw@mail.gmail.com>
Subject: Re: Coqui TTS has blew my mind!
To: blinux-list@redhat.com
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.8
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 21AJBXWN031548
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

SWYgdGhlcmUgd2FzIGEgVGV4dC1tb2RlIHdlYiBicm93c2VyIGhhbGYgYXMgdXNlYWJsZSBhcyBG
aXJlZm94LCBJJ2QKZGl0Y2ggdGhlIEdVSSBhbHRvZ2V0aGVyLi4uIGJ1dCBpZiB3ZWIgZGVzaWdu
ZXJzIHdvdWxkIHN0b3AKc2hvZWhvcm5pbmcgaW4gSmF2YVNjcmlwdCwgSFRNTDUsIGFuZCBvdGhl
ciByaWNoIHdlYiBjb250ZW50IHdoZXJlIHRoZQpzYW1lIGZ1bmN0aW9uYWxpdHkgY291bGQgYmUg
YWNoaWV2ZWQgd2l0aCBiYXNpYyBIVE1MLCB0aGUgZGVmaWNpZW5jaWVzCm9mIG1vc3QgdGV4dC1t
b2RlIGJyb3dzZXJzIHdvdWxkIGJlIGxlc3MgZ2xhcmluZy4uLiBhbmQgd2hpbGUgdGhlCm5hdmln
YXRpb25hbCBob3RrZXlzIHByb3ZpZGVkIGJ5IE9yY2EsIE5WREEsIGFuZCBKQVdTIGFyZSBzbyBk
YXJuCnVzZWZ1bCBJIGhhdmUgdG8gd29uZGVyIGhvdyBJIGdvdCBieSB3aXRob3V0IHRoZW0gYmFj
ayB3aGVuIEkgaGFkIGEKd29ya2luZyBleWUsIGFzIGZhciBhcyBJIGtub3csIG5vIHRleHQtbW9k
ZSB3ZWIgYnJvd3NlciBoYXMgc3VjaCBhCmZlYXR1cmUgYW5kIHRoZSB3YXkgdGV4dC1tb2RlIHNj
cmVlbiByZWFkZXJzIHdvcmssIGl0J3Mgbm90IGEgZmVhdHVyZQp0aGF0IGNhbiBiZSBhZGRlZCB0
byB0ZXh0LW1vZGUgc2NyZWVuIHJlYWRlcnMuCgpUaGF0IHNhaWQsIGFzIHRoaXMgaXMgdGhlIGZp
cnN0IHRpbWUgSSd2ZSBoZWFyZCBvZiBmYWxsYmFjawpsaW5rcyh0aG91Z2ggSSBoYXZlIGNvbWUg
YWNyb3NzIHN0cmVhbWluZyBzaXRlcyB0aGF0IHdvdWxkIHByZXNlbnQgYW4KaW5hY2Nlc3NpYmxl
IHBsYXllciBpZiBsaWJhdmNvZGVjNTggaXMgaW5zdGFsbGVkIGFuZCBhIGRvd25sb2FkIGxpbmsK
aWYgaXQgaXNuJ3QsIHNvIEkndmUgcHJvYmFibHkgZW5jb3VudGVyZWQgdGhlbSB3aXRob3V0IGtu
b3dpbmcgd2hhdAp0aGV5IGFyZSBjYWxsZWQsIGFuZCBpbiBhIGRpZmZlcmVudCBjb250ZXh0IHRo
YW4gdGhlIG9uZSBzdGF0ZWQgYnkgdGhlCnBlcnNvbiB3aG8gbWVudGlvbmVkIHRoZW0pIEkgaGF2
ZSB0byBhc2s6IElzIHRoZWlyIGEgd2F5IHRvIGZvcmNlCkZpcmVmb3ggdG8gYWx3YXlzIGRpc3Bs
YXkgZmFsbCBiYWNrIGxpbmtzPyBBbmQgd2h5IHdvdWxkIHRoZXkgYmUKaGlkZGVuIGJ5IGRlZmF1
bHQgaW4gdGhlIGZpcnN0IHBsYWNlPyBUbyBteSBtaW5kLCB0aGUgbW9zdCBhY2Nlc3NpYmxlCnRo
aW5nIHdvdWxkIGJlIGZvciBzdHJlYW1pbmcgYW5kIGRvd25sb2FkaW5nIHRvIGJlIGVxdWFsbHkg
ZWFzeSB3aGVyZQp0aGUgdXNlciBpcyBjYXBhYmxlIG9mIGRvaW5nIGVpdGhlci4KCk9uIDIvMTAv
MjIsIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gPGJsaW51eC1saXN0QHJlZGhh
dC5jb20+IHdyb3RlOgo+IC4ud2hpY2ggbWFrZXMgc3RhdGluZyB0aGF0IHRoZXNlIGFyZSBhY2Nl
c3NpYmxlIGluY29ycmVjdC4KPgo+Cj4gVGhlc2Ugc2FtcGxlcyBhcmUgaW4gZmFjdCBhY2Nlc3Np
YmxlLCBieSB0aGUgdzNjJ3MgZ3VpZGVsaW5lcywgbm90IG1pbmUuCj4gSSBzdGF0ZWQgdGhhdCBJ
IGhhdmUgYWRkZWQgZmFsbGJhY2sgbGlua3MgdG8gbXkgb3duIHdlYnNpdGUsIGJ1dCB0aGlzIGlz
Cj4gbm90IGEgcmVxdWlyZW1lbnQgZm9yIEhUTUw1IGFjY2Vzc2liaWxpdHkgYXMgZGVmaW5lZCBi
eSB0aGUgdzNjJ3MKPiBhY2Nlc3NpYmlsaXR5IHdvcmtpbmcgZ3JvdXAsIG9yIGF0IGxlYXN0IG5v
dCBhcyBmYXIgYXMgSSBrbm93LiBJdCdzIGp1c3QKPiBzb21ldGhpbmcgSSBkaWQgYmVjYXVzZSBJ
IHdhbnRlZCB0byBpbmNsdWRlIGxlZ2FjeSBzdXBwb3J0IGZvciBvbGRlcgo+IGJyb3dzZXJzLgo+
Cj4KPj4gTGludXggZXhpc3RzIGluIGNvbW1hbmQgbGluZSBhcyB3ZWxsIGFzIGd1aS7CoCBhcyBz
b21lb25lIGVsc2UgaW4gYQo+PiBkaWZmZXJlbnQgdGhyZWFkIG5vdGVkIHJlY2VudGx5LCB0aGV5
IHBlcnNvbmFsbHkgd291bGQgbm90IHRvdWNoIGd1aQo+PiBhZ2FpbiBmb3LCoCB0aGUgcmVzdCBv
ZiB0aGVpciBsaXZlcyBpZiBnaXZlbiBhIGNob2ljZS4gTWVhbmluZyB0aGVzZQo+PiBvcHRpb25z
IGFyZSBub3QgdW5pdmVyc2FsbHkgYXZhaWxhYmxlIG9yIGFjY2Vzc2libGUgaW4gTGludXggYXMg
YSB3aG9sZS4KPgo+Cj4gVGhlIGZhY3QgdGhhdCB0ZXh0LWJhc2VkIGJyb3dzZXJzIGRvIG5vdCBz
dXBwb3J0IEhUTUw1IHN0YW5kYXJkcyBtYWtlcwo+IHRoZW0gaW5hY2Nlc3NpYmxlIGFuZCBwZXJo
YXBzIGV2ZW4gdW51c2FibGUuIFRoZXJlIGlzIG5vdGhpbmcgaW4gdGhlCj4gd29ybGQgc3RvcHBp
bmcgdGhlbSBmcm9tIGJlY29taW5nIHVzYWJsZSBieSB0b2RheSdzIHN0YW5kYXJkcywgaXQgd291
bGQKPiBzZWVtIHRoYXQgdGhleSBqdXN0IHdhbnQgdG8gc3RheSBiYWNrIGluIHRoZSAxOTkwJ3Mu
IE11c2ljIGFuZCB2aWRlbwo+IHBsYXllcnMgZXhpc3QgaW4gdGV4dCBlbnZpcm9ubWVudHMsIG9m
ZmVyaW5nIG5lYXJseSBhbGwgdGhlCj4gZnVuY3Rpb25hbGl0eSBJIGdldCBvbiBhIGRlc2t0b3Au
IEl0J3MgdGltZSBmb3IgdGhlIGJyb3dzZXIgdG8gZG8gdGhlCj4gc2FtZS4gU3RpbGwsIGlmIG15
IHBob25lIGFuZCBteSBkZXNrdG9wIGVudmlyb25tZW50IGNhbiByZWFkIGl0IHdpdGhvdXQKPiBh
bnkgaXNzdWVzLCB0d28gb3V0IG9mIHRocmVlIGFpbid0IGFsbCB0aGF0IGJhZC4gVGhhdCBzYWlk
LCBJIHdhcyBub3QKPiBhdHRlbXB0aW5nIHRvIHN0YXJ0IGEgZmxhbWUgd2FyLCBhcyBJIG1lbnRp
b25lZCB0aGUgZmFsbGJhY2sgcG9zc2liaWxpdHkKPiBhcyBzb21ldGhpbmcgdGhhdCBJIGRvLCBi
dXQgdGhhdCB0aGUgYnJvd3NlcnMgSSB1c2UgaGlkZSB0aG9zZSBmYWxsYmFjawo+IGxpbmtzLCBz
byBJIGNhbid0IHNheSB3aGV0aGVyIG9yIG5vdCB0aGlzIG90aGVyIHdlYnNpdGUgdGhhdCBJIGRp
ZCBub3QKPiB3cml0ZSBlbXBsb3lzIHN1Y2ggbGlua3MsIHdoaWNoIHdvdWxkIG1ha2UgdGhlIHNh
bXBsZXMgYXZhaWxhYmxlIHRocm91Z2gKPiBvdGhlciBicm93c2VycywgYnV0IGFnYWluIGlzIG5v
dCBhdCBhbGwgYSByZXF1aXJlbWVudCB0byBtZWV0IDIwMjIncwo+IGFjY2Vzc2liaWxpdHkgZ3Vp
ZGVsaW5lcyBhcyBkZWZpbmVkIGJ5IHBlb3BsZSBvdGhlciB0aGFuIG15c2VsZiwgd2hpY2gKPiBp
bmNpZGVudGFsbHkgaW5jbHVkZXMgcGVvcGxlIHdobyBhcyB5b3Ugc2F5IHVzZSB0ZXh0IGVudmly
b25tZW50cyBhcwo+IG11Y2ggYXMgcG9zc2libGUuIEJ1dCBldmVuIHRob3NlIHBlb3BsZSBtdXN0
IHVzZSB3aGF0IGJyb3dzZXJzIGFyZQo+IGRlc2lnbmVkIHRvIGF0IGxlYXN0IHRyeSB0byBhZGhl
cmUgdG8gdGhvc2UgZ3VpZGVsaW5lcywgYW5kIGxpa2UgaXQgb3IKPiBub3QsIGV2ZW4gdzNtIGRv
ZXMgbm90IGNvbXBseSB3aXRoIGN1cnJlbnQgSFRNTCBzdGFuZGFyZHMsIGFuZCBpdCdzCj4gYWJv
dXQgdGhlIGJlc3QgdGV4dCBicm93c2VyIGF2YWlsYWJsZS4KPgo+Cj4gbWlnaHQgYXMgd2VsbCBz
YXksIHBsZWFzZSBvbmx5IGJlIGRpc2FibGVkIGFzIEkgcGVyc29uYWxseSBkZWZpbmUgaXQsCj4g
d3JpdGluZyBhY2Nlc3NpYmxlIGJ5IHlvdXIgb3duIGRpY3Rpb25hcnkgYW5kIHNlZW1pbmdseSB0
byBwcm9qZWN0IGl0IG9uCj4gdG8gb3RoZXIgcGVvcGxlLgo+Cj4KPiBOb3QgYXQgYWxsIG15IGlu
dGVudGlvbi4gSSBkaWRuJ3QgZGVmaW5lIHRoZSBhY2Nlc3NpYmlsaXR5IGd1aWRlbGluZXMsIEkK
PiBvbmx5IGFkaGVyZSB0byB0aGVtIHRvIHRoZSBiZXN0IG9mIG15IG93biBhYmlsaXRpZXMsIGFu
ZCBldmVuIHRvb2sgbXkKPiB3ZWJzaXRlJ3MgYWNjZXNzaWJpbGl0eSBhIG1ham9yIHN0ZXAgZnVy
dGhlciB0aGFuIEkgbmVlZGVkIHRvIGluIG9yZGVyCj4gdG8gYWNjb21vZGF0ZSB0aGUgbW9zdCBw
ZW9wbGUuIEhvdyBkYXJlIHlvdSBwdXQgd29yZHMgaW50byBteSBtb3V0aCB0aGF0Cj4gSSBuZXZl
ciBzYWlkLCBlc3BlY2lhbGx5IHNpbmNlIEkgY2xlYXJseSBzYWlkIHRoZSBvcHBvc2l0ZS4gQW5k
IEkgZG9uJ3QKPiB0aGluayB0aGF0IHdhcyB0aGUgdzNjJ3MgaW50ZW50aW9uIGVpdGhlci4KPgo+
Cj4gV2h5IG5vdCBzYXkgZnJvbSB0aGUgb3V0c2V0LCB0aGF0IHRoZSBpdGVtcyBhcmUgb25seSBh
dmFpbGFibGUgZm9yIHNvbWUKPiBMaW51eCB1c2Vycz8KPgo+Cj4gQmVjYXVzZSB0aGF0IHdvdWxk
IGJlIGFuIG91dHJpZ2h0IGxpZS4gRXZlcnlvbmUgd2hvIHJ1bnMgYSBMaW51eAo+IG9wZXJhdGlu
ZyBzeXN0ZW0gaGFzIHRoZSBjaG9pY2UgdG8gdXNlIEJyYXZlLCBDaHJvbWl1bSwgR29vZ2xlIENo
cm9tZSwKPiBGaXJlZm94IGFuZCBhIGhvc3Qgb2Ygb3RoZXIgc3RhbmRhcmRzLWNvbXBsaWFudCBi
cm93c2Vycy4gSnVzdCBiZWNhdXNlCj4geW91IHlvdXJzZWxmIG1hZGUgdGhlIGNob2ljZSBub3Qg
dG8gdXNlIHRoZW0gZG9lcyBub3QgbWVhbiB0aGF0IHRoZXkgYXJlCj4gbm90IGF2YWlsYWJsZSBz
aG91bGQgeW91IGNob29zZSBvbmUgb2YgdGhlbS4gVGhlcmUgYXJlIGV2ZW4gd2F5cyBhcm91bmQK
PiB0aGUgd2hvbGUgZGVza3RvcCBlbnZpcm9ubWVudCBhbmQgc2NyZWVuIGRpc3BsYXkgdGhpbmcs
IHVzaW5nIHh2ZmIgSQo+IHRoaW5rIGl0J3MgY2FsbGVkIHdpdGggZHVtbXkgZGlzcGxheSBvdXRw
dXQgYW5kIGEgdmVyeSBzbWFsbCB3aW5kb3cKPiBtYW5hZ2VyIHRoYXQganVzdCBydW5zIHlvdXIg
c2NyZWVuIHJlYWRlciBhbmQgYnJvd3NlciBhbmQgb3RoZXJ3aXNlCj4gc3RheXMgY29tcGxldGVs
eSBvdXQgb2YgdGhlIHdheS4gQWdhaW4sIGl0J3MgYWJvdXQgcGVyc29uYWwgY2hvaWNlLCBidXQK
PiBtb3JlIGFib3V0IG5lZWRpbmcgdGhlIGFiaWxpdHkgdG8gY2hvb3NlIGEgdGV4dC1tb2RlIGJy
b3dzZXIgdGhhdCBjYW4KPiBoYW5kbGUgdGhlIHNpbXBsZXN0IEhUTUw1IGF1ZGlvIHN0YW5kYXJk
LCBhbmQgYXQgbGVhc3QgZW5vdWdoIEphdmFTY3JpcHQKPiB0byBiZSBhYmxlIHRvIGhhbmRsZSBi
YXNpYyB0aGluZ3MgbGlrZSBiYW5raW5nIGFuZCBzaG9wcGluZyB3aXRob3V0Cj4gY2hva2luZyBh
bmQgZWl0aGVyIGNyYXNoaW5nIG9yIHNlbmRpbmcgbWUgdG8gYSBibGFuayBzY3JlZW4gb3IgYmFj
ayB0bwo+IHRoZSBsb2dpbiBwYWdlIGFzIGlmIG15IGNyZWRlbnRpYWxzIHdlcmUgaW5jb3JyZWN0
LiBUaGUgZmFjdCBpcyB0aGF0Cj4gdGV4dCBicm93c2VycyBjYW4ndCBldmVuIGhhbmRsZSBIVE1M
NCBjb3JyZWN0bHksIGFzIHRoZXkgZG9uJ3Qga25vdyBob3cKPiB0byBoYW5kbGUgc29tZXRoaW5n
IGFzIHNpbXBsZSBhcyBoZWFkZXJzIGluIG1vc3QgY2FzZXMuIEF0IHRoZSB2ZXJ5Cj4gbGVhc3Qs
IGtleWJvYXJkIGhlYWRlciBuYXZpZ2F0aW9uIHdvdWxkIGJlIGEgc3RlcCBpbiB0aGUgcmlnaHQK
PiBkaXJlY3Rpb24uIEJ1dCBhZ2FpbiwgdGhpcyBpcyBub3QgbXkgZmF1bHQsIG5vciB0aGUgZmF1
bHQgb2YgbW9kZXJuCj4gd2Vic2l0ZSBkZXZlbG9wZXJzLiBUaGlzIGlzIGEgbGFjayBvZiBzdGFu
ZGFyZHMgY29tcGxpYW5jZSBhbW9uZwo+IHRleHQtbW9kZSBicm93c2Vycy4gTm90aGluZyBtb3Jl
LCBub3RoaW5nIGxlc3MuCj4KPiB+S3lsZQo+Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KPiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPiBCbGludXgt
bGlzdEByZWRoYXQuY29tCj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0
aW5mby9ibGludXgtbGlzdAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29t
Cmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3Q=

