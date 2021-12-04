Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id D74BF468467
	for <lists+blinux-list@lfdr.de>; Sat,  4 Dec 2021 12:13:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1638616436;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=XX2PH6PdfUcX8ryf0kaWLdW/tRcC1YP72tdrT3y+Tz0=;
	b=NUZf46qMh6D+oOYWKafN2VrpQMQPQDYhAU9EBAg9lWAOorXABeB++nfgS6qVEWfJUkHQjv
	cMBiWHazpcuPPTZbRIJJt8XpwE0s3cxZk5ikG2N64Akg27sE6g93seI70TaqyRaPDGlpfa
	sltHj3uHwCYvYwEchJQjl5X7r4ljlRc=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-448-fmxe1w58OUGqvIXd636xSA-1; Sat, 04 Dec 2021 06:13:55 -0500
X-MC-Unique: fmxe1w58OUGqvIXd636xSA-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 751081006AA0;
	Sat,  4 Dec 2021 11:13:49 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 9AF83100EBC1;
	Sat,  4 Dec 2021 11:13:46 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id B67AC1809C87;
	Sat,  4 Dec 2021 11:13:36 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com
	[10.11.54.1])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1B4BDSk5021457 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 4 Dec 2021 06:13:28 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 0AE1D40CFD10; Sat,  4 Dec 2021 11:13:28 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 04BD040CFD0B
	for <blinux-list@redhat.com>; Sat,  4 Dec 2021 11:13:28 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id DE7FF85A5AA
	for <blinux-list@redhat.com>; Sat,  4 Dec 2021 11:13:27 +0000 (UTC)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79]) by
	relay.mimecast.com with ESMTP id us-mta-582-ZV-pD0h4N3SrMksmewpdfA-1;
	Sat, 04 Dec 2021 06:13:25 -0500
X-MC-Unique: ZV-pD0h4N3SrMksmewpdfA-1
Received: from [192.168.1.37] (men75-h08-176-172-247-100.dsl.sta.abo.bbox.fr
	[176.172.247.100])
	by darkstar.slint.fr (Postfix) with ESMTPSA id 4C807A38BB;
	Sat,  4 Dec 2021 10:12:41 +0100 (CET)
Message-ID: <dedf0e9e-7745-2a45-e19e-3f94425f5369@slint.fr>
Date: Sat, 4 Dec 2021 13:13:23 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.3.1
Subject: Re: Getting Orca not to respond in a particular window
To: blinux-list@redhat.com, slint@freelists.org
References: <60b15834-2025-b113-42dc-64e078d6772b@gmail.com>
In-Reply-To: <60b15834-2025-b113-42dc-64e078d6772b@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.1
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 1B4BDSk5021457
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

SGkgQnJhbmR0LAoKZGlkIHlvdSB0cnkgdG8ganVzdCBtdXRlIG9yY2Egd2hpbGUgaW4gUWVtdT8K
CkhlcmUgKGxhcHRvcCkgSSB3b3VsZCBqdXN0IHByZXNzIElucytzCgpUaGVuIElucytzIGFnYWlu
IHdoZW4gYmFjayB0byBTbGludC4KClJlcGxhY2UgSW5zIGJ5IHlvdXIgT3JjYSBrZXksIHdoaWNo
ZXZlciBpdCBpcy4KCkNoZWVycywKRGlkZXIKCkxlIDA0LzEyLzIwMjEgw6AgMTA6MTAsIExpbnV4
IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gYSDDqWNyaXTCoDoKPiBIaSBhbGwsCj4gCj4g
Cj4gU29ycnkgZm9yIHRoZSBjcm9zcyBwb3N0LCBidXQgSSByZWFsbHkgbmVlZCBoZWxwIGhlcmUu
Cj4gCj4gCj4gQmVpbmcgYmFjayBvbiBTbGludCwgbm90IHJlbGF0ZWQgdG8gdGhpcywgaG93ZXZl
ciwgbXkgUWVtdSBXaW5kb3dzIFZNIGlzIAo+IG5vdyBpbiB3b3JraW5nIG9yZGVyLgo+IAo+IAo+
IFRoZSBpc3N1ZSBJJ20gaGF2aW5nIGlzIHRoYXQgT3JjYSBncmFicyB0aGUgbnVtYmVyIHBhZCwg
ZXZlbiBhZnRlciAKPiBoYXZpbmcgcHJlc3NlZCBBTFQrQ1RSTCtnIHRvIGdpdmUgdGhlIGtleWJv
YXJkIHRvIHRoZSBWTS4KPiAKPiAKPiBJIGtub3cgdGhlcmUgaXMgYSB3YXkgdG8gbWFrZSBPcmNh
ICJzbGVlcCIgaW4gYSBwYXJ0aWN1bGFyIHdpbmRvdywgYnV0IEkgCj4gY2Fubm90IHJlY2FsbCBm
b3IgdGhlIGxpZmUgb2YgbWUgaG93IHRvIGRvIHRoaXMuCj4gCj4gCj4gSWYgYW55b25lIGNhbiBo
ZWxwLCBJIHdvdWxkIHJlYWxseSBhcHByZWNpYXRlIGl0Lgo+IAo+IAo+IFRoYW5rcyBzbyBsb25n
Lgo+IAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkJs
aW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vbGlz
dG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3Q=

