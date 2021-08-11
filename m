Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 1BA2A3E92A0
	for <lists+blinux-list@lfdr.de>; Wed, 11 Aug 2021 15:27:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1628688478;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=xFDy4yJ3ZTfi/l+Zhtjt+GDZwv3nXKu0Mbnh4Th43bY=;
	b=MPsCULR7LsIWoqW1nmlabipgGK2WC8LyoxPOTbbwG4iQUajURxDd56Wz+RcP5sYeJXZZY/
	oHG+KTUS0oj+OQjEIJyYbbOhIiWbeloTqkjJnBmIWXw5Qd2DYoGk52R1TL2gTK/Xt7ESc9
	MJKKCJjK/kAbQKyQ6buFfUE8ASQTyNc=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-509-9LP65wYTMlqpib_a9zWLpw-1; Wed, 11 Aug 2021 09:27:56 -0400
X-MC-Unique: 9LP65wYTMlqpib_a9zWLpw-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 91D2A801B3C;
	Wed, 11 Aug 2021 13:27:52 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 1E6E53AA2;
	Wed, 11 Aug 2021 13:27:52 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 40CDA4A7C8;
	Wed, 11 Aug 2021 13:27:51 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 17BDNYL4024615 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 11 Aug 2021 09:23:34 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 7EA251112C26; Wed, 11 Aug 2021 13:23:34 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 79E381112C1D
	for <blinux-list@redhat.com>; Wed, 11 Aug 2021 13:23:30 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id DBA8C801E6D
	for <blinux-list@redhat.com>; Wed, 11 Aug 2021 13:23:30 +0000 (UTC)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79]) by
	relay.mimecast.com with ESMTP id us-mta-12-EtdWIIRkOlCTjTNgSWkDfQ-1;
	Wed, 11 Aug 2021 09:23:27 -0400
X-MC-Unique: EtdWIIRkOlCTjTNgSWkDfQ-1
Received: from ici.slint.fr (sfa89-1-78-208-157-71.fbx.proxad.net
	[78.208.157.71])
	by darkstar.slint.fr (Postfix) with ESMTPSA id 98AA0A3EBA
	for <blinux-list@redhat.com>; Wed, 11 Aug 2021 13:23:19 +0200 (CEST)
Subject: Re: Solved, setting up a VM using qemu
To: blinux-list@redhat.com
References: <2e2e6730-9443-11c5-981a-c23e07cf2abc@gmail.com>
Message-ID: <b20cf600-8098-e826-6208-358d40da6701@slint.fr>
Date: Wed, 11 Aug 2021 15:23:20 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
	Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <2e2e6730-9443-11c5-981a-c23e07cf2abc@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 17BDNYL4024615
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

SGkgQnJhbmR0LAoKdGhhbmtzIGZvciB5b3VyIGNvbnRyaWJ1dGlvbiEKClRoZXJlIHdhcyBhIG1p
c3Rha2UgaW4gbXkgaW5zdHJ1Y3Rpb25zIHRoYXQgeW91IGNvcnJlY3RlZCwgZ29vZC4KCkkgd2ls
bCBpbnZlc3RpZ2F0ZSB0aGUgaXNzdWUgeW91IG1lbnRpb24uCgpXYXJtIHJlZ2FyZHMsCkRpZGll
cgotLQpEaWRpZXIgU3BhaWVyClNsaW50IG1haW50YWluZXIKZGlpZGVyKGF0KSBzbGludCAoZG90
KSBmcgoKTGUgMTEvMDgvMjAyMSDDoCAxMDoxMiwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlz
Y3Vzc2lvbiBhIMOpY3JpdMKgOgo+IEhpIGFsbCwKPiAKPiAKPiBEaWRpZXIsIGZvciBzb21lIHJl
YXNvbiB5b3VyIHNjcmlwdCBpcyBnaXZpbmcgbWUgYSAibm8gYm9vdGFibGUgZGV2aWNlIiAKPiBl
cnJvciwgYnV0IG5lZWRzIG11c3QsIHRodXMsIGhlcmUgYXJlIHR3byBzY3JpcHRzIGFuZCBpbnN0
cnVjdGlvbnMgZm9yIAo+IHVzZS4gSSB3aWxsIHBvc3QgdGhlIHNjcmlwdHMgaW5saW5lLgo+IAo+
IAo+IEZpcnN0LCBjcmVhdGUgYSBmb2xkZXIgZm9yIHlvdXIgVk0uIEkgZGlkOgo+IAo+ICRta2Rp
ciB+L3FlbXUKPiAKPiAKPiBUaGVuIGNvcHkgdGhlIFdpbmRvd3MgLmlzbyBpbiB0byB0aGF0IGZv
bGRlciBhbmQgcmVuYW1lIHRvIHdpbmRvcy5pc28gYXMgCj4gZm9sbG93cwo+IAo+IAo+ICRjZCB+
L3FlbXUKPiAKPiAkY3Agfi9Eb3dubG9hZHMvV2luMTBfMjFIMV9FbmdsaXNoX3g2NC5pc28gd2lu
ZG93cy5pc28KPiAKPiAKPiBOb3cgd2UgbWFrZSB0aGUgdmlydHVhbCBkaXNrLCB0aGUgc2NyaXB0
IGRvZXNuJ3QgZG8gdGhhdCBmb3IgeW91Lgo+IAo+ICNxZW11LWltZyBjcmVhdGUgLWYgcWNvdzIg
d2luZG93cy5xY293MiAxMjhHCj4gCj4gCj4gTWluZSBpcyAxMjggR0IgaW4gc2l6ZSwgb25seSBi
ZWNhdXNlIEkgdXNlIG15IFdpbmRvd3MgdG8gbWFrZSBhIGxpdmluZy4KPiAKPiAKPiBOb3cgdGFr
ZSB0aGUgc2NyaXB0IGJlbG93IGFuZCBzYXZlIGl0IGFzICdpbnN0YWxsd2luLnNoJyBkbyBub3Qg
Y29weSB0aGUgCj4gcXVvdGVzIG9uIHRoZSBibGFuayBsaW5lcyBhdCB0aGUgdG9wIGFuZCBib3Rv
bSwgSSBwdXQgdGhlbSB0aGVyZSB0byAKPiBpbmRpY2F0ZSB0aGUgc2NyaXB0IGNvZGUuCj4gCj4g
Cj4gIgo+IAo+ICMhL2Jpbi96c2gKPiAKPiBjZCBgZGlybmFtZSAkMGAKPiBxZW11LXN5c3RlbS14
ODZfNjQgLWVuYWJsZS1rdm0gLWNwdSAKPiBob3N0LGh2X3JlbGF4ZWQsaHZfc3BpbmxvY2tzPTB4
MWZmZixodl92YXBpYyxodl90aW1lIC1tIDRHIC1zbXAgY29yZXM9MiAKPiAtc291bmRodyBoZGEg
LWRldmljZSBpbnRlbC1oZGEgLWRldmljZSBoZGEtZHVwbGV4IC1hdWRpb2RldiAKPiBwYSxpZD1w
YSxvdXQubWl4aW5nLWVuZ2luZT1vZmYsb3V0LmxhdGVuY3k9MjAwMDAgLWhkYSB3aW5kb3dzLnFj
b3cyIC1uaWMgCj4gdXNlcixzbWI9IiR7SE9NRX0vIiAtdXNiZGV2aWNlIGJyYWlsbGUgLWJvb3Qg
YyAtY2Ryb20gd2luZG93cy5pc28gLWJvb3QgZAo+IAo+ICIKPiAKPiAKPiBNYWtlIGl0IGV4ZWN1
dGFibGUuCj4gCj4gI2NobW9kIGEreCB+L3FlbXUvaW5zdGFsbHdpbi5zaAo+IAo+IAo+IE5vdyB5
b3UgcnVuIGl0IGFuZCBpbnN0YWxsIFdpbmRvd3MgdGhlIG5vcm1hbCB3YXkuCj4gCj4gCj4gVG8g
YWN0dWFsbHkgc3RhcnQgV2luZG93cywgdXNlIHRoZSBzY3JpcHQgYmVsb3cuIE1pbmUgaXMgc2F2
ZWQgYXMgCj4gJ3N0YXJ0d2luLnNoJwo+IAo+IAo+ICIKPiAKPiAjIS9iaW4venNoCj4gCj4gY2Qg
YGRpcm5hbWUgJDBgCj4gcWVtdS1zeXN0ZW0teDg2XzY0IC1lbmFibGUta3ZtIC1jcHUgCj4gaG9z
dCxodl9yZWxheGVkLGh2X3NwaW5sb2Nrcz0weDFmZmYsaHZfdmFwaWMsaHZfdGltZSAtbSA4RyAt
c21wIGNvcmVzPTIgCj4gLXNvdW5kaHcgaGRhIC1kZXZpY2UgaW50ZWwtaGRhIC1kZXZpY2UgaGRh
LWR1cGxleCAtYXVkaW9kZXYgCj4gcGEsaWQ9cGEsb3V0Lm1peGluZy1lbmdpbmU9b2ZmLG91dC5s
YXRlbmN5PTIwMDAwIC1oZGEgd2luZG93cy5xY293MiAtbmljIAo+IHVzZXIsc21iPSIke0hPTUV9
LyIgLXVzYmRldmljZSBicmFpbGxlIC1ib290IGMKPiAKPiAiCj4gCj4gCj4gUGxlYXNlIG5vdGUs
IHRoaXMgc2V0IG9mIHNjcmlwdHMgd2lsbCBsZXQgeW91IGluc3RhbGwgYW5kIHJ1biBXaW5kb3dz
IGluIAo+IGJpb3MgYm9vdCwgbm90IGluIEVGSS4KPiAKPiAtLSAKPiAgwqBXYXJtIHJlZ2FyZHMs
Cj4gCj4gQnJhbmR0IFN0ZWVua2FtcAo+IAo+IFNlbnQgZnJvbSBteSBnYXNzIHBvd2VyZWQgU2xp
bnQgaGFpciBkcnllci4KPiAKPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwo+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+IEJsaW51eC1saXN0QHJlZGhh
dC5jb20KPiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51
eC1saXN0CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
QmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51eC1saXN0QHJlZGhhdC5jb20KaHR0cHM6Ly9s
aXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdA==

