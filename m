Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 904E55167F6
	for <lists+blinux-list@lfdr.de>; Sun,  1 May 2022 23:05:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1651439149;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=ybvnM64OLK85FHHyy7BGV25RK0yZ0AIcfL3bea2Afmo=;
	b=bdiEAR4UlAIHFqHqucyegE7k6s9aOHHhiC5E+fipLFcPDUGn4pLBz53bYAG4h165gPaid1
	BmpjufBdhmvdfh3owK/j4gdnwMssIGod9oWDrHu+ie+68wXCkN0u/AkdRauL0EPKaKZoUs
	7L7Jd7p130e7vxotnChbjrqIggX+b1Y=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-135-52AOETI0PDG9U_nMiWQepg-1; Sun, 01 May 2022 17:05:46 -0400
X-MC-Unique: 52AOETI0PDG9U_nMiWQepg-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com [10.11.54.1])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id A750E3C025C1;
	Sun,  1 May 2022 21:05:44 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 269F440CFD01;
	Sun,  1 May 2022 21:05:44 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 9EA521947063;
	Sun,  1 May 2022 21:05:43 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
X-Spam-Flag: NO
X-Spam-Score: -1
X-Spam-Level: 
X-Spam-Status: No, score=-1 tagged_above=-999 required=6.2
 tests=[ALL_TRUSTED=-1] autolearn=disabled
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3696.80.82.1.1\))
Subject: Re: Pinebook Pro.
Date: Sun, 1 May 2022 23:05:34 +0200
References: <mailman.12282.1651435313.111210.blinux-list@redhat.com>
 <mailman.12533.1651436963.111206.blinux-list@redhat.com>
To: blinux-list@redhat.com
In-Reply-To: <mailman.12533.1651436963.111206.blinux-list@redhat.com>
Message-ID: <mailman.12172.1651439143.111205.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.1
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SEnigJ0KVGhhbmtzIG1hdGUgZm9yIHRoYXQgb25lLgpXaWxsIGNoZWNrIHRoYXQgb3V0LgovQQoK
PiAxIG1haiAyMDIyIGtsLiAyMjoyOSBza3JldiBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNj
dXNzaW9uIDxibGludXgtbGlzdEByZWRoYXQuY29tPjoKPiAKPiBUaGUgUGluZWJvb2sgUHJvIGRv
ZXMgYWxyZWFkeSBjb21lIHdpdGggTGludXggaW5zdGFsbGVkIG9uIGl0LCBidXQgSSB0aGluayBp
dCdzIGEgS0RFIHNvbWV0aGluZywgYW5kIHRoYXQgaXNuJ3Qgd29ya2luZyB3aXRoIHRoZSBPcmNh
IHNjcmVlbiByZWFkZXIgYXQgdGhpcyB0aW1lLCB0aGF0J3Mgc3RpbGwgYSB3b3JrIGluIHByb2dy
ZXNzLiBCdXQgSSBkbyB0aGluayBpdCdzIHJ1bm5pbmcgc29tZSBraW5kIG9mIFVidW50dSBkZXJp
dmF0aXZlLCBzbyB5b3UgY291bGQganVzdCBnZXQgdGhlIHBhY2thZ2VzIGluc3RhbGxlZCB0aGF0
IHlvdSBuZWVkIHByb2JhYmx5LiBSZWdhcmRpbmcgdGhlIGZvcm0gZmFjdG9yLCBpdCdzIGEgbGFw
dG9wIGFib3V0IHRoZSBzaXplIG9mIGEgQ2hyb21lYm9vay4gVGhlc2UgZG8gc2VlbSB0byBiZSBo
YXJkIHRvIGZpbmQgdGhvdWdoLCBzbyBrZWVwIHdhdGNoaW5nIGZvciB0aGVtIHRvIGJlY29tZSBh
dmFpbGFibGUgaWYgdGhleSd2ZSBydW4gb3V0LiBMb29rcyBsaWtlIHRoZXkgd2lsbCBoYXZlIHNv
bWUgYXQgdGhlIGVuZCBvZiBuZXh0IG1vbnRoIGZyb20gd2hhdCBJJ20gcmVhZGluZy4KPiAKPiBo
dHRwczovL3BpbmU2NC5jb20vcHJvZHVjdC8xNCVlMiU4MCViMy1waW5lYm9vay1wcm8tbGludXgt
bGFwdG9wLWFuc2ktdXMta2V5Ym9hcmQvCj4gCj4gaHR0cHM6Ly9waW5lNjQuY29tL3Byb2R1Y3Qv
MTQlZTIlODAlYjMtcGluZWJvb2stcHJvLWxpbnV4LWxhcHRvcC1pc28tdWsta2V5Ym9hcmQvCj4g
Cj4gfkt5bGUKPiAKPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwo+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+IEJsaW51eC1saXN0QHJlZGhhdC5jb20K
PiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0
Cj4gCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpCbGlu
dXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpodHRwczovL2xpc3Rt
YW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cg==

