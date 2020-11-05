Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [63.128.21.124])
	by mail.lfdr.de (Postfix) with ESMTP id 7B7B02A887E
	for <lists+blinux-list@lfdr.de>; Thu,  5 Nov 2020 22:02:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1604610148;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=koRDklhxsiH7oJxaXM6DgjY1a0N/aK0sHw7OUbVbjN4=;
	b=O4Ddh8yH0x7zZe+aaVore5bGkpK8VWhx7hHndzeK7rwrJoGKDduhwXP6R86U4hYootzFKL
	UhPAXERXJrNXggCsbR8Kcdebvz1Yh91kDa8CiOTzkxPVWRx3jmGMugMH7V2DPYDYbSUMwX
	pUHjXfpRoPHTCDzyv1CpqQ9MYR5V+2Y=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-366-2-mildf5PxaOJr41XFeMbw-1; Thu, 05 Nov 2020 16:02:25 -0500
X-MC-Unique: 2-mildf5PxaOJr41XFeMbw-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id B8BF01087D84;
	Thu,  5 Nov 2020 21:02:11 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 52E2610016DA;
	Thu,  5 Nov 2020 21:02:11 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 40AF7180B657;
	Thu,  5 Nov 2020 21:02:08 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 0A5L21bh029300 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 5 Nov 2020 16:02:01 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 6A71DF4EBB; Thu,  5 Nov 2020 21:02:01 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6469CF4EAD
	for <blinux-list@redhat.com>; Thu,  5 Nov 2020 21:01:59 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 139488007A4
	for <blinux-list@redhat.com>; Thu,  5 Nov 2020 21:01:59 +0000 (UTC)
Received: from mail-ot1-f51.google.com (mail-ot1-f51.google.com
	[209.85.210.51]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-522-VSS7WQ47OVOacQfUMLxSDg-1; Thu, 05 Nov 2020 16:01:55 -0500
X-MC-Unique: VSS7WQ47OVOacQfUMLxSDg-1
Received: by mail-ot1-f51.google.com with SMTP id i18so2781510ots.0
	for <blinux-list@redhat.com>; Thu, 05 Nov 2020 13:01:55 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:content-transfer-encoding:mime-version
	:subject:date:references:to:in-reply-to:message-id;
	bh=UIAZBlBM4oVL9L0YPfMoIeZ8YN/F7h6iioAf+5BdsFs=;
	b=c/syPcfjSEEDkD7bwZGAscUJhrkzj6kNwHMTiYlJCWrPqvTdt2BGh+1ndtzgcfNSY3
	J6N7wBGFhTDeIkZ4pBqZNQHEPhqsTqtXFiOQ8VRhRpsMrwmlzEufRtD4dxD/HGTXKkBG
	j3NVUy7JoJIwssnroHvZqPp2KjMDLYkiSVR7+Lhft0oe7Iy8XkCITPd9eDvO/XLhZU7g
	50cWyN4tBUhqd0UrMWVf6Y5+aK2/aH+ujttGZ4t4f7XPPqa+IjjPfKiBppmID+JXZLam
	KoUavo+HWxM4nwqSO2ObgIlndcmHPrQvX1hp4X6lCal/G9Gj6JbHoRzEYlnHvSmpxnj7
	THDA==
X-Gm-Message-State: AOAM5337eLQzmIRH7S8SNZoJ5l9xO2xUxnUxYGywAV2KSqm0ka2Lb4rG
	bfUbUWRzwVgYZ61DUEf4K+YNxrHhD41LAA==
X-Google-Smtp-Source: ABdhPJzw0sgEFg6VnHUvpOUHz4EzqTKRGOXrVYF19VKGlI74NdEuKcqkvYULrSU6O3KJsAUpMjqefA==
X-Received: by 2002:a05:6830:1291:: with SMTP id
	z17mr3059226otp.229.1604610114069; 
	Thu, 05 Nov 2020 13:01:54 -0800 (PST)
Received: from ?IPv6:2601:3c2:8200:9360:989e:4bab:3278:9e0c?
	([2601:3c2:8200:9360:989e:4bab:3278:9e0c])
	by smtp.gmail.com with ESMTPSA id p72sm601617oop.28.2020.11.05.13.01.52
	for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 05 Nov 2020 13:01:52 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.5\))
Subject: Re: arch linux and broadcom
Date: Thu, 5 Nov 2020 15:01:51 -0600
References: <00B86B11-5D22-4EAA-A7DC-FF8194FBD424@gmail.com>
	<cfc665bf-d6f8-3866-2ccb-94c3ee2a52db@gmail.com>
	<6B4DDB3E-A5E2-47BB-A364-B34A3E8D7A91@gmail.com>
	<25d5c276-94a5-ad3a-c521-4b25ecf87ef5@gmail.com>
	<3CA05D86-33B3-4781-A7E4-ABC3888B131E@gmail.com>
	<45711af3-5f7e-e420-b34e-48867e9f1e73@gmail.com>
	<81F35FE2-70DA-49E6-ADC9-3FBE0ECE0811@gmail.com>
	<b45ce6b8-b401-404c-618a-4ca60653e313@gmail.com>
To: Linux for blind general discussion <blinux-list@redhat.com>
In-Reply-To: <b45ce6b8-b401-404c-618a-4ca60653e313@gmail.com>
Message-Id: <DB0DA0B5-8B36-4A87-946C-5A199459B675@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 0A5L21bh029300
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
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VG8gcHV0IGl0cyBvdXRwdXQgaW4gdG8gYSB0ZXh0IGZpbGUgd291bGQgSSB0eXBlCmxzcGNpIC1x
ayA+PiBsc3BjaS1vdXRwdXQudHh0Cgo+IE9uIE5vdiA1LCAyMDIwLCBhdCAyOjQwIFBNLCBMaW51
eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIDxibGludXgtbGlzdEByZWRoYXQuY29tPiB3
cm90ZToKPiAKPiB5b3UgbmVlZCB0byBleGVjdXRlIGxzcGNpIC1xayBhbmQgc2VuZCBpdCdzIG91
dHB1dC4KPiAKPiAwNC4xMS4yMDIwIDE3OjEzLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNj
dXNzaW9uINC/0LjRiNC10YI6Cj4+IEhvdyBtaWdodCB0aGlzIGJlIGRvbmU/Cj4+IAo+Pj4gT24g
Tm92IDQsIDIwMjAsIGF0IDQ6MTEgQU0sIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Np
b24gPGJsaW51eC1saXN0QHJlZGhhdC5jb20+IHdyb3RlOgo+Pj4gCj4+PiB5ZXMgeW91IGNhbiBk
byB0aGF0Lgo+Pj4gCj4+PiAwNC4xMS4yMDIwIDM6NDYsIExpbnV4IGZvciBibGluZCBnZW5lcmFs
IGRpc2N1c3Npb24g0L/QuNGI0LXRgjoKPj4+PiBJIGhhdmUgeWV0IGFub3RoZXIgaWRlYS4KPj4+
PiBTaW5jZSB0aGlzIG1hY2hpbmUgb24gd2hpY2ggSSB3YW50IHRvIHB1dCBhcmNoIHJ1bnMgdWJ1
bnR1LCBjb3VsZCBJIHVzZSB1YnVudHUgdG8gZmluZCB3aGF0IGhhcmR3YXJlIGFuZC9vciBkcml2
ZXIgSSB3b3VsZCBuZWVkIHdpdGggYXJjaD8KPj4+PiAKPj4+Pj4gT24gTm92IDMsIDIwMjAsIGF0
IDI6NDIgUE0sIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gPGJsaW51eC1saXN0
QHJlZGhhdC5jb20+IHdyb3RlOgo+Pj4+PiAKPj4+Pj4gdG8gc2VlLCB3aGV0aGVyIHlvdSBuZWVk
IGRyaXZlcnMgb3Igbm90IGkgbmVlZCB0byBsb29rIGF0IHlvdXIgbHMtcGNpIG91dHB1dC4KPj4+
Pj4gb3IgeW91IGNhbiBwcm92aWRlIHlvdXIgbW9kZWwgaWYgaXQncyBhIGxhcHRvcC4KPj4+Pj4g
Cj4+Pj4+IDAzLjExLjIwMjAgMjM6MDQsIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Np
b24g0L/QuNGI0LXRgjoKPj4+Pj4+IEkgd2VudCB0aGVyZSwgYnV0IGZhaWxlZCB0byB1bmRlcnN0
YW5kIG11Y2guICBJdCB3YXMgc3VnZ2VzdGVkIG9uZSBjb3VsZCBnbyBnZXQgZHJpdmVycywgYnV0
IGhvdyBtaWdodCB0aGlzIGJlIGRvbmUgaWYgdGhlIG1hY2hpbmUgY2Fubm90IGdldCBvbiB0aGUg
bmV0Pwo+Pj4+Pj4gCj4+Pj4+Pj4gT24gTm92IDMsIDIwMjAsIGF0IDI6MDIgUE0sIExpbnV4IGZv
ciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gPGJsaW51eC1saXN0QHJlZGhhdC5jb20+IHdyb3Rl
Ogo+Pj4+Pj4+IAo+Pj4+Pj4+IGhlbGxvIGNhbiB5b3UgcHJvdmlkZSBscy1wY2kgb3V0cHV0Lgo+
Pj4+Pj4+IGRpZCB5b3UgbG9vayBvbiB0aGUgYXJjaHdpa2k/Cj4+Pj4+Pj4gCj4+Pj4+Pj4gMDMu
MTEuMjAyMCAyMjo1MywgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiDQv9C40YjQ
tdGCOgo+Pj4+Pj4+PiBJIGdvdCBhcmNoIG9uIGEgdXNiIHN0aWNrLgo+Pj4+Pj4+PiBBZnRlciBi
b290aW5nIGFuZCB1c2luZyBhcnJvdyBkb3duLCB0aGVuIGVudGVyLCBhcmNoIGNhbWUgdXAgdGFs
a2luZy4KPj4+Pj4+Pj4gQnV0IGV2ZW4gdGhvdWdoIHRoZXJlIGlzIGFuIGV0aGVybmV0IGNhYmxl
LCBJIGNhbm5vdCBnZXQgb24gdGhlIG5ldC4KPj4+Pj4+Pj4gTmV2ZXIgaXMgdGhpcyBhIHByb2Js
ZW0gd2l0aCB1YnVudHUgb3IgcG9wIG9zIG9yIHdpdGggZmVkb3JhLgo+Pj4+Pj4+PiBBbnlvbmUg
YXdhcmUgb2YgYSB3YXkgb2YgZ2V0dGluZyBvbiB0aGUgbmV0Pwo+Pj4+Pj4+PiBJIGFsc28gaGF2
ZSBhIHUgcyBiIHdpcmVsZXNzIHdpZmkgYWRhcHRvciwgYnV0IHdpdGggYXJjaCwgbm90IHN1cmUg
d2hhdCB0byBkby4KPj4+Pj4+Pj4gCj4+Pj4+Pj4+IAo+Pj4+Pj4+PiBfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+Pj4+Pj4+PiBCbGludXgtbGlzdCBtYWls
aW5nIGxpc3QKPj4+Pj4+Pj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+Pj4+Pj4+PiBodHRwczov
L3d3dy5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPj4+Pj4+Pj4gCj4+
Pj4+Pj4gLS0gCj4+Pj4+Pj4gU2luY2VyZWx5LCBBbGV4YW5kZXIuCj4+Pj4+Pj4gCj4+Pj4+Pj4g
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPj4+Pj4+PiBC
bGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPj4+Pj4+PiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4+
Pj4+Pj4gaHR0cHM6Ly93d3cucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0
Cj4+Pj4+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+
Pj4+Pj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+Pj4+PiBCbGludXgtbGlzdEByZWRoYXQu
Y29tCj4+Pj4+PiBodHRwczovL3d3dy5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4
LWxpc3QKPj4+Pj4gLS0gCj4+Pj4+IFNpbmNlcmVseSwgQWxleGFuZGVyLgo+Pj4+PiAKPj4+Pj4g
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPj4+Pj4gQmxp
bnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+Pj4+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPj4+Pj4g
aHR0cHM6Ly93d3cucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4+Pj4g
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPj4+PiBCbGlu
dXgtbGlzdCBtYWlsaW5nIGxpc3QKPj4+PiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4+Pj4gaHR0
cHM6Ly93d3cucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4+PiAtLSAK
Pj4+IFNpbmNlcmVseSwgQWxleGFuZGVyLgo+Pj4gCj4+PiBfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwo+Pj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+
PiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4+PiBodHRwczovL3d3dy5yZWRoYXQuY29tL21haWxt
YW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPj4gCj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCj4+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+PiBCbGlu
dXgtbGlzdEByZWRoYXQuY29tCj4+IGh0dHBzOi8vd3d3LnJlZGhhdC5jb20vbWFpbG1hbi9saXN0
aW5mby9ibGludXgtbGlzdAo+IAo+IC0tIAo+IFNpbmNlcmVseSwgQWxleGFuZGVyLgo+IAo+IF9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gQmxpbnV4LWxp
c3QgbWFpbGluZyBsaXN0Cj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+IGh0dHBzOi8vd3d3LnJl
ZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAoKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApC
bGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vd3d3LnJlZGhhdC5jb20vbWFpbG1hbi9saXN0
aW5mby9ibGludXgtbGlzdA==

