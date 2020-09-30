Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [63.128.21.124])
	by mail.lfdr.de (Postfix) with ESMTP id 7D43827F252
	for <lists+blinux-list@lfdr.de>; Wed, 30 Sep 2020 21:06:31 +0200 (CEST)
Dkim-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1601492790;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=E4cNqotDsoz9xKip63fSS5IUNnsJ7PqqXCmzfinA0nI=;
	b=TolVRvQqDjHUxQwppX5BGz1uxpSPY0h8uICeX8LopGCFu6NkN/eoTO2Pu4ZJSzg0shwmiT
	umFZ5Z4rAUwfge2vR6B+QYEUf/o5Fz+SKWvMU4LY1n7j15757I+iA6N9eejpyPcUWMCzCh
	o4jOelFGjY3sfsm0vv4L4pgZ/jKlJyo=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-172-yWnkKblrNISdrVZs9QIS3g-1; Wed, 30 Sep 2020 15:06:25 -0400
X-MC-Unique: yWnkKblrNISdrVZs9QIS3g-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 1885BE75D;
	Wed, 30 Sep 2020 19:06:21 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3BE8F71775;
	Wed, 30 Sep 2020 19:06:20 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 48668183D022;
	Wed, 30 Sep 2020 19:06:19 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 08UJ6EhF029150 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 30 Sep 2020 15:06:15 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id AD29D2144B30; Wed, 30 Sep 2020 19:06:14 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A87D22144B32
	for <blinux-list@redhat.com>; Wed, 30 Sep 2020 19:06:12 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id B6A288582A7
	for <blinux-list@redhat.com>; Wed, 30 Sep 2020 19:06:12 +0000 (UTC)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79]) by
	relay.mimecast.com with ESMTP id us-mta-582-GOuwPzL9P66v7HQ3EiPP_w-1;
	Wed, 30 Sep 2020 15:06:08 -0400
X-MC-Unique: GOuwPzL9P66v7HQ3EiPP_w-1
Received: from darkstar.machine.fr (sfa89-1-78-208-157-71.fbx.proxad.net
	[78.208.157.71])
	by darkstar.slint.fr (Postfix) with ESMTPSA id 604AEBE27E
	for <blinux-list@redhat.com>; Wed, 30 Sep 2020 20:05:22 +0200 (CEST)
Subject: Re: Console screenreaders
To: blinux-list@redhat.com
References: <1409d60b-0be5-783a-d490-0501585ead96@gmail.com>
	<5b699b56-2241-b1ef-18c3-3d05614e9b8a@slint.fr>
	<20200930121251.7d6b8c35@bigbox.attlocal.net>
	<Pine.LNX.4.64.2009301423450.2145@server2.shellworld.net>
	<CAO2sX33+gs2H_+cV+iux-TdnbVga46Kn0fQi4ePens9LC-QuWQ@mail.gmail.com>
Message-ID: <e034b2f1-bfc5-d766-da46-5d14bbc587f4@slint.fr>
Date: Wed, 30 Sep 2020 21:05:59 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
	Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <CAO2sX33+gs2H_+cV+iux-TdnbVga46Kn0fQi4ePens9LC-QuWQ@mail.gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 08UJ6EhF029150
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: fr
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGVsbG8sCgpJIGhhdmUgZm91bmQgYSBzb3VyY2UgcGFja2FnZSBmb3IgU0JMOgpodHRwOi8vZG93
bmxvYWQub3BlbnN1c2Uub3JnL3NvdXJjZS9kaXN0cmlidXRpb24vanVtcC8xNS4yL3JlcG8vb3Nz
L3NyYy9zYmwtMy41LjAuMjAxMzAzMTcuZ2l0N2E3NWJjMjktMi40Ni5zcmMucnBtCgpJIHdpbGwg
dHJ5IHRvIGJ1aWxkIGl0IGFuZCBhZGQgaXQgdG8gdGhlIFNsaW50IG1haW4gcmVwb3NpdG9yeQoK
Q2hlZXJzLCBEaWRpZXIKRGlkaWVyIFNwYWllcgpTbGludCBtYWludGFpbmVyCmh0dHBzOi8vc2xp
bnQuZnIKCkxlIDMwLzA5LzIwMjAgw6AgMjA6NTQsIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRp
c2N1c3Npb24gYSDDqWNyaXTCoDoKPiBJJ20gcGVyc29uYWxseSBhIGZhbiBvZiBTQkwsIHBhcnRp
Y3VsYXJseSBmb3IgaXQncwo+IGhvbGQgZG93biBjYXBzIGxvY2sgYW5kIHVzZSBhcnJvdyBrZXlz
IHRvIG5hdmlnYXRlIHRoZSBzY3JlZW4gbGlrZSBhCj4gdGV4dCBkb2N1bWVudCIgc3R5bGUgb2Yg
c2NyZWVuIHJldmlldyBhbmQgaXQgZ2VuZXJhbGx5IG9ubHkgcmVhZGluZwo+IHRoZSBvdXRwdXQg
ZnJvbSB2ZXJib3NlIGNvbW1hbmRzIHRoYXQgSSB0ZWxsIGl0IHRvbyBpbnN0ZWFkIG9mIHRyeWlu
Zwo+IHRvIHJlYWQgYWJzb2x1dGVseSBldmVyeXRoaW5nIGxpa2UgZXNwZWFrdXAgZG9lcy4uLiB0
aG91Z2ggYWRtaXR0ZWRseSwKPiBJIHByZWZlciBlc3BlYWt1cCdzIG1vcmUgdmVyYm9zZSBzdHls
ZSB3aGVuIHBsYXlpbmcgY2xhc3NpYyBpbmZvY29tCj4gdGV4dCBhZHZlbnR1cmVzIGluIEZpem1v
IG9yIEZyb3R6IHNpbmNlIEkgZG9uJ3QgaGF2ZSB0byBtYW51YWxseQo+IHJldmlldyB0aGUgb3V0
cHV0IG9mIGV2ZXJ5IGFjdGlvbi4gSSBhbHNvIGZpbmQgU0JMIHdvcmtzIGJldHRlciB3aXRoCj4g
c2Nyb2xsaW5nIGN1cnNlcy1iYXNlZGFwcHMgYXMgZXNwZWFrdXAgaGFzIGEgYmFkIGhhYml0IG9m
IHJlYWRpbmcgYQo+IGxpbmUgdGhhdCBqdXN0IHNjcm9sbGVkIG9uIHNjcmVlbiBpbnN0ZWFkIG9m
IHRoZSBsaW5lIHRoYXQganVzdCBjYW1lCj4gaW50byBmb2N1cyB3aGVuIHRoZSB0d28gaGFwcGVu
IHNpbXVsdGFuZW91c2x5Lgo+IAo+IFNhZGx5LCBTQkwgaXMsIGFzIGZhciBhcyBJIGtub3csIG9u
bHkgYXZhaWxhYmxlIGZvciBPcGVuU1VzZSBhbmQKPiBLbm9wcGl4IGFzIGEgcHJlY29tcGlsZWQg
cGFja2FnZSwgYW5kIGV2ZW4gdGhlbiwgS25vcHBpeCBvbmx5IGhhcyBhbgo+IGkzODYgdmVyc2lv
biBhbmQgdGhlIC5kZWIgaXNuJ3QgcmVhZGlseSBhdmFpbGFibGUgZXZlciBzaW5jZSBBbGlvdGgK
PiB3YXMgdGFrZW4gb2ZmbGluZSBhbmQgdG9vIHRoZSBLbm9wcGl4IHJlcG9zaXRvcnkgd2l0aCBp
dC4gU0JMIGlzbid0IGluCj4gYWN0aXZlIGRldmVsb3BtZW50IGVpdGhlciBhcyBmYXIgYXMgSSBr
bm93LCB0aG91Z2ggSSBjYW4ndCBzYXkgSSd2ZQo+IG5vdGljZWQgYW55IGlzc3VlcyB3aXRoIHRo
ZSBjdXJyZW50IHZlcnNpb24ncyBhZ2UuCj4gCj4gQWJvdXQgYWxsIEkga25vdyBhYm91dCBGZW5y
aXIgaXMgdGhhdCBpdCdzIHVzZXJsYW5kLWJhc2VkIHdoaWxlCj4gZXNwZWFrdXAgcmVxdWlyZXMg
dGhlIHNwZWFrdXAga2VybmVsIG1vZHVsZSBhbmQgdGhhdCBpdCdzIHdyaXR0ZW4gaW4KPiBQeXRo
b24uIEkgYmVsaWV2ZSBpdCBhbHNvIHVzZXMgU3BlZWNoIGRpc3BhdGNoZXIsIHdoaWNoIG1pZ2h0
IG1ha2UKPiB1c2luZyBzb2Z0d2FyZSBzcGVlY2ggc3ludGhzIG90aGVyIHRoYW4gZXNwZWFrL2Vz
cGFrLW5nIGVhc2llciBpbiBzb21lCj4gY2FzZXMoSSd2ZSBuZXZlciBoYWQgaXNzdWVzIHdpdGgg
ZXNwZWFrLW5nLCBzbyBJIGNhbid0IHJlYWxseSBjb21tZW50Cj4gb24gb3RoZXIgc3ludGhzKS4K
PiAKPiBJIGtub3cgZXZlbiBsZXNzIGFib3V0IFlBU1IgdGhhbiBGZW5yaXIsIGJ1dCBJIHVuZGVy
c3RhbmQgaXQgcmVxdWlyZXMKPiBhIGhhcmR3YXJlIHNwZWVjaCBzeW50aCB0byBmdW5jdGlvbiBw
cm9wZXJseS4KPiAKPiAKPiAtSmVmZmVyeQo+IAo+IF9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4gQmxpbnV4
LWxpc3RAcmVkaGF0LmNvbQo+IGh0dHBzOi8vd3d3LnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5m
by9ibGludXgtbGlzdAo+IAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29t
Cmh0dHBzOi8vd3d3LnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdA==

