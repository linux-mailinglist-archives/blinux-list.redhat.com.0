Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 330B53E8601
	for <lists+blinux-list@lfdr.de>; Wed, 11 Aug 2021 00:18:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1628633906;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=IOobQALzsgbuPmdt+y4+bOvUuZ+I6cQ+06j7KbVSX4c=;
	b=CBia+dbixomdOJY0ST3GWp33drJWWauEkOREqmlmGOKE07GojkXZcGePY1bnPqd6nqS4cB
	Ujb8vmA8M4u+6+0cXiSFI7GtYrJ7naJbTQt3ctXctpUDJhyh3AY8btyaqpxvruwaH0j7VK
	vbhHvgwmVayDigePfEHzhB/63kJQ1Ak=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-101-FwsKsTjFPTij49S0lz0wPg-1; Tue, 10 Aug 2021 18:18:24 -0400
X-MC-Unique: FwsKsTjFPTij49S0lz0wPg-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 86A33801AE7;
	Tue, 10 Aug 2021 22:18:20 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 4561C5D9CA;
	Tue, 10 Aug 2021 22:18:19 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id A10A01819AC9;
	Tue, 10 Aug 2021 22:18:17 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 17AMIC8O024050 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 10 Aug 2021 18:18:12 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 30D91F1C98; Tue, 10 Aug 2021 22:18:12 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 2BF72EE85C
	for <blinux-list@redhat.com>; Tue, 10 Aug 2021 22:18:09 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 8B0AF80120D
	for <blinux-list@redhat.com>; Tue, 10 Aug 2021 22:18:09 +0000 (UTC)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79]) by
	relay.mimecast.com with ESMTP id us-mta-225-_ibMx47jN_eLXLX-6Mu41g-1;
	Tue, 10 Aug 2021 18:18:07 -0400
X-MC-Unique: _ibMx47jN_eLXLX-6Mu41g-1
Received: from ici.slint.fr (sfa89-1-78-208-157-71.fbx.proxad.net
	[78.208.157.71])
	by darkstar.slint.fr (Postfix) with ESMTPSA id 7D162A389C
	for <blinux-list@redhat.com>; Tue, 10 Aug 2021 22:17:59 +0200 (CEST)
Subject: Re: Help, I need a Windows VM for my work
To: blinux-list@redhat.com
References: <3d854105-bb2b-5501-235f-eb05dc13f1f4@gmail.com>
	<6b512da3-e808-5c33-b0d3-700b55397580@slint.fr>
	<64366d3c-fdd0-3b9a-b771-7dbc6d720f4e@slint.fr>
Message-ID: <6be282a8-3868-bcb5-9095-8d6512c32d70@slint.fr>
Date: Wed, 11 Aug 2021 00:18:00 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
	Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <64366d3c-fdd0-3b9a-b771-7dbc6d720f4e@slint.fr>
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
	lists01.pubmisc.prod.ext.phx2.redhat.com id 17AMIC8O024050
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

SGkgYWxsLAoKYXMgb3RoZXIgZm9sa3MgY291bGQgYmUgaW50ZXJlc3RlZCwgSSBwb3N0IHRoZSBj
b250ZW50IG9mIHRoZSBzY3JpcHQgCmlubGluZSBiZWxvdy4gU2F2ZSBpdCBhbmQgbmFtZSBpdCB3
aW5kb3dzLnNoIG9yIHdoYXRldmVyLgoKIyEvYmluL3NoCiMgTWFrZSBhIGRpcmVjdG9yeSAvaG9t
ZS88dXNlcm5hbWU+L3FlbXUgaWYgbm90IGFscmVhZHkgZG9uZQpta2RpciAtcCB+L3FlbXUKIyBD
aGFuZ2UgZGlyZWN0b3J5IHRvIH4vcWVtdQpjZCB+L3FlbXUKIyBJZiB0aGUgdmlydHVhbCBoYXJk
IGRpc2sgZG9lc24ndCBleGl0IHlldCwgY3JlYXRlIGl0CmlmIFsgISAtZiB3aW5kb3dzLnFjb3cy
IF07IHRoZW4KCXFlbXUtaW1nIGNyZWF0ZSAtZiBxY293MiB3aW5kb3dzLnFjb3cyIDY0RwpmaQoj
IElmIHRoZSBmaWxlIHRoYXQgc3RvcmVzIHRoZSBVRUZJIGZpcm13YXJlIHZhcmlhYmxlcyBkb2Vz
bid0IGV4aXQsIApjcmVhdGUgaXQKaWYgWyAhIC1mIGVkazItaTM4Ni12YXJzLmZkIF07IHRoZW4K
CWNwIC91c3Ivc2hhcmUvcWVtdS9lZGsyLWkzODYtdmFycy5mZCAgIC4vCmZpCiMgaWYgdGhlIFdp
bmRvd3MgSVNPIGlzIG5vdCB5ZXQgaW4gIH4vcWVtdS8sIHB1dCBpdCB0aGVyZQppZiBbICEgLWYg
IHdpbmRvd3MuaXNvIF07IHRoZW4KCWVjaG8gInBsZWFzZSBzdG9yZSBpbiB+L3FlbXUgdGhlIFdp
bmRvd3MgSVNPLCByZW5hbWVkIHdpbmRvd3MuaXNvIHRoZW4gCnRyeSBhZ2Fpbi4iCglleGl0CmZp
CiMgU3RhcnQgdGhlIHZpcnR1YWwgbWFjaGluZQpxZW11LXN5c3RlbS14ODZfNjQgXAotY3B1IGhv
c3QgXAotZW5hYmxlLWt2bSBcCi1zbXAgJChucHJvYykgXAotbSA0RyBcCi1rIHVzIFwKLWJvb3Qg
bWVudT1vZmYgXAotYm9vdCBvcmRlcj1jLG9uY2U9ZCBcCi1kZXZpY2UgaW50ZWwtaGRhIFwKLWRl
dmljZSBoZGEtZHVwbGV4IFwKLWRpc3BsYXkgc2RsIFwKLXZnYSBzdGQgXAotZHJpdmUgZmlsZT13
aW5kb3dzLnFjb3cyLGZvcm1hdD1xY293MixtZWRpYT1kaXNrIFwKLWRyaXZlIAppZj1wZmxhc2gs
Zm9ybWF0PXJhdyxyZWFkb25seT1vbixmaWxlPS91c3Ivc2hhcmUvcWVtdS9lZGsyLXg4Nl82NC1j
b2RlLmZkIFwKLWRyaXZlIGlmPXBmbGFzaCxmb3JtYXQ9cmF3LGZpbGU9ZWRrMi1pMzg2LXZhcnMu
ZmQgXAotY2Ryb20gd2luZG93cy5pc28KCgpMZSAxMC8wOC8yMDIxIMOgIDE1OjU5LCBEaWRpZXIg
U3BhaWVyIGEgw6ljcml0wqA6Cj4gSGkgYWdhaW4gQnJhbmR0LAo+IAo+IFRoZSBzY3JpcHQgaXMg
YXR0YWNoZWQKPiAKPiBJbnRydWN0aW9ucyBmb3IgdXNlOgo+IDEuIENyZWF0ZSBhIGRpcmVjdG9y
eSB+L3FlbXUKPiBBc3N1bWluZyB0aGF0IHlvdXIgdXNlcm5hbWUgaXMgYnJhbmR0OyBodXN0IHR5
cGUgdG8gZG8gdGhhdDoKPiBta2RpciAvaG9tZS9icmFuZHQvcWVtdQo+IG9yIGp1c3Q6Cj4gbWtk
aXIgfi9xZW11Cj4gQXMgYSByZW1pbmRlciwgfiBzdGFuZHMgZm9yIC9ob21lLzx1c2VybmFtZT4K
PiBJbiBteSBjYXNlIC91c3IvZGlkaWVyLCBpbiB5b3VycyBJIGFzc3VtZSAvaG9tZS9icmFuZHQK
PiBidXQgYW55d2F5IHRoZSBvdXRwdXQgb2YgdGhpcyBjb21tYW5kIHdpbGwgdGVsbCB5b3U6Cj4g
ZWNobyB+Cj4gCj4gMi4gbW92ZSB0aGUgV2luZG93cyBJU08gZmlsZSBpbiB+L3FlbXUswqAgcmVu
YW1lZCB+L3FlbXUvd2luZG93cy5pc28KPiBGb3IgaW5zdGFuY2UgaGVyIEkgZGlkIHRoaXM6Cj4g
Cj4gbXYgL2RhdGEvaW1hZ2VzX0lTTy9XaW5kb3dzMTBfSW5zaWRlclByZXZpZXdfQ2xpZW50X3g2
NF9mci1mcl8yMTM1NC5pc28gfi9xZW11L3dpbmRvd3MuaXNvCj4gCj4gMy4gRG93bmxvYWQgdGhl
IHNjcmlwdCB3aW5kb3dzLnNoIGFuZCBzdG9yZSBpdCBzb21ld2hlcmUKPiBDaGFuZ2UgdG8gdGhl
IGRpcmVjdG9yeSB3aGVyZSBpdCBpcyBpbnN0YWxsZWQgYW5kIHJ1biBpdCBsaWtlIHRoaXM6Cj4g
c2ggd2luZG93cy5zaAo+IFRoZW4gcHJlc3MgRW50ZXIuCj4gUHJlc3PCoCBFbnRlciBhZ2FpbiBh
ZnRlciA1IHNlY29uZHMgdG8gbWFrZSBzdXJlIGl0IHN0YXJ0cyB0aGUgV2luZG93cwo+IFdhaXQg
cGF0aWVudGx5IHVudGlsIHRoZSBpbnN0YWxsZXIgZGlzcGxheXMgaXRzIGZpcnN0IHNjcmVlbiBp
biB0aGUgVk0uCj4gCj4gTm90ZXM6Cj4gWW91IG5lZWQgdG8gYmUgaW4gYSBncmFwaGljYWwgZW52
aXJvbm1lbnQgbGlrZSBNYXRlLgo+IElmIHRoZSBWTSBzdGVhbHMgdGhlIGZvY3VzLCB0eXBlIEN0
cmwrQWx0K0cgdG8gZ2V0IGl0IGJhY2sgb24gdGhlIGhvc3QuCj4gCj4gQWZ0ZXIgV2luZG93cyBp
bnN0YWxsYXRpb24sIHJ1bm5pbmcgdGhlIHNjcmlwdCBzaG91bGQgc3RhcnQgV2luZG93cyAKPiBk
aXJlY3RseSBpbgo+IHRoZSBWTS4KPiAKPiBDaGVlcnMsCj4gRGlkaWVyCj4gCj4gCj4gTGUgMTAv
MDgvMjAyMSDDoCAxNTowNiwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiBhIMOp
Y3JpdMKgOgo+PiBIaSBCcmFuZHQsCj4+Cj4+IEkgd2lsbCBhdHRhY2ggdG8gbXkgbmV4dCBtZXNz
YWdlIGEgc2NyaXB0IHRoYXQgc2V0cyB1cCBhIHFlbXUgVk0KPj4gYWxsb3dpbmcgdG8gaW5zdGFs
bCB0aGVuIHJ1biBXaW5kb3dzIGxhdGVyIHRvZGF5IGFmdGVyIG1vcmUgdGVzdGluZy4KPj4KPj4g
SXQgc2hvdWxkIGJlIHVzYWJsZSBpbiBhbnkgTGludXggZGlzdHJpYnV0aW9uIHdpdGggYSByZWNl
bnQgcWVtdSAKPj4gaW5zdGFsbGVkLgo+Pgo+PiBDaGVlcnMsCj4+Cj4+IERpZGllcgo+Pgo+Pgo+
PiBMZSAxMC8wOC8yMDIxIMOgIDEyOjU1LCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNz
aW9uIGEgw6ljcml0wqA6Cj4+PiBIaSBhbGwsCj4+Pgo+Pj4KPj4+IEFzIEkgc3RhdGVkIGJlZm9y
ZSwgSSBhbSBydW5uaW5nIFNsaW50IG9uIHRoZSBiYXJlIG1ldGFsLCBob3dldmVyIG15IAo+Pj4g
d29yayBlbnRhaWxzIHRlYWNoaW5nIE5WREEgdG8gY2xpZW50cywgb2J2aW91c2x5IHJ1bm5pbmcg
V2luZG93cy4KPj4+Cj4+Pgo+Pj4gVGhlcmVmb3IgSSBkZXNwZXJhdGVseSBuZWVkIGEgV2luZG93
cyBWTSwgc28gSSBjYW4gbWFrZSBhIGxpdmluZy4gSSAKPj4+IGNhbm5vdCBmaWd1cmUgcWVtdSwg
dmlydHVhbC1ib3gsIEkgaGF2ZSBubyBpZGVhLCBhbmQgVk1XYXJlIAo+Pj4gV29ya3N0YXRpb24g
UGxheWVyIGRvZXNuJ3Qgd2FudCB0byBpbnN0YWxsIHVuZGVyIFNsaW50Lgo+Pj4KPj4+Cj4+PiBD
b3VsZCBzb21lb25lIHBsZWFzZSwgcGxlYXNlLCBnaXZlIG1lIGNvbmNpc2UgaW5zdHJ1Y3Rpb25z
IGZvciAKPj4+IHNldHRpbmcgdXAgYSBWTSB1c2luZyBxZW11IGluIFNsaW50Pwo+Pj4KPj4+Cj4+
PiBXYXJtIHJlZ2FyZHMsCj4+Pgo+Pj4KPj4+IEJyYW5kdCBTdGVlbmthbXAKPj4+Cj4+Pgo+Pj4g
U2VudCBmcm9tIG15IGdhc3MgcG93ZXJlZCBTbGludCBoYWlyIGRyeWVyLgoKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxpbmcg
bGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21h
aWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3Q=

