Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id B20C93D2EE1
	for <lists+blinux-list@lfdr.de>; Thu, 22 Jul 2021 23:15:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1626988507;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=MAZO102S+ATM0B8g9cHDBHrMqLuj4QLN6qr3A36nYHg=;
	b=SBZSaqMG8+LknDNlW3JaoAmVf7RF1xp3xZSCii20FhTt5zMe2pH6KeVbafn9oGYdE5UsEH
	2ga9Dh4gM0jbNgmzUxjInorFbYAaxebV2opvLsYGjbIKp6ZFXgW2u32iZAHHXqKsrCvKgX
	owKl1/f6BK8Bxaq0HtsXyI0wzkVYur8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-230-538T1gehPHCejZhXWW_2RA-1; Thu, 22 Jul 2021 17:15:05 -0400
X-MC-Unique: 538T1gehPHCejZhXWW_2RA-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 3FB2D80430A;
	Thu, 22 Jul 2021 21:15:02 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 1B08161096;
	Thu, 22 Jul 2021 21:15:02 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 8717A4BB7C;
	Thu, 22 Jul 2021 21:15:01 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 16MLEwkk020600 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 22 Jul 2021 17:14:58 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 92E8E209D035; Thu, 22 Jul 2021 21:14:58 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 8F2B2209D039
	for <blinux-list@redhat.com>; Thu, 22 Jul 2021 21:14:56 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 014FB802A9F
	for <blinux-list@redhat.com>; Thu, 22 Jul 2021 21:14:56 +0000 (UTC)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79]) by
	relay.mimecast.com with ESMTP id us-mta-592-1RIpA9AuOESFmSLXa-X6Ew-1;
	Thu, 22 Jul 2021 17:14:53 -0400
X-MC-Unique: 1RIpA9AuOESFmSLXa-X6Ew-1
Received: from ici.slint.fr (sfa89-1-78-208-157-71.fbx.proxad.net
	[78.208.157.71])
	by darkstar.slint.fr (Postfix) with ESMTPSA id 0F979A4060
	for <blinux-list@redhat.com>; Thu, 22 Jul 2021 21:14:51 +0200 (CEST)
Subject: Re: Adjusting lightdm screenreader volume (How do I...)
To: blinux-list@redhat.com
References: <b03aafa4-daf7-d333-f8dc-80aa029225c9@gmail.com>
	<210fc29d-9144-c009-3557-fd2304aa47cd@gmail.com>
	<6a20948b-bceb-bc96-c787-cf3f2c27c2af@gmail.com>
	<84a2815d-0461-28bc-8f52-6d0f24e34d60@gmail.com>
	<70e8f011-eec9-ba77-f7e4-33bf3d610e33@gmail.com>
Message-ID: <9daa2f93-26e3-675f-b5c6-ed608dc63672@slint.fr>
Date: Thu, 22 Jul 2021 23:14:50 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
	Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <70e8f011-eec9-ba77-f7e4-33bf3d610e33@gmail.com>
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
	lists01.pubmisc.prod.ext.phx2.redhat.com id 16MLEwkk020600
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

SW4gYWRkaXRpb24gdG8gd2hhdCBEYXZlIHNhaWQ6Cmh0dHBzOi8vaGVscC5nbm9tZS5vcmcvdXNl
cnMvb3JjYS9zdGFibGUvaG93dG9fdGhlX29yY2FfbW9kaWZpZXIuaHRtbAoKTWF5YmUgSSBzaG91
bGQgbWVudGlvbiB1c2FnZSBvZiBhIE51bUxvY2sga2V5IGFzIGFuIGFsdGVybmF0aXZlLCBvcgpq
dXN0IGxpbmsgcHJvdmlkZSB0aGlzIGxpbmsgaW4gdGhlIFNsYW50IEhhbmRib29rLi4uCgpEaWRp
ZXIKCkxlIDIyLzA3LzIwMjEgw6AgMjE6MDYsIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1
c3Npb24gYSDDqWNyaXTCoDoKPiBJIGhhdmUgYSBsYXB0b3AgYW5kIHVzZSB0aGF0IGxheW91dCwg
aW4gd2hpY2ggY2Fwcy1sb2NrIGlzIHRoZSAnb3JjYScgCj4ga2V5LsKgIE9uIGluaXRpYWwgc2V0
dXAsIEkgdXNlCj4gCj4gIm9yY2EgLS1zZXR1cCIsICh3aXRob3V0IHRoZSBxdW90ZXMpIGZyb20g
dGhlICdydW4nIGRpYWxvZ3VlLiBUaGlzIGlzIAo+IHRoZSBjb21tYW5kIGxpbmUgdGhhdCB3aWxs
IGxhdW5jaCB0aGUgcHJlZmVyZW5jZXMgZ3VpLiBTaW5jZSB5b3UgZG9uJ3QgCj4gaGF2ZSBhbiBp
bnNlcnQga2V5LCB5b3UgbWF5IHByZWZlciB0aGUgbGFwdG9wIGxheW91dC4KPiAKPiBIVEgsCj4g
Cj4gRGF2ZcKgIEguCj4gCj4gCj4gT24gNy8yMi8yMSAyOjUzIFBNLCBMaW51eCBmb3IgYmxpbmQg
Z2VuZXJhbCBkaXNjdXNzaW9uIHdyb3RlOgo+PiBrZXlib2FyZCBkb2VzIG5vdCBoYXZlIGFuIElu
c2VydCBrZXksIHRoYXQgaXMgd2h5IEkgZG9uJ3Qgc2ltcGx5IG9wZW4gCj4+IHRoZSBPcmNhIHBy
ZWZlcmVuY2VzLiAKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpodHRw
czovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0

