Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id E31E679741D
	for <lists+blinux-list@lfdr.de>; Thu,  7 Sep 2023 17:36:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1694100979;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=lu/f9S76QnfQnB6pAMBz33u+Sza0M/jyMcrym7wFdrs=;
	b=ReuHp38anLsQz7oXnWwj003son5YeNs2hfur6K0Jkgj32gbsfqQExKbTREq3mvIMJHl9E/
	WsUqRD90bbesJLSGV1j0Zg89dJujFWZdkcdPKYBKqGjGFzFyCPbOE8IFdm0STZigcAVINa
	K3EjjaYC3zLKWxlNwt5oJupWai+YNek=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-532-xH0UaamaOHaGFWe9F-biUQ-1; Thu, 07 Sep 2023 11:36:16 -0400
X-MC-Unique: xH0UaamaOHaGFWe9F-biUQ-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com [10.11.54.1])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 535378007CE;
	Thu,  7 Sep 2023 15:36:14 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 8D9F040C2070;
	Thu,  7 Sep 2023 15:36:08 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id BF50419465A2;
	Thu,  7 Sep 2023 15:36:07 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Thu, 07 Sep 2023 15:35:57 +0000
To: blinux-list@redhat.com
Subject: Re: RHVoice on Ubuntu
In-Reply-To: <mailman.1625.1694094913.353787.blinux-list@redhat.com>
References: <mailman.1625.1694094913.353787.blinux-list@redhat.com>
Feedback-ID: 26663242:user:proton
MIME-Version: 1.0
Message-ID: <mailman.1500.1694100967.353788.blinux-list@redhat.com>
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGVsbG8gVm9qdGEsCgpoYXZlIHlvdSB0cmllZCBydW5uaW5nIHRoZSBzcGVlY2gtZGlzcGF0Y2hl
ciBtb2R1bGUgbWFudWFsbHk/CgpJdCBjYW4gZ2l2ZSB5b3UgYSBiZXR0ZXIgaWRlYSBvZiB3aGF0
J3MgZ29pbmcgb24uCgoKQmVzdCByZWdhcmRzCgoKUmFzdGlzbGF2CgoKRMWIYSA3LiA5LiAyMDIz
IG8gMTU6NTUgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiBuYXDDrXNhbChhKToK
PiBIZWxsbyBhbGwsCj4KPiBpcyBzb21lIHdheSB0byBpbnN0YWxsIFJIVm9pY2UgdG8gVWJ1bnR1
IE1hdGUgMjIuMDQgb24gUmFzcGJlcnJ5IFBpPyBJCj4gd291bGQgbGlrZSB0byB1c2UgaXQgYW5k
IGlmIG15IGZyaWVuZCB0ZXN0ZWQgaXQsIGhlIGhhZCBwcm9ibGVtcyB0byBzZWUKPiB2b2ljZXMg
aW4gT3JjYS4gSXQgd2FzIGluc3RhbGxlZCwgYnV0IGludmlzaWJsZS4KPgo+IHRoYW5rcyBhIGxv
dC4KPgo+IEJlc3QgcmVnYXJkcwo+Cj4gVm9qdGEuCj4KPiBfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwo+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+IEJs
aW51eC1saXN0QHJlZGhhdC5jb20KPiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFu
L2xpc3RpbmZvL2JsaW51eC1saXN0Cj4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRo
YXQuY29tCmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4
LWxpc3QK

