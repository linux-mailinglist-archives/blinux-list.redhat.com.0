Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 5CA2D2A614F
	for <lists+blinux-list@lfdr.de>; Wed,  4 Nov 2020 11:14:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1604484887;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=QeOrZrtYjHLVXlAEt186dKNBt6+Zb/39gT6OhEV5wM8=;
	b=eNqE118romTKAI8eRYD7Dlzz+o24HX1MrxpogBosF/Hyua4bhJBJPR35B0415Wl0uX1cgr
	SA1GECEIqcZ4JYw+UPh9t7j3DAGBZugxSqJA1cBlSoG/4ffrJz8+twQcjccRqeYXjhRBel
	spr8LQrS2modZsunut6W0754Rt+4En4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-243-QghT1PJ2MkWAn_ufrGTlhg-1; Wed, 04 Nov 2020 05:14:45 -0500
X-MC-Unique: QghT1PJ2MkWAn_ufrGTlhg-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id AC1E21009E36;
	Wed,  4 Nov 2020 10:14:40 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 1B99F1A268;
	Wed,  4 Nov 2020 10:14:39 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id D1EC858123;
	Wed,  4 Nov 2020 10:14:35 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 0A4ABWUG009657 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 4 Nov 2020 05:11:32 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 5CF6F208BDEA; Wed,  4 Nov 2020 10:11:32 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 58010208BDDF
	for <blinux-list@redhat.com>; Wed,  4 Nov 2020 10:11:29 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 0EF7889FEE1
	for <blinux-list@redhat.com>; Wed,  4 Nov 2020 10:11:29 +0000 (UTC)
Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com
	[209.85.218.52]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-519-Zei2CWGDPtmjRgsSM9-8bA-1; Wed, 04 Nov 2020 05:11:25 -0500
X-MC-Unique: Zei2CWGDPtmjRgsSM9-8bA-1
Received: by mail-ej1-f52.google.com with SMTP id k3so28886611ejj.10
	for <blinux-list@redhat.com>; Wed, 04 Nov 2020 02:11:25 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=OQB7GI5SpnTq4GXUTiEoLqCcP7XXnD8F3HfnZvvEpcg=;
	b=RifjYrGgzX8CDsIMwWXPxU0ltd++jsxCMwzyTa5LTAOWKM+ygW0bxtEutvS82j7pWo
	aBk2hMxcVLmh/yUBgZ0Jv6Tpjy9M/if+nLVYEYoTMunUz3M7uri+xIplSEGGzwO7HU4d
	fM81sJcbcMs6M0kPijfwhQVdvGH+1tCwojVfdU3ngO+AASoc3SG7aUQPHRPrbdKRqkLx
	yAK/DLsa5sB0T9LcvYiIKrsSUZIQg0O7QPdTUIT0SwcCXRjX+TGWW147qLvaKdHr1Dzy
	C4VpG6q9AwpExYxPwJKiqNo+DE4u/7mhnqkVaqNo+YWZgu36AN3vGmyeFIDzJrUJkc5x
	ogfA==
X-Gm-Message-State: AOAM533slBqwGdDlGLu/WZtfklhiijbY/5qlWuwhLTeR0MmG8BJfS3y2
	EAyg/KHffpTJe5R98N3YPbZKYMWXpuaOPzrP
X-Google-Smtp-Source: ABdhPJwBhIH1Sk71x17WpHTK/9f53j7VALMht6VIp6qsVgJhTkIuviN58WI7kT7CZ6stGZ8hKeM6PQ==
X-Received: by 2002:a17:906:134e:: with SMTP id
	x14mr24865088ejb.173.1604484684354; 
	Wed, 04 Nov 2020 02:11:24 -0800 (PST)
Received: from [192.168.1.73] ([91.77.167.245])
	by smtp.gmail.com with ESMTPSA id w3sm778337edt.84.2020.11.04.02.11.23
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Wed, 04 Nov 2020 02:11:23 -0800 (PST)
Subject: Re: arch linux and broadcom
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <00B86B11-5D22-4EAA-A7DC-FF8194FBD424@gmail.com>
	<cfc665bf-d6f8-3866-2ccb-94c3ee2a52db@gmail.com>
	<6B4DDB3E-A5E2-47BB-A364-B34A3E8D7A91@gmail.com>
	<25d5c276-94a5-ad3a-c521-4b25ecf87ef5@gmail.com>
	<3CA05D86-33B3-4781-A7E4-ABC3888B131E@gmail.com>
Message-ID: <45711af3-5f7e-e420-b34e-48867e9f1e73@gmail.com>
Date: Wed, 4 Nov 2020 13:11:20 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
	Thunderbird/78.4.0
MIME-Version: 1.0
In-Reply-To: <3CA05D86-33B3-4781-A7E4-ABC3888B131E@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

eWVzIHlvdSBjYW4gZG8gdGhhdC4KCjA0LjExLjIwMjAgMzo0NiwgTGludXggZm9yIGJsaW5kIGdl
bmVyYWwgZGlzY3Vzc2lvbiDQv9C40YjQtdGCOgo+IEkgaGF2ZSB5ZXQgYW5vdGhlciBpZGVhLgo+
IFNpbmNlIHRoaXMgbWFjaGluZSBvbiB3aGljaCBJIHdhbnQgdG8gcHV0IGFyY2ggcnVucyB1YnVu
dHUsIGNvdWxkIEkgdXNlIHVidW50dSB0byBmaW5kIHdoYXQgaGFyZHdhcmUgYW5kL29yIGRyaXZl
ciBJIHdvdWxkIG5lZWQgd2l0aCBhcmNoPwo+Cj4+IE9uIE5vdiAzLCAyMDIwLCBhdCAyOjQyIFBN
LCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIDxibGludXgtbGlzdEByZWRoYXQu
Y29tPiB3cm90ZToKPj4KPj4gdG8gc2VlLCB3aGV0aGVyIHlvdSBuZWVkIGRyaXZlcnMgb3Igbm90
IGkgbmVlZCB0byBsb29rIGF0IHlvdXIgbHMtcGNpIG91dHB1dC4KPj4gb3IgeW91IGNhbiBwcm92
aWRlIHlvdXIgbW9kZWwgaWYgaXQncyBhIGxhcHRvcC4KPj4KPj4gMDMuMTEuMjAyMCAyMzowNCwg
TGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiDQv9C40YjQtdGCOgo+Pj4gSSB3ZW50
IHRoZXJlLCBidXQgZmFpbGVkIHRvIHVuZGVyc3RhbmQgbXVjaC4gIEl0IHdhcyBzdWdnZXN0ZWQg
b25lIGNvdWxkIGdvIGdldCBkcml2ZXJzLCBidXQgaG93IG1pZ2h0IHRoaXMgYmUgZG9uZSBpZiB0
aGUgbWFjaGluZSBjYW5ub3QgZ2V0IG9uIHRoZSBuZXQ/Cj4+Pgo+Pj4+IE9uIE5vdiAzLCAyMDIw
LCBhdCAyOjAyIFBNLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIDxibGludXgt
bGlzdEByZWRoYXQuY29tPiB3cm90ZToKPj4+Pgo+Pj4+IGhlbGxvIGNhbiB5b3UgcHJvdmlkZSBs
cy1wY2kgb3V0cHV0Lgo+Pj4+IGRpZCB5b3UgbG9vayBvbiB0aGUgYXJjaHdpa2k/Cj4+Pj4KPj4+
PiAwMy4xMS4yMDIwIDIyOjUzLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uINC/
0LjRiNC10YI6Cj4+Pj4+IEkgZ290IGFyY2ggb24gYSB1c2Igc3RpY2suCj4+Pj4+IEFmdGVyIGJv
b3RpbmcgYW5kIHVzaW5nIGFycm93IGRvd24sIHRoZW4gZW50ZXIsIGFyY2ggY2FtZSB1cCB0YWxr
aW5nLgo+Pj4+PiBCdXQgZXZlbiB0aG91Z2ggdGhlcmUgaXMgYW4gZXRoZXJuZXQgY2FibGUsIEkg
Y2Fubm90IGdldCBvbiB0aGUgbmV0Lgo+Pj4+PiBOZXZlciBpcyB0aGlzIGEgcHJvYmxlbSB3aXRo
IHVidW50dSBvciBwb3Agb3Mgb3Igd2l0aCBmZWRvcmEuCj4+Pj4+IEFueW9uZSBhd2FyZSBvZiBh
IHdheSBvZiBnZXR0aW5nIG9uIHRoZSBuZXQ/Cj4+Pj4+IEkgYWxzbyBoYXZlIGEgdSBzIGIgd2ly
ZWxlc3Mgd2lmaSBhZGFwdG9yLCBidXQgd2l0aCBhcmNoLCBub3Qgc3VyZSB3aGF0IHRvIGRvLgo+
Pj4+Pgo+Pj4+Pgo+Pj4+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwo+Pj4+PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPj4+Pj4gQmxpbnV4LWxpc3RA
cmVkaGF0LmNvbQo+Pj4+PiBodHRwczovL3d3dy5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8v
YmxpbnV4LWxpc3QKPj4+Pj4KPj4+PiAtLSAKPj4+PiBTaW5jZXJlbHksIEFsZXhhbmRlci4KPj4+
Pgo+Pj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+
Pj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+Pj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+
Pj4+IGh0dHBzOi8vd3d3LnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+
Pj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPj4+IEJs
aW51eC1saXN0IG1haWxpbmcgbGlzdAo+Pj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+Pj4gaHR0
cHM6Ly93d3cucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4+IC0tIAo+
PiBTaW5jZXJlbHksIEFsZXhhbmRlci4KPj4KPj4gX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KPj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+IEJsaW51
eC1saXN0QHJlZGhhdC5jb20KPj4gaHR0cHM6Ly93d3cucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3Rp
bmZvL2JsaW51eC1saXN0Cj4KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwo+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+IEJsaW51eC1saXN0QHJlZGhh
dC5jb20KPiBodHRwczovL3d3dy5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxp
c3QKCi0tIApTaW5jZXJlbHksIEFsZXhhbmRlci4KCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlz
dEByZWRoYXQuY29tCmh0dHBzOi8vd3d3LnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGlu
dXgtbGlzdA==

