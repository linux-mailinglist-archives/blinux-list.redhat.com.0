Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 76A6E3DCC83
	for <lists+blinux-list@lfdr.de>; Sun,  1 Aug 2021 17:51:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1627833061;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=tDcXfgau8iSb6jZZq8OBnlvsMNr77pjhnzJjTHP2C30=;
	b=DNP26JRUvq2vYAYRrGzKxcPIao1XE237DWtYG5nWFbPrCRFsx5XWrB6SAhcqxK5bWaHO8M
	dmHJDD2YvsaPeJTzyBxg26whkxvJjPK3vCEcjovscjyhRMlgcrLqa8NgaqT0zDuRjVKN17
	gQBFxoII3BZ15hwbnkMn/jIpHtTOInI=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-267-uiDZkpfHN1SjyruP8nMG7Q-1; Sun, 01 Aug 2021 11:50:58 -0400
X-MC-Unique: uiDZkpfHN1SjyruP8nMG7Q-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id B9C3E92502;
	Sun,  1 Aug 2021 15:50:54 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 7546A781E6;
	Sun,  1 Aug 2021 15:50:54 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id E7BC518095C2;
	Sun,  1 Aug 2021 15:50:52 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 171FolWY023282 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 1 Aug 2021 11:50:47 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 95015201AC7F; Sun,  1 Aug 2021 15:50:47 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 90B77201AC7B
	for <blinux-list@redhat.com>; Sun,  1 Aug 2021 15:50:45 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 330A08007B1
	for <blinux-list@redhat.com>; Sun,  1 Aug 2021 15:50:45 +0000 (UTC)
Received: from mail-io1-f53.google.com (mail-io1-f53.google.com
	[209.85.166.53]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-1-8CrvLn4xNHCUUEhq5nGIfA-1; Sun, 01 Aug 2021 11:50:43 -0400
X-MC-Unique: 8CrvLn4xNHCUUEhq5nGIfA-1
Received: by mail-io1-f53.google.com with SMTP id y9so17468674iox.2
	for <blinux-list@redhat.com>; Sun, 01 Aug 2021 08:50:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:reply-to:subject:to:references:from:message-id
	:date:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=8dIIFOF4Fuozi+6uLS+38SwluhY4R/XtI8dfHlT4nnk=;
	b=RtofRouNa3RjmEb/Dmve54Eu8s6gPKNsiMTY/zVfCCvsood77UJkBh4dYl22tgiSix
	Z3f+/+8qL13UgzhYhjPBdPmg2L4rYlXw3Wr3D8v6iuUice4q7Ihx+Famlnr97BDs3S6k
	srxbQK4fsvwmyhfTbLb+iL+UtxMFU8lzbMErtmnVhIPpuJ6ipjkF6RY3sHKY/8nweOqL
	E4Mcsweb6rnFWd3UhQpGvw2SrN8CD/Q6jMi19fThJqhq942LlsD3UYLTU51XNDWcohnL
	DiBn+QqrnGbzQFH4SwH3C6AUqFsg6h5/a/IMzOEMRoT9F4ghweliiZDYb9yiI2hhZVSI
	wlHg==
X-Gm-Message-State: AOAM53336zVQ32jSVg5xIfhYjsinlm+rzKnofr4nvpgeCEM4fIZk5U4G
	YvYNSq/xWN3QgFHwu2zuajjiAOrStP9rRA==
X-Google-Smtp-Source: ABdhPJxclBMahkOkBnwUwPLb8UxgZ9hRl9yt9x8wzW4tGzuuGGLQyRgjFV4hWz4/fx4dziyUK+AI8w==
X-Received: by 2002:a6b:ba02:: with SMTP id k2mr7075555iof.164.1627833042504; 
	Sun, 01 Aug 2021 08:50:42 -0700 (PDT)
Received: from ?IPv6:2600:1702:20f0:4420:1d5f:e286:5004:17b7?
	([2600:1702:20f0:4420:1d5f:e286:5004:17b7])
	by smtp.gmail.com with ESMTPSA id y20sm709546ilj.28.2021.08.01.08.50.41
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Sun, 01 Aug 2021 08:50:42 -0700 (PDT)
Subject: Re: Solus DE observations
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <3c0f9041-d6e9-5fb5-2e9c-a96dc59bd86c@gmail.com>
Message-ID: <7b4a0e8e-f7b2-af91-975c-d3ca3a3cbdcf@gmail.com>
Date: Sun, 1 Aug 2021 11:50:41 -0400
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
	Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <3c0f9041-d6e9-5fb5-2e9c-a96dc59bd86c@gmail.com>
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
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://listman.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

TWF0dGhldwoKCgpXaGF0IGlzIHNvbHVzIGV4YWN0bHk/wqAgaXMgdGhpcyBhIGZsYXZlciBvZiB1
YnVudHUgbWVlaW5nIGJhc2VkIG9mZiBvZiAKaXQgb3Igc29tZSB0aGluZyBlbHNlP8KgIEhvdyBp
cyB0aGUgaW5zdGFsbGVyLsKgIFRoYW5rcy4KCgoKSGksCgoKCgpPbiA4LzEvMjAyMSA1OjM4IEFN
LCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIHdyb3RlOgo+IFNpbmNlIFNvbHVz
IGNhbWUgdXAgYWdhaW4sIEknbGwgc2hhcmUgbXkgb2JzZXJ2YXRpb25zIG9mIHRoZSB0aHJlZSBE
RXMgCj4gSSd2ZSB1c2VkLiBJJ20gbGVhdmluZyBQbGFzbWEgb3V0IHNpbmNlIGl0IGRvZXNuJ3Qg
d29yayB0b28gd2VsbCBmb3IgCj4gbWUsIGJ1dCB5TU1WIG9uIHRoYXQKPgo+Cj4gQnVkZ2llOgo+
IEl0J3MsIGJvaWxpbmcgaXQgZG93bi4gR25vbWUgd2l0aCBhIGZhbmN5IGNvYXQgb2YgcGFpbnQg
YW5kIGlzIHRoZSAKPiBTb2x1cyBmbGFnc2hpcCBvbmUuIEl0IHdvcmtzIHdlbGwgZW5vdWdoIGdp
dmVuIGl0J3MgR25vbWUgNDAgYmFzZWQgYW5kIAo+IGlzIHZlcnkgbXVjaCB1c2VhYmxlLiBOb3cg
aWYgSSBjb3VsZCBhc3NpZ24ga2V5Ym9hcmQgc2hvcnRjdXRzLCB0aGF0J2QgCj4gYmUgaGFuZHku
IE1heWJlIEkgY2FuIGFuZCBoYXZlbid0IGZvdW5kIGl0IHlldCwgSSBkdW5uby4gT25lIG5vdGUg
SSBkbyAKPiBoYXZlIGlzIHRoYXQgTGlnaHRETSBpcyB0aGUgbG9naW4gbWFuYWdlciBhbmQgaXMg
aW5zYW5lbHkgL2xvdWQvIG9uIAo+IHN0YXJ0dXAgb25jZSB5b3UgZW5hYmxlIE9yY2Egd2l0aCB0
aGUgdXN1YWwgc2hvcnRjdXQuIFNvIGp1c3QgaGF2ZSBhIAo+IGxvbmcsIGxvbmcga2V5Ym9hcmQg
Y2FibGUsIGFuZCBCdWRnaWUvR25vbWUgaGF2ZSBhIG5pY2Ugc3RhcnR1cCBzb3VuZCAKPiB3aGVu
IHlvdSBsb2cgaW4sIHdoaWNoIGlzIGFsd2F5cyBhIG5pY2UgdG91Y2guIFRoZSBTb2x1cyB0ZWFt
IGhhdmUgcHV0IAo+IGEgbG90IG9mIGNhcmUgaW50byB0aGUgREUgZnJvbSB3aGF0IEkndmUgZm91
bmQuCj4KPiBHbm9tZToKPgo+IEl0J3MgR25vbWUuIEl0J3MgR25vbWUgNDAuIE5lZWQgSSBzYXkg
bW9yZT8gT25lIG5vdGUgaXMgSSBjb3VsZG4ndCBnZXQgCj4gc3BlZWNoIGF0IGEgbG9naW4gbWFu
YWdlciBvbiBteSBzeXN0ZW0uIEl0IGRvZXMgaGF2ZSBhIG5pY2Ugc3RhcnR1cCAKPiBzb3VuZCB0
byBhIGxhIEJ1ZGdpZS4KPgo+Cj4gTWF0ZToKPgo+IE9oIHRoaXMgaXMgZ29pbmcgdG8gYmUgZGlz
YXBwb2ludGluZy4gVGhlcmUncyBhIGZldyBpc3N1ZXMgd2l0aCBNYXRlIAo+IGFzIGZhciBhcyBT
b2x1cyBnb2VzLgo+Cj4KPiAxLiBUaGUgT3JjYSBzaG9ydGN1dCBpc24ndCBzZXQuIFdoaWNoIGlz
bid0IGEgYmlnIGRlYWwgc2luY2UgYWx0K2YyIAo+IGFuZCBvcmNhIHNvcnRzIHRoYXQgdGhlbiB3
aGVuIHlvdSBnZXQgdGhlIHN5c3RlbSBpbnN0YWxsZWQgaXQncyB0d28gCj4gc2Vjb25kcyB3b3Jr
IHRvIHNldCB0aGUgc2hvcnRjdXQgYW5kIHNldCBPcmNhIHRvIGF1dG9zdGFydC4KPgo+Cj4gMi4g
VEhlIG11Y2gsIG11Y2gsIE1VQ0ggYmlnZ2VyIGlzc3VlIGlzIHRoZSBkZXNrdG9wIGxvc2VzIGZv
Y3VzIGFuZCAKPiByZXF1aXJlcyBhIEdUSyBkaWFsb2cgdG8gYmUgbG9hZGVkLiBRdWl0IENocm9t
aXVtPyBZZWFoIE9yY2ErSCwgRjIsIAo+IGFuZCB0aGVuIGtlZXAgZ29pbmcuIE5vdy4gSWYgdGhl
cmUncyBhIGNvbXB5eiBzZXR0aW5nIEkndmUgb3Zlcmxvb2tlZCAKPiB0byBmaXggdGhpcy4uLnRo
ZW4gc3VyZSwgSSdsbCBnaXZlIGl0IGFub3RoZXIgc2hvdC4gRG9uJ3QgZ2V0IG1lIAo+IHdyb25n
LiBNYXRlIGlzIGZhbnRhc3RpYyB3aGVuIGl0IHdvcmtzLiBJdCdzIGp1c3QuLi4ud2hlbiBpdCBi
cmVha3Mgb24gCj4gU29sdXMgYW5kIG5lZWRzIHdvcmthcm91bmRzLCBpdCdzIGtpbmQgb2YgYSBi
dWdiZWFyIGZvciBtZSwgYXMgd2VsbCBhcyAKPiB0aGUgYm90dG9tIHBhbmVsIGJlaW5nIHVubGFi
ZWxlZCwgYnV0IHlvdSBjYW4gZ2V0IGFyb3VuZCBtb3N0IG9mIHRoYXQgCj4gQXMgd2l0aCBCdWRn
aWUgaXQgdXNlcyBMaWdodERNIHNvIHlvdSBnZXQgT3JjYSB3b3JraW5nIG9uIHRoZSBsb2dpbiAK
PiBzY3JlZW4sIGFnYWluLCBzdHVwaWRseSBsb3VkLiBJZiB0aGUgZm9jdXMgbG9zcyBpc3N1ZSBj
YW4gYmUgZml4ZWQsIAo+IHRoZW4gSSdtIGxpYWJsZSB0byBzd2l0Y2ggYmFjayB0byBNYXRlIGZ1
bGwgdGltZSBpbnN0ZWFkIG9mIEJ1ZGdpZS4KPgo+IEFuZCwgdGhlcmUncyBubyBzdGFydHVwIHNv
dW5kIGVpdGhlciB3aGljaCwgcmVhbGx5LCBkaXNhcHBvaW50aW5nIAo+IGdpdmVuIHRoZSBvdGhl
ciB0d28gaGF2ZSBvbmUgYW5kIEkgZG9uJ3Qga25vdyBib3V0IFBsYXNtYSwgYnV0IGl0IAo+IGZl
ZWxzIHRvIG1lIGxpa2UgdGhlIE1hdGUgb25lIGlzbid0IGZ1bGx5IGZpbmlzaGVkIHVwIHZzIHRo
ZSBvdGhlciBERS4KPgo+Cj4gQW5kIHJlbGF0ZWQgbm90ZSwgSSdtIGh1bnRpbmcgZG93biBhbiBu
bXR1aSB3aGljaCBkb2Vzbid0IHNlZW0gdG8gYmUgCj4gc2hpcHBlZCB3aXRoIFNvbHVzLiBJIG1h
eSBqdXN0IHJlcXVlc3QgaXQgb3IgYXNrIG9uIHRoZWlyIGZvcnVtcyBpZiAKPiBvbmUncyBpbiBh
bmQgSSdtIHVzaW5nIHRoZSB3cm9uZyBuYW1lLgo+Cj4KPiBSZWxhdGVkIG5vdGUgIzI6Cj4KPiBT
b21laG93IGl0J3MgbW9yZSBzdGFibGUgZm9yIG1lIHRoYW4gVWJ1bnR1LCB3aGljaCBJIGRpZG4n
dCB0aGluayAKPiBwb3NzaWJsZS4KPgo+Cj4gRm9yIGluc3RhbGxlZCB0aGluZ3M/Cj4KPiBNYXRl
IGRpZG4ndCBjb21lIHdpdGggYSBtYWlsIGNsaWVudCBhbmQgY2FtZSB3aXRoIEZpcmVmb3ggd2hp
Y2ggSSd2ZSAKPiByZXBsYWNlZCB3aXRoIEJyYXZlLCBhbmQgaW5zdGFsbGVkIFRodW5kZXJiaXJk
LiBFYWNoIGRpc3RybyBzaGlwcyB3aXRoIAo+IE9yY2EgNDAuMCwgYnV0IEkndmUgbm90IHRyaWVk
IGJ1aWxkaW5nIE9yY2EgZnJvbSBnaXQgeWV0LCBJJ20gd2FyeSBvZiAKPiBpbnN0YWxsaW5nIHRo
ZSBidWlsZCBkZXBzIG9uIGFuIGFscmVhZHkgd29ya2luZyBzeXN0ZW0KPgo+IF9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gQmxpbnV4LWxpc3QgbWFpbGlu
ZyBsaXN0Cj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQu
Y29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPgoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51
eC1saXN0QHJlZGhhdC5jb20KaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0
aW5mby9ibGludXgtbGlzdA==

