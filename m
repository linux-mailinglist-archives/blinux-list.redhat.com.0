Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id A80444622E8
	for <lists+blinux-list@lfdr.de>; Mon, 29 Nov 2021 22:04:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1638219874;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=uLMOb5SAWJ4KeYGheUiiK+WqFF5Sgb68eI1Mx/LnTd8=;
	b=eC8nDJGfaDKeghMfcpi4tZ95KfFQd0NEPCWIY2l9+f/bZaJoRHcxWb8DJ1dnxM5vFuVg/o
	Q7PlXkxFqxrnZs33a9YaLQJ8otcFbFar7Fm2KwUNP5sgWA2QcIz902D2m64EM2JQBehw2V
	zdAbRstnzpaocZss1oeHHG5qdFfgLYk=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-397-qFxOsfJJM8-DMFdsOwyflw-1; Mon, 29 Nov 2021 16:04:30 -0500
X-MC-Unique: qFxOsfJJM8-DMFdsOwyflw-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A67EA3E74C;
	Mon, 29 Nov 2021 21:04:26 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 65A745D9DE;
	Mon, 29 Nov 2021 21:04:26 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 617731809C89;
	Mon, 29 Nov 2021 21:04:23 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com
	[10.11.54.10])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1ATL4IeV007489 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 29 Nov 2021 16:04:19 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id C63E1401E45; Mon, 29 Nov 2021 21:04:18 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C2E56401E22
	for <blinux-list@redhat.com>; Mon, 29 Nov 2021 21:04:18 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id AA05D85A5BE
	for <blinux-list@redhat.com>; Mon, 29 Nov 2021 21:04:18 +0000 (UTC)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79]) by
	relay.mimecast.com with ESMTP id us-mta-434-BhXeDI8OPzyvFBQCtdu_2A-1;
	Mon, 29 Nov 2021 16:04:16 -0500
X-MC-Unique: BhXeDI8OPzyvFBQCtdu_2A-1
Received: from [192.168.1.37] (men75-h08-176-172-247-100.dsl.sta.abo.bbox.fr
	[176.172.247.100])
	by darkstar.slint.fr (Postfix) with ESMTPSA id 0C0A9A4356
	for <blinux-list@redhat.com>; Mon, 29 Nov 2021 20:03:34 +0100 (CET)
Message-ID: <c4c87788-aec9-5ea4-b895-e6943dd32ab2@slint.fr>
Date: Mon, 29 Nov 2021 22:04:15 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.3.1
Subject: Re: What is the easiest and most accessible editor?
To: blinux-list@redhat.com
References: <a3ea6f04-d8a4-2ef4-35cc-8e91d7582ab8@gmail.com>
In-Reply-To: <a3ea6f04-d8a4-2ef4-35cc-8e91d7582ab8@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.10
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 1ATL4IeV007489
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

SGkgSWJyYWhpbSwKCmluIE1hdGUgSSB1c2UgZ2VhbnksIGluY2x1ZGVkIGluIFNsaW50IGFuZCBm
dWxseSBhY2Nlc3NpYmxlLgoKSXQgaGFzIGEgbG90IG9mIGZlYXR1cmVzIGJ1dCB5b3UgY2FuIHVz
IGl0IGFzIHNpbXBsZSB0ZXh0IGVkaXRvci4gWW91IApjYW4gZ2V0CnJpZCBvZiBtYW55IGFyZWFz
IHlvdSB3b24ndCBuZWVkIGluIHRoZSB3aW5kb3cgZm9yIGJhc2ljIGVkaXRpbmc6IGluIHRoZSAK
bWVudQpnbyB0byB2aWV3IGFuZCB1bi1jaGVjayB0aGUgc2hvdyAuLi4geW91IGRvIG5vdCBuZWVk
LgoKVGhlcmUgaXMgYWxzbyBwbHVtYSwgbW9yZSBiYXNpYyBidXQgZ29vZCBlbm91Z2ggZm9yIHNp
bXBsZSB0ZXh0IGVkaXRpbmcsIAphbHNvCmFjY2Vzc2libGUKCkNoZWVycywKRGlkaWVyCgpMZSAy
OS8xMS8yMDIxIMOgIDIwOjI4LCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIGEg
w6ljcml0wqA6Cj4gSGkgRnJpZW5kcywKPiAKPiBTaW5jZSB5b3UgaGF2ZSBiZWVuIGxhdGVseSBk
aXNjdXNzaW5nIGNvbmZpZ3VyYXRpb25zIGFuZCBlZGl0aW5nIHRoZW0sIAo+IGNoYW5naW5nIHRo
ZW0sIG9yIGFkZGluZyBzY3JpcHRzLCBXaGF0IGlzIHRoZSBtb3N0IGFjY2Vzc2libGUgYW5kIAo+
IGVhc2llc3QgZWRpdG9yIHRvIHVzZSBpbiBTbGludCBmb3IgZWRpdGluZyBjb25maWd1cmF0aW9u
cz8gTXkgCj4gdW5kZXJzdGFuZGluZyBpcyB0aGF0IFZpLCBOYW5vLCBhbmQgUGljbyBhbGwgY29t
ZSBwcmVpbnN0YWxsZWQuIEFyZSAKPiB0aGVyZSBvdGhlciB0ZXh0IGVkaXRvcnMgcHJlaW5zdGFs
bGVkPyBvciwgRG8geW91IHJlY29tbWVuZCBvbmUgdGhhdCBJIAo+IGNhbiBpbnN0YWxsIGlmIHRo
ZSBhYm92ZW1lbnRpb25lZCBvbmVzIGFyZSBub3QgcmVjb21tZW5kZWQ/Cj4gCj4gQ2hlZXJzLAo+
IAo+IElicmFoaW0KCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpodHRw
czovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0

