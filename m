Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id EC96F686E91
	for <lists+blinux-list@lfdr.de>; Wed,  1 Feb 2023 20:02:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1675278141;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=M3jHLwneGisIfuG/pEvywICU21bWRJ/rsbcB55T9d8M=;
	b=Juu9k2d16y/uxuSyUkta06a9KkVAx3d2VXrOAEc+EiB4BUyUY4+eAOHC7CsADrrJugWIT5
	TSLuvcTriTaeqPpxPLxyV3qBuxs2EieawV1ugr4bCbW5bnwKqkBlf4IpkE/wTHU4Pesv01
	FdMPtG8byS3OEGIgynbXU6xypcE5PyU=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-460-8e86GuAQPCu-SF5hgh53Fg-1; Wed, 01 Feb 2023 14:02:20 -0500
X-MC-Unique: 8e86GuAQPCu-SF5hgh53Fg-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com [10.11.54.6])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 10FE028004E6;
	Wed,  1 Feb 2023 19:02:16 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 4FC042166B35;
	Wed,  1 Feb 2023 19:02:15 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id C55B719465B7;
	Wed,  1 Feb 2023 19:02:14 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Wed, 01 Feb 2023 19:02:03 +0000
To: blinux-list@redhat.com
Subject: Re: Attempting to boot Jenux in a vm.
User-Agent: K-9 Mail for Android
In-Reply-To: <mailman.3614.1675274580.8173.blinux-list@redhat.com>
References: <mailman.3614.1675274580.8173.blinux-list@redhat.com>
MIME-Version: 1.0
X-Content-Filtered-By: Mailman/MimeDel 2.1.29
Message-ID: <mailman.4055.1675278134.8177.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.6
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGksCgpZb3UgZGlkbuKAmXQgcHJvdmlkZSBhbnkgZGV0YWlscyBoZXJlLgoKV2hhdCB2aXJ0dWFs
aXNhdGlvbiBzb2x1dGlvbiBhcmUgeW91IHVzaW5nPyBXaGF0IHZlcnNpb24/IFdoYXQgaG9zdCBP
Uz8KCldpdGhvdXQgYW55IG9mIHRoZXNlIGRldGFpbHMgd2UgZGlzb27igJl0IGJlIGFibGUgdG8g
aGVscCB5b3UuCgpPbiAxIEZlYnJ1YXJ5IDIwMjMgMTg6MDI6NDUgR01ULCBMaW51eCBmb3IgYmxp
bmQgZ2VuZXJhbCBkaXNjdXNzaW9uIDxibGludXgtbGlzdEByZWRoYXQuY29tPiB3cm90ZToKPkhl
eSBhbGwsCj4KPkp1c3QgcHVsbGVkIGRvd24gdGhlIGxhdGVzdCBKZW51eCB0byBnaXZlIGl0IGEg
dHJ5LCBidXQgZm9yIHNvbWUgcmVhc29uIEkgY2Fubm90IGdldCBhbnkgc3BlZWNoIG91dCBvZiBp
dC7CoCBJIGhlYXIgdGhlIGJlZXBzIHdoZW4gdGhlIFZNIGJvb3RzIHVwLCBJIGNhbiBvY3Igd2l0
aCBudmRhIGFuZCBzZWUgc2VsZi10ZXN0IHJlcXVlc3RlZCwgcGxlYXNlIHdhaXQsIGFuZCBhZnRl
ciBhIHdoaWxlIHRoZSBtZW51IGNvbWVzIHVwLsKgIEkgY2FuIGFsc28gc2VlIHRoYXQgdGhyb3Vn
aCBvY3IsIGJ1dCBJIGdldCBubyBzcGVlY2ggd2hlbiBpbnNpZGUgdGhlIHZtLiBJJ3ZlIGNoZWNr
ZWQgdG8gbWFrZSBzdXJlIHRoZSBzb3VuZCBjYXJkcyBhcmUgY29ycmVjdCwgYW55b25lIGhhdmUg
YW55dGhpbmcgZWxzZSBJIGNhbiB0cnk/wqAgSSdtIG5vdCBmaW5kaW5nIGFueSBkb2N1bWVudGF0
aW9uIGFueXdoZXJlLCB3aGljaCBpcyB3aHkgSSdtIGFza2luZyBoZXJlLgo+Cj5NaWtlLgo+Cj5f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+QmxpbnV4LWxp
c3QgbWFpbGluZyBsaXN0Cj5CbGludXgtbGlzdEByZWRoYXQuY29tCj5odHRwczovL2xpc3RtYW4u
cmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApC
bGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4v
bGlzdGluZm8vYmxpbnV4LWxpc3QK

