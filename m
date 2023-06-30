Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 64CAC74427D
	for <lists+blinux-list@lfdr.de>; Fri, 30 Jun 2023 20:44:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1688150644;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=T44+bnx7ZuYD/mKyWbVJiujv1bzeWzNXkZEOEuyJNuU=;
	b=jORhaqRKfaZzf4DrTkLjtuY498TdxJYrhWvy6+5yaZGRFfahp3VDU1hKKDjpzeeP8u3Pen
	mtGkmTfF/jIq83aY0eYXcFBGhwOwPa9O4PCqaXPJghy9XcImv1vdXeIFZmFd4X+8/VSn6f
	zvSFfsHk51TpweABVj1jGUC4w3sci/8=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-609-W6wwn2EGO86wQxJaOiFefg-1; Fri, 30 Jun 2023 14:44:00 -0400
X-MC-Unique: W6wwn2EGO86wQxJaOiFefg-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com [10.11.54.6])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 4434138117FA;
	Fri, 30 Jun 2023 18:43:58 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 910392166B2D;
	Fri, 30 Jun 2023 18:43:57 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 169B31946A49;
	Fri, 30 Jun 2023 18:43:57 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
To: blinux-list@redhat.com
Subject: Re: The Weirdness Just Keeps on Coming (was Can I run a .bat file
 from basica
MIME-Version: 1.0
Date: Fri, 30 Jun 2023 12:58:35 -0500
Message-ID: <mailman.1358.1688150636.3098361.blinux-list@redhat.com>
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
X-Mimecast-Spam-Score: 1
X-Mimecast-Originator: redhat.com
Content-ID: <17789.1688147914.1@wb5agz.lan>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

V293ISAgVGhhbmtzLiAgSSdsbCBrZWVwIHRoaXMgZm9yIGZ1dHVyZSByZWZlcmVuY2UgYXMgSSBn
b3QgdGhpcwptZXNzYWdlIGFmdGVyIEkgZGlkIGl0IHRoZSBoYXJkIHdheS4KCglJbiB0aGUgbGFz
dCBmZXcgZGF5cywgSSBoYXZlIGJlZW4gdHJ5aW5nIHRvIGZpbmQKYWNjZXNzaWJsZSBtYXRlcmlh
bCwgbm90IHNvIG11Y2ggaW4gYmFzaWMgcHJvZ3JhbW1pbmcgYXMgSSBkaWQgYQpidW5jaCBvZiB0
aGF0IGZyb20gMTk3OSB1bnRpbCB0aGUgZWFybHkgZWlnaHRpZXMgaW4gQXBwbGVzb2Z0CkJhc2lj
IHdoaWNoIGlzIGV4dHJlbWVseSBzaW1pbGFyIHRvIEdXLUJhc2ljIGFuZCBiYXNpY2EgYnV0CmNv
bW1hbmRzIGxpa2UgdGhlICxhIGZsYWcgYXJlIGV4YWN0bHkgd2hhdCBJIHdhcyBsb29raW5nIGZv
ciAgYnV0CmlmIHlvdSBzdGFydCBzZWFyY2hpbmcgZm9yIHRoZSBiYXNpY2EgY29tbWFuZCBzZXQs
IG9uZSB0ZW5kcyB0bwpmYWxsIGRvd24gYSBsb3Qgb2YgcmFiYml0IGhvbGVzIGxlYWRpbmcgdG8g
dmlzdWFsIGJhc2ljIGFuZCBzbwpmb3J0aC4gIEknbSBub3QgZXZlbiBpbnRlcmVzdGVkIGluIHBy
b2dyYW1taW5nIGluIGJhc2ljIGFnYWluIGFzCnRoYXQgc2hpcCBzYWlsZWQgYnV0IEkgd291bGQg
aGF2ZSBuZXZlciBmaWd1cmVkIG91dCB0aGF0IGZsYWcgb2YKLGEgaWYgbXkgbGlmZSBkZXBlbmRl
ZCBvbiBpdC4KCglIZXJlJ3MgYSBiaXQgb2YgdHJpdmlhIGlmIGFueWJvZHkgd2FudHMgdG8gZ3Jp
bmQgdGhlaXIKYnJhaW5zIGEgYml0LiAgSSBkbyBrbm93IHRoZSBhbnN3ZXIgYnV0IGhlcmUgaXQg
aXM6CgoJVGhlIGxpc3Qgb2YgcHJvZ3JhbSBmaWxlcyBvbiB0aGUgZGlzayBhbGwgaGFkIG5vcm1h
bApkYXRlcyB3aGVuIHRoZXkgd2VyZSBpbiB1bml4LiAgQWZ0ZXIgSSBzYXZlZCBvbmUgb2YgdGhl
bSB1c2luZwp0aGUgc2F2ZSAicHJvZ25hbWUuYmFzIiAsYSBvcGVyYXRpb24sIHRoZSBzYXZlIHdh
cyBwZXJmZWN0IGJ1dAp0aGUgZGF0ZSBpcyBub3cgRGVjZW1iZXIgMzEsIDE5NjkgYXQgMTg6MDAg
aG91cnMuCgoJSSBwdXQgdGhlIGZsb3BweSBpbiBxdWVzdGlvbiBiYWNrIG9uIGEgTGludXggYm94
IGFuZCBkaWQKbHMgLWx0IG9uIHRoZSBmaWxlcywgZXhwZWN0aW5nIHRvIGZpbmQgbXkgbmV3bHkt
c2F2ZWQgQVNDSUkgZmlsZQpmaXJzdC4KCglXaXRoIHRoYXQgY3JlYXRpb24gZGF0ZSwgaXQgaXMg
ZGVhZCBsYXN0IHNvIHRoZSBkYXRlCm1hdHRlcnMgYnV0IGl0J3MgYSBzbWFsbCBpc3N1ZSBmb3Ig
dGhlIG1vc3QgcGFydC4KCUhpbnQuICBJZiB5b3UgbGl2ZSBpbiBzb21lIHBsYWNlIG90aGVyIHRo
YW4gdGhlClVTL0NlbnRyYWwgdGltZSB6b25lLCB5b3VyIHN0cmFuZ2UgZGF0ZSB3aWxsIGJlIGRp
ZmZlcmVudCBzdWNoIGFzCmlmIHlvdSBsaXZlIGluIHRoZSBVSywgeW91ciBvZGQgZGF0ZSB3aWxs
IGJlIDEgSmFudWFyeSBvZiAxOTcwIGF0Ck1pZG5pZ2h0LgoKCUl0J3MgZGVmaW5pdGVseSBub3Qg
YSAiVHdpbGlnaHQgWm9uZSIgZXZlbnQgYnV0IHRoZSBmaXJzdAp0aW1lIHlvdSBzZWUgdGhhdCwg
aXQgbWFrZXMgeW91IHdvbmRlciB3aGF0J3MgZ29pbmcgb24uCgoJQWdhaW4sIHRoYW5rcy4KCk1h
cnRpbiBNY0Nvcm1pY2sKTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiA8YmxpbnV4
LWxpc3RAcmVkaGF0LmNvbT4gd3JpdGVzOgo+IE5vIG5lZWQgZm9yIGFueSBvZiB0aGlzLiAgT3Bl
biB1cCB0aGUgcHJvZ3JhbSBpbiBiYXNpY2EuICBUaGVuIHR5cGUgc2F2ZSAKPiDigJxwcm9nLmJh
c+KAnSxhIGFuZCB5b3UgZ2V0IGFuIGFzY2lpIHZlcnNpb24gb2YgdGhlIHByb2dyYW0gc2F2ZWQg
dG8gCj4gZGlzay4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBz
Oi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QK

