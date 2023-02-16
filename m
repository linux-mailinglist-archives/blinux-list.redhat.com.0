Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id C787469A284
	for <lists+blinux-list@lfdr.de>; Fri, 17 Feb 2023 00:44:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1676591084;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=KzWnj4g1Xz7f65Y7WfyZqNrNRa2lIJ78W97opWhXl6o=;
	b=IbPux6SZeeq3BfHsvWoFiDiCAJ7PZQEqM0siBMvapvzGVGut9zBTKtwYrNRTcBW+jFy0sp
	YENvMY0nI8CrTm9/teAXPsdtuKDsND6Rwn1yN+aVyshHxMZGL0lQ+RYeNGiEYu7Gsl0HyP
	hKSPirdovG133AGMXYih01w9vqmTg7w=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-106-Y6uex4DTNcG8Q40g0D9qiQ-1; Thu, 16 Feb 2023 18:44:40 -0500
X-MC-Unique: Y6uex4DTNcG8Q40g0D9qiQ-1
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com [10.11.54.9])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id B5F31887402;
	Thu, 16 Feb 2023 23:44:38 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 109F3492B0E;
	Thu, 16 Feb 2023 23:44:35 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 4AD601946597;
	Thu, 16 Feb 2023 23:44:35 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Thu, 16 Feb 2023 23:43:25 +0000
To: blinux-list@redhat.com
Subject: Re: audacity
In-Reply-To: <mailman.72.1676559958.3521.blinux-list@redhat.com>
References: <mailman.72.1676559958.3521.blinux-list@redhat.com>
Feedback-ID: 26663242:user:proton
MIME-Version: 1.0
Message-ID: <mailman.145.1676591074.3516.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.9
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGVsbG8sCgpBdWRhY2l0eSBpcyBmaW5lLCBzaG91bGQgYmUgYWJsZSB0byBkbyB3aGF0IHlvdSBu
ZWVkLgoKSnVzdCBtYWtlIHN1cmUgdG8gZG93bmxvYWQgdGhlIGxhdGVzdCB2ZXJzaW9uLCB0aGVy
ZSBhcmUgQXBwSW1hZ2VzIGFuZCBJCnRoaW5rIGZsYXRwYWtzIGFzIHdlbGwuCgpEaXN0cm8gcmVw
b3Mgb24gdWJ1bnR1IDIyLjA0IGFyZSBzdGlsbCBzaGlwcGluZyBBdWRhY2l0eSAyLCB3aGljaCBp
cwpwcmFjdGljYWxseSB1bnVzYWJsZSB3aXRoIHNjcmVlbnJlYWRlcnMuCgpJdCdzIGZpbmUgc2lu
Y2UgdmVyc2lvbiAzLgoKCkJlc3QgcmVnYXJkcwoKClJhc3Rpc2xhdgoKCkTFiGEgMTYuIDIuIDIw
MjMgbyAxNToyOSBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIG5hcMOtc2FsKGEp
Ogo+IEFueW9uZSBldmVyIHVzZWQgYXVkYWNpdHkgYmVmb3JlPwo+IEFsbCBJIHdhbnQgdG8gZG8g
d2l0aCBhbiBhdWRpbyBmaWxlIGlzIHRvIHJhaXNlIGl0cyB2b2x1bWUgYW5kIHRoZW4gc2F2ZSBp
dCBhZ2Fpbi4KPgo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+
IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QK
PgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQmxpbnV4
LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51eC1saXN0QHJlZGhhdC5jb20KaHR0cHM6Ly9saXN0bWFu
LnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo=

