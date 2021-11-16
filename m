Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id E2364453C5C
	for <lists+blinux-list@lfdr.de>; Tue, 16 Nov 2021 23:44:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1637102692;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=inOBuG/f91P6fxFjpAV3INCH18tZcnXAYoswgDxH7Uo=;
	b=eKVmdjuvAT8ajNMseSuXoCKmveRQBKYi6LGsMiPLNvzX3BId23r5phvXXoqIcohWyVjN7b
	SXNNFGyqT0Cj2lXapozMqEMBTT+OJfnPOBXqe9tNF6KXJYTagZa4/jKT5QzlhStQFMEUIC
	k0q2WXuy7HOuYflvbrrZke4G5tnnkI0=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-332-vP52-DPeOeaWhNApevdYvQ-1; Tue, 16 Nov 2021 17:44:48 -0500
X-MC-Unique: vP52-DPeOeaWhNApevdYvQ-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id AE0AD10151E0;
	Tue, 16 Nov 2021 22:44:44 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 99CA45BAE6;
	Tue, 16 Nov 2021 22:44:44 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 992374A703;
	Tue, 16 Nov 2021 22:44:42 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
	[10.11.54.2])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1AGMcnj0017978 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 16 Nov 2021 17:38:49 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 52702404727A; Tue, 16 Nov 2021 22:38:49 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 4ECE84047272
	for <blinux-list@redhat.com>; Tue, 16 Nov 2021 22:38:49 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 35B6D811E7A
	for <blinux-list@redhat.com>; Tue, 16 Nov 2021 22:38:49 +0000 (UTC)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79]) by
	relay.mimecast.com with ESMTP id us-mta-23-XQpl3DO7OeSUcyw4mHt3Xw-1;
	Tue, 16 Nov 2021 17:38:47 -0500
X-MC-Unique: XQpl3DO7OeSUcyw4mHt3Xw-1
Received: from [192.168.1.25] (men75-h08-176-172-247-100.dsl.sta.abo.bbox.fr
	[176.172.247.100])
	by darkstar.slint.fr (Postfix) with ESMTPSA id C5805A37FC
	for <blinux-list@redhat.com>; Tue, 16 Nov 2021 21:38:08 +0100 (CET)
Message-ID: <c55df57b-6f86-8613-88a8-d55afc83f15c@slint.fr>
Date: Wed, 17 Nov 2021 00:38:43 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.3.0
Subject: Re: Correcting an sd-card?
To: blinux-list@redhat.com
References: <c28c932c-ef31-339c-ab9f-b875fab8d259@hubert-humphrey.com>
In-Reply-To: <c28c932c-ef31-339c-ab9f-b875fab8d259@hubert-humphrey.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.2
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 1AGMcnj0017978
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

SGkgQ2hpbWUsCgpZb3UgbmVlZCB0byB1c2UgYSBjb21tYW5kIGFkYXB0ZWQgdG8gdGhlIGZpbGUg
c3lzdGVtLgoKV2hpY2ggaXMgaXQ/IHRoaXMgY29tbWFuZApsc2JsayAtbG8gZnN0eXBlIC9kZXYv
c2RnMQpzaG91bGQgZ2l2ZSB5b3UgdGhlIGFuc3dlci4KSWYgZm9yIGluc3RhbmNlIGl0IGlzOiB2
ZmF0CnRoaXMgY29tbWFuZCBzaG91bGQgYmU6IGZzY2sudmZhdAoKQnV0IGlmIHlvdSBuZWVkIHRv
IHJ1biBpdCBhcyByb290IChvciB1c2luZyBzdWRvKS4KClRvIGtub3cgbW9yZSB0eXBlOgptYW4g
ZnNjay52ZmF0CgpEaWRpZXIKLS0KRGlkaWVyIFNwYWllcgpTbGludCBtYWludGFpbmVyCgoKTGUg
MTYvMTEvMjAyMSDDoCAyMzowMiwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiBh
IMOpY3JpdMKgOgo+IEhpIEFsbDogU29tZSBvZiB5b3UgbWF5IGVuam95IHR5cGVzIG9mIEJvb2tQ
b3J0IHJlY29yZGVycywgd2hpY2ggbGlrZSAKPiBvdGhlcnMgcmVjb3JkIG9uIGFuIHNkLWNhcmQu
IEkgdXNlIG1pbmUgZm9yIHJlY29yZGluZyBuZXdzLXByb2dyYW1taW5nIAo+IGZyb20gbWFueSBO
ZXR3b3Jrcy4gU28gb24gdGhlIGNhcmQsIHRoZXJlIGFyZSBhcm91bmQgMTkgY2F0YWdvcmllcyAK
PiBhbHBoYWJldGljbHkgYXJyYW5nZWQgYnkgY2hhbm5lbC4gQmVnaW5uaW5nIGxhc3Qgd2VlayBJ
IHdvdWxkIGhlYXIgYW4gCj4gZXJyb3Igd2hlbiBoaXR0aW5nIGFuIGl0ZW0gd2hpY2ggaXQgY2Fu
bm90IGFjY2Vzcywgc29tZXRoaW5nIGxpa2UgbWludXMgCj4gMnRob3VzYW5kMWh1bmRyZWQ3LiBB
dCBmaXJzdCBpdGVtcyB3b3VsZCBzdGlsbCBwbGF5IGluIG15IExpbnV4IG1hY2hpbmUsIAo+IGJ1
dCBub3cgbW9yZSBpdGVtcyBhcmUgbm90IHBsYXlpbmcuIFNvLCBtb3N0IGZvbGtzIG9uIHRoZSBC
b29rUG9ydCBsaXN0IAo+IGFyZSBub3QgZmFtaWxsaWFyIHdpdGggTGludXgsIGJ1dCBzYXkgSSB3
b3VsZCB1bi1tb3VudCB0aGUgZHJpdmUtYW5kLXJ1biAKPiBzb21lIHNvcnQgb2YgZml4IGRpc2su
IFdlbGwsIGluIGxvb2tpbmcgaXQgdXAsIExpbnV4IHN1cHBvc2VkbHkgaGFzIAo+ICJmc2NrIiBi
dXQgYW4gb25seSBpdGVtIEkgY2FuIGZpbmQgaW4gYXB0aXR1ZGUgaXMgImZzY2stYmFja2VuZCIg
U28sIAo+IG9uY2UgYWdhaW4gSSBsb2FkZWQgdGhlIGNhcmQgdGhyb3VnaCBhbiBhZGFwdGVyLCBz
YXlzLAo+IC9kZXYvc2RnMcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oCAyNTBHwqDCoCAzMEfCoCAyMjBHwqAgMTIlIC9tZWRpYS91c2IwCj4gU28sIGNhbiBzb21lMSBw
bGVhc2UgaW5mb3JtIG9mIHRoZSBiZXN0IHdheSBJIGNhbiBmaXggdGhpcyBjYXJkPyBUaGlzIGlz
IAo+IERlYmlhbiBTSUQuIFRoYW5rcyBzbyBtdWNoIGluIGFkdmFuY2UKPiBDaGltZQoKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1h
aWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQu
Y29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3Q=

