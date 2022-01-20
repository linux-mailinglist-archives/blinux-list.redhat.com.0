Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id E08BC49457F
	for <lists+blinux-list@lfdr.de>; Thu, 20 Jan 2022 02:21:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1642641684;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=LTyk015S2qV5V+TCpY428Yc6S3DYYo0+llfMgpJg1NE=;
	b=TtpTH5Rb8efwYeRw4OVOVcVLu2UCezDNaNbrt0gJni9VlX1kLqnH1wYVE3j9aDymzMjlJ+
	5xaxwdUzWcmhyBmyW27HfijOnjEo7w0IBlC9c3PAlTYjoEj8YXE3lAAxvEUkSRMuHO20Vz
	8M8JmcB9/Ukdigi6dbeiBZ3ebFBZXZU=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-156-TNLMjUwWN8eovCCO8g93EQ-1; Wed, 19 Jan 2022 20:21:20 -0500
X-MC-Unique: TNLMjUwWN8eovCCO8g93EQ-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 42009802926;
	Thu, 20 Jan 2022 01:21:16 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 25CA94EC7E;
	Thu, 20 Jan 2022 01:21:16 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id F209F4BB7C;
	Thu, 20 Jan 2022 01:21:14 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com
	[10.11.54.10])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 20K1LBV9015425 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 19 Jan 2022 20:21:11 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 7357E401E72; Thu, 20 Jan 2022 01:21:11 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast07.extmail.prod.ext.rdu2.redhat.com [10.11.55.23])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6FE45401474
	for <blinux-list@redhat.com>; Thu, 20 Jan 2022 01:21:11 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 56A1F3C01C22
	for <blinux-list@redhat.com>; Thu, 20 Jan 2022 01:21:11 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-132-_UO52s6eNhyo1bnUBuCQDw-1; Wed, 19 Jan 2022 20:21:09 -0500
X-MC-Unique: _UO52s6eNhyo1bnUBuCQDw-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4JfPps1XYTztHR
	for <blinux-list@redhat.com>; Wed, 19 Jan 2022 20:21:09 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4JfPps0g61zcbc; Wed, 19 Jan 2022 20:21:09 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4JfPps0Hx4zcbP
	for <blinux-list@redhat.com>; Wed, 19 Jan 2022 20:21:09 -0500 (EST)
Date: Wed, 19 Jan 2022 20:21:08 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Before I install Arch on bare metal...few questions
In-Reply-To: <4ab924de-d686-a301-1ea3-e38214aba35e@gmail.com>
Message-ID: <57ba8027-a9d5-5faf-ffba-9f6b71983b6@panix.com>
References: <4ab924de-d686-a301-1ea3-e38214aba35e@gmail.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.10
X-MIME-Autoconverted: from QUOTED-PRINTABLE to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 20K1LBV9015425
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

V2hlbiBydW5uaW5nIHRoZSBhcmNoaW5zdGFsbCBzY3JpcHQgb24gYmFyZSBtZXRhbCwgeW91IGhh
dmUgdG8gY2hvb3NlIHRoZQpkcml2ZSBvbnRvIHdoaWNoIGFyY2hsaW51eCBpcyBpbnN0YWxsZWQu
ICBUaGUgYXJjaGluc3RhbGwgc2NyaXB0IG9ubHkgdXNlcwp0aGUgZHJpdmUgeW91IGNob29zZS4g
IEJlZm9yZSB5b3UgZ2V0IHRvIHRoZSBhcmNoaW5zdGFsbCBzY3JpcHQsIG9uCmJvb3RpbmcgYXJj
aGxpbnV4IHlvdSBoaXQgZG93biBhcnJvdyBvbmNlIHRoZW4gaGl0IGVudGVyIGFuZCB5b3UgZ2V0
IHRvCmNob29zZSB5b3VyIHNvdW5kIG91dHB1dC4gIEkgaGF2ZSBubyB1c2IgaGVhZHBob25lcyBz
byB3b24ndCBhbnN3ZXIgdGhhdApxdWVzdGlvbiBhbnkgZnVydGhlci4KCgpPbiBUaHUsIDIwIEph
biAyMDIyLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIHdyb3RlOgoKPiBTbywg
YXMgaXQgc2F5cy4gSSB2ZXJ5IG11Y2ggbGlrZSBteSBBcmNoIFZNLgo+Cj4gQW5kIEkndmUgZG9u
ZSBhIHRvbiBvZiBpbnN0YWxscyBvbiBhIHFlbXUgVk0sIHRob3VnaCBJJ20gbm93IHRoaW5raW5n
IG9mCj4gc3dpdGNoaW5nIHRvIGJhcmUgbWV0YWxzbyBJIGNhbiB0d2VhayBteSBzeXN0ZW0gaG93
IEkgd2FudC4KPgo+Cj4gU28uLi4uYmVmb3JlIEkgZG8gdGhpcy4KPgo+IDEuIEknbSB3b3JyaWVk
IHNvbWV0aGluZydsbCBnbyB3cm9uZyBpbiB0aGUgYXJjaGluc3RhbGwgc2NyaXB0LCBvciB0aGUg
bWFudWFsCj4gaW5zdGFsbCBhbmQgbnVrZSBteSAoY3VycmVudGx5IHdvcmtpbmcpIHN5c3RlbQo+
Cj4KPiAyLiBXaWxsIG15IFVTQiBoZWFkcGhvbmVzIGJlIGNvbm5lY3RlZCBvdXQgb2YgdGhlIGJv
eCBvciBub3Q/IE9uIGEgVk0gdGhleSBhcmUKPiBidXQgdGhhdCBkb2Vzbid0IG1lYW4gYSB0aGlu
ZyB3aGVuIGl0IGNvbWVzIHRvIGJhcmUgbWV0YWwKPgo+Cj4gMy4gSSBoYXZlIHR3byBtYWNoaW5l
cywgb25lJ3MgL2Rldi9zZGEsIHdoaWNoIEknbSBhc3N1bWluZyB3aWxsIGxpa2VseSBpbnN0YWxs
Cj4gZmluZSwgaG9wZWZ1bGx5Cj4KPgo+IFRIZSBvdGhlciwgYSBsYXB0b3AsIGlzIC9kZXYvbnZt
ZSwgd2hpY2ggaXMgd2hhdCBJJ20gd29ycmllZCBhYm91dC4gQW55dGhpbmcKPiBzcGVjaWFsIEkg
bmVlZCBmb3IgQXJjaCB0byBpbnN0YWxsIG9uIGFuIE5WTUU/Cj4KPgo+IDQuIENhbiBJIHdpdGgg
dHdvIEhERCwgL2Rldi9zZGEgKG15IGN1cnJlbnQgU29sdXMgc3lzdGVtKXdvciBhbmQgL2Rldi9z
ZGIgKGEKPiAyLjdUIGRyaXZlKSwgaW5zdGFsbCBBcmNoIG9uIC9kZXYvc2RiIGFuZCBwaWNrIGFu
ZCBjaG9vc2Ugd2hpY2ggZGlzdHJvIHRvCj4gYm9vdD8gSSByZW1lbWJlcsKgIHdheSB0byBkbyBh
IGNvbnNvbGUgY29tbWFuZCB0byByZWJvb3QgYW5kIGhhdmUgR3J1YiBzZWxlY3QKPiB3aGljaCB0
byBib290IHVwLCBidXQgSSdtIG5vdCBzdXJlIGlmIHRoYXQncyBzdGlsbCBhIHRoaW5nPwo+Cj4K
PiA1LiBXYXMgdGhlcmUgZXZlciBhIGNvbnNlbnN1cyBvbiBob3cgb2Z0ZW4gdG8gZG8gYSBwYWNt
YW4gLVN5eXUgaW4gQXJjaD8KPgo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4gQmxpbnV4LWxpc3RAcmVk
aGF0LmNvbQo+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxp
bnV4LWxpc3QKPgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBz
Oi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3Q=

