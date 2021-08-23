Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 163163F5339
	for <lists+blinux-list@lfdr.de>; Tue, 24 Aug 2021 00:11:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1629756691;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=9FPDqAUO0FplAxROMoNCcXYrnPRvN3cT84RDevmuOVo=;
	b=fvfbh+EgatgU5QniB16vkuHOhP1AA0Qf1+X80qd1wqSEWr0XGhkiLTyB8kGURqZEV8h4Kd
	V/+DGfArcwuxfP5adttsyHvvy7JyDZwtu/zd2w23a3yxopzEN8+6HCz+Z7gn8G+iUaC0Cj
	5awEsbPFB+xwgWgFiHWe1J3ezsvL7Js=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-330-D0q8ZogSOVODgP2IxwM6Fg-1; Mon, 23 Aug 2021 18:11:29 -0400
X-MC-Unique: D0q8ZogSOVODgP2IxwM6Fg-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id B5E1C107ACF5;
	Mon, 23 Aug 2021 22:11:23 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 1515860C05;
	Mon, 23 Aug 2021 22:11:22 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 892DF4BB7B;
	Mon, 23 Aug 2021 22:11:16 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 17NMB7XK023280 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 23 Aug 2021 18:11:07 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id ED87C21449D6; Mon, 23 Aug 2021 22:11:06 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E8AD421449D8
	for <blinux-list@redhat.com>; Mon, 23 Aug 2021 22:11:04 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 72048101A529
	for <blinux-list@redhat.com>; Mon, 23 Aug 2021 22:11:04 +0000 (UTC)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79]) by
	relay.mimecast.com with ESMTP id us-mta-52-cL9vVUTJMZCplNXBr01zvQ-1;
	Mon, 23 Aug 2021 18:11:01 -0400
X-MC-Unique: cL9vVUTJMZCplNXBr01zvQ-1
Received: from ici.slint.fr (sfa89-1-78-208-157-71.fbx.proxad.net
	[78.208.157.71])
	by darkstar.slint.fr (Postfix) with ESMTPSA id C8AE7A379D;
	Mon, 23 Aug 2021 22:10:49 +0200 (CEST)
Subject: Re: [BRLTTY] BRLTTY on Linux mint Mate addition
To: brltty@brltty.app,
	Linux for blind general discussion <blinux-list@redhat.com>
References: <D7106E21-8FA5-4BD5-A397-F15EF98C5C5C@gmail.com>
Message-ID: <ee5c8cd3-8133-84d1-e62e-7326ca1e0647@slint.fr>
Date: Tue, 24 Aug 2021 00:10:56 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
	Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <D7106E21-8FA5-4BD5-A397-F15EF98C5C5C@gmail.com>
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
	lists01.pubmisc.prod.ext.phx2.redhat.com id 17NMB7XK023280
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

SGkgQnJhbmR0LApJIGFtIGJpdCBwdXp6bGVkOyBNaW50IGlzIGJhc2VkIG9uIERlYmlhbiB3aGlj
aCBzaGlwcyBicmx0dHktNi4zIGZvciAKYnVsbHNleWUKYW5kIGFzIGJhY2twb3J0IGZvciBidXN0
ZXIgYWNjb3JkaW5nIHRvOgpodHRwczovL3BhY2thZ2VzLmRlYmlhbi5vcmcvc2VhcmNoP2tleXdv
cmRzPWJybHR0eQoKU28gSSBhbSBwdXp6bGVkOiB3aGljaCBNaW50IHZlcnNpb24gZG8geW91IHVz
ZT8KCkkgd291bGQgc3VnZ2VzdCB0byB1c2UgYSBEZWJpYW4gcGFja2FnZSwgYnV0IGRvbid0IGtu
b3cgd2hpY2ggd291bGQgYmUKY29tcGF0aWJsZSB3aXRoIHlvdSBNaW50IHZlcnNpb24uCgpZb3Ug
Y291bGQgYWxzbyBidWlsZCBmcm9tIHNvdXJjZSBidXQgaW5kZWVkIHRoZW4gdGhlIHNvZnR3YXJl
IHdvdWxkIG5vdCBiZQpoYW5kbGVkIGJ5IHRoZSBwYWNrYWdlIG1hbmFnZW1lbnQgc3lzdGVtIG9m
IE1pbnQuCgpPciwgYnV0IG9ubHkgaWYgZXZlcnl0aGluZyBlbHNlIGZhaWxzLCByZS1pbnN0YWxs
IFNsaW50IDspCgpCeSB0aGUgd2F5IHdlIHdpbGwgcHJvdmlkZSBicmx0dHktNi40IGZvciBTbGlu
dCBhcyBzb29uIGFzIHJlbGVhc2VkIChidXQgClNhbXVlbAp3aWxsIGRvIHRoYXQgdG9vIGZvciBE
ZWJpYW4sIEkgcHJlc3VtZSkuCgpDaGVlcnMsCkRpZGllcgotLQpEaWRpZXIgU3BhaWVyClNsaW50
IG1haW50YWluZXIKZGlkaWVyYXRzbGludGRvdGZyCgpMZSAyMy8wOC8yMDIxIMOgIDIwOjQ0LCBC
cmFuZHQgU3RlZW5rYW1wIGEgw6ljcml0wqA6Cj4gSGkgZXZlcnlib2R5LAo+IAo+IER1ZSB0byB0
aGUgZmFjdCB0aGF0IEkgaGF2ZSBoYWQgdW5iZWxpZXZhYmxlIHRyb3VibGUgd2l0aCBwdWxzZWF1
ZGlvIGluIEFyY2gsIEkgaW5zdGFsbGVkIHRoZSBmaXJzdCBMaW51eCBlZGl0aW9uIEkgY291bGQg
bGF5IG15IGhhbmRzIG9uLCB3aGljaCB3YXMgTGludXggbWludCwgbWF0ZSBlZGl0aW9uLgo+IAo+
IFVuZm9ydHVuYXRlbHksIGl0IGNvbWVzIGJ5IHRoZSBmYXVsdCB3aXRoIEJSTFRUWSA2LjAsIHdo
aWNoIGlzIG5vIHVzZSB0byBtZSwgc2luY2UgbXkgaHVtYW53YXJlIEJyYWlsbGVPbmUgaXMgbm90
IHN1cHBvcnRlZCB1bmRlciB0aGF0IHZlcnNpb24gb2YgQlJMVFRZLgo+IAo+IEhvdyB3b3VsZCB5
b3UgZ28gYWJvdXQgaW5zdGFsbGluZyBCUkxUVFkgNi4zICB1bmRlciBMaW51eCBtaW50Pwo+IAo+
IFdhcm0gcmVnYXJkcywKPiAKPiBCcmFuZHQgU3RlZW5rYW1wCj4gCj4gU2VudCBmcm9tIG15IGlQ
aG9uZQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkJs
aW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vbGlz
dG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3Q=

