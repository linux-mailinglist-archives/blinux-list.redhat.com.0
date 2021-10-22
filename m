Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id C8E31437C6B
	for <lists+blinux-list@lfdr.de>; Fri, 22 Oct 2021 20:03:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1634925814;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=bJKZ1YX4bEJ6kLSxNZccZLn8tYAHviVu2cehRyfUDFI=;
	b=M8t82b7cO8folOtjpxkjt1n/bSotfC766W2fgU6Ahn/K6p55NrjyWDjERDyeOL0dtilvQB
	AIENTBWy3Ym75t2M3QhiE9O2Wug8p1qz+dR2YhMxo8OJb/RooRamahWPbCykHdA2xRADdv
	dnt85R/xM9hgbV4A66gGxVyWo7E01tk=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-188-1BvR-hbwO9KgP8WCuiiW6Q-1; Fri, 22 Oct 2021 14:03:30 -0400
X-MC-Unique: 1BvR-hbwO9KgP8WCuiiW6Q-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A0B9485C708;
	Fri, 22 Oct 2021 18:03:22 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 5E95057CA4;
	Fri, 22 Oct 2021 18:03:22 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id EBE114A702;
	Fri, 22 Oct 2021 18:03:19 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 19MI3Em5006895 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 22 Oct 2021 14:03:15 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id CD103CF63A; Fri, 22 Oct 2021 18:03:14 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C7F38D018A
	for <blinux-list@redhat.com>; Fri, 22 Oct 2021 18:03:09 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id C5C7E899ECB
	for <blinux-list@redhat.com>; Fri, 22 Oct 2021 18:03:09 +0000 (UTC)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79]) by
	relay.mimecast.com with ESMTP id us-mta-393-9cT5EA59Mf2MHL1LL-wuaQ-1;
	Fri, 22 Oct 2021 14:03:07 -0400
X-MC-Unique: 9cT5EA59Mf2MHL1LL-wuaQ-1
Received: from [192.168.0.10] (sfa89-1-78-208-157-71.fbx.proxad.net
	[78.208.157.71])
	by darkstar.slint.fr (Postfix) with ESMTPSA id B30DEA3779
	for <blinux-list@redhat.com>; Fri, 22 Oct 2021 18:02:37 +0200 (CEST)
Message-ID: <27220c1f-6e5c-b2aa-44b9-a50f4bc7b251@slint.fr>
Date: Fri, 22 Oct 2021 20:03:04 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.2.0
Subject: Re: New user looking for info on Voxin
To: blinux-list@redhat.com
References: <9B1DAAA1-347A-4CE6-A606-F1E5EDEAC372@gmail.com>
In-Reply-To: <9B1DAAA1-347A-4CE6-A606-F1E5EDEAC372@gmail.com>
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
	lists01.pubmisc.prod.ext.phx2.redhat.com id 19MI3Em5006895
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

SGkgUm9iLAoKVGhpcyBwYWdlIHNob3VsZCBhbnN3ZXIgeW91ciBxdWVzdGlvbnMuCmh0dHBzOi8v
b3JhbHV4Lm9yZy92b2ljZS5waHA/bXlsYW5nPWVuCgpDbGlja2luZyBvbiBhIGxpbmsgaW4gdGhl
IGxhbmd1YWdlcyBsaXN0IHdpbGwgZGlzcGxheSBhbGwgdm9pY2VzIAphdmFpbGFibGUgZm9yIHRo
aXMgbGFuZ3VhZ2UuCgpDbGlja2luZyBvbiBhIHZvaWNlIGxpbmsgd2lsbCBnaXZlIHlvdSBhIHNo
b3J0IGRlbW8gb2YgdGhpcyB2b2NlLgoKVG8ga25vdyBsb3Jlc2VuZCBhbiBlbWFpbCB0byB0aGUg
YWRkcmVzcyBpbmRpY2F0ZWQgaW4gdGhpcyBwYWdlOgpodHRwczovL29yYWx1eC5vcmcvY29udGFj
dC5waHAKCkdpbGxlcyBDYXNzZSB3aWxsIGNlcnRhaW5seSBhbnN3ZXIgeW91ciBxdWVzdGlvbnMu
CgpCZXN0IHJlZ2FyZHMsCkRpZGllcgotLQpEaWRpZXIgU3BhaWVyClNsaW50IG1haW50YWluZXIK
ZGlkaWVyIGF0IHNsaW50IGRvdCBmcgpodHRwczovL3NsaW50LmZyL2RvYy9IYW5kQm9vay5odG1s
Cmh0dHBzOi8vc2xpbnQuZnIvZG9jL01hbnVlbFNsaW50Lmh0bWwKCkxlIDIyLzEwLzIwMjEgw6Ag
MTk6MzcsIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gYSDDqWNyaXTCoDoKPiBE
ZWFyIExpc3QsCj4gSSBqdXN0IHN0YXJ0ZWQgY2hlY2tpbmcgb3V0IExpbnV4Lgo+IEnigJltIHVz
aW5nIHRoZSBBY2Nlc3NpYmxlIENvY29udXQgdmVyc2lvbi4KPiBJdHMgYmVlbiBvdmVyIDE1IHll
YXJzIHNpbmNlIEkgdHJpZWQgTGludXguCj4gTXkgcXVlc3Rpb24gaXMsIElzIHRoZXJlIGEgZGVt
byBvZiBWb3hpbj8gQW5kIHdoZXJlIGlzIHRoZSBiZXN0IHBsYWNlIHRvIGdldCBpdCBvdGhlciB0
aGFuIHRoZSBWb3hpbiB3ZWJzaXRlPwo+IFRoYW5rcywKPiBSb2IKCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QK
QmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFu
L2xpc3RpbmZvL2JsaW51eC1saXN0

