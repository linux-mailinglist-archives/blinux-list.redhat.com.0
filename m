Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id C5D00686D90
	for <lists+blinux-list@lfdr.de>; Wed,  1 Feb 2023 19:03:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1675274600;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=ivFR9mxhvFwoIiix3+zvgNbxl3UaryfaNurrs/EiMNw=;
	b=Rw3JUmKbzoyZWTceSOogdNdQnUctMJi7m/kcFcYD9V7K/eY4Hn9gtt6gyQ17fSkITUbT5A
	yocQZf8tQTCOFjYtBkf6ehT3HIRzECO5VWZuk3NynIVtaeadZrFeaqfmIqfhTf/40XrI/u
	pd/teIDcB/wSvA+fDRq7H0DqF6rWF8I=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-635-NwVbXmA4OQGdDHIkSupXTw-1; Wed, 01 Feb 2023 13:03:18 -0500
X-MC-Unique: NwVbXmA4OQGdDHIkSupXTw-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com [10.11.54.4])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id D35AD2932494;
	Wed,  1 Feb 2023 18:03:14 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 4AC0C2026D76;
	Wed,  1 Feb 2023 18:03:06 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id BB15119465B7;
	Wed,  1 Feb 2023 18:03:05 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Wed, 1 Feb 2023 11:02:45 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.0
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Attempting to boot Jenux in a vm.
Message-ID: <mailman.3614.1675274580.8173.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.4
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

SGV5IGFsbCwKCkp1c3QgcHVsbGVkIGRvd24gdGhlIGxhdGVzdCBKZW51eCB0byBnaXZlIGl0IGEg
dHJ5LCBidXQgZm9yIHNvbWUgcmVhc29uIApJIGNhbm5vdCBnZXQgYW55IHNwZWVjaCBvdXQgb2Yg
aXQuwqAgSSBoZWFyIHRoZSBiZWVwcyB3aGVuIHRoZSBWTSBib290cyAKdXAsIEkgY2FuIG9jciB3
aXRoIG52ZGEgYW5kIHNlZSBzZWxmLXRlc3QgcmVxdWVzdGVkLCBwbGVhc2Ugd2FpdCwgYW5kIAph
ZnRlciBhIHdoaWxlIHRoZSBtZW51IGNvbWVzIHVwLsKgIEkgY2FuIGFsc28gc2VlIHRoYXQgdGhy
b3VnaCBvY3IsIGJ1dCBJIApnZXQgbm8gc3BlZWNoIHdoZW4gaW5zaWRlIHRoZSB2bS4gSSd2ZSBj
aGVja2VkIHRvIG1ha2Ugc3VyZSB0aGUgc291bmQgCmNhcmRzIGFyZSBjb3JyZWN0LCBhbnlvbmUg
aGF2ZSBhbnl0aGluZyBlbHNlIEkgY2FuIHRyeT/CoCBJJ20gbm90IGZpbmRpbmcgCmFueSBkb2N1
bWVudGF0aW9uIGFueXdoZXJlLCB3aGljaCBpcyB3aHkgSSdtIGFza2luZyBoZXJlLgoKTWlrZS4K
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkJsaW51eC1s
aXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vbGlzdG1hbi5y
ZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QK

