Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 500902A883C
	for <lists+blinux-list@lfdr.de>; Thu,  5 Nov 2020 21:40:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1604608851;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=CoXgeoHEviULQpFmDFjZBP8kFWPAS5yYYAiQC4PnSNE=;
	b=BKJmwMCQceFbV5OdrZbeF2LaIV+W7r4dTXeP6RO43YKxEz1VNwfb8chmjeamljp4YKzOFz
	E4WQrP9CL3NIjiqzlYcRIGLxyoiOhwrPrC2pqxfyC9b2WA6jYIzv9KKjeXGwPG3zg5x9wx
	17Am0CmbgoAILYRLHasALryI5XJsy7g=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-455-3bJARjvDMJmETXQ0LDf2IQ-1; Thu, 05 Nov 2020 15:40:47 -0500
X-MC-Unique: 3bJARjvDMJmETXQ0LDf2IQ-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 65198186DD27;
	Thu,  5 Nov 2020 20:40:43 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6935F5D9D5;
	Thu,  5 Nov 2020 20:40:40 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 678628C7DD;
	Thu,  5 Nov 2020 20:40:33 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 0A5KeNTC025899 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 5 Nov 2020 15:40:23 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id A70A2F1008; Thu,  5 Nov 2020 20:40:23 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 9E82AF4EAD
	for <blinux-list@redhat.com>; Thu,  5 Nov 2020 20:40:21 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 4E5A690E422
	for <blinux-list@redhat.com>; Thu,  5 Nov 2020 20:40:21 +0000 (UTC)
Received: from mail-ed1-f42.google.com (mail-ed1-f42.google.com
	[209.85.208.42]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-461-_66Sb1IXOLSO6RqH-x07ww-1; Thu, 05 Nov 2020 15:40:19 -0500
X-MC-Unique: _66Sb1IXOLSO6RqH-x07ww-1
Received: by mail-ed1-f42.google.com with SMTP id p93so2995727edd.7
	for <blinux-list@redhat.com>; Thu, 05 Nov 2020 12:40:18 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=8DSCqCfFSBp6hHzbNbQXfLdxLRLszaGqKOvtMzdGbuk=;
	b=q1u9mPvC304iKF65RYiLklCKbwRl78GX1MslKYVVK5Kau1z0DbRAjbOZta6RXhvXep
	ILewF2WMEgqwN1bG/hFgVatc4Nmq5RHN9A1XfYuy0D8lMKYa3Xg48zpGh7fRM15mV53H
	OtLv7SxntOF3agkHQDJ6hM7g32X5vjJodCjapUA8AKFgYYqqTSL0ub8qxyKxTBoBMnxQ
	Q0aBQXIs6XG8Tn2Vu3yer2VGYMUziLK3+R4z62LV0Ehj3mYo/N0SBHRVO/p7PYN6gMOn
	gHW77bsLp89SpR+Pz2SMZgoP3FRYlxcFzv84X+JXkPgysedih/D8LT398utn9ZjrapDa
	Q5Dw==
X-Gm-Message-State: AOAM531ljjOUzAveJ0FYMwBA7fGbDFrcogAR/9dBfFEQhGyqYTDrmNh1
	ApRXfuZoV+FUZgqqj9Tih/0cgaND6AZAJtDB
X-Google-Smtp-Source: ABdhPJyoCPfnESyYeaK6StaWepZO/QjKVR6Kdh2eCf5kSZWxu76PTrnIIaBH7BIt/u87ymKO3dIkjA==
X-Received: by 2002:aa7:c5d0:: with SMTP id h16mr4672059eds.7.1604608816800;
	Thu, 05 Nov 2020 12:40:16 -0800 (PST)
Received: from [192.168.1.73] ([91.77.167.245])
	by smtp.gmail.com with ESMTPSA id j1sm1558007ejd.47.2020.11.05.12.40.15
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Thu, 05 Nov 2020 12:40:16 -0800 (PST)
Subject: Re: arch linux and broadcom
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <00B86B11-5D22-4EAA-A7DC-FF8194FBD424@gmail.com>
	<cfc665bf-d6f8-3866-2ccb-94c3ee2a52db@gmail.com>
	<6B4DDB3E-A5E2-47BB-A364-B34A3E8D7A91@gmail.com>
	<25d5c276-94a5-ad3a-c521-4b25ecf87ef5@gmail.com>
	<3CA05D86-33B3-4781-A7E4-ABC3888B131E@gmail.com>
	<45711af3-5f7e-e420-b34e-48867e9f1e73@gmail.com>
	<81F35FE2-70DA-49E6-ADC9-3FBE0ECE0811@gmail.com>
Message-ID: <b45ce6b8-b401-404c-618a-4ca60653e313@gmail.com>
Date: Thu, 5 Nov 2020 23:40:14 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
	Thunderbird/78.4.0
MIME-Version: 1.0
In-Reply-To: <81F35FE2-70DA-49E6-ADC9-3FBE0ECE0811@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

eW91IG5lZWQgdG8gZXhlY3V0ZSBsc3BjaSAtcWsgYW5kIHNlbmQgaXQncyBvdXRwdXQuCgowNC4x
MS4yMDIwIDE3OjEzLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uINC/0LjRiNC1
0YI6Cj4gSG93IG1pZ2h0IHRoaXMgYmUgZG9uZT8KPgo+PiBPbiBOb3YgNCwgMjAyMCwgYXQgNDox
MSBBTSwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiA8YmxpbnV4LWxpc3RAcmVk
aGF0LmNvbT4gd3JvdGU6Cj4+Cj4+IHllcyB5b3UgY2FuIGRvIHRoYXQuCj4+Cj4+IDA0LjExLjIw
MjAgMzo0NiwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiDQv9C40YjQtdGCOgo+
Pj4gSSBoYXZlIHlldCBhbm90aGVyIGlkZWEuCj4+PiBTaW5jZSB0aGlzIG1hY2hpbmUgb24gd2hp
Y2ggSSB3YW50IHRvIHB1dCBhcmNoIHJ1bnMgdWJ1bnR1LCBjb3VsZCBJIHVzZSB1YnVudHUgdG8g
ZmluZCB3aGF0IGhhcmR3YXJlIGFuZC9vciBkcml2ZXIgSSB3b3VsZCBuZWVkIHdpdGggYXJjaD8K
Pj4+Cj4+Pj4gT24gTm92IDMsIDIwMjAsIGF0IDI6NDIgUE0sIExpbnV4IGZvciBibGluZCBnZW5l
cmFsIGRpc2N1c3Npb24gPGJsaW51eC1saXN0QHJlZGhhdC5jb20+IHdyb3RlOgo+Pj4+Cj4+Pj4g
dG8gc2VlLCB3aGV0aGVyIHlvdSBuZWVkIGRyaXZlcnMgb3Igbm90IGkgbmVlZCB0byBsb29rIGF0
IHlvdXIgbHMtcGNpIG91dHB1dC4KPj4+PiBvciB5b3UgY2FuIHByb3ZpZGUgeW91ciBtb2RlbCBp
ZiBpdCdzIGEgbGFwdG9wLgo+Pj4+Cj4+Pj4gMDMuMTEuMjAyMCAyMzowNCwgTGludXggZm9yIGJs
aW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiDQv9C40YjQtdGCOgo+Pj4+PiBJIHdlbnQgdGhlcmUsIGJ1
dCBmYWlsZWQgdG8gdW5kZXJzdGFuZCBtdWNoLiAgSXQgd2FzIHN1Z2dlc3RlZCBvbmUgY291bGQg
Z28gZ2V0IGRyaXZlcnMsIGJ1dCBob3cgbWlnaHQgdGhpcyBiZSBkb25lIGlmIHRoZSBtYWNoaW5l
IGNhbm5vdCBnZXQgb24gdGhlIG5ldD8KPj4+Pj4KPj4+Pj4+IE9uIE5vdiAzLCAyMDIwLCBhdCAy
OjAyIFBNLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIDxibGludXgtbGlzdEBy
ZWRoYXQuY29tPiB3cm90ZToKPj4+Pj4+Cj4+Pj4+PiBoZWxsbyBjYW4geW91IHByb3ZpZGUgbHMt
cGNpIG91dHB1dC4KPj4+Pj4+IGRpZCB5b3UgbG9vayBvbiB0aGUgYXJjaHdpa2k/Cj4+Pj4+Pgo+
Pj4+Pj4gMDMuMTEuMjAyMCAyMjo1MywgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lv
biDQv9C40YjQtdGCOgo+Pj4+Pj4+IEkgZ290IGFyY2ggb24gYSB1c2Igc3RpY2suCj4+Pj4+Pj4g
QWZ0ZXIgYm9vdGluZyBhbmQgdXNpbmcgYXJyb3cgZG93biwgdGhlbiBlbnRlciwgYXJjaCBjYW1l
IHVwIHRhbGtpbmcuCj4+Pj4+Pj4gQnV0IGV2ZW4gdGhvdWdoIHRoZXJlIGlzIGFuIGV0aGVybmV0
IGNhYmxlLCBJIGNhbm5vdCBnZXQgb24gdGhlIG5ldC4KPj4+Pj4+PiBOZXZlciBpcyB0aGlzIGEg
cHJvYmxlbSB3aXRoIHVidW50dSBvciBwb3Agb3Mgb3Igd2l0aCBmZWRvcmEuCj4+Pj4+Pj4gQW55
b25lIGF3YXJlIG9mIGEgd2F5IG9mIGdldHRpbmcgb24gdGhlIG5ldD8KPj4+Pj4+PiBJIGFsc28g
aGF2ZSBhIHUgcyBiIHdpcmVsZXNzIHdpZmkgYWRhcHRvciwgYnV0IHdpdGggYXJjaCwgbm90IHN1
cmUgd2hhdCB0byBkby4KPj4+Pj4+Pgo+Pj4+Pj4+Cj4+Pj4+Pj4gX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPj4+Pj4+PiBCbGludXgtbGlzdCBtYWlsaW5n
IGxpc3QKPj4+Pj4+PiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4+Pj4+Pj4gaHR0cHM6Ly93d3cu
cmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4+Pj4+Pj4KPj4+Pj4+IC0t
IAo+Pj4+Pj4gU2luY2VyZWx5LCBBbGV4YW5kZXIuCj4+Pj4+Pgo+Pj4+Pj4gX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPj4+Pj4+IEJsaW51eC1saXN0IG1h
aWxpbmcgbGlzdAo+Pj4+Pj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+Pj4+Pj4gaHR0cHM6Ly93
d3cucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4+Pj4+IF9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+Pj4+IEJsaW51eC1saXN0
IG1haWxpbmcgbGlzdAo+Pj4+PiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4+Pj4+IGh0dHBzOi8v
d3d3LnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+Pj4+IC0tIAo+Pj4+
IFNpbmNlcmVseSwgQWxleGFuZGVyLgo+Pj4+Cj4+Pj4gX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KPj4+PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPj4+
PiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4+Pj4gaHR0cHM6Ly93d3cucmVkaGF0LmNvbS9tYWls
bWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwo+Pj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+PiBCbGlu
dXgtbGlzdEByZWRoYXQuY29tCj4+PiBodHRwczovL3d3dy5yZWRoYXQuY29tL21haWxtYW4vbGlz
dGluZm8vYmxpbnV4LWxpc3QKPj4gLS0gCj4+IFNpbmNlcmVseSwgQWxleGFuZGVyLgo+Pgo+PiBf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+PiBCbGludXgt
bGlzdCBtYWlsaW5nIGxpc3QKPj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+PiBodHRwczovL3d3
dy5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPgo+IF9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gQmxpbnV4LWxpc3QgbWFpbGlu
ZyBsaXN0Cj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+IGh0dHBzOi8vd3d3LnJlZGhhdC5jb20v
bWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAoKLS0gClNpbmNlcmVseSwgQWxleGFuZGVyLgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQmxpbnV4LWxp
c3QgbWFpbGluZyBsaXN0CkJsaW51eC1saXN0QHJlZGhhdC5jb20KaHR0cHM6Ly93d3cucmVkaGF0
LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0

