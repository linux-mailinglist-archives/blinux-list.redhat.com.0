Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E4814D69A5
	for <lists+blinux-list@lfdr.de>; Fri, 11 Mar 2022 21:46:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1647031560;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=pg4k0vwfIUvDUFvv8dyUx5g3ApKQCcO11msv28oWhRU=;
	b=B+hSWKGz6LQuAkX2IKANGarczC41kFdVrXncQqCDz7cQPJ6zsKJI0kP/8ywH0ldFSYKvYO
	fu+B5gr231Rgf45ef0JP/yj+/mVtmw58p/NjeTH095v6dhkiFotUv9B4BuQj4oQV1CKPU7
	AWtGzgSNdSZmL+pd0na2bm+cw13lrEM=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-371-144GBINuPZiDSMXlRVjj1A-1; Fri, 11 Mar 2022 15:45:57 -0500
X-MC-Unique: 144GBINuPZiDSMXlRVjj1A-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com [10.11.54.6])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 9FBA8811E75;
	Fri, 11 Mar 2022 20:45:55 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id DDA742166B2F;
	Fri, 11 Mar 2022 20:45:52 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 65BA11940341;
	Fri, 11 Mar 2022 20:45:52 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Fri, 11 Mar 2022 21:45:27 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.6.1
Subject: Re: Crypted LVM and beep tones
To: Christian Schoepplein <chris@schoeppi.net>, blinux-list@redhat.com,
 debian-accessibility@lists.debian.org
References: <552c8786-2732-a700-1b17-24c7670a7265@schoeppi.net>
In-Reply-To: <552c8786-2732-a700-1b17-24c7670a7265@schoeppi.net>
Message-ID: <mailman.1550.1647031551.111210.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgQ3Jpc3RpYW4sCgpJIGhhdmUgcmVxdWVzdGVkIHRoYXQgdG8gdXBzdHJlYW0gKGdydWItZGV2
ZWwgbWFpbGluZyBsaXN0KSwgd2l0aG91dCBzdWNjZXNzOgpodHRwczovL2xpc3RzLmdudS5vcmcv
YXJjaGl2ZS9odG1sL2dydWItZGV2ZWwvMjAyMS0wMi9tc2cwMDAwMi5odG1sCgpDaGVlcnMsCkRp
ZGllcgoKTGUgMTEvMDMvMjAyMiDDoCAxOTozOSwgQ2hyaXN0aWFuIFNjaG9lcHBsZWluIGEgw6lj
cml0wqA6Cj4gSGksCj4gCj4gSSBoYXZlIHRvIGNyeXB0IG15IGhhcmRkaXNrIGZvciBteSB3b3Jr
aW5nIGxhcHRvcC4gQWxsdGhvdWdoIGl0IGlzIG5vIGJpZwo+IHByb2JsZW0gdG8gZW50ZXIgdGhl
IGVuY3J5cHRpb24gcGFzc3dvcmQgc29tZSBzZWNvbmRzIGFmdGVyIGdydWIgSSB3b25kZXIgaWYg
YQo+IGFjdXN0aWNhbCBzaWduYWwgY291bGQgYmUgcGxheWVkIHRoYXQgdGVsbHMgbWUgdGhhdCB0
aGUgcGFzc3dvcmQgcHJvbXB0IGlzCj4gZGlzcGxheWVkLiBBbHNvIGEgc2lnbmFsIGFib3V0IHN1
Y2Nlc3NmdWxseSBlbnRlcmVkIHRoZSBwYXNzd29yZCBvciBub3Qgd291bGQgYmUKPiByZWFsbHkg
Y29vbC4KPiAKPiBEb2VzIGFueW9uZSBrbm93IGlmIGFjdXN0aWNhbCBzaWduYWxzIGFyZSBwb3Nz
aWJsZSBmb3IgdGhlIGRlc2NyaWJlZCBzaXR1YXRpb24/Cj4gQmVlcCB0b25lcyBsaWtlIGZvciBn
cnViIHdvdWxkIGJlIGFic29sdXRlbHkgZW5vdWdoLgo+IAo+IENoZWVycywKPiAKPiDCoCBTY2hv
ZXBwCj4gCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpC
bGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpodHRwczovL2xp
c3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cg==

