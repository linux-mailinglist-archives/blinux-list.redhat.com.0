Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A05658EF9B
	for <lists+blinux-list@lfdr.de>; Wed, 10 Aug 2022 17:51:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1660146665;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=OixciGrs+BycFEGTgnbr+Gi8iBViPqFn4MMGSdn5WsM=;
	b=geaTTllBTEaQiZQHGBQiNbuzDLulqDTDM89p128xKGvyajlGBky0NQfxoxc79V9vhyRTy0
	KvFvUHWOBqadfknVGagomdwiX512MRxMyRBqhtqBh0TDj+hKN4mB79+Nn2xdhsSCgKaO0s
	0t535uxpAxFQ3LzxbgRby4q1H4ulZvo=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-44-zsrtnNeSOpWmytf2tstELg-1; Wed, 10 Aug 2022 11:51:04 -0400
X-MC-Unique: zsrtnNeSOpWmytf2tstELg-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com [10.11.54.8])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 9C8D9858290;
	Wed, 10 Aug 2022 15:51:02 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 353B5C15BA1;
	Wed, 10 Aug 2022 15:50:57 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 9E8E71946A5D;
	Wed, 10 Aug 2022 15:50:56 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Wed, 10 Aug 2022 17:38:24 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux armv7l; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Linux strange behavior
Message-ID: <mailman.41439.1660146656.111201.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.8
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

R29vZCBBZnRlcm5vb24sCgp3ZSBoYXZlIHByb2JsZW1zIHdpdGggbGludXggZm9yIHR3byB3ZWVr
cy4gR25vbWUtZGlza3MgYXJlIHNsb3csIApzb21ldGltZXMgaXQgZG9lc24ndCBsYXVuY2ggd2l0
aCB0aGlzIGJ1ZyBpbiBUZXJtaW5hbDoKCihnbm9tZS1kaXNrczo2Mjk4KTogR05PTUUtRGlza3Mt
RVJST1IgKio6IDExOjU2OjE3LjQxMDogRXJyb3IgZ2V0dGluZyAKdWRpc2tzIGNsaQplbnQ6IMSM
YXNvdsO9IGxpbWl0IHZ5cHLFoWVsClRyYXNvdmFjw60vbGFkw61jw60gcGFzdCAoU0lHVFJBUCkg
KGNvcmUgZHVtcGVkIFtvYnJheiBwYW3Em3RpIHVsb8W+ZW5dKQoKU29tZXRpbWVzIEkgaGF2ZSBw
cm9ibGVtcyB3aXRoIGVqZWN0aW5nIGRpc2tzIG9yIGxhdW5jaGluZyB0aGVtLCBpdCAKdGhyb3dz
IG1lIGJhY2sgdG8gdGhlIENvbXB1dGVyIHRvIGRpc2sgbGlzdC4gTXkgZnJpZW50IHRoaW5rcyB0
aGF0J3MgCkdUSzQgYnVnLiBCdXQgSSBhbSBhZnJhaWQgaWYgSSBoYXZlbid0IHNvbWUgdmlydXMs
IGJlY2F1c2UgdHdvIHdlZWtzIGFnbyAKSSd2ZSBpbnN0YWxsZWQgV2luZG93cyAxMCB0byBteSBk
ZXNrdG9wLiBCdXQgYW55IGZsYXNoIGRpc2ssIGNlbGwgcGhvbmUgCm9yIGRpY3RhcGhvbmUgSSBk
aWRuJ3Qgam9pbiB0byB0aGUgV2luZG93cy4gTXkgUmFzcGJlcnJ5IHdhc24ndCAKY29ubmVjdGVk
IHRvIFdpbmRvd3MgdG9vLiBJdCdzIG9ubHkgb24gdGhlIHNhbWUgaW50ZXJuZXQgd2lhIGV0aGVy
bmV0LiAKUGxlYXNlIHdoZXJlIGNhbiBiZSBhIHByb2JsZW0/IE15IGZyaWVuZCBpbiB0aGUgc2Ft
ZSBuZXR3b3JrIGhhcyB0aGVzZSAKcHJvYmxlbXMgdG9vLiBXZSBoYXZlIGJvdGggVWJ1bnR1IE1h
dGUgMjIuMDQgdXBkYXRlZCBmcm9tIDIwLjA0LCAKUmFzcGJlcnJ5IFBpIDRCIDQgR0IgUkFNLgoK
VGhhbmtzIGEgbG90LgoKQmVzdCByZWdhcmRzCgpWb2p0YS4KCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApCbGlu
dXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlz
dGluZm8vYmxpbnV4LWxpc3QK

