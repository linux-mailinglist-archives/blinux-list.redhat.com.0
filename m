Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id ECAB259B253
	for <lists+blinux-list@lfdr.de>; Sun, 21 Aug 2022 08:38:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1661063890;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=PVBWEqsawqRJMwBYIgAzZf5VuNr725ch34TpzIGEZow=;
	b=GFOYrkwoKxO2LyXAq+JWKhzm5uEbzgkRzmG4arQjCIrEzz7GETz5jIy8NNFaHWz6PwikaL
	GB9FmgFJjX04I2yNTDq4LkMNkQdhC/cpepODzOU0MYgRzdCL/y8K4S/wsehHyOAlwUGGAd
	ME1N8sZcng9RDu2c6hbLPBOOncL13JI=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-250-bRZscP8hM3S47T1ZQRuibQ-1; Sun, 21 Aug 2022 02:38:07 -0400
X-MC-Unique: bRZscP8hM3S47T1ZQRuibQ-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com [10.11.54.5])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 2313B80029D;
	Sun, 21 Aug 2022 06:38:06 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id B3C68945D0;
	Sun, 21 Aug 2022 06:38:05 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 8D6C31946A4B;
	Sun, 21 Aug 2022 06:38:05 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Sun, 21 Aug 2022 08:37:25 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Subject: Re: Raspberry pi 3
To: blinux-list@redhat.com
References: <mailman.2449.1661039000.10500.blinux-list@redhat.com>
 <mailman.2582.1661054713.10503.blinux-list@redhat.com>
In-Reply-To: <mailman.2582.1661054713.10503.blinux-list@redhat.com>
Message-ID: <mailman.2431.1661063885.10504.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgQXNobGV5LAoKdGhlIGVtYWlsIGFkZHJlc3MgaXMgcmFzcGJlcnJ5LXZpQGZyZWVsaXN0cy5v
cmcKClRoaXMgbGlzdCBiZWluZyBob3N0ZWQgQCBmcmVlbGlzdHMub3JnIGFzIHRoZSBTbGludCBt
YWlsaW5nIGxpc3QsIHRoZSBjb21tYW5kcwphcmUgdGhlIHNhbWUsIHNvIHRvIGtub3cgbW9yZSB5
b3UgY2FuIGVtYWlsIHRoZSByb2JvdApyYXNwYmVycnktdmktcmVxdWVzdEBmcmVlbGlzdHMub3Jn
IChub3QgcmFzcGJlcnJ5LXZpQGZyZWVsaXN0cy5vcmcpIHdpdGggYXMKc3ViamVjdCAnaGVscCcg
b3IgJ2NvbW1hbmRzJy4gVGhlIGxpc3QncyBhcmNoaXZlIGlzIEAKaHR0cHM6Ly93d3cuZnJlZWxp
c3RzLm9yZy9hcmNoaXZlL3Jhc3BiZXJyeS12aS8KClRvIGFjY2VzcyB0aGUgcGkgaW50byBzc2gg
eW91IGNhbiBqdXN0IHVzZSB0aGUgInNzaCIgY29tbWFuZCBpbiBjb25zb2xlIG1vZGUuCgpDaGVl
cnMsCkRpZGllcgoKCkxlIDIxLzA4LzIwMjIgw6AgMDQ6MDQsIExpbnV4IGZvciBibGluZCBnZW5l
cmFsIGRpc2N1c3Npb24gYSDDqWNyaXTCoDoKPiBUaGFuayB5b3UgZm9yIHRoZSBpbmZvLiBJIHN1
YnNjcmliZWQgdG8gdGhlIG1haWxpbmcgbGlzdCBob3dldmVyLCB0aGV5IGRpZCBub3QgbGlzdCBh
biBlbWFpbCBhZGRyZXNzIGZvciB0aGUgZ3JvdXAuIERvIHlvdSBoYXBwZW4gdG8ga25vdyB3aGF0
IHRoZSBsaXN0IGVtYWlsIGFkZHJlc3Nlcz8KPiAKPiBBc2hsZXkgQnJlZ2VyCj4gCj4+IE9uIEF1
ZyAyMCwgMjAyMiwgYXQgNjo0MyBQTSwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lv
biA8YmxpbnV4LWxpc3RAcmVkaGF0LmNvbT4gd3JvdGU6Cj4+Cj4+IO+7v1NsaW50IGlzIGV4Y2x1
c2l2ZWx5IGFuIHg4NiBkaXN0cm8sIHNvIG5vIHdheSB0byBydW4gaXQgZGlyZWN0bHkgb24KPj4g
dGhlIFBpLCBidXQgeW91IHNob3VsZCBiZSBhYmxlIHRvIHdyaXRlIGFueSBpbWFnZSB0byBhbiBT
RCBjYXJkIHVzaW5nCj4+IGFueSBmbGF2b3Igb2YgTGludXgsIGFuZCBhcyBsb25nIGFzIGFuIHNz
aCBzZXJ2ZXIgaXMgaW5zdGFsbGVkIGFuZAo+PiBlbmFibGVkIG9uIHRoZSBQaSwgeW91IHNob3Vs
ZCBiZSBhYmxlIHRvIGFjY2VzcyBpdCBmcm9tIGFueSBMaW51eAo+PiBzeXN0ZW0gd2l0aCBhIHNz
aCBjbGllbnQuCj4+Cj4+IFRoYXQgc2FpZCwgeW91IG1pZ2h0IHdhbnQgdG8gY2hlY2sgb3V0IHJh
c3BiZXJyeXZpLm9yZyBhbmQgdGhlCj4+IFJhc3BiZXJyeSBWSSBtYWlsaW5nIGxpc3Qgd2hpY2gg
YXJlIGRlZGljYXRlZCBzcGVjaWZpY2FsbHkgdG8gdXNpbmcKPj4gdGhlIFBpIGFzIGEgdmlzdWFs
bHkgaW1wYWlyZWQgb3IgYmxpbmQgdXNlci4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEBy
ZWRoYXQuY29tCmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxp
bnV4LWxpc3QK

