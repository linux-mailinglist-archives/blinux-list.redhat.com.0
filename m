Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F3634E1D76
	for <lists+blinux-list@lfdr.de>; Sun, 20 Mar 2022 19:50:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1647802201;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=R/sBPTh8qwxn3ZTgNAF27uSYAipp668opmbdx9RMdiI=;
	b=Wmu235Xn+ukk2SjgU5sq54s2SPHmZWBG7mQ1xihe6k6KszDw7bZmoCIOZYeO8cdxAFs8Xe
	E6A+ZYlifJLMZzJktPLmr3gEw1Gp+gZBA7RHTnQp1WDbqKz4V2j1Ti+xA18zDD8mQKT2TL
	5mci9zcxmOgTglY/mUMzxwsPRl9IZWk=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-262-4qG0a7U9Ph-GHc2npW5Xlw-1; Sun, 20 Mar 2022 14:49:58 -0400
X-MC-Unique: 4qG0a7U9Ph-GHc2npW5Xlw-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com [10.11.54.5])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 78B2D80B71C;
	Sun, 20 Mar 2022 18:49:56 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 8DE567773;
	Sun, 20 Mar 2022 18:49:52 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 69066195354E;
	Sun, 20 Mar 2022 18:49:49 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Sun, 20 Mar 2022 14:49:26 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: OT: alexandria.org
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <mailman.2881.1647623735.111207.blinux-list@redhat.com>
 <mailman.2947.1647624813.111203.blinux-list@redhat.com>
 <mailman.2978.1647627242.111208.blinux-list@redhat.com>
 <mailman.3111.1647789229.111210.blinux-list@redhat.com>
 <mailman.3027.1647789716.111207.blinux-list@redhat.com>
In-Reply-To: <mailman.3027.1647789716.111207.blinux-list@redhat.com>
Message-ID: <mailman.3042.1647802188.111207.blinux-list@redhat.com>
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
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

R2l2ZW4gdGhhdCBpdCdzIGEgcHJldHR5IG5ldyBwcm9qZWN0LCB0aGlzIHdvdWxkIGJlIGFuIGlk
ZWFsIHRpbWUgZm9yIApmb2xrcyB0byBzZW5kIHRoZW0gZmVlZGJhY2suCgoKSSBmb3VuZCB0aGlz
IG9uIHRoZWlyIGFib3V0IHBhZ2U6CgoiUGxlYXNlIGNvbnRhY3QgdXMgYXQgaW5mb0BhbGV4YW5k
cmlhLm9yZyBpZiB5b3Ugd2FudCB0byBnZXQgaW52b2x2ZWQsIAp3YW50IHRvIHN1cHBvcnQgdGhp
cyBpbml0aWF0aXZlIG9yIGhhdmUgYW55IHF1ZXN0aW9ucy4iCgogwqDCoMKgIFRoaXMgZGVmaW5p
dGVseSBsb29rcyBwcm9taXNpbmcsIGFuZCBJJ2xsIG1vc3QgbGlrZWx5IHNoYXJlIHNvbWUgCmZl
ZWRiYWNrIHRoZXJlLCBzaW5jZSBhbHRob3VnaCB0aGVpciBjb2RlIGlzIGhvc3RlZCBvbiBhIE1p
Y3Jvc29mdCAKd2Vic2l0ZSB3aGVyZSBJIG5laXRoZXIgaGF2ZSBub3Igd2FudCBhbiBhY2NvdW50
LCB0aGV5IGRvIHRha2UgYWxsIGtpbmRzIApvZiBmZWVkYmFjaywgc3VnZ2VzdGlvbnMgYW5kIHF1
ZXN0aW9ucyBhdCBhbiBlbWFpbCBhZGRyZXNzIHRoYXQgYW55b25lIAp3aG8gaGFzIGFuIGVtYWls
IGFjY291bnQgY2FuIHVzZS4KCkt5bGUKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRo
YXQuY29tCmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4
LWxpc3QK

