Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F7EB59920A
	for <lists+blinux-list@lfdr.de>; Fri, 19 Aug 2022 02:59:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1660870762;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=AlQzGqqecs6FfZUt+21+rA1m6Exn0KG4WPARAQZNIiI=;
	b=ScXtGPtcXdniZGKrE0qQKfYVYn2gELVKZAQ1sjr252aQL9JrlaiVdGj1+t7HaI8dctsBnP
	tcqA+pWFb7G4tBy5oMP7Cs4pge4J5GSv0ZrAJ9FEEvBJaGlouNi8ucz3QJZpIQ8WQmwMLj
	rCI7hKh/YzfUq0zPkFfmVwnRYJmYCyo=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-241-QHBZwgztNjSGgxQNEi0g8w-1; Thu, 18 Aug 2022 20:59:20 -0400
X-MC-Unique: QHBZwgztNjSGgxQNEi0g8w-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com [10.11.54.5])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 211FC802E5D;
	Fri, 19 Aug 2022 00:59:19 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id E7394945D7;
	Fri, 19 Aug 2022 00:59:10 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 7522D1953544;
	Fri, 19 Aug 2022 00:59:10 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3696.120.41.1.1\))
Subject: PC no longer boots from DVD
Date: Thu, 18 Aug 2022 20:58:54 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Message-ID: <mailman.1921.1660870750.10506.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGksCkkgZG9u4oCZdCBrbm93IHdoYXQgY2F1c2VkIG15IERlc2t0b3AgdG8gc3RvcCBib290aW5n
IGZyb20gdGhlIERWRC4KSSBoYXZlIHRyaWVkIGRpZmZlcmVudCBEVkTigJlzIGFuZCBkaWZmZXJl
bnQgZGlzdHJvcy4KSXQgdXNlZCB0byB3b3JrIHdpdGggbm8gcHJvYmxlbXMsIHRoYXTigJlzIHRo
ZSB3YXkgSSBpbnN0YWxsZWQgTGludXggTWludC4KU28gcGxlYXNlIHRlbGwgbWUgdGhlcmXigJlz
IGEgc2ltcGxlIHdheSB0byBmaXggdGhpcy4KVGhhbmtzLApSb2IKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApC
bGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4v
bGlzdGluZm8vYmxpbnV4LWxpc3QK

