Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 173916A4D94
	for <lists+blinux-list@lfdr.de>; Mon, 27 Feb 2023 22:53:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1677534809;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=9L9rjK2Eo4q50G7JMnMH1XtmNkf/ZcSouUxYuxVHJi0=;
	b=e65gUYKfnYjetGadbpWNnYVKRgLmyHo7MGYUoq1k1zTO0G4HwTDzODnPIWJ3VnuBxPcHwN
	vZcVvRMWelbbjHmnWEdRrYloM3uLEkb/ddmauUG7IezLO+FeBbRaiHHEex+qJnx567c1tR
	eenL1x+ovtiLXi/RlfEi1JFfmhWuInc=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-121-7Rz9Oyd2NbuT2sS-UL2LEA-1; Mon, 27 Feb 2023 16:53:25 -0500
X-MC-Unique: 7Rz9Oyd2NbuT2sS-UL2LEA-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com [10.11.54.1])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 73E243C218A1;
	Mon, 27 Feb 2023 21:53:23 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id CF9F14051E4A;
	Mon, 27 Feb 2023 21:53:19 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 0D81A194658F;
	Mon, 27 Feb 2023 21:53:19 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Mon, 27 Feb 2023 16:53:14 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:110.0) Gecko/20100101
 Thunderbird/110.0
Subject: Re: speakup or fenrir on fedora
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <mailman.427.1677500614.3183649.blinux-list@redhat.com>
 <mailman.460.1677502348.3183651.blinux-list@redhat.com>
In-Reply-To: <mailman.460.1677502348.3183651.blinux-list@redhat.com>
Message-ID: <mailman.556.1677534798.3183645.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

SXMgdGhpcyBhIHN1ZG8gY29tbWFibmQ/wqAgVGhhbmtzIHdpbGwgaGF2ZSB0byB0cnkgdGhpcy4K
CgpNYXR0aGV3CgpPbiAyLzI3LzIwMjMgNzo1MiBBTSwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwg
ZGlzY3Vzc2lvbiB3cm90ZToKPiBwaXAzIGluc3RhbGwgZmVucmlyc2NyZWVucmVhZGVyCj4KPgo+
Cj4gSnVkZSA8amRhc2hpZWwgYXQgcGFuaXggZG90IGNvbT4KPiAiVGhlcmUgYXJlIGZvdXIgYm94
ZXMgdG8gYmUgdXNlZCBpbiBkZWZlbnNlIG9mIGxpYmVydHk6Cj4gICBzb2FwLCBiYWxsb3QsIGp1
cnksIGFuZCBhbW1vLiBQbGVhc2UgdXNlIGluIHRoYXQgb3JkZXIuIgo+IC1FZCBIb3dkZXJzaGVs
dCAoQXV0aG9yLCAxOTQwKQo+Cj4gLgo+Cj4gT24gTW9uLCAyNyBGZWIgMjAyMywgTGludXggZm9y
IGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToKPgo+PiBNeSBhcmNoIG1hY2hpbmUgaGFz
IGZlbnJpci4KPj4gSXMgdGhlcmUgYSB3YXkgdG8gcHV0IGVpdGhlciBmZW5yaXJzY3JlZW5yZWFk
ZXIgb3Igc3BlYWt1cCBvbiB0byBhIGZlZG9yYSBzeXN0ZW0/Cj4+IFRoZSBzcGVha3VwIHBhZ2Ug
bWlnaHQgbmVlZCB1cGRhdGluZy4KPj4gV2hlbiBJIHVzZSB0aGUgc2hlbGwsIGZvciBub3cgSSB1
c2UgdCBkIHMgci4KPj4KPj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KPj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+IEJsaW51eC1saXN0QHJlZGhh
dC5jb20KPj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGlu
dXgtbGlzdAo+Pgo+Pgo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNv
bQo+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxp
c3QKPgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQmxp
bnV4LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51eC1saXN0QHJlZGhhdC5jb20KaHR0cHM6Ly9saXN0
bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo=

