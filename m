Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id AE067326F79
	for <lists+blinux-list@lfdr.de>; Sat, 27 Feb 2021 23:51:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1614466288;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=2CIOoQZbeLiTh3wmyBbuw13SB9T+am1FtwLJp7Qo/pw=;
	b=S47kEc2FI1f0U0lWyUB61oPtnZvL5g9sOlWXSw6FQ4utlMl5BBr9VX6ZM2ANURODXmfXMJ
	5V1pn8EU8p2S22gpqCM57/RJUQ6rjUslN5Jx9as/sAYbJy7OhyjGda/ipb2P3I/ZkzNjiC
	pNgzJxf0eWzkjDq7qyiqNSiQ9DH9tFQ=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-575-ANZkpWSDMWSqBWUywruH-A-1; Sat, 27 Feb 2021 17:51:25 -0500
X-MC-Unique: ANZkpWSDMWSqBWUywruH-A-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id AFB8610066F0;
	Sat, 27 Feb 2021 22:51:21 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 91BA01A44A;
	Sat, 27 Feb 2021 22:51:21 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 6CE1118095CB;
	Sat, 27 Feb 2021 22:51:21 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 11RMpJmN019730 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 27 Feb 2021 17:51:19 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 19BB3112D170; Sat, 27 Feb 2021 22:51:19 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 15264112D165
	for <blinux-list@redhat.com>; Sat, 27 Feb 2021 22:51:15 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 6B369185A7BC
	for <blinux-list@redhat.com>; Sat, 27 Feb 2021 22:51:15 +0000 (UTC)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79]) by
	relay.mimecast.com with ESMTP id us-mta-202-24Mcq78bO-WZghcgqwTn4Q-1;
	Sat, 27 Feb 2021 17:51:13 -0500
X-MC-Unique: 24Mcq78bO-WZghcgqwTn4Q-1
Received: from darkstar.example.slint
	(men75-h08-176-172-247-100.dsl.sta.abo.bbox.fr [176.172.247.100])
	by darkstar.slint.fr (Postfix) with ESMTPSA id 6FBC7BE49B
	for <blinux-list@redhat.com>; Sat, 27 Feb 2021 22:50:00 +0100 (CET)
Subject: Re: Running Android Voices in Linux?
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <161402110590.7.5238133071708249059.4109089@simplelogin.co>
	<161444854854.8.6967526014575932372.4265918@slmail.me>
	<e522fc17-0959-e498-347d-d0e55e57d529@gmail.com>
	<e0a3d579-6450-a6be-deaf-f1ea92cc8e82@hubert-humphrey.com>
	<5f2b4e21-b876-167a-1553-d58f45f0b460@gmail.com>
	<88ac7718-75d3-17b8-7bcd-73f33a71a80@hubert-humphrey.com>
Message-ID: <1b3ff7d3-e481-c6b2-1093-3ccea5d68905@slint.fr>
Date: Sat, 27 Feb 2021 23:50:14 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
	Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <88ac7718-75d3-17b8-7bcd-73f33a71a80@hubert-humphrey.com>
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
	lists01.pubmisc.prod.ext.phx2.redhat.com id 11RMpJmN019730
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

b3Igd2hhdCBpdCdzIHdvcmssIGhlcmUgaXMgdGhlIFNMS0JVSUxEIEkgdXNlZCB0byBidWlsZCB0
aGUKY3VycmVudCBTbGludCBwYWNrYWdlIG9yIFJIVm9pY2UuCmh0dHBzOi8vc2xpbnQuZnIvQ2hp
bWUvU0xLQlVJTEQKQmVzdCwKRGlkaWVyCgpMZSAyNy8wMi8yMDIxIMOgIDIzOjMwLCBMaW51eCBm
b3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIGEgw6ljcml0wqA6Cj4gVGhhbmsgeW91IEt5bGUt
YW5kLURpZGllcjogQWZ0ZXIgaW5zdGFsbGluZyBzb21lIHBvcnRhdWRpbyBpdGVtcywgaWYgSSAK
PiBydW5zIGFueSBjb21iaW5hdGlvbiBvZgo+IHNjb25zIGluc3RhbGwKPiBvciBvcHRpb25zIGlu
IHRoZSBoZWxwIGZpbGUsIGl0IHNheXM6Cj4gc2NvbnM6ICoqKiBObyBTQ29uc3RydWN0IGZpbGUg
Zm91bmQuCj4gRmlsZSAiL3Vzci9saWIvcHl0aG9uMy9kaXN0LXBhY2thZ2VzL1NDb25zL1Njcmlw
dC9NYWluLnB5IiwgbGluZSA5NDcsIGluIAo+IF9tYWluCj4gQmFjayBhZ2FpbiBsaXZlLCB0aGF0
IGxpbmUgOTQ3IHNheXMKPiByYWlzZSBTQ29ucy5FcnJvcnMuVXNlckVycm9yKCJObyBTQ29uc3Ry
dWN0IGZpbGUgZm91bmQuIikKPiBUaGFua3Mgc28gbXVjaCBpbiBhZHZhbmNlLWFuZC10aGlzIGlz
IGNlcnRhaW5seSBhbiBlbmpveWFibGUgZXhwZXJpZW5jZS4KPiBDaGltZQoKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxpbmcg
bGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21h
aWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3Q=

