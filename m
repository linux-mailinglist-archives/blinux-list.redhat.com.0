Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id B3BBE2A8880
	for <lists+blinux-list@lfdr.de>; Thu,  5 Nov 2020 22:05:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1604610316;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=f+Tkjls3u5kEKFQE92fNG4sZXjZqU7ljJ/B5B4o578o=;
	b=LjUqj7tvizrh/LtkATkwroYLOpoiwOYpzCupmrtCYNW7VL2ncXnXyJOKlO95G/fIEiTHkL
	Zpp5fBYvFXBNglRHMsLfJvkf8og2OqqOtm0h4sOiyuVkbNgEz+NrpOIBI3DO2CdhEDHwwT
	yhNONRyDjeCqdE6TxBonxs5oELLbWwE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-161-9-wpaYSoNsq1fyLXlrLgDw-1; Thu, 05 Nov 2020 16:05:14 -0500
X-MC-Unique: 9-wpaYSoNsq1fyLXlrLgDw-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id EBF21879534;
	Thu,  5 Nov 2020 21:05:09 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 40B2A508E8;
	Thu,  5 Nov 2020 21:05:09 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 013C35812F;
	Thu,  5 Nov 2020 21:05:07 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 0A5L5521029716 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 5 Nov 2020 16:05:05 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 3DDB92166B28; Thu,  5 Nov 2020 21:05:05 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 38EB32144B32
	for <blinux-list@redhat.com>; Thu,  5 Nov 2020 21:05:02 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 3D772185A78B
	for <blinux-list@redhat.com>; Thu,  5 Nov 2020 21:05:02 +0000 (UTC)
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com
	[209.85.218.41]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-157-r8TkLcAXPCWpRBcbFKR-HA-1; Thu, 05 Nov 2020 16:04:59 -0500
X-MC-Unique: r8TkLcAXPCWpRBcbFKR-HA-1
Received: by mail-ej1-f41.google.com with SMTP id o21so4695824ejb.3
	for <blinux-list@redhat.com>; Thu, 05 Nov 2020 13:04:58 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=wY/G/sqWcqHwbh8tSu2hu4CMpk4MzMnkzBOT4lyiCkU=;
	b=L4C31E5MnzHFD3ruOryTZUvKe8ql1nAd8taX76dPNx4sJ9aY5RAISpzM+XlTDYg9p6
	kB5rGD94G7lyg/KVd3gcjOwa2DeHoqEwKOUqRM7/dS/h+ACqjyUxA6PCrbIwzpQKxsa+
	Apw+GV9dI8vZo0gZU2BnsIL5QiL3FsY36tkxrZA2WhFvSupS2zYRq/GM+qj/ONs4oO/v
	H0ztbCyMnIDg2Ls0r1+sHedwpDG43xlszI8Dd6L/4eoEwoGpTI69+DKMY1QNTEX58K76
	Dlc7H3re+qBkLPjvbVFm9GnjguW2NcaAtdCB6vWGq0luGtS2sQ/g+4mFI7zAVjBNwOCR
	XDQg==
X-Gm-Message-State: AOAM532OUE37ylyAS9N/eDw1KW4MXnRaZAmi9w4WWpE7Wxl1xWQg1FvN
	xx/Z8xnVySG3wccLGQ3kGFlj2JfJI8hffz36
X-Google-Smtp-Source: ABdhPJwf5VWUmfDHCln8mEF5dU2HIQdBIZGwK9NWJ5H1PT2Wr5I0uSMThszxXPPVxE/cc34GGDIESQ==
X-Received: by 2002:a17:906:b18:: with SMTP id
	u24mr4410872ejg.501.1604610297165; 
	Thu, 05 Nov 2020 13:04:57 -0800 (PST)
Received: from [192.168.1.73] ([91.77.167.245])
	by smtp.gmail.com with ESMTPSA id e9sm1585258edn.30.2020.11.05.13.04.56
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Thu, 05 Nov 2020 13:04:56 -0800 (PST)
Subject: Re: arch linux and broadcom
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <00B86B11-5D22-4EAA-A7DC-FF8194FBD424@gmail.com>
	<cfc665bf-d6f8-3866-2ccb-94c3ee2a52db@gmail.com>
	<6B4DDB3E-A5E2-47BB-A364-B34A3E8D7A91@gmail.com>
	<25d5c276-94a5-ad3a-c521-4b25ecf87ef5@gmail.com>
	<3CA05D86-33B3-4781-A7E4-ABC3888B131E@gmail.com>
	<45711af3-5f7e-e420-b34e-48867e9f1e73@gmail.com>
	<81F35FE2-70DA-49E6-ADC9-3FBE0ECE0811@gmail.com>
	<b45ce6b8-b401-404c-618a-4ca60653e313@gmail.com>
	<DB0DA0B5-8B36-4A87-946C-5A199459B675@gmail.com>
Message-ID: <9a624111-d302-090d-2de1-cf19db0d44ca@gmail.com>
Date: Fri, 6 Nov 2020 00:04:55 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
	Thunderbird/78.4.0
MIME-Version: 1.0
In-Reply-To: <DB0DA0B5-8B36-4A87-946C-5A199459B675@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

eWVwIG9yIHlvdSBjYW4gdXNlIHNjcmlwdCBjb21tYW5kLiAKaHR0cHM6Ly9tYW43Lm9yZy9saW51
eC9tYW4tcGFnZXMvbWFuMS9zY3JpcHQuMS5odG1sCgowNi4xMS4yMDIwIDA6MDEsIExpbnV4IGZv
ciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24g0L/QuNGI0LXRgjoKPiBUbyBwdXQgaXRzIG91dHB1
dCBpbiB0byBhIHRleHQgZmlsZSB3b3VsZCBJIHR5cGUKPiBsc3BjaSAtcWsgPj4gbHNwY2ktb3V0
cHV0LnR4dAo+Cj4+IE9uIE5vdiA1LCAyMDIwLCBhdCAyOjQwIFBNLCBMaW51eCBmb3IgYmxpbmQg
Z2VuZXJhbCBkaXNjdXNzaW9uIDxibGludXgtbGlzdEByZWRoYXQuY29tPiB3cm90ZToKPj4KPj4g
eW91IG5lZWQgdG8gZXhlY3V0ZSBsc3BjaSAtcWsgYW5kIHNlbmQgaXQncyBvdXRwdXQuCj4+Cj4+
IDA0LjExLjIwMjAgMTc6MTMsIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24g0L/Q
uNGI0LXRgjoKPj4+IEhvdyBtaWdodCB0aGlzIGJlIGRvbmU/Cj4+Pgo+Pj4+IE9uIE5vdiA0LCAy
MDIwLCBhdCA0OjExIEFNLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIDxibGlu
dXgtbGlzdEByZWRoYXQuY29tPiB3cm90ZToKPj4+Pgo+Pj4+IHllcyB5b3UgY2FuIGRvIHRoYXQu
Cj4+Pj4KPj4+PiAwNC4xMS4yMDIwIDM6NDYsIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1
c3Npb24g0L/QuNGI0LXRgjoKPj4+Pj4gSSBoYXZlIHlldCBhbm90aGVyIGlkZWEuCj4+Pj4+IFNp
bmNlIHRoaXMgbWFjaGluZSBvbiB3aGljaCBJIHdhbnQgdG8gcHV0IGFyY2ggcnVucyB1YnVudHUs
IGNvdWxkIEkgdXNlIHVidW50dSB0byBmaW5kIHdoYXQgaGFyZHdhcmUgYW5kL29yIGRyaXZlciBJ
IHdvdWxkIG5lZWQgd2l0aCBhcmNoPwo+Pj4+Pgo+Pj4+Pj4gT24gTm92IDMsIDIwMjAsIGF0IDI6
NDIgUE0sIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gPGJsaW51eC1saXN0QHJl
ZGhhdC5jb20+IHdyb3RlOgo+Pj4+Pj4KPj4+Pj4+IHRvIHNlZSwgd2hldGhlciB5b3UgbmVlZCBk
cml2ZXJzIG9yIG5vdCBpIG5lZWQgdG8gbG9vayBhdCB5b3VyIGxzLXBjaSBvdXRwdXQuCj4+Pj4+
PiBvciB5b3UgY2FuIHByb3ZpZGUgeW91ciBtb2RlbCBpZiBpdCdzIGEgbGFwdG9wLgo+Pj4+Pj4K
Pj4+Pj4+IDAzLjExLjIwMjAgMjM6MDQsIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Np
b24g0L/QuNGI0LXRgjoKPj4+Pj4+PiBJIHdlbnQgdGhlcmUsIGJ1dCBmYWlsZWQgdG8gdW5kZXJz
dGFuZCBtdWNoLiAgSXQgd2FzIHN1Z2dlc3RlZCBvbmUgY291bGQgZ28gZ2V0IGRyaXZlcnMsIGJ1
dCBob3cgbWlnaHQgdGhpcyBiZSBkb25lIGlmIHRoZSBtYWNoaW5lIGNhbm5vdCBnZXQgb24gdGhl
IG5ldD8KPj4+Pj4+Pgo+Pj4+Pj4+PiBPbiBOb3YgMywgMjAyMCwgYXQgMjowMiBQTSwgTGludXgg
Zm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiA8YmxpbnV4LWxpc3RAcmVkaGF0LmNvbT4gd3Jv
dGU6Cj4+Pj4+Pj4+Cj4+Pj4+Pj4+IGhlbGxvIGNhbiB5b3UgcHJvdmlkZSBscy1wY2kgb3V0cHV0
Lgo+Pj4+Pj4+PiBkaWQgeW91IGxvb2sgb24gdGhlIGFyY2h3aWtpPwo+Pj4+Pj4+Pgo+Pj4+Pj4+
PiAwMy4xMS4yMDIwIDIyOjUzLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uINC/
0LjRiNC10YI6Cj4+Pj4+Pj4+PiBJIGdvdCBhcmNoIG9uIGEgdXNiIHN0aWNrLgo+Pj4+Pj4+Pj4g
QWZ0ZXIgYm9vdGluZyBhbmQgdXNpbmcgYXJyb3cgZG93biwgdGhlbiBlbnRlciwgYXJjaCBjYW1l
IHVwIHRhbGtpbmcuCj4+Pj4+Pj4+PiBCdXQgZXZlbiB0aG91Z2ggdGhlcmUgaXMgYW4gZXRoZXJu
ZXQgY2FibGUsIEkgY2Fubm90IGdldCBvbiB0aGUgbmV0Lgo+Pj4+Pj4+Pj4gTmV2ZXIgaXMgdGhp
cyBhIHByb2JsZW0gd2l0aCB1YnVudHUgb3IgcG9wIG9zIG9yIHdpdGggZmVkb3JhLgo+Pj4+Pj4+
Pj4gQW55b25lIGF3YXJlIG9mIGEgd2F5IG9mIGdldHRpbmcgb24gdGhlIG5ldD8KPj4+Pj4+Pj4+
IEkgYWxzbyBoYXZlIGEgdSBzIGIgd2lyZWxlc3Mgd2lmaSBhZGFwdG9yLCBidXQgd2l0aCBhcmNo
LCBub3Qgc3VyZSB3aGF0IHRvIGRvLgo+Pj4+Pj4+Pj4KPj4+Pj4+Pj4+Cj4+Pj4+Pj4+PiBfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+Pj4+Pj4+Pj4gQmxp
bnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+Pj4+Pj4+PiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4+
Pj4+Pj4+PiBodHRwczovL3d3dy5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxp
c3QKPj4+Pj4+Pj4+Cj4+Pj4+Pj4+IC0tIAo+Pj4+Pj4+PiBTaW5jZXJlbHksIEFsZXhhbmRlci4K
Pj4+Pj4+Pj4KPj4+Pj4+Pj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KPj4+Pj4+Pj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+Pj4+Pj4+IEJsaW51
eC1saXN0QHJlZGhhdC5jb20KPj4+Pj4+Pj4gaHR0cHM6Ly93d3cucmVkaGF0LmNvbS9tYWlsbWFu
L2xpc3RpbmZvL2JsaW51eC1saXN0Cj4+Pj4+Pj4gX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KPj4+Pj4+PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPj4+
Pj4+PiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4+Pj4+Pj4gaHR0cHM6Ly93d3cucmVkaGF0LmNv
bS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4+Pj4+PiAtLSAKPj4+Pj4+IFNpbmNlcmVs
eSwgQWxleGFuZGVyLgo+Pj4+Pj4KPj4+Pj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCj4+Pj4+PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPj4+Pj4+
IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPj4+Pj4+IGh0dHBzOi8vd3d3LnJlZGhhdC5jb20vbWFp
bG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+Pj4+PiBfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwo+Pj4+PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPj4+
Pj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+Pj4+PiBodHRwczovL3d3dy5yZWRoYXQuY29tL21h
aWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPj4+PiAtLSAKPj4+PiBTaW5jZXJlbHksIEFsZXhh
bmRlci4KPj4+Pgo+Pj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCj4+Pj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+Pj4gQmxpbnV4LWxpc3RAcmVk
aGF0LmNvbQo+Pj4+IGh0dHBzOi8vd3d3LnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGlu
dXgtbGlzdAo+Pj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KPj4+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+Pj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNv
bQo+Pj4gaHR0cHM6Ly93d3cucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0
Cj4+IC0tIAo+PiBTaW5jZXJlbHksIEFsZXhhbmRlci4KPj4KPj4gX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0
Cj4+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPj4gaHR0cHM6Ly93d3cucmVkaGF0LmNvbS9tYWls
bWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwo+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+IEJsaW51eC1s
aXN0QHJlZGhhdC5jb20KPiBodHRwczovL3d3dy5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8v
YmxpbnV4LWxpc3QKCi0tIApTaW5jZXJlbHksIEFsZXhhbmRlci4KCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApC
bGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vd3d3LnJlZGhhdC5jb20vbWFpbG1hbi9saXN0
aW5mby9ibGludXgtbGlzdA==

