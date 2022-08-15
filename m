Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 24607593E9B
	for <lists+blinux-list@lfdr.de>; Mon, 15 Aug 2022 23:04:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1660597486;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=zx8bjSdKZ4OurdjbOz4SK49uM/mFcN1HJk0+VXRXIHE=;
	b=b3WjwNfcsQHjvy01AcrOP2WeCQoHvtvi5GqvTJh5R2ZxNMZ8zl1hTqePDWuVWGFEdmVHqZ
	gUItbA2Kpgy8S1F/Z5XLXg6J9gxWKMErqUdzWsdC04JM6bUFYwngkJD4oR8nGJo3om90/j
	osMgNRCddY/9SRRsl6T5Ps00agjp1Zw=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-314-d2X-WP_JMdmk3wk-1GtFAQ-1; Mon, 15 Aug 2022 17:04:43 -0400
X-MC-Unique: d2X-WP_JMdmk3wk-1GtFAQ-1
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com [10.11.54.10])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id A55D2185A79C;
	Mon, 15 Aug 2022 21:04:41 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 11430492C3B;
	Mon, 15 Aug 2022 21:04:38 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 414021940353;
	Mon, 15 Aug 2022 21:04:37 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Mon, 15 Aug 2022 17:04:30 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: Need help with a Youtube terminal app
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <mailman.693.1660588007.10505.blinux-list@redhat.com>
 <mailman.714.1660588859.10499.blinux-list@redhat.com>
In-Reply-To: <mailman.714.1660588859.10499.blinux-list@redhat.com>
Message-ID: <mailman.724.1660597476.10502.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.10
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

VGhhbmtzLCBidXQgeW91dHViZSB2aWV3ZXIgc2VlbXMgdG9vIGNvbXBsaWNhdGVkLgoKVGhlIGlu
c3RydWN0aW9ucyBzYXlzIEkgbmVlZCBhIEdvb2dsZSBJRCBhbmQgYSBzZWNyZXQga2V5LgoKU28g
ScKgIGxvb2tlZCBhdCBwaXBlLXdpcmUsIGJlY2F1c2UgaXQgY2xhaW1lZCBub3QgdG8gcmVxdWly
ZSBhIGdvb2dsZSBJRCAKb3Iga2V5LgoKQnV0IGl0cyBub3QgaW4gdGhlIExpbnV4IE1pbnQgcmVw
b3NpdG9yeS4KCmFuZCBJIGdldCBhbiBlcnJvciB3aGVuIHRyeWluZyB0byBhZGQgaXQuCgoKSSdt
IGFib3V0IHRvIGdpdmUgdXAuCgpSb2IKCgpPbiA4LzE1LzIyIDE0OjQwLCBMaW51eCBmb3IgYmxp
bmQgZ2VuZXJhbCBkaXNjdXNzaW9uIHdyb3RlOgo+IEhpIFJvYjogSSB3b3VsZCBjZXJ0YWlubHkg
c3VnZ2VzdCB5b3V0dWJlLXZpZXdlciBmcm9tIFRyaXplbi4gWW91IGhhdmUgCj4gYSBjaG9pY2Ug
b2YgcGxheWluZyBvciBkb3dubG9hZGluZyB2aWRlb3MgZnJvbSBhIHJlc3VsdHMgbGlzdC4gWW91
IGNhbiAKPiBsYXVuY2ggeW91dHViZS12aWV3ZXIgLXU9dXNlcm5hbWUgbGlrZSBwYnNuZXdzaG91
ciB5b3UgY2FuIGFsc28gY3JlYXRlIAo+IGEgZmF2b3JpdGVzIGxpc3QtYW5kLW1vcmUgZWFzaWx5
IHRyYWNrIGNoYW5uZWxzIHlvdSBnbyBvZnRlbi4KPiBDaGltZQo+Cj4gX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBCbGludXgtbGlzdCBtYWlsaW5nIGxp
c3QKPiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20v
bWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+CgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxp
c3RAcmVkaGF0LmNvbQpodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZv
L2JsaW51eC1saXN0Cg==

