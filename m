Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id BCD3455EDAC
	for <lists+blinux-list@lfdr.de>; Tue, 28 Jun 2022 21:12:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1656443575;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=VnQzpoZSXVwHolBCgk8Fu+9fRQkewLIbKSigE7k1M14=;
	b=PaVpcqc7quK2/RmWCBWFjjoPDj9ZAQNn29OxRt5jFqqOB5djNweZmn9vvYCk0FtNg48K+l
	SwV7KotNxu3LOwPIXA06UJvsDdVyjaC7P7BJXupae4AcW3v+Dpzl6RZbwic603vmHsvAmM
	e1vGY4aNTiHv2kBeDJUMseIRM2ykMl0=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-54-1xiE40ZgOweCgtK-JaBxrg-1; Tue, 28 Jun 2022 15:12:54 -0400
X-MC-Unique: 1xiE40ZgOweCgtK-JaBxrg-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com [10.11.54.3])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id C2576811E75;
	Tue, 28 Jun 2022 19:12:52 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 183C61121314;
	Tue, 28 Jun 2022 19:12:46 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id AC29F194705E;
	Tue, 28 Jun 2022 19:12:46 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
X-Spam-Flag: NO
X-Spam-Score: -1
X-Spam-Level: 
X-Spam-Status: No, score=-1 tagged_above=-999 required=6.2
 tests=[ALL_TRUSTED=-1] autolearn=disabled
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3696.100.31\))
Subject: Re: Openwrt.
Date: Tue, 28 Jun 2022 21:12:39 +0200
References: <mailman.29083.1656367295.111202.blinux-list@redhat.com>
 <mailman.28588.1656368636.111207.blinux-list@redhat.com>
To: blinux-list@redhat.com
In-Reply-To: <mailman.28588.1656368636.111207.blinux-list@redhat.com>
Message-ID: <mailman.28812.1656443565.111207.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkhCkkgZ2V0IGEgYml0IGNvbmZ1c2VkICBvbiBob3cgdG8gaW5zdGFsbCBpdC4KSXQgc2VlbXMg
dGhlcmXigJlzIGEgbG90IG9mIHRoaW5ncyB0byBkbyBmaXJzdCBidXQgbWF5YmUgSSBoYXZlIG1p
c3VuZGVyc3Rvb2QgdGhpbmdzLgpJIHdhc27igJl0IGNvbmNlbnRyYXRlZCBlaXRoZXIgc28gSSBt
aWdodCBjaGVjayBpdCBhZ2Fpbi4KL0EKCj4gMjgganVuaSAyMDIyIGtsLiAwMDoyMyBza3JldiBM
aW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIDxibGludXgtbGlzdEByZWRoYXQuY29t
PjoKPiAKPiBJIHVzZSBPcGVuV1JUIG9uIG15IHJvdXRlciwgYW5kIGl0IGlzIGluZGVlZCBxdWl0
ZSBnb29kLiBJdCBkb2VzIGFsbG93IHNzaCBpbnRvIHRoZSBzeXN0ZW0sIGJ1dCB0aGUgd2ViIGlu
dGVyZmFjZSBhbHNvIHdvcmtzIHdlbGwgd2l0aCBPcmNhIGluIHRoZSB1c3VhbCBicm93c2Vycy4g
SSBkb24ndCBrbm93IGFib3V0IHRoZSB0ZXh0LWJhc2VkIHN0dWZmLCBidXQgSSBrbm93IEZpcmVm
b3ggYW5kIENocm9taXVtLWJhc2VkIGJyb3dzZXJzIHdvcmsgcXVpdGUgd2VsbCB3aXRoIE9wZW5X
UlQncyBMVUNJIGludGVyZmFjZS4KPiAKPiB+S3lsZQo+IAo+IF9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4g
QmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxt
YW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPiAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEBy
ZWRoYXQuY29tCmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxp
bnV4LWxpc3QK

