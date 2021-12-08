Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F6C046DEBD
	for <lists+blinux-list@lfdr.de>; Wed,  8 Dec 2021 23:56:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1639004214;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=i91Kj1FXGfKWSSMyR6OJKvRUBEHbpYeV5l58L4h4Gxk=;
	b=ZdKGHRQrkjTUcI4et3nzKVDL76YHV+UvzpLjec6cVMXRxmi4pZF2p4gDzn+40JyFhXPscj
	4gDQcN97uYCqHhGImXXrkMlg7Z4F1sjx2BFeSgGeusBvHEw/70dlbArzs4WzKQh4hsgWfz
	bqwW7BpOvnUajyiD3RTXqGPixNkagsw=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-146-cpw8etZ2NZC3YwMas2YKRQ-1; Wed, 08 Dec 2021 17:56:53 -0500
X-MC-Unique: cpw8etZ2NZC3YwMas2YKRQ-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 9BCD81853028;
	Wed,  8 Dec 2021 22:56:48 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id CF02F18369;
	Wed,  8 Dec 2021 22:56:47 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 2AD3A1809CB8;
	Wed,  8 Dec 2021 22:56:46 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com
	[10.11.54.7])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1B8MufeD008253 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 8 Dec 2021 17:56:41 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 66A2C1400E75; Wed,  8 Dec 2021 22:56:41 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 62AE11410F35
	for <blinux-list@redhat.com>; Wed,  8 Dec 2021 22:56:41 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 4A23885A5B5
	for <blinux-list@redhat.com>; Wed,  8 Dec 2021 22:56:41 +0000 (UTC)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79]) by
	relay.mimecast.com with ESMTP id us-mta-270-VkUa9rkFMLqvHC550Ep6gw-1;
	Wed, 08 Dec 2021 17:56:39 -0500
X-MC-Unique: VkUa9rkFMLqvHC550Ep6gw-1
Received: from [192.168.1.38] (men75-h08-176-172-247-100.dsl.sta.abo.bbox.fr
	[176.172.247.100])
	by darkstar.slint.fr (Postfix) with ESMTPSA id 896FDA39C3
	for <blinux-list@redhat.com>; Wed,  8 Dec 2021 22:56:36 +0100 (CET)
Message-ID: <8295a943-5f8e-b9c7-137c-2f7ea9962516@slint.fr>
Date: Thu, 9 Dec 2021 00:56:37 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.3.1
Subject: Re: screen not in text mode on a braille display, how can I put it
	back in text mode?
To: blinux-list@redhat.com
References: <08486966-a674-edf1-c39d-759eb107cd7c@gmail.com>
In-Reply-To: <08486966-a674-edf1-c39d-759eb107cd7c@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.7
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 1B8MufeD008253
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

SGkgSWJyYWhpbSwKCkkgZG9uJ3QgaGF2ZSBhIGRpcmVjdCBhbnN3ZXIgYnV0IGEgd29ya2Fyb3Vu
ZCBjb3VsZCBiZSwgYWZ0ZXIgaGF2aW5nIAp0dXJuZWQgb24KdGhlIGJyYWlsbGUgZGlzcGxheSwg
dG8gdHlwZSAib3JjYSAtciIgdG8gcmVzdGFydCBpdCBpbnN0ZWFkIG9mIHJlYm9vdGluZy4KClBs
ZWFzZSBsZXQgdXMga25vdyBob3cgdGhhdCBnb2VzLgoKQ2hlZXJzLAoKRGlkaWVyCgpMZSAwOC8x
Mi8yMDIxIMOgIDIzOjM3LCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIGEgw6lj
cml0wqA6Cj4gSGkgRnJpZW5kcywKPiAKPiBJIGRvIG5vdCBrbm93IGhvdyBtYW55IG9mIHlvdSB1
c2UgYSBicmFpbGxlIGRpc3BsYXkgd2l0aCBsaW51eCwgYnV0IEkgCj4gbGlrZSBicmFpbGxlLiBJ
IGFtIHVzaW5nIG15IFZhcmlvVWx0cmEgNDAgYXMgbXkgYnJhaWxsZSBkaXNwbGF5IHdpdGggbXkg
Cj4gbGludXguIEkgaG9wZSBpZiB0aGVyZSBhcmUgYnJhaWxsZSB1c2VycyBoZXJlIGNhbiBoZWxw
IG1lIHNvbHZlIHRoaXMgCj4gcHV6emxlLgo+IAo+IAo+IEkgbm90aWNlZCB0aGF0IGlmIEkgYm9v
dCB1cCBteSBTbGludCB3aXRoIHRoZSBicmFpbGxlIGRpc3BsYXkgdHVybmVkIG9uIAo+IGFuZCBj
b25uZWN0ZWQgaXQgd29ya3MgYmVhdXRpZnVsbHkgd2VsbCB3aXRoIG15IHNjcmVlbiByZWFkZXIu
IEhvd2V2ZXIsIAo+IElmIEkgYm9vdCBteSBtYWNoaW5lIHdpdGggdGhlIGJyYWlsbGUgZGlzcGxh
eSBpcyB0dXJuZWQgb2ZmIG9yIAo+IGRpc2Nvbm5lY3RlZCwgd2hlbiBJIGNvbm5lY3QgaXQgb3Ig
dHVybiBpdCBvbiwgSSBzZWUgdGhlIGJybHR0eSA2LjQgCj4gY29tZXMgdXAgb24gdGhlIGRpc3Bs
YXksIGJ1dCBhZnRlciB0aGF0IEkgY2FuIG9ubHkgcmVhZCBvbiB0aGUgZGlzcGxheSAKPiBzY3Jl
ZW4gbm90IGluIHRleHQgbW9kZS4gRXZlbiBpZiBJIGtpbGwgb3JjYSB3aXRoIHRoZSBraWxsYWxs
IGNvbW1hbmQgCj4gYW5kIHJlc3RhcnQgb3JjYSwgdGhlIEJyYWlsbGUgZGlzcGxheSBvbmx5IHNo
b3dzIHNjcmVlbiBub3QgaW4gdGV4dCAKPiBtb2RlLsKgIElmIEkgd2FudCB0byB1c2UgYnJhaWxs
ZSBJIGFtIGxlZnQgd2l0aCBubyBvcHRpb24gYnV0IHRvIHJlYm9vdCAKPiB0aGUgbWFjaGluZSB3
aXRoIHRoZSBicmFpbGxlIGRpc3BsYXkgaXMgdHVybmVkIG9uIGFuZCBjb25uZWN0ZWQgdG8gbXkg
Cj4gbGFwdG9wLgo+IAo+IElzIHRoZXJlIGEgd2F5IG9mIGJlaW5nIGFibGUgdG8gYWN0aXZhdGUg
YnJhaWxsZSBldmVuIGlmIEkgZm9yZ2V0IHRvIAo+IHR1cm4gdGhlIGRpc3BsYXkgb24gYW5kIGNv
bm5lY3QgaXQgdG8gbXkgbGFwdG9wIGFmdGVyIHRoZSBib290dXA/Cj4gCj4gQ2hlZXJzLAo+IAo+
IElicmFoaW0KCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpodHRwczov
L2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0

