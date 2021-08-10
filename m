Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id ED1433E8611
	for <lists+blinux-list@lfdr.de>; Wed, 11 Aug 2021 00:31:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1628634694;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=3pC4oQ4VahLIDtonTtlOAXR57bhP9lfonOIQwtGBVnY=;
	b=ejV3/sUZPAnFyzh1IqOqWdG6amBBKKsq4HmZwo9PHX+/+aKkHvJHJrSSsVOh37e5yS28fK
	OcZcLOJ5EAxRuZ54R6C8K/CJecdZ9DUrqqQC/GGuR4Mt5aEh3e7puBY1vImZOSP78immiH
	TCJQ+s3M4kfKfDOQXDkjrgn7ky3wCsQ=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-43-mSsKnCDYMiG0WlFUaXoa8Q-1; Tue, 10 Aug 2021 18:31:32 -0400
X-MC-Unique: mSsKnCDYMiG0WlFUaXoa8Q-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 95886801AE7;
	Tue, 10 Aug 2021 22:31:28 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 9CE66100EBB0;
	Tue, 10 Aug 2021 22:31:27 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id A7E1C181A0F1;
	Tue, 10 Aug 2021 22:31:26 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 17AMRGCj024520 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 10 Aug 2021 18:27:17 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id CC58F204403E; Tue, 10 Aug 2021 22:27:16 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C71E8204402D
	for <blinux-list@redhat.com>; Tue, 10 Aug 2021 22:27:12 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id A96218D138C
	for <blinux-list@redhat.com>; Tue, 10 Aug 2021 22:27:12 +0000 (UTC)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79]) by
	relay.mimecast.com with ESMTP id us-mta-79-b6ZjHkzgOYCc919jxxn5tg-1;
	Tue, 10 Aug 2021 18:27:10 -0400
X-MC-Unique: b6ZjHkzgOYCc919jxxn5tg-1
Received: from ici.slint.fr (sfa89-1-78-208-157-71.fbx.proxad.net
	[78.208.157.71])
	by darkstar.slint.fr (Postfix) with ESMTPSA id EE17CA38A3
	for <blinux-list@redhat.com>; Tue, 10 Aug 2021 22:27:02 +0200 (CEST)
Subject: Re: Help, I need a Windows VM for my work
To: blinux-list@redhat.com
References: <3d854105-bb2b-5501-235f-eb05dc13f1f4@gmail.com>
	<913e9c46-c83a-39bd-c013-772d31851af5@protonmail.com>
Message-ID: <e436fbd6-1ba0-7412-85e1-4961f3ddc488@slint.fr>
Date: Wed, 11 Aug 2021 00:27:03 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
	Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <913e9c46-c83a-39bd-c013-772d31851af5@protonmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 17AMRGCj024520
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

SGkgUmF0aXNsYXYsCgpXaGlsZSBzb21lIGZpbmQgZWFzaWVyIHRvIHNldCB1cCBhIHZpcnR1YWwg
bWFjaGluZSB1c2luZyBhIEdVSSAKcGVyc29uYWxseSBJIGZpbmQKZWFzaWVyIHRvIGp1c3QgZG8g
aXQgb24gdGhlIGNvbW1hbmQgbGluZSwgdGhlIGNvbW1hbmQgYmVpbmcgc2F2ZWQgaW4gYSBzbWFs
bApzaGVsbCBzY3JpcHQgbGlrZSB0aGUgb25lIEkgcG9zdGVkIGFuZCBhbHNvIGluY2x1ZGVkIGlu
bGluZSBpbiBteSBwcmV2aW91cwptZXNzYWdlLgoKQWxzbyBRZW11IGlzIHdheSBwb3dlcmZ1bCBh
bmQgbW9yZSByZWxpYWJsZSB0aGVuIFZpcnR1YWxCb3ggaW5jbHVkaW5nIAp3cnQgc291bmQuCgpD
aGVlcnMsCkRpZGllcgoKTGUgMTAvMDgvMjAyMSDDoCAyMzozMywgTGludXggZm9yIGJsaW5kIGdl
bmVyYWwgZGlzY3Vzc2lvbiBhIMOpY3JpdMKgOgo+IEhleSB0aGVyZSwKPiAKPiBwZXJzb25hbGx5
IEkgdXNlIFZpcnR1YWxCb3ggb24gVWJ1bnR1IG1hdGUgMjAuMDQgYW5kIGl0IHdvcmtzIHdpdGhv
dXQKPiBhbnkgaXNzdWVzLCB0aG91Z2ggdGhlIGludGVyZmFjZSBpcyBzb21ldGltZXMgbm90IGVu
dGlyZWx5IGNvb3BlcmF0aW5nCj4gYW5kIE9DUkRlc2t0b3AgaXMgcmVxdWlyZWQgdG8gaW1wcm92
ZSB0aGUgYWNjdXJhY3kgb2YgT3JjYSBjbGlja3MuCj4gCj4gQnV0IGl0J3MgZGVmaW5pdGVseSBk
b2FibGUuCj4gCj4gCj4gVGhlIHVzYWdlIGlzIHF1aXRlIHNpbXBsZSwgeW91IGp1c3QgY3JlYXRl
IGEgbmV3IFZpcnR1YWwgbWFjaGluZSBmcm9tCj4gdGhlIG1hY2hpbmUgbWVudSwgc2V0dGluZyB1
cCBwYXJhbWV0ZXJzIGxpa2UgUkFNIGFuZCBkaXNrIHNwYWNlLgo+IAo+IFRoZW4sIHdoZW4gdGhl
IG1hY2hpbmUgaXMgY3JlYXRlZCwgeW91IGF0dGFjaCB0aGUgaW5zdGFsbGF0aW9uIElTTyB0bwo+
IGl0cyB2aXJ0dWFsIENEL0RWRCByb20sIHlvdSBjYW4gZG8gdGhpcyBpbiB0aGUgbWFjaGluZSBz
ZXR0aW5ncywgU3RvcmFnZQo+IHRhYiwgSURFIGNvbnRyb2xsZXIgKGlmIHlvdSBkb24ndCBzZWUg
aXQgaW4gdGhlIGxpc3QsIGluY3JlYXNlIHRoZQo+IG51bWJlciBvZiBzYXRhIHBvcnRzIHRvIDIp
Lgo+IAo+IAo+IEFmdGVyIHN0YXJ0aW5nIHRoZSBtYWNoaW5lIHdpdGggdGhlIGlzbyBhdHRhY2hl
ZCwgaXQgc2hvdWxkIGJvb3QKPiBhdXRvbWF0aWNhbGx5IGFuZCBzdGFydCB0aGUgaW5zdGFsbGF0
aW9uLgo+IAo+IAo+IFdoZW4geW91J3JlIGRvbmUsIHlvdSBjYW4gcmVtb3ZlIHRoZSBpbnN0YWxs
YXRpb24gZGlzayBmcm9tIHRoZSBkcml2ZSwKPiBpbiBmYWN0IHRoaXMgaXMgc29tZXRpbWVzIGRv
bmUgYXV0b21hdGljYWxseSwgYnV0IEkgc2F3IGNhc2VzIHdoZXJlIGl0Cj4gc3RhaWVkIHRoZXJl
LCBzbyBJIGFsd2F5cyBjaGVjayBpdC4KPiAKPiAKPiBUaGVuLCB5b3UgY2FuIHN0YXJ0IHRoZSBW
TSBlaXRoZXIgZnJvbSB0aGUgVmlydHVhbEJveCBtYW5hZ2VyLCBvciBmcm9tCj4gaXRzIC52Ym94
IHNob3J0Y3V0Lgo+IAo+IAo+IEEgZmluYWwgbm90ZSwgd2hlbiBydW5uaW5nIHRoZSBtYWNoaW5l
LCBrZXlib2FyZCBpcyBncmFiYmVkIGJ5Cj4gVmlydHVhbEJveCBmb3IgaXQuIElmIHlvdSBuZWVk
IHRvIHNlbmQga2V5cyB0byB5b3VyIGhvc3Qgc3lzdGVtLCBwcmVzcwo+IHRoZSByaWdodCBjdHJs
IG9uIHlvdXIga2V5Ym9hcmQsIGl0IHdvcmtzIGluIHRoZSBzYW1lIHdheSBhcwo+IE9yY2ErQmFj
a3NwYWNlIGNvbWJpbmF0aW9uIGZvciBPcmNhLCB3aXRoIHRoZSBleGNlcHRpb24gdGhhdCB0aGUK
PiBrZXlib2FyZCB3aWxsIGJlIGdyYWJiZWQgYWdhaW4gb25seSB3aGVuIHlvdSByZWVudGVyIHRo
ZSB3aW5kb3cgb2YgdGhlCj4gbWFjaGluZSwgc28geW91IGNhbiB3b3JrIGluIHlvdXIgaG9zdCBz
eXN0ZW0gd2l0aG91dCBhbnkgaXNzdWVzLgo+IAo+IAo+IEJlc3QgcmVnYXJkcwo+IAo+IAo+IFJh
c3Rpc2xhdgo+IAo+IAo+IETFiGEgMTAuIDguIDIwMjEgbyAxMjo1NSBMaW51eCBmb3IgYmxpbmQg
Z2VuZXJhbCBkaXNjdXNzaW9uIG5hcMOtc2FsKGEpOgo+PiBIaSBhbGwsCj4+Cj4+Cj4+IEFzIEkg
c3RhdGVkIGJlZm9yZSwgSSBhbSBydW5uaW5nIFNsaW50IG9uIHRoZSBiYXJlIG1ldGFsLCBob3dl
dmVyIG15Cj4+IHdvcmsgZW50YWlscyB0ZWFjaGluZyBOVkRBIHRvIGNsaWVudHMsIG9idmlvdXNs
eSBydW5uaW5nIFdpbmRvd3MuCj4+Cj4+Cj4+IFRoZXJlZm9yIEkgZGVzcGVyYXRlbHkgbmVlZCBh
IFdpbmRvd3MgVk0sIHNvIEkgY2FuIG1ha2UgYSBsaXZpbmcuIEkKPj4gY2Fubm90IGZpZ3VyZSBx
ZW11LCB2aXJ0dWFsLWJveCwgSSBoYXZlIG5vIGlkZWEsIGFuZCBWTVdhcmUgV29ya3N0YXRpb24K
Pj4gUGxheWVyIGRvZXNuJ3Qgd2FudCB0byBpbnN0YWxsIHVuZGVyIFNsaW50Lgo+Pgo+Pgo+PiBD
b3VsZCBzb21lb25lIHBsZWFzZSwgcGxlYXNlLCBnaXZlIG1lIGNvbmNpc2UgaW5zdHJ1Y3Rpb25z
IGZvciBzZXR0aW5nCj4+IHVwIGEgVk0gdXNpbmcgcWVtdSBpbiBTbGludD8KPj4KPj4KPj4gV2Fy
bSByZWdhcmRzLAo+Pgo+Pgo+PiBCcmFuZHQgU3RlZW5rYW1wCj4+Cj4+Cj4+IFNlbnQgZnJvbSBt
eSBnYXNzIHBvd2VyZWQgU2xpbnQgaGFpciBkcnllci4KCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4
LWxpc3RAcmVkaGF0LmNvbQpodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3Rp
bmZvL2JsaW51eC1saXN0

