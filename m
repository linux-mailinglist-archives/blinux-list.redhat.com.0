Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 521F14DCF61
	for <lists+blinux-list@lfdr.de>; Thu, 17 Mar 2022 21:32:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1647549160;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=rxJHZfFXz4RkZqnapBUQm7J9wQOHlVi7XRNCQ3df/2c=;
	b=CWoanaTw20DfMFv3pgAUcfPGEiM54QG6BC+E9K2zrzf38msW3KZcLTHasmyJbLAyl7WwFk
	wpecpNKdKJAbigrWtxuIf/2qwhAYmfTmRz3H28uyH2N0RXLZ3N/Nx0Gtj3VmRgkXAunnoS
	2p1DZzBg3bnZcrOzVEQYr4NMew/6Tfw=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-541-vrlzqhEVN76cMpCx8NzC0Q-1; Thu, 17 Mar 2022 16:32:36 -0400
X-MC-Unique: vrlzqhEVN76cMpCx8NzC0Q-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com [10.11.54.1])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id C6F368002BF;
	Thu, 17 Mar 2022 20:32:34 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 36817404D904;
	Thu, 17 Mar 2022 20:32:34 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 7B85B194E014;
	Thu, 17 Mar 2022 20:32:33 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Thu, 17 Mar 2022 21:32:09 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: getting started with Liblouis
To: blinux-list@redhat.com, "John J. Boyer" <john.boyer@abilitiessoft.org>
References: <6df9e5ca-9db1-3155-3afe-24b47cd7c183.ref@verizon.net>
 <mailman.2021.1647388814.111205.blinux-list@redhat.com>
 <mailman.2147.1647415850.111205.blinux-list@redhat.com>
 <mailman.2542.1647450204.111203.blinux-list@redhat.com>
 <mailman.2599.1647452270.111210.blinux-list@redhat.com>
 <mailman.2537.1647459655.111209.blinux-list@redhat.com>
 <81ce583f-b364-df9e-a3e7-64b96d60dcdb@slint.fr>
 <YjOHoif5PlSS753o@abilitiessoft>
 <mailman.2889.1647546876.111202.blinux-list@redhat.com>
In-Reply-To: <mailman.2889.1647546876.111202.blinux-list@redhat.com>
Message-ID: <mailman.2703.1647549153.111205.blinux-list@redhat.com>
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
 <mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <http://listman.redhat.com/archives/blinux-list/>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
 <mailto:blinux-list-request@redhat.com?subject=subscribe>
Reply-To: blinux-list@redhat.com
Errors-To: blinux-list-bounces@redhat.com
Sender: "Blinux-list" <blinux-list-bounces@redhat.com>
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.1
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

Rm9sbG93LXVwOiBkb25lLgoKV2hpbGUgSSBhbSBhdCBpdCwgSSB3aWxsIGFsc28gcGFja2FnZSBs
aWJsb3Vpc3V0ZG1sIDIuMTEuMCBmb3IgU2xpbnQ2NC0xNS4wLgoKQ2hlZXJzLApEaWRpZXIKClBT
IEZvciBmb2xrcyB3aG8gZG8gbm90IGtub3cgd2hvIGlzIEpvaG4sIGhlcmUgaXMgYSBsaW5rIHRv
IGhpcyBhdXRvYmlvZ3JhcGh5OgpodHRwOi8vYWJpbGl0aWVzc29mdC5vcmcvZm91bmRlcnMtYXV0
b2Jpb2dyYXBoeS5odG1sCgpDaGVlcnMsCkRpZGllcgoKTGUgMTcvMDMvMjAyMiDDoCAyMDo1NCwg
TGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiBhIMOpY3JpdMKgOgo+IEkgaGF2ZSBw
YWNrYWdlZCB2ZXJzaW9uIDMuMjAuMCwgd2lsbCB1cGdyYWRlIHRvIDMuMjEuMCByaWdodCBub3cu
Cj4gCj4gVGhhbmtzIEpvaG4gZm9yIHRoZSBoZWFkcy11cCEKPiAKPiBDaGVlcnMsCj4gRGlkaWVy
Cj4gCj4gTGUgMTcvMDMvMjAyMiDDoCAyMDoxMCwgSm9obiBKLiBCb3llciBhIMOpY3JpdMKgOgo+
PiBEbyB5b3UgaGF2ZSB0aGUgbGF0ZXN0IGxpYmxvdWlzIHJlbGVhc2U/IEl0IGNhbWUgb3V0IGFi
b3V0IGEgd2VlayBhZ28uIEkgY2FuIGZvcndhcmQgdGhlIHJlbGVhc2UgYW5ub3VuY2VtZW50LiBJ
dCBpbmNsdWRlcyBhbGwgVVJMcy4KPj4KPj4gSm9obgo+Pgo+PiBPbiBUaHUsIE1hciAxNywgMjAy
MiBhdCAwMjo1NzowM1BNICswMTAwLCBEaWRpZXIgU3BhaWVyIHdyb3RlOgo+Pj4gSGkgQWwgYW5k
IEFsbCwKPj4+Cj4+PiBJIGhhdmUgdHJpZWQgdG8gYnVpbGQgbGlibG91aXN4bWwgcHVsbGVkIGZy
b20gZ2l0IG1hc3RlciAoRGViaWFuIHNvdXJjZSBmaWxlcykuCj4+Pgo+Pj4gQmFkIG5ld3M6IGJ1
aWxkIGZhaWxlZCBvbiBTbGludDY0LTE0LjIuMSwgc29tZSBvZiB0aGUgY29tcG9uZW50cyBiZWlu
ZyB0b28gb2xkLgo+Pj4KPj4+IEdvb2QgbmV3czogYnVpbGQgc3VjY2VlZGVkIG9uIFNsYWNrd2Fy
ZTY0LTE1LjAgKGJ1aWxkaW5nIGJveCBmb3IgdGhlIHVwY29taW5nCj4+PiBzbGludDY0LTE1LjAp
LCBzbyBhIHBhY2thZ2UgZm9yIFNsaW50NjQtMTUuMCBpcyByZWFkeS4KPj4+Cj4+PiBVbmZvcnR1
bmF0ZWx5IGl0IGNhbid0IGJlIHVzZWQgb24gU2xpbnQ2NC0xNC4yLjEgYXMgdGhlIHByb2dyYW1z
IGxieF9kZXZvbmx5Cj4+PiBhbmQsIG1vcmUgaW1wb3J0YW50bHkgeG1sMmJybCBjYW4ndCBydW4g
YmVjYXVzZSB0aGVyZSB0aGUgZ2xpYmMgdmVyc2lvbiBpcyBub3QKPj4+IHRoZSBzYW1lIGFzIG9u
IDE1LjAKPj4+Cj4+PiBTbywgcGxlYXNlIGJlIHBhdGllbnQ6IHRoaXMgc3R1ZmYgKGluY2x1ZGVk
IGFsbCBkZXBlbmRlbmNpZXMpIHdpbGwgYmUgc2hpcHBlZCBpbgo+Pj4gU2xpbnQgNjQtMTUuMC4K
Pj4+Cj4+PiBUaGFua3MgdG8gSm9obiBmb3IgbGlibG91aXN4bWwgYW5kIHRvIFNhbXVlbCB0byBo
YXZlIG1haW50YWluZWQgaXQgZHVyaW5nIHRoZQo+Pj4gbGFzdCAxMSB5ZWFycy4KPj4+Cj4+PiBD
aGVlcnMsCj4+PiBEaWRpZXIKPj4+IC0tCj4+PiBEaWRpZXIgU3BhaWVyCj4+PiBTbGludCBtYWlu
dGFpbmVyCj4+Pgo+Pj4gTGUgMTYvMDMvMjAyMiDDoCAyMDo0MCwgTGludXggZm9yIGJsaW5kIGdl
bmVyYWwgZGlzY3Vzc2lvbiBhIMOpY3JpdMKgOgo+Pj4+IEhpLCBEaWRpZXIuwqAgVGhhbmtzIGZv
ciB0aGF0IGluZm9ybWF0aW9uLsKgIFllcywgdGhhdCBzZWVtcyB0byBiZSB3aGF0IEkgbmVlZCwg
aWYKPj4+PiBwb3NzaWJsZSBhbG9uZyB3aXRoIGFudGl3b3JkIGFuZCBhIGNvdXBsZSBvZiBpdGVt
cyB0aGUgUkVBRE1FIG1lbnRpb25zIHRoYXQgSQo+Pj4+IGZvcmdldC7CoCBJZiB0aG9zZSBvdGhl
ciBpdGVtcyBhcmUgbW9yZSB0aGFuIHlvdSB3YW50IHRvIHB1dCBpbiBTbGludCwgdGhlbiBJCj4+
Pj4gcHJlc3VtZSBJJ2xsIGdldCB0aGVtIGJ5IHdheSBvZiB0aGUgb3RoZXIgUkVBRE1FIGluZm9y
bWF0aW9uLgo+Pj4+Cj4+Pj4KPj4+PiBBbAo+Pj4+Cj4+Pj4KPj4+PiBPbiAzLzE2LzIyIDEzOjM3
LCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIHdyb3RlOgo+Pj4+PiBIaSBBbCwK
Pj4+Pj4KPj4+Pj4gSXQgYXBwZWFycyB0aGF0IGxpYmxvdWlzIHhtbCBpbnMgbWFpbnRhaW5lZCBm
b3IgRGViaWFuIGJ5IFNhbXVlbCBUaGliYXVsdCBzbwo+Pj4+PiBEZWJpYW4gYmFzZWQgZGlzdHJp
YnV0aW9ucyBnZXQgaXQgdG9vLgo+Pj4+Pgo+Pj4+PiBJIHdpbGwgYnVpbGQgYSBTbGludCBwYWNr
YWdlIGZvciBTbGludCB1c2luZyB0aGUgc2FtZSBzb3VyY2UgZmlsZXMgaWYgeW91IG5lZWQKPj4+
Pj4gdGhhdC4KPj4+Pj4KPj4+Pj4gQnV0IHBsZWFzZSBsb29rIGZpcnN0IGF0IHRoaXMgUkVBRE1F
Ogo+Pj4+PiBodHRwczovL3NhbHNhLmRlYmlhbi5vcmcvYTExeS10ZWFtL2xpYmxvdWlzeG1sLy0v
YmxvYi9tYXN0ZXIvUkVBRE1FCj4+Pj4+Cj4+Pj4+IGFuZCBjb25maXJtIG9yIGluZmlybSB0aGF0
IGl0IGlzIHdoYXQgeW91IGFyZSBsb29raW5nIGZvci4KPj4+Pj4KPj4+Pj4gQ2hlZXJzLAo+Pj4+
PiBEaWRpZXIKPj4+Pj4gLS0gCj4+Pj4+IERpZGllciBTcGFpZXIKPj4+Pj4gU2xpbnQgbWFpbnRh
aW5lci4KPj4+Pj4KPj4+Pj4gTGUgMTYvMDMvMjAyMiDDoCAxODowMywgTGludXggZm9yIGJsaW5k
IGdlbmVyYWwgZGlzY3Vzc2lvbiBhIMOpY3JpdMKgOgo+Pj4+Pj4gVGhhbmtzLCBKZWZmLsKgIEkn
bSB1c2luZyBTbGludC7CoCBJIGRpZG4ndCBzZWUgZWl0aGVyIG9mIHRoZSBwcm9ncmFtcyB5b3UK
Pj4+Pj4+IG1lbnRpb24uwqAgTWF5YmUgdGhlcmUncyBzb21ldGhpbmcgZWxzZS4KPj4+Pj4+Cj4+
Pj4+Pgo+Pj4+Pj4gQmVzdCEKPj4+Pj4+Cj4+Pj4+PiBBbAo+Pj4+Pj4KPj4+Pj4+Cj4+Pj4+PiBP
biAzLzE2LzIyIDAzOjMwLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIHdyb3Rl
Ogo+Pj4+Pj4+IE9uIFR1ZSwgMTUgTWFyIDIwMjIsIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRp
c2N1c3Npb24gd3JvdGU6Cj4+Pj4+Pj4KPj4+Pj4+Pj4gSSdtIHRyeWluZyB0byBmaW5kIG91dCBo
b3cgdG8gdXNlIExpYmxvdWlzIHRvIHRyYW5zbGF0ZSBkb2N1bWVudHMgZnJvbSBwcmludAo+Pj4+
Pj4+PiB0byBCcmFpbGxlLsKgIFNwZWNpZmljYWxseSwgbXkgd2lmZSB3b3VsZCBsaWtlIG1lIHRv
IGZpbmQgb3V0IGhvdyB0byB0cmFuc2xhdGUKPj4+Pj4+Pj4gUnVzc2lhbiBkb2N1bWVudHMgaW50
byBCcmFpbGxlIG9uZXMuwqAgQXQgdGhlIG1vbWVudCwgdGhvdWdoLCBJIGhhdmVuJ3QgeWV0Cj4+
Pj4+Pj4+IGxlYXJuZWQgYSBjb21tYW5kIHRvIHJ1biBmb3IgdHJhbnNsYXRpbmcgYW55dGhpbmc6
wqAgdGhlIExpYmxvdWlzCj4+Pj4+Pj4+IGRvY3VtZW50YXRpb24gbG9va3MgdG8gaGF2ZSBhIGxv
dCBvZiB1c2VmdWwgbWF0ZXJpYWwsIGJ1dCBJIGNvdWxkIGZpbmQKPj4+Pj4+Pj4gbm90aGluZyBh
Ym91dCBydW5uaW5nIGEgY29tbWFuZCwgd2l0aCB3aGF0ZXZlciBhcmd1bWVudHMgYW5kIG9wdGlv
bnMgSSBtaWdodAo+Pj4+Pj4+PiBuZWVkLCB0byBjcmVhdGUgYSBCcmFpbGxlIG91dHB1dCBmaWxl
IGZyb20gYSBwcmludCBpbnB1dCBmaWxlLgo+Pj4+Pj4+IEluIERlYmlhbiwgSSBzZWUgbGlibG91
aXMtYmluIGFuZCBsaWJsb3Vpc3htbC1iaW4gcGFja2FnZXMgd2hpY2ggY2FuIHByb2JhYmx5Cj4+
Pj4+Pj4gaGVscCB5b3UuwqAgT3RoZXIgZGlzdHJpYnV0aW9ucyBwcm9iYWJseSBoYXZlIHNvbWV0
aGluZyBzaW1pbGFyLgo+Pj4+Pj4+Cj4+Pj4+Pj4+IEkgcmVhZCBhYm91dCBhIGNvbW1hbmQgY2Fs
bGVkIGZpbGUyYnJsLCBhcHBhcmVudGx5IHBhcnQgb2YgYSBwcm9ncmFtIGNhbGxlZAo+Pj4+Pj4+
PiBMaWJsb3Vpc3V0ZG1sLCBidXQgdGhhdCBwcm9ncmFtJ3Mgbm90IG9uIG15IHN5c3RlbSBldmVu
IHRob3VnaCBMaWJsb3Vpcwo+Pj4+Pj4+PiBpdHNlbGYgaXMuCj4+Pj4+Pj4gQXBwYXJlbnRseSwg
VVRETUwgaXMgdW5pZmllZCB0YWN0aWxlIGRvY3VtZW50IG1hcmt1cCBsYW5ndWFnZSwgd2hjaWgg
aXMKPj4+Pj4+PiBwcmVzdW1hYmx5IHVzZWQgZm9yIG1hcHMsIGRpYWdyYW1zLCBldGMuwqAgVGhp
cyBpcyBwcm9iYWJseSBub3Qgd2hhdCB5b3UgbmVlZC4KPj4+Pj4+Pgo+Pj4+Pj4+IEhUSCwKPj4+
Pj4+PiBHZW9mZi4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBz
Oi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QK

