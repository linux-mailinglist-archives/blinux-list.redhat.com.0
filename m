Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 22A3B45F6CC
	for <lists+blinux-list@lfdr.de>; Fri, 26 Nov 2021 23:19:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1637965165;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=FpGshqE/PO1eSaKmxjsdDRO8Q2P0zVgElAtRL/dTILk=;
	b=TGfI1Ufsjregx0DAD9E8NbEpy4TI9Uw2m7/nk445SDT1j9vjqj0Wx8mcZgI+XeieWtOJV4
	xW6AkE+txj4PD1/fG6AKr98bFsGmzSuPZSYXZEfOMeg5LBcjN/yqZrneSQjVCASpqcl84w
	UGcTGJyo/P2RwZAegRE+XW1LcGTz3/o=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-9-n3zEX-mtNc-FXQg_Kct9BA-1; Fri, 26 Nov 2021 17:19:22 -0500
X-MC-Unique: n3zEX-mtNc-FXQg_Kct9BA-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 2F73D106B3A3;
	Fri, 26 Nov 2021 22:19:18 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 92AA410027D0;
	Fri, 26 Nov 2021 22:19:14 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id C38164BB7B;
	Fri, 26 Nov 2021 22:19:07 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1AQMIx7K024099 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 26 Nov 2021 17:18:59 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 2833F2026D7F; Fri, 26 Nov 2021 22:18:59 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 23DAE2026D67
	for <blinux-list@redhat.com>; Fri, 26 Nov 2021 22:18:56 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 3A9EE85A5AA
	for <blinux-list@redhat.com>; Fri, 26 Nov 2021 22:18:56 +0000 (UTC)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79]) by
	relay.mimecast.com with ESMTP id us-mta-88-YmkE55dUOKi841_WHcrJ4Q-1;
	Fri, 26 Nov 2021 17:18:54 -0500
X-MC-Unique: YmkE55dUOKi841_WHcrJ4Q-1
Received: from [192.168.1.38] (men75-h08-176-172-247-100.dsl.sta.abo.bbox.fr
	[176.172.247.100])
	by darkstar.slint.fr (Postfix) with ESMTPSA id 9216EA391E
	for <blinux-list@redhat.com>; Fri, 26 Nov 2021 21:18:12 +0100 (CET)
Message-ID: <27789b85-da1b-873b-106e-8c2c0dbde20c@slint.fr>
Date: Sat, 27 Nov 2021 00:18:52 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.3.1
Subject: Re: Jumping from Solus/Ubuntu to Slint...how easy is it?
To: blinux-list@redhat.com
References: <78e0ef3a-4843-b11a-6ab4-586498b14250@gmail.com>
	<a5db1a21-5c98-f8ca-4f04-c42db4c6fa24@gmail.com>
	<5306ea94-e937-f383-95da-12ea194be198@gmail.com>
In-Reply-To: <5306ea94-e937-f383-95da-12ea194be198@gmail.com>
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
	lists01.pubmisc.prod.ext.phx2.redhat.com id 1AQMIx7K024099
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

SGksCgp5b3UgY2FuLCBidWlsZGluZyBwYWNrYWdlcyB1c2luZyBzY3JpcHRzIGZyb20gaHR0cHM6
Ly9zbGFja2J1aWxkcy5vcmcKCkhvd2V2ZXIsIHRoaXMgbmVlZHMgdG8gdXBkYXRlIHRoZSBsaW5r
cyB0byB0aGUgc291cmNlIGZpbGVzIGluIHRoZXNlIApzY3JpcHRzLAphcyB0aGV5IGhhdmUgY2hh
bmdlZC4KCkkgY2FuIHByb3ZpZGUgaW5zdHJ1Y3Rpb25zIGhvdyB0byBkbyB0aGF0IHRvbW9ycm93
LCBpZiB5b3Ugd2FudC4KCkkgc3VnZ2VzdCB0aGF0IHlvdSByZWdpc3RlciB0byB0aGUgbWFpbGlu
ZyBsaXN0IGZvciB0aGUgZm9sbG93IHVwLCBub3QgdG8KaGlqYWNrIHRoaXMgbGlzdC4gSG93IHRv
IHJlZ2lzdGVyIGlzIGluZGljYXRlZCBoZXJlOgpodHRwczovL3NsaW50LmZyL2RvYy9IYW5kQm9v
ay5odG1sI19zdXBwb3J0CgpDaGVlcnMsCkRpZGllcgoKCkxlIDI2LzExLzIwMjEgw6AgMjI6NTcs
IExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gYSDDqWNyaXTCoDoKPiBZb3Ugc2F5
IHlvdSBjYW4ndCBydW4gaXQgaW4gYSBWTSwgSSBnb3QgaXQgd29ya2luZyBpbiBxdWNrZW11IHdp
dGggYSBiaXQgCj4gb2YgcG9raW5nIGF0IHRoZSBleGFtcGxlIGZpbGVzLgo+IAo+IFNvLCBxdWVz
dGlvbi4gSSdtIG1pc3NpbmcgdHdvIGFwcHMgaW4gbXkgVk0gaW5zdGFsbAo+IAo+IAo+IFB1cnBs
ZS1za3lwZXdlYiAoUGlkZ2luIHNreXBlIHBsdWdpbikgYXMgd2VsbCBhcyBTa3lwZQo+IAo+IAo+
IFNlY29uZCBvbmUuLi5Lb2RpCj4gCj4gU28gY2FuIEkgZ2V0IGJvdGggaW5zdGFsbGVkIGluIFNs
aW50IG9yPwo+IAo+IAo+IE9uIDExLzI2LzIxIDIxOjM4LCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJh
bCBkaXNjdXNzaW9uIHdyb3RlOgo+PiBTbGludCBpcyBwcm9iYWJseSB0aGUgbW9zdCByZWxpYWJs
eSBhY2Nlc3NpYmxlIGRpc3RyaWJ1dGlvbi4gWW91IGNhbid0IAo+PiBydW4gYSB2aXJ0dWFsIHNs
aW50IG9uIHlvdXIgY29tcHV0ZXIsIGhvd2V2ZXIsIHlvdSBjYW4gaW5zdGFsbCBvbiBhbiAKPj4g
U0QgY2FyZCBhbmQgdXNlIGl0IHdpdGhvdXQgYW55IGFjY2Vzc2liaWxpdHkgaXNzdWVzLiBZb3Ug
bmVlZCBhdCBsZWFzdCAKPj4gMzIgR0IgU0QgZGlzay7CoCBJIGhhdmUgaXQgcnVubmluZyBvbiAx
MjggR0IgU0QgZHJpdmUuCj4+Cj4+IENoZWVycywKPj4KPj4gSWJyYWhpbQo+Pgo+PiBPbiAxMS8y
Ni8yMSAzOjU5IFBNLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIHdyb3RlOgo+
Pj4gU28gYXMgaXQgc2F5cy4uLi5hbmQgZ2l2ZW4gbXkgcmVjZW50IHdoaWZmcyBvbiBxZW11LCBz
byBmYXIgKmNyb3NzZXMgCj4+PiBmaW5nZXJzKiBTbGludCBpcyBzbG93bHkgaW5zdGFsbGluZyBi
dXQgSSdtIHdhbnRpbmcgdG8ga25vdy4uLgo+Pj4KPj4+Cj4+Pgo+Pj4gSG93IGVhc3kgaXMgaXQg
dG8gYWRhcHQgdG8gU2xpbnQvU2xhY2t3d2FyZSBjb21pbmcgZnJvbSBVYnVudHUgb3IgCj4+PiBT
b2x1cyBvciBGZWRvcmEgb3IuLi4KCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0
LmNvbQpodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1s
aXN0

