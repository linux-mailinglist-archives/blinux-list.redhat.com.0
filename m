Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 37438465B02
	for <lists+blinux-list@lfdr.de>; Thu,  2 Dec 2021 01:34:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1638405282;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=i301YcrENZbEgzRNF1A2Pc0hAzY6QkTF6T0MKp/5zKE=;
	b=Q0l1zDEKmOb38svOjMoxA0sItFDp1Sdmmu3+XtmR4+jYhHS8gAEwKuTje70dGDY91AKjsj
	YGWwtOOAQHgFjL6EtrNZmtuPKuHvmdeqS2M+ywf+6ESlScn23v9K9NsdgpM37/uX0xBCX2
	kMNgk0zG7csBqhlIE3DAAmfwEk0TkxA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-362-OwbVMe00Mhyj7eviqzGliw-1; Wed, 01 Dec 2021 19:34:38 -0500
X-MC-Unique: OwbVMe00Mhyj7eviqzGliw-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 4DF232F21;
	Thu,  2 Dec 2021 00:34:35 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id CD9A15F4E1;
	Thu,  2 Dec 2021 00:34:34 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id D5F481809C89;
	Thu,  2 Dec 2021 00:34:32 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com
	[10.11.54.10])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1B20W5ww022516 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 1 Dec 2021 19:32:05 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 6A391401E2F; Thu,  2 Dec 2021 00:32:05 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 664F9401E54
	for <blinux-list@redhat.com>; Thu,  2 Dec 2021 00:32:05 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 3EF20800141
	for <blinux-list@redhat.com>; Thu,  2 Dec 2021 00:32:05 +0000 (UTC)
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com
	[209.85.221.44]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-526-fKaEjNW9MbCLPSRdafxJ4A-1; Wed, 01 Dec 2021 19:32:03 -0500
X-MC-Unique: fKaEjNW9MbCLPSRdafxJ4A-1
Received: by mail-wr1-f44.google.com with SMTP id u1so55945667wru.13
	for <blinux-list@redhat.com>; Wed, 01 Dec 2021 16:32:03 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
	:content-language:to:references:from:in-reply-to
	:content-transfer-encoding;
	bh=0woEU9uGjAjapqUORj4eN2QjIwV1Zn4HTiCXDkAYymo=;
	b=jMhLTXPVTRRnFoCF0V1uYe/HtQ2P4rh9TThhej6zuR2sWcYnppvMl0XmfGwdUGYQ1K
	HJUWA0S7nlhPjs1HaxhPqc+vnwwFQpuCnoGg0sQvIF0v253ALJaeDj/SG0XS2mpWl/C2
	ll2sA3viO2aVti7pnr4gw3DxJD95LI46vvvnQ1AcCpUMv45uV456T6xvgc9BHshtI/Qr
	cKcwsSACn/xVjSlVczTEayyKTbakywCQ3v3Nkg3E/apy9yXQcePtOo/ecpAwooFY32+q
	je1X9I9wBsM1FEUx9zW4EHO13g4z2O85ey4/Xjx6bB1GXtdSlxh3tLwU5I4m7D0FvnAw
	J1Fg==
X-Gm-Message-State: AOAM530E27i92TJBgEYCk2wMGEQjV58WxhcgP5F+Cdjv69M5rEmftrBG
	dKeixI0n751lPbjm/p3e8JtVPJ4wefo=
X-Google-Smtp-Source: ABdhPJwY/W5Wz9vxPauAk2ugCMpIffXbGuzySHEZSqNzAOR/ddEW0+gh3vmK878FBeSW+nOIxho78g==
X-Received: by 2002:a05:6000:11cd:: with SMTP id
	i13mr10977494wrx.524.1638405122126; 
	Wed, 01 Dec 2021 16:32:02 -0800 (PST)
Received: from [192.168.1.130] ([90.251.213.111])
	by smtp.gmail.com with ESMTPSA id
	u23sm1180828wru.21.2021.12.01.16.32.01 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Wed, 01 Dec 2021 16:32:01 -0800 (PST)
Message-ID: <800e886c-c325-63eb-d698-73127b4e0568@gmail.com>
Date: Thu, 2 Dec 2021 00:32:13 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.3.0
Subject: Re: My qemu error
To: blinux-list@redhat.com
References: <14705b4c-bcf3-0b86-d90c-ad11da3ddc1a@gmail.com>
	<a4dfb37b-cf9e-ecad-bf05-cf6e0a0d3774@slint.fr>
	<478b6e46-5ca1-266a-695b-6f8119e207fa@slint.fr>
	<cc6c7abc-5b3e-5d19-2b20-e50f9409b703@gmail.com>
	<d4606e82-681f-875a-1f78-ff501d38bfcb@slint.fr>
	<fde2378c-88a7-b921-6835-7940f1a495d9@gmail.com>
	<2d99f717-6260-5970-f76a-2d81995a6908@slint.fr>
In-Reply-To: <2d99f717-6260-5970-f76a-2d81995a6908@slint.fr>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.10
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

QXMgYW4gYWx0ZXJuYXRpdmUgdGhlcmUncyB0aGUgcXVpY2tlbXUgcHJvamVjdCB0b28sIApodHRw
czovL2dpdGh1Yi5jb20vcXVpY2tlbXUtcHJvamVjdC9xdWlja2VtdSB3aGljaCBjb21lcyB3aXRo
IHNldmVyYWwgCm9wdGlvbnMgb3V0IG9mIHRoZSBib3ggYW5kIHNldHMgdXAgdGhlIGNvbmZpZyBm
b3IgeW91LCBpbmNsdWRpbmcgV2luMTAvMTEuCgpBbGwgeW91IG5lZWQgaXMgcWVtdSBhbmQgaXRz
IGRlcGVuZGFuY2llcyBpbnN0YWxsZWQgYW5kIHRvIGRvIChmb3IgCmluc3RhbmNlIGZvciBGZWRv
cmEgMzQpIC4vcXVpY2tnZXQgRmVkb3JhIDM0CgoKVGhhdCdsbCBkb3dubG9hZCBGZWRvcmEgMzQs
IGl0IHdvcmtzIHRoZSBzYW1lIGZvciBXaW4xMC9XaW4xMSBhcyB3ZWxsIApidXQgZm9yIHRoYXQg
eW91IG5lZWQgamQgaW5zdGFsbGVkCgpPbiAxMi8yLzIxIDAxOjIwLCBMaW51eCBmb3IgYmxpbmQg
Z2VuZXJhbCBkaXNjdXNzaW9uIHdyb3RlOgo+IEhpIElicmFoaW0sCj4KPiB0aGlzIGlzIHRoZSBz
Y3JpcHQgSSB1c2UgdG8gcnVuIFdpbmRvd3MtMTAvMTEgaW4gYSBRZW11IFZNOgo+Cj4gcWVtdS1z
eXN0ZW0teDg2XzY0IFwKPiAtY3B1IGhvc3QgXAo+IC1lbmFibGUta3ZtIFwKPiAtc21wICQobnBy
b2MpIFwKPiAtbSA0RyBcCj4gLWsgZnIgXAo+IC1ib290IG9yZGVyPWMgXAo+IC1ib290IG1lbnU9
b24gXAo+IC1kZXZpY2UgaW50ZWwtaGRhIFwKPiAtZGV2aWNlIGhkYS1kdXBsZXggXAo+IC1kaXNw
bGF5IGd0ayBcCj4gLXZnYSBzdGQgXAo+IC1kZXZpY2UgdXNiLWVoY2ksaWQ9ZWhjacKgIFwKPiAt
ZHJpdmUgZmlsZT1+L3FlbXUvd2luZG93cy5xY293Mixmb3JtYXQ9cWNvdzIsbWVkaWE9ZGlzawo+
Cj4gTm8gaWRlYSBpZiBpdCB3aWxsIGhhdmUgc291bmQgaW4gRmVkb3JhLCB0aG91Z2guCj4KPiBD
aGVlcnMsCj4gRGlkaWVyCj4KPiBMZSAwMS8xMi8yMDIxIMOgIDEwOjU0LCBMaW51eCBmb3IgYmxp
bmQgZ2VuZXJhbCBkaXNjdXNzaW9uIGEgw6ljcml0wqA6Cj4+IEhpIERpZGllciwKPj4KPj4KPj4g
VGhlcmUgd2VyZSBzb21lIHBhY2thZ2VzIG1pc3NpbmcsIHdoaWNoIEkgaGF2ZSBub3cgaW5zdGFs
bGVkLiBJIAo+PiBpbnN0YWxsZWQgcWVtdS1rdm0sIHZpcnQtbWFuYWdlciBhbmQgdmlydC12aWV3
ZXIsIHdoaWNoIGRpZG4ndCAKPj4gaW5zdGFsbCBhbG9uZyB3aXRoIHRoZSBtYWluIHFlbXUgcGFj
a2FnZS4KPj4KPj4KPj4gSSBhbSBzdGlsbCBoYXZpbmcgaXNzdWVzIHdpdGggdGhlIHNvdW5kIHRo
aW5nIGhvd2V2ZXIuIEkgYW0gaGVzaXRhbnQgCj4+IHRvIHRyeSBhbmQgZml4IHRoZSBzY3JpcHQg
bXlzZWxmLgo+Pgo+Pgo+PiBXYXJtIHJlZ2FyZHMsCj4+Cj4+IEJyYW5kdCBTdGVlbmthbXAKPj4K
Pj4gU2VudCBmcm9tIHRoZSBGZWRvcmEgbWFjaGluZSwgdXNpbmcgVGh1bmRlcmJpcmQKPj4KPj4g
T24gMjAyMS8xMS8zMCAyMzoxMiwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3
cm90ZToKPj4+IEhvIEJyYW5kdCwKPj4+Cj4+PiBUaGlzIGRvZXMgdGVsbCBpZiB0aGUgc3VwcG9y
dCBmb3IgS1ZNIGlzIHByb3Blcmx5IGNvbmZpZ3VyZWQgaW4gdGhpcyAKPj4+IGtlcm5lbC4KPj4+
Cj4+PiB0byBjaGVjaywgeW91IGNhbiBkbyB0aGlzOgo+Pj4KPj4+IGNwIC9wcm9jL2NvbmZpZy5n
eiAvdG1wCj4+PiBjZCAvdG1wCj4+PiBndW56aXAgY29uZmlnLmd6Cj4+PiB5b3Ugd2lsbCBnZXQg
YSBmaWxlIG5hbWVkIGNvbmZpZyB3aXRoIGNvbmZpZ3VyYXRpb24gc2V0dGluZ3Mgb2YgdGhlIAo+
Pj4ga2VybmVsCj4+Pgo+Pj4gWW91IGNhbiBkbyB0aGUgc2FtZSB3aXRoIFNsaW50IGFuZCBjb21w
YXJlLgo+Pj4KPj4+IEFuZC9vciB1c2UgYSBGZWRvcmEgc3VwcG9ydCBjaGFubmVsLgo+Pj4KPj4+
IENoZWVycywKPj4+Cj4+PiBEaWRpZXIKPj4+Cj4+Pgo+Pj4gTGUgMzAvMTEvMjAyMSDDoCAyMTo0
MywgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiBhIMOpY3JpdMKgOgo+Pj4+IEFz
IEkgc3RhdGVkLCBJJ20gcnVubmluZyBGZWRvcmEgTWF0ZSBDb21waXogMzUgYXQgdGhlIG1vbWVu
dCwgYW5kCj4+Pj4KPj4+PiAkdW5hbWUgLXIKPj4+Pgo+Pj4+IGdpdmVzIG1lIHRoZSBmb2xsb3dp
bmcuCj4+Pj4KPj4+PiA1LjE1LjUtMjAwLmZjMzUueDg2XzY0Cj4+Pj4KPj4+Pgo+Pj4+IFdhcm0g
cmVnYXJkcywKPj4+Pgo+Pj4+IEJyYW5kdCBTdGVlbmthbXAKPj4+Pgo+Pj4+IFNlbnQgZnJvbSB0
aGUgRmVkb3JhIG1hY2hpbmUsIHVzaW5nIFRodW5kZXJiaXJkCj4+Pj4KPj4+PiBPbiAyMDIxLzEx
LzMwIDIwOjAzLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIHdyb3RlOgo+Pj4+
PiBQUyBpbnN0ZWFkIG9mOgo+Pj4+PiAvYm9vdC9jb25maWctZ2VuZXJpYy01LjE0LjEzCj4+Pj4+
IHBsZWFzZSByZWFkOgo+Pj4+PiAvYm9vdC9jb25maWctZ2VuZXJpYy01LjEzLjEzCj4+Pj4+Cj4+
Pj4+IE9UIEJvdGggdGhlIDUuMTMgYW5kIDUuMTQgaGF2ZSBiZWVuIGRlY2xhcmVkIEVuZCBvZiBM
aWZlLCBJIHdpbGwgCj4+Pj4+IHByb3ZpZGUgYQo+Pj4+PiA1LjE1Lnogd2hlbiBJIHdpbGwgdGhp
bmsgdGhpcyBicmFuY2ggaXMgc3RhYmxlIGVub3VnaC4KPj4+Pj4KPj4+Pj4gRGlkaWVyCj4+Pj4+
Cj4+Pj4+IExlIDMwLzExLzIwMjEgw6AgMTg6NDksIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRp
c2N1c3Npb24gYSDDqWNyaXTCoDoKPj4+Pj4+IEhpIEJyYW5kdCwKPj4+Pj4+IGFuc3dlcnMgaW5s
aW5lCj4+Pj4+Pgo+Pj4+Pj4gTGUgMzAvMTEvMjAyMSDDoCAxMzo1NSwgTGludXggZm9yIGJsaW5k
IGdlbmVyYWwgZGlzY3Vzc2lvbiBhIMOpY3JpdMKgOgo+Pj4+Pj4+IHFlbXUtc3lzdGVtLXg4Nl82
NDogd2FybmluZzogJy1zb3VuZGh3IGhkYScgaXMgZGVwcmVjYXRlZCwgCj4+Pj4+Pj4gcGxlYXNl
IHVzZSAnLWRldmljZSBpbnRlbC1oZGEgLWRldmljZSBoZGEtZHVwbGV4JyBpbnN0ZWFkCj4+Pj4+
Pj4gYXVkaW86IERldmljZSBoZGE6IGF1ZGlvZGV2IGRlZmF1bHQgcGFyYW1ldGVyIGlzIGRlcHJl
Y2F0ZWQsIAo+Pj4+Pj4+IHBsZWFzZSBzcGVjaWZ5IGF1ZGlvZGV2PXBhCj4+Pj4+Pj4gYXVkaW86
IERldmljZSBoZGE6IGF1ZGlvZGV2IGRlZmF1bHQgcGFyYW1ldGVyIGlzIGRlcHJlY2F0ZWQsIAo+
Pj4+Pj4+IHBsZWFzZSBzcGVjaWZ5IGF1ZGlvZGV2PXBhCj4+Pj4+Pj4KPj4+Pj4+IEluIHRoZSBj
b21tYW5kIHJlbW92ZQo+Pj4+Pj4gLXNvdW5kaHcgaGRhCj4+Pj4+PiB3aGljaCBpcyByZWR1bmRh
bnQgd2l0aAo+Pj4+Pj4gLWRldmljZSBpbnRlbC1oZGEgLWRldmljZSBoZGEtZHVwbGV4Cj4+Pj4+
PiBhbmQgcHJvYmFseSByZXBjYWNlCj4+Pj4+PiAtLWF1ZGlvZGV2IHBhCj4+Pj4+PiBieToKPj4+
Pj4+IC0tYXVkaW9kZXY9cGFob3dldmVyLCBtYXliZSB0aGlzIHdob2xlIHN0dWZmIGlzIG5vdCAK
Pj4+Pj4+IG5lY2Vzc2FyeTotYXVkaW9kZXYgcGEsaWQ9cGEsb3V0Lm1peGluZy1lbmdpbmU9b2Zm
LG91dC5sYXRlbmN5PTIwMDAwCj4+Pj4+PiBJIGRvbid0IGhhdmUgaXQuCj4+Pj4+Pgo+Pj4+Pj4g
wqA+wqAga25vdyBpdCBkb2VzIHdvcmsgdW5kZXIgU2xpbnQsIGJ1dCBub3QgdW5kZXIgRmVkb3Jh
LCBBcmNoIG9yIAo+Pj4+Pj4gVWJ1bnR1Lgo+Pj4+Pj4KPj4+Pj4+IE1heWJlIHRoZSBrZXJuZWwg
eW91IGFyZSBydW5uaW5nIGluIEZlZG9yYSwgQXJjaCBvciBVYnVudHUgZG9lcyAKPj4+Pj4+IG5v
dCBoYXZlIGEKPj4+Pj4+IHByb3BlciBjb25maWd1cmF0aW9uIGZvciBLVk0sIHJlYWQ6Cj4+Pj4+
PiBodHRwczovL3d3dy5saW51eC1rdm0ub3JnL3BhZ2UvVHVuaW5nX0tlcm5lbAo+Pj4+Pj4KPj4+
Pj4+IEluIFNsaW50IHRoZSBrZXJuZWwgY29uZmlndXJhdGlvbiBpcyBmb3VuZCBpbiBvbmUgb2Yg
dGhlc2UgZmlsZXM6Cj4+Pj4+PiAvYm9vdC9jb25maWctZ2VuZXJpYy01LjE0LjE0Lng2NAo+Pj4+
Pj4gL2Jvb3QvY29uZmlnLWdlbmVyaWMtNS4xNC4xMwo+Pj4+Pj4gVGhlc2UgY29tbWFuZHM6Cj4+
Pj4+PiBjYXQgL3Byb2MvY21kbGluZQo+Pj4+Pj4gdW5hbWUgLXIKPj4+Pj4+IHRlbGwgeW91IHdo
aWNoIGtlcm5lbCBpcyBydW5uaW5nLCBzbyB5b3Uga25vdyBob3cgaXQgaXMgY29uZmlndXJlZC4K
Pj4+Pj4+Cj4+Pj4+PiBBbHNvLCB0aGVyZSBjb3VsZCBiZSBhbiBpc3N1ZSB3aXRoIHlvdXIgcWVt
dSB2ZXJzaW9uLgo+Pj4+Pj4KPj4+Pj4+IEluIFNsaW50IGF0IHRpbWUgb2Ygd3JpdGluZzoKPj4+
Pj4+IGRhbmNlW35dJCBxZW11LXN5c3RlbS14ODZfNjQgLS12ZXJzaW9uCj4+Pj4+PiBRRU1VIGVt
dWxhdG9yIHZlcnNpb24gNi4wLjAKPj4+Pj4+IENvcHlyaWdodCAoYykgMjAwMy0yMDIxIEZhYnJp
Y2UgQmVsbGFyZCBhbmQgdGhlIFFFTVUgUHJvamVjdCAKPj4+Pj4+IGRldmVsb3BlcnMKPj4+Pj4+
Cj4+Pj4+PiBDaGVlcnMsCj4+Pj4+PiBEaWRpZXIKPgo+Cj4gX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KPiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPiBC
bGludXgtbGlzdEByZWRoYXQuY29tCj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1h
bi9saXN0aW5mby9ibGludXgtbGlzdAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51eC1saXN0QHJlZGhh
dC5jb20KaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgt
bGlzdA==

