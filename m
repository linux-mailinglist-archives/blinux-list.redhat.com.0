Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 40142637490
	for <lists+blinux-list@lfdr.de>; Thu, 24 Nov 2022 09:56:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1669280167;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=Ph7mW3WoCIaL+jjSy0GXS9nySiJNWn1ilCnoeVpr/XY=;
	b=Kd7HoANTvloAbis3c5DxT69Pw1XwIy1QR0P6xPy47Cx+8T7W/IWjZQi8E+Gs1jhLkb/eGo
	cPyy7RODtGn/VhjiIawO13HPIRKbynZy6BZCOQnIpvCo+sIhwL3DfdHsBkmJHxYpZD0ycQ
	bWmmeiiNbWHdrEvmcRoZFBFESuB05kw=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-544-aww4YRlrPNGRbQC7kV9IvQ-1; Thu, 24 Nov 2022 03:56:03 -0500
X-MC-Unique: aww4YRlrPNGRbQC7kV9IvQ-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com [10.11.54.5])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id E45F38027EC;
	Thu, 24 Nov 2022 08:56:01 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id A2ADB4EA4E;
	Thu, 24 Nov 2022 08:56:01 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 455401946595;
	Thu, 24 Nov 2022 08:56:00 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Thu, 24 Nov 2022 16:55:43 +0800 (CST)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: How to hear sounds from line-in jack? (fwd)
In-Reply-To: <mailman.1491.1669278837.6927.blinux-list@redhat.com>
References: <mailman.1365.1669212143.6934.blinux-list@redhat.com>
 <mailman.1491.1669278837.6927.blinux-list@redhat.com>
MIME-Version: 1.0
X-Content-Filtered-By: Mailman/MimeDel 2.1.29
Message-ID: <mailman.1668.1669280154.6926.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.5
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

VGhhbmsgeW91IHZlcnkgbXVjaCEKCk9uIFdlZCwgMjMgTm92IDIwMjIsIExpbnV4IGZvciBibGlu
ZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cgo+IERhdGU6IFdlZCwgMjMgTm92IDIwMjIgMjI6
Mjk6MzkgLTEwMDAKPiBGcm9tOiBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIDxi
bGludXgtbGlzdEByZWRoYXQuY29tPgo+IFRvOiBibGludXgtbGlzdEByZWRoYXQuY29tCj4gU3Vi
amVjdDogUmU6IEhvdyB0byBoZWFyIHNvdW5kcyBmcm9tIGxpbmUtaW4gamFjaz8gKGZ3ZCkKPiAK
Pj4gLS0tLS0tLS0tLSBGb3J3YXJkZWQgbWVzc2FnZSAtLS0tLS0tLS0tCj4+IERhdGU6IFdlZCwg
MjMgTm92IDIwMjIgMjE6MzY6NTMgKzA4MDAgKENTVCkKPj4gRnJvbTog6auY55Sf5pe6IDxjb3Nj
ZWxsQGdtYWlsLmNvbT4KPj4gVG86IHNsaW50QGZyZWVsaXN0cy5vcmcKPj4gU3ViamVjdDogSG93
IHRvIGhlYXIgc291bmRzIGZyb20gbGluZS1pbiBqYWNrPwo+PiAKPj4gU291bmRzIGZyb20gbGlu
ZS1pbiBjYW4gYmUgcmVjb3JlZCwgYnV0IGhvdyB0byBoZWFyIHRoZW0gaW4gdGltZT8KPj4gV2hp
Y2ggY29uc29sZSBjb21tYW5kIGNhbiBiZSB1c2VkIGZvciB0aGlzIHB1cnBvc2U/Cj4KPiBIaSwg
Cj4KPiBOb3QgYWxsIHNvdW5kIGNhcmRzIGFyZSBjYXBhYmxlIG9mIHNpbXVsdGFuZW91cwo+IGlu
cHV0IGFuZCBvdXRwdXQgKGR1cGxleCBvcGVyYXRpb24uKQo+Cj4gQWxzbywgbW9zdCBkaXN0cmli
dXRpb25zIGhhdmUgcHVsc2VhdWRpbyBpbnN0YWxsZWQKPiBhcyBhIGxheWVyIG9mIG92ZXIgQUxT
QS4gCj4KPiBPbmUgc29sdXRpb24gdXNpbmcgQUxTQSAod2l0aCBQQSBkaXNhYmxlZCkgd291bGQg
YmUKPiB1c2luZyBlY2Fzb3VuZC4KPgo+IGVjYXNvdW5kIC1pIGFsc2EsZGVmYXVsdCAtbyBhbHNh
LGRlZmF1bHQKPgo+IFlvdSBjb3VsZCBhbHNvIHRyeSBhbHNhaHcsMCBpbnN0ZWFkIG9mCj4gYWxz
YSxkZWZhdWx0LCBvciBhbHNhaHcsMSwgZXRjLiBkZXBlbmRpbmcKPiBvbiB0aGUgbnVtYmVyIG9m
IHlvdXIgc291bmQgY2FyZC4gWW91Cj4gY2FuIGFsc28gdXNlIHRoZSBuYW1lLgo+Cj4gRm9yIGRl
dGFpbHMgdXNlIGBjYXQgL3Byb2MvYXNvdW5kL2NhcmRzYC4KPgo+IEhhdmUgZnVuLAo+Cj4gSm9l
bAo+Cj4KPiAtLSAKPiBKb2VsIFJvdGgKPgo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4gQmxpbnV4LWxp
c3RAcmVkaGF0LmNvbQo+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGlu
Zm8vYmxpbnV4LWxpc3QKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51eC1saXN0QHJlZGhhdC5jb20KaHR0
cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo=

