Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EE2E9BE0F
	for <lists+blinux-list@lfdr.de>; Sat, 24 Aug 2019 15:48:44 +0200 (CEST)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id D7E55189DADC;
	Sat, 24 Aug 2019 13:48:42 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6CC1C5C3F8;
	Sat, 24 Aug 2019 13:48:42 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id E03092551C;
	Sat, 24 Aug 2019 13:48:40 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
	[10.5.11.12])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id x7ODmPkG006951 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 24 Aug 2019 09:48:25 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id E99D760F86; Sat, 24 Aug 2019 13:48:25 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx1.redhat.com (ext-mx02.extmail.prod.ext.phx2.redhat.com
	[10.5.110.26])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E418160C80
	for <blinux-list@redhat.com>; Sat, 24 Aug 2019 13:48:23 +0000 (UTC)
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com
	[209.85.221.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id 3064989AC9
	for <blinux-list@redhat.com>; Sat, 24 Aug 2019 13:48:22 +0000 (UTC)
Received: by mail-wr1-f53.google.com with SMTP id z1so11092523wru.13
	for <blinux-list@redhat.com>; Sat, 24 Aug 2019 06:48:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:subject:to:references:message-id:date:user-agent:mime-version
	:in-reply-to:content-transfer-encoding:content-language;
	bh=qyTBEwn5132ELYIquNEVDmaHXsZx1cwuf0NNsRCXLsk=;
	b=FLKCXN72WsF9m62sGG+piiutVV5kSmJAD8j7hucgpm+2AtFJO9MxFLiGYAbNXUHp10
	Ez75OLqILL4CWC7VzKte9C/qEVr/l0xRbjPEsvtTiTnTosfZVc+rW0GRMoQvPLT2K/Lw
	Z1492Ufq+KisO//3w5afzVYzpwngPd+eCE+vM8lDvAeKkMkasmdX/9QAgcRF3x4A39Ad
	FGrt+DO01osXzQwJpoCtua0Q/bNO36K02auTKwwVjFjYhGb4SyxO2ahcHrnijfpmShzL
	jAD65NPF3dZWj4bqlDXN2P6AgC75BJWh5uqp/GsW6trn5EBclcGdcWc+YBH7ttsw4eFn
	r38A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:subject:to:references:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=qyTBEwn5132ELYIquNEVDmaHXsZx1cwuf0NNsRCXLsk=;
	b=D2Tmn7POugd8mDuiqInD72ZEG3pSlBa2KWpCCE3f3BvQEigtemrhbrX/HEXbd25WyV
	uQ7LSk3ouj9ZtUm8ouIir1ENFGgI87sHz9Dq5keP1BedGgE5Pnt6wTstxl02sBjaBSMG
	xbfu/xBrPB08uKgx2Zc9E9G0CnDZ5fWqc4duQ1ScHT9VJS4LhwGGkcfaYgumCcvF1bTh
	1FuA/ywmNK/RhBh2cQMXiz4q2qhcNRAyNPxhTej0Z5F/CMdwOZO2YsaE47w8Q4hBv8Ve
	CgKrmfdeZvZwG45dlOEx03uPFoz7iLNXTwvwcwODWsdidsrySmTO45oQGnul8ezKzy1k
	nwiA==
X-Gm-Message-State: APjAAAVAxkOauMvfeAHVS9rXJlineRhW494gUzy+/e7GEIALOmVixEGp
	pELNb2aB53aRSxDf177y2aXN3jdV
X-Google-Smtp-Source: APXvYqyVY3c7hYxOfMFWHcRvsBBoEfy63H2St32yGqNpoylmyvdvYlgoLcKqarlTbbDdGgB5BufLPg==
X-Received: by 2002:a05:6000:1085:: with SMTP id
	y5mr11174536wrw.285.1566654500532; 
	Sat, 24 Aug 2019 06:48:20 -0700 (PDT)
Received: from ?IPv6:2a04:b2c2:807:200:9d52:54c0:3f3b:a797?
	([2a04:b2c2:807:200:9d52:54c0:3f3b:a797])
	by smtp.gmail.com with ESMTPSA id
	a23sm12326103wma.24.2019.08.24.06.48.19 for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sat, 24 Aug 2019 06:48:19 -0700 (PDT)
X-Google-Original-From: Jace Kattalakis <KHALFANG1366@GMAIL.COM>
Subject: Re: Slint and VM
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <9371f6c4-35d7-7990-67ed-32cacb736d47@GMAIL.COM>
	<8f446f63-2eb6-6d85-5216-3295372bb7a7@gmail.com>
	<f4214c34-41af-8dad-ee32-6598873714b9@GMAIL.COM>
	<78bc145a-aafa-9d61-72ea-788a2712de0d@slint.fr>
	<3e503f57-08c0-6cc2-9017-024eb2af9484@GMAIL.COM>
	<56b7a7a3-0cc8-f1a0-19bb-dceba63f72ce@slint.fr>
	<84c8f8a1-3388-a20a-fb3e-27c52655010c@GMAIL.COM>
	<77c97795-52b2-848e-275a-9ea2e8f9b984@slint.fr>
	<3690eea5-ed3e-319e-2c88-c926bcafb152@GMAIL.COM>
	<26577346-8dab-e1e6-19ed-c44714fd4ca3@slint.fr>
Message-ID: <db07d38b-be9e-63a6-7902-9647be5bbbe5@GMAIL.COM>
Date: Sat, 24 Aug 2019 14:48:18 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <26577346-8dab-e1e6-19ed-c44714fd4ca3@slint.fr>
Content-Language: en-US
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
	(mx1.redhat.com [10.5.110.26]);
	Sat, 24 Aug 2019 13:48:22 +0000 (UTC)
X-Greylist: inspected by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.26]);
	Sat, 24 Aug 2019 13:48:22 +0000 (UTC) for IP:'209.85.221.53'
	DOMAIN:'mail-wr1-f53.google.com' HELO:'mail-wr1-f53.google.com'
	FROM:'khalfang1366@gmail.com' RCPT:''
X-RedHat-Spam-Score: 0.151  (DKIM_SIGNED, DKIM_VALID, DKIM_VALID_AU,
	FREEMAIL_ENVFROM_END_DIGIT, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,
	SPF_PASS) 209.85.221.53 mail-wr1-f53.google.com 209.85.221.53
	mail-wr1-f53.google.com <khalfang1366@gmail.com>
X-Scanned-By: MIMEDefang 2.78 on 10.5.110.26
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2 (mx1.redhat.com [10.5.110.63]); Sat, 24 Aug 2019 13:48:43 +0000 (UTC)

SGVyZSdzIHdoYXQgaXQgZ2l2ZXMgbWUuCgpJdCBhdXRvIHBhcnRpdGlvbmVkIHRvIHNyMCBST03C
oCA0ZwoKc2RhMTQwZwpzZGEyIDEwMG0Kc2RhMyAzMGcKCkRvIEkgbmVlZCB0byBkbyBhbnl0aGlu
ZyB3aXRoIHRoYXQgbGlrZSByZWNyZWF0ZSB0aGUgdmlydHVhbCBkaXNrIGFuZCBkbyAKbWFudWFs
IHBhcnRpdGlvbmluZz8gSSByYW4gdGhlIGF1dG8gcGFydGl0aW9uIGFzIEkgZGlkbid0IHdhbnQg
b3QgcmlzayAKbWVzc2luZyB1cCB0aGUgcGFydGl0aW9ucyBhbmQgdGhlIGVhc3kgd2F5IHNlZW1l
ZCB0byBlIGF1dG8gcGFydGl0aW9ucwoKT24gMjQvMDgvMjAxOSAxNDozMywgTGludXggZm9yIGJs
aW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToKPiBIZWxsbywKPgo+IElmIHRoZSBtZDVzdW0g
bWF0Y2hlcywgYW5kIHlvdSBkaWQgZm9ybWF0IHRoZSB2aXJ0dWFsIGRyaXZlLCBtYWtpZyBzdXJl
Cj4gaXRzIGJpZyBlbm91Z2ggKDIwRykuCj4KPiBTdGFydCBhZ2FpbiB0aGUgaW5zdGFsbGVyIGFu
ZCwgYXMgc29vbiBhcyBsb2dnZWQgaW4gYXMgcm9vdCB0eXBlOgo+IGxzYmxrIC1sIC1vIG5hbWUs
c2l6ZSxmc3R5cGUsdHlwZXxncmVwIHBhcnR8c2VkICJzLyAqcGFydC8vIgo+IGFuZCBwb3N0IHRo
ZSBvdXRwdXQgaW4geW91ciBuZXh0IHBvc3QuCj4KPiBCZXN0LAo+Cj4gRGlkaWVyCj4KPiBPbiAy
NC8wOC8yMDE5IDE1OjE5LCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIHdyb3Rl
Ogo+PiBPa2F5IHNvIEkganVzdCByYW4gaW50byB0aGlzIHdpdGggYSBmcmVzaCBpbnN0YWxsIG9m
IHFlbXUsIG1ha2luZyBteSAKPj4gc2NyaXB0Lgo+Pgo+PiBJdCBib290cy4gSXQgZ2V0cyB0byBp
bnN0YWxsIHBhY2thZ2VzLCBob3dldmVyLi4uLndpdGggYSBmcmVzaCwgCj4+IHZlcmlmaWVkIElT
Ty4uLgo+Pgo+PiBFdmVyeSBwYWNrYWdlIHJldHVybnMgYW4gZXJyb3Igd2hpbGUgaW5zdGFsbGlu
ZywgdGhlIGVycm9ycGtnIDIuIEkndmUgCj4+IHZlcmlmaWVkIHRoZSBpc28uIElTbyBhbmQgZXZl
biBnb3QgYSBmcmVzaCBvbmUgdG8gdGVzdCwgYW5kLi4uLi5pdCAKPj4gY29uc2lzdGVudGx5LCBv
biBxZW11LCBydW5zIGludG8gdGhpcy4gQW0gSSB0aGUgc29sZSBvbmUgZXhwZXJpZW5jaW5nIAo+
PiB0aGlzIG9yIGlzIHRoZXJlIHNvbWV0aGluZyBnb2luZyBvbiB3aXRoIHRoZSBTbGFja3dhcmUg
VUsgbGluayBmcm9tIAo+PiBzbGludC5mciAodGhlIGNsaWNrIGhlcmUgaW4gdGhlIGluc3RhbGwg
c2VjdGlvbikgb25lPwo+Pgo+PiBPbiAyNC8wOC8yMDE5IDEzOjM5LCBMaW51eCBmb3IgYmxpbmQg
Z2VuZXJhbCBkaXNjdXNzaW9uIHdyb3RlOgo+Pj4gSGVsbG8sCj4+Pgo+Pj4gQWNjb3JkaW5nIHRv
IGh0dHBzOi8vcGFja2FnZXMuZGViaWFuLm9yZy8geW91IG5lZWQgcWVtdS11dGlscyBmb3IgdGhl
Cj4+PiBjb21tYW5kIHFlbXUtaW1nIGFuZCBxZW11LXN5c3RlbS14ODYgZm9yIHRoZSBjb21tYW5k
IHFlbXUtc3lzdGVtLXg4Nl82NAo+Pj4KPj4+IFRoYXQncyBhbGwgSSBrbm93LCBJIHJ1biBuZWl0
aGVyIERlYmlhbiBub3IgVWJ1bnR1Lgo+Pj4KPj4+IEJlc3QsCj4+Pgo+Pj4gRGlkaWVyCj4+Pgo+
Pj4KPj4+IE9uIDI0LzA4LzIwMTkgMTM6NDAsIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1
c3Npb24gd3JvdGU6Cj4+Pj4gT2theSBzbyBmcm9tIGEgYmFzZSBEZWJpYW4vVWJ1bnR1IGluc3Rh
bGwuLi4ud2hhdCBwYWNrYWdlcyBkbyBJIAo+Pj4+IG5lZWQgdG8gZG8gdGhlIHFlbXUtaW1nIHN0
dWZmIHNpbmNlIEkgdHJpZWQgdGhlIG1hbiBrZW11IGFuZCBpdCAKPj4+PiBrZXB0IHNheWluZyBu
byBtYW51YWwgZm9yIHFlbXUKPj4+Pgo+Pj4+IElzIHRoYXQgc3VwcG9zZWQgdG8gaGFwcGVuPwo+
Pj4+Cj4+Pj4gT24gMjQvMDgvMjAxOSAwMDowNywgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlz
Y3Vzc2lvbiB3cm90ZToKPj4+Pj4gSGVsbG8sCj4+Pj4+Cj4+Pj4+IExldCdzIGNyZWF0ZSBhIHFl
bXUgZGlyZWN0b3J5IGluIHlvdXIgJEhPTUUgYW5kIGdvIHRoZXJlIHdpdGggdGhlc2UKPj4+Pj4g
Y29tbWFuZHM6Cj4+Pj4+Cj4+Pj4+IG1rZGlyICRIT01FL3FlbXUKPj4+Pj4gY2QgJEhPTWVxZW11
Cj4+Pj4+Cj4+Pj4+IFRoamVuIGNyZWF0ZSBhIHZpcnR1YWwgZGlzayBvZiBzaXplIDJPIEcgKFNs
aW50IG5lZWRzIGFyb3VuZCAxM0cpLgo+Pj4+PiBDaGVjayBmaXJzdCB0aGF0IHlvdSBoYXZlIGVu
b3VnaCBzcGFjZSB0aGVuIHR5cGU6Cj4+Pj4+IHFlbXUtaW1nIGNyZWF0ZSBkaXNrLnJhdyAyMEcK
Pj4+Pj4KPj4+Pj4gVGhlbiB3cml0ZSBhIHNjcmlwdCB0byBzZXQgdXAgeW91ciBWTS4gTGV0J3Mg
bmFtZSBpdCBxZW11LnNoLiBoZXJlIAo+Pj4+PiBpcyBhCj4+Pj4+IHN1Z2dlc3RlZCBjb250ZW50
Ogo+Pj4+Pgo+Pj4+PiAjL2Jpbi9zaAo+Pj4+PiBxZW11LXN5c3RlbS14ODZfNjQgXAo+Pj4+PiAt
bWFjaGluZSBxMzUgXAo+Pj4+PiAtZW5hYmxlLWt2bSBcCj4+Pj4+IC1jcHUgaG9zdCBcCj4+Pj4+
IC1ib290IG9yZGVyPWQgXAo+Pj4+PiAtbSAyRyBcCj4+Pj4+IC1zb3VuZGh3IGhkYSBcCj4+Pj4+
IC1ib290IG1lbnU9b24gXAo+Pj4+PiAtZGlzcGxheSBndGsgXAo+Pj4+PiAtdmdhIHN0ZCBcCj4+
Pj4+IC1kcml2ZSBmaWxlPWRpc2sucmF3LGZvcm1hdD1yYXcsbWVkaWE9ZGlzayBcCj4+Pj4+IC1j
ZHJvbSBzbGludDY0LTE0LjIuMS4yLmlzbwo+Pj4+Pgo+Pj4+PiBNYWtlIHRoZSBzY3JpcHQgZXhl
Y3V0YWJsZToKPj4+Pj4gY2htb2QgNzU1IHFlbXUuc2gKPj4+Pj4KPj4+Pj4gVGhpcyBpcyBhIHNp
bXBsZSBleGFtcGxlLiBJIGFzc3VtZSB0aGF0IHRoZSBJU08gaXMgYWxzbyBpbiAKPj4+Pj4gJEhP
TUUvcWVtdSwKPj4+Pj4gZWxzZSBhZnRlciAtY2Ryb20gaW5kaWNhdGUgaXRzIHBhdGguCj4+Pj4+
Cj4+Pj4+IEFmdGVyIGluc3RhbGxhdGlvbiwgY2xvZSB0aGUgdmlydHVrbGEgbWFjaGliZSBhbmQg
YmVmb3JlIHN0YXJpbmcgaXQKPj4+Pj4gYWdhaW4gY2hhbmdlIHRoZSBib290IG9yZGVyIHRvIGJv
b3Qgb24gdGhlIHZpcnR1YWwgZHJpdmU6Cj4+Pj4+IC1ib290IG9yZGVyPWMKPj4+Pj4KPj4+Pj4g
VG8ga25vdyBtb3JlIHJlYWQgIm1hbiBxZW11Ii4KPj4+Pj4KPj4+Pj4gQmVzdCwKPj4+Pj4KPj4+
Pj4gRGlkaWVyCj4+Pj4+Cj4+Pj4+IE9uIDIzLzA4LzIwMTkgMjI6NTgsIExpbnV4IGZvciBibGlu
ZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4+Pj4+PiBZZXMgSSBkbyBuZWVkIGhlbHAgdG8g
c2V0IHVwIHRoZSBWTS4gSSB1c2UgVmlydHVhbEJveCBzaW5jZSBJIAo+Pj4+Pj4ga25vdyBpdCB3
b3Jrcy4uLi5idXQgY2FuIHlvdSB3YWxrIG1lIHRocm91Z2ggdGhlIHZlcnkgYmVnaW5uaW5nLCAK
Pj4+Pj4+IEkgYXNzdW1lIEkgY2FuIHVzZSBsaWJ2ZXJ0LW1hbmFnZXIgZm9yIHRoaXMsIHJpZ2h0
Pwo+Pj4+Pj4KPj4+Pj4+IE9yIGhvdyBkbyBJIGRvIHRoaXMsIHRoZW4uIEknbSBhIGNvbXBsZXRl
IGFuZCB1dHRlciBiZWdpbm5lciBhdCAKPj4+Pj4+IGtlbXUgaG9uZXN0bHkKPj4+Pj4+Cj4+Pj4+
PiBPbiAyMy8wOC8yMDE5IDIxOjQ4LCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9u
IHdyb3RlOgo+Pj4+Pj4+IEhlbGxvLAo+Pj4+Pj4+Cj4+Pj4+Pj4gRGlkaWVyLCBTbGludCBtYWlu
dGFpbmVyLCBoZXJlLgo+Pj4+Pj4+Cj4+Pj4+Pj4gSSBzdWdnZXN0IHRvIHVzZSBRZW11IGluc3Rl
YWQuIEl0IHdvcmtzIHdlbGwsIGFuZCB0aGUgc291bmQgaXMgCj4+Pj4+Pj4gd2F5IGJldHRlciB0
aGFuIHdpdGggVmlydHVhbEJveC4KPj4+Pj4+Pgo+Pj4+Pj4+IFRoYXQncyB3aGF0IEkgdXNlIGZp
cnN0IHRvIHRlc3QgdGhlIG5ldyBTbGludCBJU09zLCBiZWZvcmUgCj4+Pj4+Pj4gdHJ5aW5nIHRo
ZW0gb24gYmFyZSBtZXRhbC4KPj4+Pj4+Pgo+Pj4+Pj4+IElmIHlvdSBuZWVkIGhlbHAgdG8gc2V0
IHVwIHRoZSB2aXJ0dWFsIG1hY2hpbmUsIGp1c3QgYXNrLgo+Pj4+Pj4+Cj4+Pj4+Pj4gQmVzdCBy
ZWdhcmRzLAo+Pj4+Pj4+Cj4+Pj4+Pj4gRGlkaWVyCj4+Pj4+Pj4KPj4+Pj4+PiBPbiAyMy8wOC8y
MDE5IDIyOjExLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIHdyb3RlOgo+Pj4+
Pj4+PiBJIHRob3VnaHQgZm9yIHNvbWUgcmVhc29uIFZib3ggKHRoZSBvbmUgZnJvbSB0aGUgMTgu
MDQgcmVwb3MpIAo+Pj4+Pj4+PiBzdXBwb3J0ZCBTbGFja3dhcmU/IEknbSBub3Qgc3VyZSB0aG91
Z2gsIHdoZW4gSSBwdXQgaW4gCj4+Pj4+Pj4+IFNsYWNrd2FyZSBzbyBWYm94IGNhbiBhdXRvIGZp
bmQgaXQsIGl0IGRlZmF1bHRlZCB0byBXaW43LiAKPj4+Pj4+Pj4gTm90Li4ucXVpdGUgd2hhdCBJ
IHdhbnQuIFNvLi4ueWVhaCwgYW55b25lIGdvdCBTbGludCB0byB3b3JrIG9uIAo+Pj4+Pj4+PiBh
IFZNPyBJIGhhdmUgYSBwZXJmZWN0bHkgZ29vZCBVYnVudHUgcGh5c2ljYWwgbWFjaGluZSwgd2Fu
dGVkIAo+Pj4+Pj4+PiB0byB0ZXN0IFNsaW50IG91dCBhbmQgc2VlIGlmIGl0J3MgYW55IGdvb2Qg
aW4gYSBWTQo+Pj4+Pj4+Pgo+Pj4+Pj4+PiBPbiAyMy8wOC8yMDE5IDIxOjA4LCBMaW51eCBmb3Ig
YmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIHdyb3RlOgo+Pj4+Pj4+Pj4gSSB0cmllZCB0aGlzIHVu
ZGVyIFdpbmRvd3MgYW5kIFZNV2FyZSBwbGF5ZXIsIGhhZCB0aGUgc2FtZSBpc3N1ZS4KPj4+Pj4+
Pj4+Cj4+Pj4+Pj4+Pgo+Pj4+Pj4+Pj4gTm8gbG9uZ2VyIGFuIG9wdGlvbiwgc29sZWQgdGhlIE1h
YyB3aXRoIHRoZSBib290Y2FtcCwgc28gaGF2ZSAKPj4+Pj4+Pj4+IHRvIGxlYXJuIHZpcnR1YWxp
emF0aW9uIHRoZSBsaW51eCB3YXksIHNpbmNlIGl0IGlzIGFsbCBJIGhhdmUgCj4+Pj4+Pj4+PiBu
b3cuCj4+Pj4+Pj4+Pgo+Pj4+Pj4+Pj4KPj4+Pj4+Pj4+IFdhcm0gcmVnYXJkcywKPj4+Pj4+Pj4+
Cj4+Pj4+Pj4+PiBCcmFuZHQgU3RlZW5rYW1wCj4+Pj4+Pj4+Pgo+Pj4+Pj4+Pj4gU2VudCB1c2lu
ZyB0aHVuZGVyYmlyZCBvbiBVYnVudHUgMTkuMDQuCj4+Pj4+Pj4+Pgo+Pj4+Pj4+Pj4gSSB0ZWFj
aCBtYWNPUyBhcyB3ZWxsIGFzIGlPUywgbm90IGJlY2F1c2UgSSB3YW50IHRvLCBidXQgCj4+Pj4+
Pj4+PiBiZWNhdXNlIGl0J3MgZWFzeS4KPj4+Pj4+Pj4+Cj4+Pj4+Pj4+PiBPbiAyMDE5LzA4LzIz
IDIyOjA0LCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIHdyb3RlOgo+Pj4+Pj4+
Pj4+IE9rYXksIEknbSB0cnlpbmcgdG8gc2V0IFNsaW50IHVwIGluIFZpcnR1YWxib3ggYnV0Li4u
LnVzaW5nIAo+Pj4+Pj4+Pj4+IHRoZSBsYXRlc3QgSVNPLCBub3RoaW5nIGhhcHBlbnMuIFdoYXQg
c2V0dGluZ3MgZG8gSSBuZWVkIHRvIAo+Pj4+Pj4+Pj4+IGNvbmZpZyBmb3IgdGhlIFZNIHRvIHdv
cmsgc3VjY2Vzc2Z1bGx5Pwo+Pj4+Pj4+Cj4+Pj4+Pj4gX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KPj4+Pj4+PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QK
Pj4+Pj4+PiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4+Pj4+Pj4gaHR0cHM6Ly93d3cucmVkaGF0
LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4+Pj4+Pgo+Pj4+Pj4gX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPj4+Pj4+IEJsaW51eC1saXN0
IG1haWxpbmcgbGlzdAo+Pj4+Pj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+Pj4+Pj4gaHR0cHM6
Ly93d3cucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4+Pj4+Pgo+Pj4+
Pgo+Pj4+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+
Pj4+PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPj4+Pj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNv
bQo+Pj4+PiBodHRwczovL3d3dy5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxp
c3QKPj4+Pgo+Pj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCj4+Pj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+Pj4gQmxpbnV4LWxpc3RAcmVkaGF0
LmNvbQo+Pj4+IGh0dHBzOi8vd3d3LnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgt
bGlzdAo+Pj4+Cj4+Pgo+Pj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KPj4+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+Pj4gQmxpbnV4LWxpc3RAcmVk
aGF0LmNvbQo+Pj4gaHR0cHM6Ly93d3cucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51
eC1saXN0Cj4+Cj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCj4+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+PiBCbGludXgtbGlzdEByZWRoYXQuY29t
Cj4+IGh0dHBzOi8vd3d3LnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+
Pgo+Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBC
bGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4gaHR0cHM6
Ly93d3cucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0CgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpCbGludXgtbGlzdCBtYWlsaW5n
IGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpodHRwczovL3d3dy5yZWRoYXQuY29tL21haWxt
YW4vbGlzdGluZm8vYmxpbnV4LWxpc3Q=
