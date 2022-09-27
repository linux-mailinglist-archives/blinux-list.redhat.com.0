Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 4473E5ECA2A
	for <lists+blinux-list@lfdr.de>; Tue, 27 Sep 2022 18:54:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1664297671;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=DJOGl0ZwjSNz1M8y1cJI69ihlnf93dKE6KsuNCA45+Q=;
	b=IzjbrS4MC4EBsK3omBtfWBKMna+52aewQ8spkbQRTIpZbI8JJaoR3SGSScxvgylb9tQeAz
	1buUbTs+HJLx4nsUUx+aaULK44B8CuGZDOtuX3++MMYDmvpPVQSPwgChY48yPQ0V+1phxh
	QCCmXYSEnIXojZHE0/zu3zvEI1ELPwY=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-593-W0HIN4s1PoqIc3FOuCoyRQ-1; Tue, 27 Sep 2022 12:54:27 -0400
X-MC-Unique: W0HIN4s1PoqIc3FOuCoyRQ-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com [10.11.54.6])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 733F53C10221;
	Tue, 27 Sep 2022 16:54:25 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id F3A462166B2A;
	Tue, 27 Sep 2022 16:54:24 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id B53871946A45;
	Tue, 27 Sep 2022 16:54:24 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Tue, 27 Sep 2022 18:54:17 +0200
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: How do I install i-bus braille on linux mint?
Mail-Followup-To: Linux for blind general discussion <blinux-list@redhat.com>
References: <mailman.2908.1664244908.6083.blinux-list@redhat.com>
 <mailman.3030.1664263863.6077.blinux-list@redhat.com>
 <mailman.3043.1664296870.6080.blinux-list@redhat.com>
MIME-Version: 1.0
In-Reply-To: <mailman.3043.1664296870.6080.blinux-list@redhat.com>
User-Agent: NeoMutt/20170609 (1.8.3)
Message-ID: <mailman.3159.1664297663.6081.blinux-list@redhat.com>
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
Content-Disposition: inline
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

TGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiwgbGUgbWFyLiAyNyBzZXB0LiAyMDIy
IDEyOjM0OjIyIC0wNDAwLCBhIGVjcml0Ogo+IHN1ZG8gYXB0IGluc3RhbGwgLi9pYnVzLWJyYWls
bGVfMS4xLTFfYWxsLmRlYgo+IFJlYWRpbmcgcGFja2FnZSBsaXN0cy4uLiBEb25lCj4gQnVpbGRp
bmcgZGVwZW5kZW5jeSB0cmVlCj4gUmVhZGluZyBzdGF0ZSBpbmZvcm1hdGlvbi4uLiBEb25lCj4g
Tm90ZSwgc2VsZWN0aW5nICdpYnVzLWJyYWlsbGUnIGluc3RlYWQgb2YgJy4vaWJ1cy1icmFpbGxl
XzEuMS0xX2FsbC5kZWInCj4gU29tZSBwYWNrYWdlcyBjb3VsZCBub3QgYmUgaW5zdGFsbGVkLiBU
aGlzIG1heSBtZWFuIHRoYXQgeW91IGhhdmUKPiByZXF1ZXN0ZWQgYW4gaW1wb3NzaWJsZSBzaXR1
YXRpb24gb3IgaWYgeW91IGFyZSB1c2luZyB0aGUgdW5zdGFibGUKPiBkaXN0cmlidXRpb24gdGhh
dCBzb21lIHJlcXVpcmVkIHBhY2thZ2VzIGhhdmUgbm90IHlldCBiZWVuIGNyZWF0ZWQKPiBvciBi
ZWVuIG1vdmVkIG91dCBvZiBJbmNvbWluZy4KPiBUaGUgZm9sbG93aW5nIGluZm9ybWF0aW9uIG1h
eSBoZWxwIHRvIHJlc29sdmUgdGhlIHNpdHVhdGlvbjoKPiAKPiBUaGUgZm9sbG93aW5nIHBhY2th
Z2VzIGhhdmUgdW5tZXQgZGVwZW5kZW5jaWVzOgo+IMKgaWJ1cy1icmFpbGxlIDogRGVwZW5kczog
bGliYnJhaWxsZS1pbnB1dCAoPj0gMC44KSBidXQgaXQgaXMgbm90IGluc3RhbGxhYmxlCj4gRTog
VW5hYmxlIHRvIGNvcnJlY3QgcHJvYmxlbXMsIHlvdSBoYXZlIGhlbGQgYnJva2VuIHBhY2thZ2Vz
LgoKU28geW91IG5lZWQgdG8gZmlyc3QgaW5zdGFsbCBsaWJicmFpbGxlLWlucHV0OgoKaHR0cHM6
Ly9naXRodWIuY29tL3plbmRhbG9uYS9saWJicmFpbGxlLWlucHV0CgpTYW11ZWwKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxp
bmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29t
L21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QK

