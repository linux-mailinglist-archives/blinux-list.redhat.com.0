Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id EB6245F8D6F
	for <lists+blinux-list@lfdr.de>; Sun,  9 Oct 2022 20:52:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1665341566;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=+gTey0RZDHMy+kL5XZL9pZncSPWLiLvtnwrMr8Ww1tY=;
	b=OZQuCz+Tdw5NXXQnWSPYTjmZM3pfq655zLGmDDrxtmrhfJodq9onP+KVqHIWuc/Zad6Smp
	d/3Tppg798E1j1x4XKgiK9GblSDDIg0S/iEZuNXxaGP/odiE/ogMqV/miehb58wcrGJjRu
	Q0IxF7sgFjFXpiaLEDhPtaLzapYbHfY=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-656-ugblRRfTNg-p8dJWuWUvYw-1; Sun, 09 Oct 2022 14:52:43 -0400
X-MC-Unique: ugblRRfTNg-p8dJWuWUvYw-1
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com [10.11.54.10])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 19FE529AB3FF;
	Sun,  9 Oct 2022 18:52:42 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 651EA535D32;
	Sun,  9 Oct 2022 18:52:41 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id E6D8D19465A3;
	Sun,  9 Oct 2022 18:52:40 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Sun, 9 Oct 2022 20:52:34 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.2
Subject: Re: Is there a Fedora Espeakup Package?
To: blinux-list@redhat.com
References: <mailman.6271.1665338721.6083.blinux-list@redhat.com>
In-Reply-To: <mailman.6271.1665338721.6083.blinux-list@redhat.com>
Message-ID: <mailman.6427.1665341560.6078.blinux-list@redhat.com>
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
 <mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <http://listman.redhat.com/archives/blinux-list/>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
 <mailto:blinux-list-request@redhat.com?subject=subscribe>
Reply-To: blinux-list@redhat.com
Errors-To: blinux-list-bounces@redhat.com
Sender: "Blinux-list" <blinux-list-bounces@redhat.com>
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.10
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGksCgpJIGhhZCBhIGxvb2sgdGhyb3VnaCB0aGUgRmVkb3JhIHBhY2thZ2Ugc2VhcmNoIHdlYnBh
Z2U6Cmh0dHBzOi8vcGFja2FnZXMuZmVkb3JhcHJvamVjdC5vcmcvCmFuZCBmb3VuZCBub3RoaW5n
LgpNb3Jlb3Zlciwgbm8gY29uc29sZSBzY3JlZW4gcmVhZGVyIGF0IGFsbCBpbiBGZWRvcmEuCgpE
aWRpZXIKLS0gCkRpZGllciBTcGFpZXIKCgpMZSAwOS8xMC8yMDIyIMOgIDE5OjU5LCBMaW51eCBm
b3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIGEgw6ljcml0wqA6Cj4gSGkgdGhlcmUsCj4gCj4g
SnVzdCB3b25kZXJpbmcgaG93IGNhbiBvbmUgcnVuIEVzcGVha3VwIG9uIEZlZG9yYT8gSSBhbSBv
biBGZWRvcmEgMzYsIGJ1dCBjYW4ndAo+IGZpbmQgRXNwZWFrdXAgaW4gaXRzIHJlcG9zaXRvcmll
cy4gU28gaG93IGRvIHdlIHJ1biB0aGUgU3BlYWt1cCB3aGlsZSBpbiB0aGUKPiBjb25zb2xlPyBU
cmllZCBhIHNlYXJjaCB3aXRoIHl1bSBzZWFyY2ggYW5kIGRuZiBzZWFyY2ggZm9yIGJvdGggc3Bl
YWt1cCBhbmQKPiBlc3BlYWt1cCwgYnV0IHRvIG5vIGF2YWlsLiBJIGV2ZW4gdHJpZWQgY29tcGls
aW5nIHRoZSBHaXRodWIgZXNwZWFrdXAsIGJ1dCB0aGUKPiBtZXNvbiBidWlsZCBmYWlscyB3aXRo
IG5vIGVzcGVhay1uZyBkZXBlbmRlbmN5IGZvdW5kICh5ZXQgZXNwZWFrLW5nIGlzIGluc3RhbGxl
ZCkuCj4gCj4gCj4gSXMgdGhlcmUgYW55b25lIHVzaW5nIHNwZWFrdXAgb24gRmVkb3JhIG9yIGFu
eSBvZiB0aGUgUmVkIEhhdCBkZXJpdmF0aXZlcz8KPiAKPiAKPiBUaGFua3MuCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpCbGludXgtbGlzdCBtYWlsaW5n
IGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9t
YWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cg==

