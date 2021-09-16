Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 3F3FB40EDE3
	for <lists+blinux-list@lfdr.de>; Fri, 17 Sep 2021 01:39:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1631835583;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=zqVXATbXrwFzphFRrdxNSwOata/uaCMytMQEAx+jchY=;
	b=RxFPv1RC4vkY7OkPfIlORo7M6oqQxy9VewMUXQLmMItp2dru3tAJ766pV/rlp9jeCZ/ai0
	uqLaIww+VsGt8dUuuSqLbgns0XIJNWXMaMwFzy7rG/ycZepudJEZjzWf2tF3JT15/9PyqV
	LNmqWsEqfuInPHixD9nJuvpOFMtcPVw=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-566-wGJ9z8LdM3yE95eCvQircA-1; Thu, 16 Sep 2021 19:39:41 -0400
X-MC-Unique: wGJ9z8LdM3yE95eCvQircA-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id C9FDB1006AA9;
	Thu, 16 Sep 2021 23:39:36 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 136965C1C5;
	Thu, 16 Sep 2021 23:39:31 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 2913E4E58E;
	Thu, 16 Sep 2021 23:39:23 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 18GNdEh6010582 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 16 Sep 2021 19:39:15 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id CDB9310500CB; Thu, 16 Sep 2021 23:39:14 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C972B105538F
	for <blinux-list@redhat.com>; Thu, 16 Sep 2021 23:39:11 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 8FBED185A794
	for <blinux-list@redhat.com>; Thu, 16 Sep 2021 23:39:11 +0000 (UTC)
Received: from mail-40136.protonmail.ch (mail-40136.protonmail.ch
	[185.70.40.136]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-556-Q4-uwig1OMuVZNQeTwtW2w-1; Thu, 16 Sep 2021 19:39:09 -0400
X-MC-Unique: Q4-uwig1OMuVZNQeTwtW2w-1
Date: Thu, 16 Sep 2021 23:39:06 +0000
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: best gui vm managers
Message-ID: <59a16636-0110-ad26-74f4-f57ed9428b9e@protonmail.com>
In-Reply-To: <20210912.162536.058.3@[192.168.1.100]>
References: <20210912.162536.058.3@[192.168.1.100]>
MIME-Version: 1.0
X-Spam-Status: No, score=-1.2 required=10.0 tests=ALL_TRUSTED,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM shortcircuit=no
	autolearn=disabled version=3.4.4
X-Spam-Checker-Version: SpamAssassin 3.4.4 (2020-01-24) on
	mailout.protonmail.ch
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 18GNdEh6010582
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SSdtIHVzaW5nIFZpcnR1YWxCb3guIEkgaGF2ZSBubyBleHBlcmllbmNlcyB3aXRoIG90aGVyIHNv
bHV0aW9ucywgc28gSQpjYW4ndCBjb21wYXJlLCBidXQgdGhpc29uZSB3b3JrcyBmb3IgbWUgcXVp
dGUgd2VsbC4KClZCIGlzIG9wZW4tc291cmNlLCB0aGUgaW50ZXJmYWNlIGlzIGEgYml0IG1lc3N5
IGF0IHBsYWNlcywgYnV0IGl0J3MKbm90aGluZyBPQ1JEZXNrdG9wIGNvdWxkbid0IHJlc29sdmUg
YXMgdGhlIGxhc3QgcmVzb3J0LgoKCkJlc3QgcmVnYXJkcwoKClJhc3Rpc2xhdgoKCkTFiGEgMTIu
IDkuIDIwMjEgbyAxODoyNSBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIG5hcMOt
c2FsKGEpOgo+IEknbSBsb29raW5nIGF0IHRocm93aW5nIGFub3RoZXIgMTYgZ2IgcmFtIGludG8g
bXkgbGludXggYm94LCBhbmQgdGhlbiBzd2l0Y2hpbmcgb3ZlciB0byBpdCBmdWxsdGltZSwgcnVu
bmluZyBhIHdpbiA3IHZtIGZvciB0aG9zZSB0aW1lcyBJIG5lZWQgd2luZG93cyBmb3Igc29tZXRo
aW5nLiBXaGF0J3MgdGhlIG1vc3QgYWNjZXNzaWJsZSB2bSBtYW5hZ2VyPyBWTVdhcmUgcGxheWVy
PyBWaXJ0dWFsYm94PyBJJ20gb24gYXJjaC4KPiBUaGFua3MuCj4KPgo+IF9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gQmxpbnV4LWxpc3QgbWFpbGluZyBs
aXN0Cj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29t
L21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPgoKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgt
bGlzdEByZWRoYXQuY29tCmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGlu
Zm8vYmxpbnV4LWxpc3Q=

