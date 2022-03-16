Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id C23D54DABD9
	for <lists+blinux-list@lfdr.de>; Wed, 16 Mar 2022 08:31:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1647415860;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=vni13AV97XDH68JyR9qhOgRQe3GSCp1DdNKts/n38t4=;
	b=Qkv1qvzyGKAuE9hUVpWfcNgXtwk9pEjWTOMpSbOXF3NQW85QFfdegGOw5yqM2/v7x/s0U1
	xG0+ArLZuILtEKimqztx2sL2EBd8On9RTHlV32kJGBUwhdOlWcydC1c52exgPOXGEDcauY
	00GZNwdfvwOq7kBKTAOGumBmq48M57U=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-604-ZO9DKogLN3agyA62ZZp9NA-1; Wed, 16 Mar 2022 03:30:57 -0400
X-MC-Unique: ZO9DKogLN3agyA62ZZp9NA-1
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com [10.11.54.9])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id A1A4F382054A;
	Wed, 16 Mar 2022 07:30:55 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id EB9C244006B;
	Wed, 16 Mar 2022 07:30:50 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 61665193F6EA;
	Wed, 16 Mar 2022 07:30:50 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Wed, 16 Mar 2022 09:30:40 +0200 (IST)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: getting started with Liblouis
In-Reply-To: <mailman.2021.1647388814.111205.blinux-list@redhat.com>
References: <6df9e5ca-9db1-3155-3afe-24b47cd7c183.ref@verizon.net>
 <mailman.2021.1647388814.111205.blinux-list@redhat.com>
User-Agent: Alpine 2.11 (DEB 23 2013-08-11)
MIME-Version: 1.0
X-Content-Filtered-By: Mailman/MimeDel 2.1.29
Message-ID: <mailman.2147.1647415850.111205.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.9
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

T24gVHVlLCAxNSBNYXIgMjAyMiwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3
cm90ZToKCj4gSSdtIHRyeWluZyB0byBmaW5kIG91dCBob3cgdG8gdXNlIExpYmxvdWlzIHRvIHRy
YW5zbGF0ZSBkb2N1bWVudHMgZnJvbSBwcmludCAKPiB0byBCcmFpbGxlLsKgIFNwZWNpZmljYWxs
eSwgbXkgd2lmZSB3b3VsZCBsaWtlIG1lIHRvIGZpbmQgb3V0IGhvdyB0byB0cmFuc2xhdGUgCj4g
UnVzc2lhbiBkb2N1bWVudHMgaW50byBCcmFpbGxlIG9uZXMuwqAgQXQgdGhlIG1vbWVudCwgdGhv
dWdoLCBJIGhhdmVuJ3QgeWV0IAo+IGxlYXJuZWQgYSBjb21tYW5kIHRvIHJ1biBmb3IgdHJhbnNs
YXRpbmcgYW55dGhpbmc6wqAgdGhlIExpYmxvdWlzIAo+IGRvY3VtZW50YXRpb24gbG9va3MgdG8g
aGF2ZSBhIGxvdCBvZiB1c2VmdWwgbWF0ZXJpYWwsIGJ1dCBJIGNvdWxkIGZpbmQgCj4gbm90aGlu
ZyBhYm91dCBydW5uaW5nIGEgY29tbWFuZCwgd2l0aCB3aGF0ZXZlciBhcmd1bWVudHMgYW5kIG9w
dGlvbnMgSSBtaWdodCAKPiBuZWVkLCB0byBjcmVhdGUgYSBCcmFpbGxlIG91dHB1dCBmaWxlIGZy
b20gYSBwcmludCBpbnB1dCBmaWxlLgoKSW4gRGViaWFuLCBJIHNlZSBsaWJsb3Vpcy1iaW4gYW5k
IGxpYmxvdWlzeG1sLWJpbiBwYWNrYWdlcyB3aGljaCBjYW4gCnByb2JhYmx5IGhlbHAgeW91LiAg
T3RoZXIgZGlzdHJpYnV0aW9ucyBwcm9iYWJseSBoYXZlIHNvbWV0aGluZyBzaW1pbGFyLgoKPiBJ
IHJlYWQgYWJvdXQgYSBjb21tYW5kIGNhbGxlZCBmaWxlMmJybCwgYXBwYXJlbnRseSBwYXJ0IG9m
IGEgcHJvZ3JhbSBjYWxsZWQgCj4gTGlibG91aXN1dGRtbCwgYnV0IHRoYXQgcHJvZ3JhbSdzIG5v
dCBvbiBteSBzeXN0ZW0gZXZlbiB0aG91Z2ggTGlibG91aXMgCj4gaXRzZWxmIGlzLgoKQXBwYXJl
bnRseSwgVVRETUwgaXMgdW5pZmllZCB0YWN0aWxlIGRvY3VtZW50IG1hcmt1cCBsYW5ndWFnZSwg
d2hjaWggaXMgCnByZXN1bWFibHkgdXNlZCBmb3IgbWFwcywgZGlhZ3JhbXMsIGV0Yy4gIFRoaXMg
aXMgcHJvYmFibHkgbm90IHdoYXQgeW91IApuZWVkLgoKSFRILApHZW9mZi4KX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBs
aXN0CkJsaW51eC1saXN0QHJlZGhhdC5jb20KaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFp
bG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo=

