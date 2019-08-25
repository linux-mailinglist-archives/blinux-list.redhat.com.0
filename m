Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by mail.lfdr.de (Postfix) with ESMTPS id DC16A9C67A
	for <lists+blinux-list@lfdr.de>; Mon, 26 Aug 2019 01:01:19 +0200 (CEST)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id ECD628AC6F6;
	Sun, 25 Aug 2019 23:01:17 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 2884A5D6D0;
	Sun, 25 Aug 2019 23:01:17 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 511B91800B74;
	Sun, 25 Aug 2019 23:01:16 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
	[10.5.11.16])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id x7PN1DXQ012500 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 25 Aug 2019 19:01:13 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 5493D5C207; Sun, 25 Aug 2019 23:01:13 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx1.redhat.com (ext-mx27.extmail.prod.ext.phx2.redhat.com
	[10.5.110.68])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 4E5265C258
	for <blinux-list@redhat.com>; Sun, 25 Aug 2019 23:01:10 +0000 (UTC)
Received: from mail-yb1-f181.google.com (mail-yb1-f181.google.com
	[209.85.219.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id 235BCA2FC4F
	for <blinux-list@redhat.com>; Sun, 25 Aug 2019 23:01:10 +0000 (UTC)
Received: by mail-yb1-f181.google.com with SMTP id t5so6373009ybt.4
	for <blinux-list@redhat.com>; Sun, 25 Aug 2019 16:01:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:content-transfer-encoding:mime-version:subject:date:references
	:to:in-reply-to:message-id;
	bh=LBzZ9sIHsXAVD79qxbR4SkIhDEB4P+d2Rd8G4ZnIOrc=;
	b=eq7Pv8iyUofO4GBunFdkxmmy3crx+97hZnbts4RW/oVNE02fM4OVyzBfkw1KLUaLF1
	/BKQ7Cxs+Vkpf+jGupMvkcRaGVs+Eoc6PBHmKFXXsefAMh6JApe7P/7RUo5P+Cy1th3m
	tzxtvwElVVusfBj4zt956WADE3sCtVz4oGjfcS2L1HZ3BE7i7+/D6pQ/x995uxiyOYr/
	zCMqK+OHjI+1QqyVeVOMJlaqWZxGkN0d+0EeQJ4Tfk3prWnoV9dxw4ffSTWd3gRSR+u0
	jJFT3S1RJ251/9BB+bUEiQeWGuIxT45Ws8fbwtlKzKwRC6xNT93q51sf2K3eKUzOcrYn
	oDgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:content-transfer-encoding:mime-version
	:subject:date:references:to:in-reply-to:message-id;
	bh=LBzZ9sIHsXAVD79qxbR4SkIhDEB4P+d2Rd8G4ZnIOrc=;
	b=AAIUFB84V/Ejb5qYWcHkL0v/XzfuQJAOsnkTbxIKNjp1tsFxa4+bSMgsqxELhchKDu
	Gh7b3IooEVh21tC/vz8xZnI35bKeQ0XsoWseHEIWqlEY/J35luAxHE6qEWJeYInkGLjZ
	1JT+jvWUDQx1zJy8xq3kcdOhtZG1i0mM17nnrPYZK9KPqUXz1CRRX/LFSv7R1OPGvINf
	1nE6V9C11HK566qYsC9sNnu08x6RSvvxPr5S7INts1MWUWP3H91ZfjhjIFiJ35g28wss
	rTyCSeMM1Dkd3NHoo3iAV3X3zqJVrGT589WJhd0LHunfcQNLoDhLZF2B0ueKQbsx/+wO
	yLAw==
X-Gm-Message-State: APjAAAWb02hbEKWrupoqS/f7XpjtXG3UCHKI841rTqNdQ9UJ7HvQJm4E
	RosBtbse7rMyBiPFuG3rL9RiaaIr
X-Google-Smtp-Source: APXvYqzz8vQSGsheRIBMiUYyuQEeSLedwPAgG5Co+ijGz1A2/gwNbUaW34bmknBCb03dqg5sz3EQgw==
X-Received: by 2002:a25:ba90:: with SMTP id s16mr10912365ybg.507.1566774069204;
	Sun, 25 Aug 2019 16:01:09 -0700 (PDT)
Received: from [192.168.44.14] ([24.197.47.105])
	by smtp.gmail.com with ESMTPSA id
	s37sm2003094ywa.98.2019.08.25.16.01.08 for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 25 Aug 2019 16:01:08 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.11\))
Subject: Re: amazon?
Date: Sun, 25 Aug 2019 18:01:08 -0500
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
To: "blinux-list@redhat.com" <blinux-list@redhat.com>
In-Reply-To: <CAO2sX31Df3_6iHD8bF41e3E9A0D-0vJs1Xs4nTouVk4RV5uJUQ@mail.gmail.com>
Message-Id: <DA14CE33-EEF3-4B2B-9590-E890E60D4ECE@gmail.com>
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2
	(mx1.redhat.com [10.5.110.68]);
	Sun, 25 Aug 2019 23:01:10 +0000 (UTC)
X-Greylist: inspected by milter-greylist-4.6.2 (mx1.redhat.com [10.5.110.68]);
	Sun, 25 Aug 2019 23:01:10 +0000 (UTC) for IP:'209.85.219.181'
	DOMAIN:'mail-yb1-f181.google.com'
	HELO:'mail-yb1-f181.google.com' FROM:'r.d.t.prater@gmail.com'
	RCPT:''
X-RedHat-Spam-Score: -0.099  (DKIM_SIGNED, DKIM_VALID, DKIM_VALID_AU,
	FREEMAIL_FROM, RCVD_IN_DNSWL_NONE, SPF_HELO_NONE,
	SPF_PASS) 209.85.219.181 mail-yb1-f181.google.com 209.85.219.181
	mail-yb1-f181.google.com <r.d.t.prater@gmail.com>
X-Scanned-By: MIMEDefang 2.84 on 10.5.110.68
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id x7PN1DXQ012500
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2 (mx1.redhat.com [10.5.110.69]); Sun, 25 Aug 2019 23:01:18 +0000 (UTC)

TWljcm9zb2Z0IGhhcyBiZWVuIGdldHRpbmcgYmV0dGVyIGZvciBhIGZldyB5ZWFycyBub3cuIE5v
dCBhbGwgdGhhdCBvbmUgdGhpbmtzIGlzbuKAmXQgdHJ1ZSBmb3IgYWxsIHRpbWUuIOKYuu+4jwpO
YXJyYXRvciBpcyBhY3R1YWxseSBpbXByb3ZpbmcuIE5vdCBhdCBhbiBhbGFybWluZyByYXRlIG9y
IGFueXRoaW5nLCBhbmQgY29yZSBhcHBzIGluIFdpbmRvd3MsIGVzcGVjaWFsbHkgTWFpbCwgcmVt
YWluIGEgcGFpbiBmb3IgYW55IHNjcmVlbiByZWFkZXIgdXNlciB0byB1c2UsIGJ1dCBtYXliZSB0
aGV54oCZbGwgYWN0dWFsbHkgbGlzdGVuIHRvIGZlZWRiYWNrIG9uIHRoYXQgaXNzdWUsIGFuZCBu
b3QganVzdCBkbyB3aGF0ZXZlciB0aGV5IGZlZWwgbGlrZSBhdCB0aGUgdGltZSwgd2hpY2gsIHRv
IGJlIGZhaXIsIGlzIHdoYXQgbW9zdCBjb21wYW5pZXMgc2VlbSB0byBkbywgZXZlbiBpbiB0aGUg
YWNjZXNzaWJpbGl0eSBzcGFjZS4gIkl0IGRvZXNu4oCZdCBtYXR0ZXIgd2hhdCB5b3Ugd2FudCwi
IHRoZXkgc2VlbSB0byBzYXksIOKAnHdlIGtub3cgd2hhdCB5b3Ugd2FudCwgc28gd2XigJlsbCBk
byB3aGF0IHdlIGtub3cgeW91IHdhbnQuIgoKPiBPbiBBdWcgMjUsIDIwMTksIGF0IDU6NTIgUE0s
IExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gPGJsaW51eC1saXN0QHJlZGhhdC5j
b20+IHdyb3RlOgo+IAo+IFNpbmNlIHdoZW4gaXMgTWljcm9zb2Z0IGNvbW1pdHRlZCB0byBhY2Nl
c3NpYmlsaXR5PyBJIHRob3VnaHQgdGhlCj4gd2hvbGUgcmVhc29uIE5WREEgZXhpc3RzIGlzIGJl
Y2F1c2UgV2luZG93J3MgYnVpbHQtaW4gc2NyZWVuIHJlYWRlciBpcwo+IGdhcmJhZ2UgYW5kIEpB
V1MgaXMgcHJvaGliaXRpdmVseSBleHBlbnNpdmUuIEFsc28sIEkgdGhvdWdodCBNaWNyb3NvZnQK
PiB3YXMgcHJldHR5IG11Y2ggdGhlIHBvc3RlciBjaGlsZCBmb3Igc2hydWdnaW5nIG9mZiBsYXdz
dWl0cyBhbmQKPiBjb250aW51aW5nIHRvIHNjcmV3IG92ZXIgdGhlaXIgY3VzdG9tZXJzIGFzIG11
Y2ggYXMgcG9zc2libGUuCj4gCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KPiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPiBCbGludXgtbGlzdEByZWRo
YXQuY29tCj4gaHR0cHM6Ly93d3cucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1s
aXN0CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQmxp
bnV4LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51eC1saXN0QHJlZGhhdC5jb20KaHR0cHM6Ly93d3cu
cmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0
