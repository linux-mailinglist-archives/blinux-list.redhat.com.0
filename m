Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 19D7842E4AC
	for <lists+blinux-list@lfdr.de>; Fri, 15 Oct 2021 01:15:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1634253299;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=11kdvK/PYTzzVH/scwUaSU1KziXIwX4m8CVuxWHthEk=;
	b=Odr42K8KK+miDbqHZQgO6MBqFjLuU4z7lJ8wJmJpAXyA3LhT01fLG/HbcugHlvh/NwHjfk
	0T0CzYCaut8CjdV9W4gsM/vGKNrtqgnJnSu6sfudrsII4tdvwFK75HaWXisWYtuv8acHqG
	mkqqKr6BmN5+fo05lf9DJdwvePH6X5I=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-20-nr7Wj8T3OxuBFUguX7d5FA-1; Thu, 14 Oct 2021 19:14:55 -0400
X-MC-Unique: nr7Wj8T3OxuBFUguX7d5FA-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 2B620A40C0;
	Thu, 14 Oct 2021 23:14:51 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 81BD819724;
	Thu, 14 Oct 2021 23:14:48 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 3D8E24EA2A;
	Thu, 14 Oct 2021 23:14:40 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 19ENEVsl010253 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 14 Oct 2021 19:14:32 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 8E2ED2026D48; Thu, 14 Oct 2021 23:14:31 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 89A622026D46
	for <blinux-list@redhat.com>; Thu, 14 Oct 2021 23:14:27 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id BA31E811E93
	for <blinux-list@redhat.com>; Thu, 14 Oct 2021 23:14:27 +0000 (UTC)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79]) by
	relay.mimecast.com with ESMTP id us-mta-195-8PybtBrzMNS0fAInCR0iow-1;
	Thu, 14 Oct 2021 19:14:25 -0400
X-MC-Unique: 8PybtBrzMNS0fAInCR0iow-1
Received: from [192.168.0.10] (sfa89-1-78-208-157-71.fbx.proxad.net
	[78.208.157.71])
	by darkstar.slint.fr (Postfix) with ESMTPSA id DB216A3790
	for <blinux-list@redhat.com>; Thu, 14 Oct 2021 23:13:57 +0200 (CEST)
Message-ID: <3c4e20f2-db85-45b4-569e-8a762d900860@slint.fr>
Date: Fri, 15 Oct 2021 01:14:21 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.2.0
Subject: Re: Any suggestions of what distro of Linux I should load onto a new
	computer?
To: blinux-list@redhat.com
References: <BE642CCD-41FD-4C31-AAFB-C4EE0CB1A200.ref@yahoo.com>
	<BE642CCD-41FD-4C31-AAFB-C4EE0CB1A200@yahoo.com>
In-Reply-To: <BE642CCD-41FD-4C31-AAFB-C4EE0CB1A200@yahoo.com>
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
	lists01.pubmisc.prod.ext.phx2.redhat.com id 19ENEVsl010253
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

SGkgQXNobGV5LAoKSSBoaWdobHkgcmVjb21tZW5kIFNsaW50LgoKTm90IG9ubHkgaXMgaXQgZnVs
bHkgYWNjZXNzaWJsZSBidXQgaXQgYWxzbyBpbmNsdWRlcyBvdXQgb2YgdGhlIGJveCAKZXZlcnl0
aGluZwp5b3Ugd291bGQgbGlrZSB0byBsZWFybiBhYm91dC4KClRoZSBTbGludCBIYW5kQm9vayB3
aGljaCB3aWxsIHlvdSBob3cgdG8gaW5zdGFsbCBpdCwgaG93IHRvIGdldCBoZWxwIGFuZCAKd2ls
bAphbHNvIGludHJvZHVjZSB5b3UgdG8gTGludXguCkxpbms6IGh0dHBzOi8vc2xpbnQuZnIvZG9j
L0hhbmRCb29rLmh0bWwKCkRpZGllcgotLQpEaWRpZXIgU3BhaWVyClNsaW50IG1haW50YWluZXIK
ZGlkaWVyIGF0IHNsaW50IGRvdCBmcgoKTGUgMTIvMTAvMjAyMSDDoCAwNjo0MCwgTGludXggZm9y
IGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiBhIMOpY3JpdMKgOgo+IEhpIGd1eXMsCj4gSSB3YXMg
d29uZGVyaW5nIGlmIGFueW9uZSBoYWQgc3VnZ2VzdGlvbnMgb24gd2hhdCBkaXN0cm8gb2YgTGlu
dXggSSBzaG91bGQgbG9hZCBvbnRvIGEgbmV3IGNvbXB1dGVyPyBJIHdpbGwgYmUgdXNpbmcgdGhl
IGNvbXB1dGVyIGZvciBtYWlubHkgc2Nob29sIHB1cnBvc2VzIHRvIGxlYXJuIHRoZSBPUy4KPiBB
bnkgaGVscCB3b3VsZCBiZSBncmVhdGx5IGFwcHJlY2lhdGVkLgo+IFRoYW5rcywKPiAKPiBBc2hs
ZXkKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpCbGlu
dXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpodHRwczovL2xpc3Rt
YW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0

