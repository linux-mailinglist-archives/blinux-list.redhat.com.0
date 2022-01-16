Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 90D3548FE21
	for <lists+blinux-list@lfdr.de>; Sun, 16 Jan 2022 18:10:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1642353015;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=rWyx2010rff74LY/MZljqy2cGIutsDplFEebGJV2BjQ=;
	b=VQELPyOjQfpCW2CXGQf5D1C4LvQtAobHTvA2Zm32lBd8n1tRtsfqtJzr04Tw6D8ezu223c
	FZYjh+MtGfh2ha+18yzsgnT1gBHBAohPxghCk+t4EfSuAvjqc8ZmUORv1sGj+1pFLa9O+1
	7wpUbBBsi3JidqFl87vji0+o4eSvp/Y=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-602-BHdGghS0OYqk09sJoyQhgg-1; Sun, 16 Jan 2022 12:10:14 -0500
X-MC-Unique: BHdGghS0OYqk09sJoyQhgg-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 720891083F60;
	Sun, 16 Jan 2022 17:10:10 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 9207F7D3E2;
	Sun, 16 Jan 2022 17:10:09 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 7A92A4BB7C;
	Sun, 16 Jan 2022 17:10:08 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com
	[10.11.54.7])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 20GH5Flw001211 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 16 Jan 2022 12:05:15 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 4FA3B14171FE; Sun, 16 Jan 2022 17:05:15 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast10.extmail.prod.ext.rdu2.redhat.com [10.11.55.26])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 4B78F1410F36
	for <blinux-list@redhat.com>; Sun, 16 Jan 2022 17:05:15 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 045EF1C099A1
	for <blinux-list@redhat.com>; Sun, 16 Jan 2022 17:05:15 +0000 (UTC)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79]) by
	relay.mimecast.com with ESMTP id us-mta-373-Qdn_xTiZOY-7YIiDDOYwQA-1;
	Sun, 16 Jan 2022 12:05:11 -0500
X-MC-Unique: Qdn_xTiZOY-7YIiDDOYwQA-1
Received: from [192.168.1.25] (men75-h08-176-172-247-100.dsl.sta.abo.bbox.fr
	[176.172.247.100])
	by darkstar.slint.fr (Postfix) with ESMTPSA id 7CC5A20330
	for <blinux-list@redhat.com>; Sun, 16 Jan 2022 17:05:08 +0100 (CET)
Message-ID: <dd60f509-3da5-6305-e020-49f7d92d16f6@slint.fr>
Date: Sun, 16 Jan 2022 18:05:02 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.5.0
Subject: Re: possability of linux install question
To: blinux-list@redhat.com
References: <7d95c4a2-beae-efc3-9998-792c3a9cbdef@gmail.com>
In-Reply-To: <7d95c4a2-beae-efc3-9998-792c3a9cbdef@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.7
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 20GH5Flw001211
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
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgSG93YXJkLAoKV2hhdCB5b3UgY2FuIGRvIGlzIGluc3RhbGwgU2xpbnQgb24gYSByZW1vdmFi
bGUgZHJpdmUsIGxpa2UgYW4gVVNCIGF0dGFjaGVkIFNTRApvciBoYXJkIGRyaXZlLgoKQWZ0ZXIg
aW5zdGFsbGF0aW9uIHlvdSB3aWxsIGJlIGFibGUgdG8gc3RhcnQgU2xpbnQgb3IgV2luZG93cywg
d2hpY2ggd2lsbCBzdGF5CnVudG91Y2hlZC4KCkFsbCB5b3UgbmVlZCB0byBrbm93IGlzIGluIGh0
dHBzOi8vc2xpbnQuZnIvZG9jL0hhbmRCb29rLmh0bWwgaW5jbHVkaW5nIGhvdyB0bwpnZXQgc3Vw
cG9ydC4gVGhlIFNsaW50IG1haWxpbmcgbGlzdCBpcyBhIHZlcnkgZnJpZW5kbHkgb25lLgoKV2hl
biBhc2tlZCBhdCB0aGUgYmVnaW5uaW5nIG9mIGluc3RhbGxhdGlvbiBqdXN0IGNob29zZSB0aGUg
ImF1dG8iIGluc3RhbGxhdGlvbgptb2RlLgoKQ2hlZXJzLApEaWRpZXIKLS0KRGlkaWVyIFNwYWll
cgpTbGFpbnQgbWFpbnRhaW5lcgoKTGUgMTYvMDEvMjAyMiDDoCAwMDoxNSwgTGludXggZm9yIGJs
aW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiBhIMOpY3JpdMKgOgo+IEhlbGxvIGFsbCwKPiAKPiBJJ3Zl
IGJlZW4gd2FudGluZyB0byB0cnkgb3V0IGxpbnV4IGJ1dCBoYXZlbid0IHdhbnRlZCB0byBnaXZl
IHVwIG9yIG1lc3MgdXAgYW55Cj4gb2YgbXkgd29ya2luZyB3aW5kb3dzIHN5c3RlbXMuwqAgV291
bGQgaXQgYmUgcG9zc2libGUgdG8gaW5zdGFsbCBzb21lIHZlcnNpb24gb2YKPiBsaW51eCBvbiBh
IENEIG9yIGEgRFZEOyB0aGVuIGp1c3QgYm9vdCBhIGNvbXB1dGVyIGZyb20gdGhhdCBkaXNrIGJ5
cGFzc2luZwo+IHdpbmRvd3MgYWx0b2dldGhlcj/CoCBJZiBzbywgSSdkIGhhdmUgdG8gbWFrZSBp
dCBlaXRoZXIgdGFsayBvciBkcml2ZSBhIEJyYWlsbGUKPiBkaXNwbGF5Lgo+IAo+IFdvbmRlciBp
ZiBhbnlvbmUgd291bGQgaGF2ZSBhbnkgc3VnZ2VzdGlvbnM/wqAgVGhhbmsgeW91Lgo+IAo+IEhv
d2FyZAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkJs
aW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vbGlz
dG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3Q=

