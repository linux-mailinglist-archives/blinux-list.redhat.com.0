Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id E3ED853AD37
	for <lists+blinux-list@lfdr.de>; Wed,  1 Jun 2022 21:27:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1654111665;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=K7GMDz7gNEnHy/aHqvnWPiaPtBJ8Um+6KMDKTDgULns=;
	b=fjZDp0rJBQcwG5HsoXKte+iAAt1meyw3tJTvS2gw7JY5pDHqqOm9SB/q0/YEISH/6qlcQK
	7n6yoTG8I4CvEyV8PI2gSSUAadW0lfRFRsUkUURhlY9d6WfxnlFPqZZVTq4GyeqfBV9BaP
	8Sf0kv9LmTV0bwKVv9FFs9PxuPr7Iqo=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-171-924AQdLcMp60z_7yiSt-Eg-1; Wed, 01 Jun 2022 15:27:42 -0400
X-MC-Unique: 924AQdLcMp60z_7yiSt-Eg-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com [10.11.54.1])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 22678185A794;
	Wed,  1 Jun 2022 19:27:40 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 3219D40CF8EB;
	Wed,  1 Jun 2022 19:27:36 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 56AAB19452D8;
	Wed,  1 Jun 2022 19:27:35 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Wed, 1 Jun 2022 21:27:21 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Subject: Fwd: How to find my notebook's model number?
References: <5b3628d3-4350-713b-1944-8e949a584598@slint.fr>
To: Linux for blind general discussion <blinux-list@redhat.com>
In-Reply-To: <5b3628d3-4350-713b-1944-8e949a584598@slint.fr>
Message-ID: <mailman.20817.1654111655.111208.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.1
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgIEJyYW5kdCBhbmQgQWxsLAoKc28sIHdpdGggdGhlc2VzIGxpbmVzIG9mIHlvdXIgb3V0cHV0
Ogo+ICAgICBwcm9kdWN0OiBCT0hCLVdBWDkgKEMxNzApCj4gICAgIHZlcnNpb246IE0xMTIwCj4g
ICAgIHNlcmlhbDogUEFRUE0yMTMxOTAwMDMyOAoKWW91IGhhdmUgdGhlIGluZm9ybWF0aW9uIHlv
dSBuZWVkLCByaWdodD8KCkNoZWVycywKRGlkaWVyCgpMZSAwMS8wNi8yMDIyIMOgIDE0OjE0LCBM
aW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIGEgw6ljcml0wqA6Cj4gSGkgRGlkaWVy
IGFuZCBhbGwsCj4gCj4gSSBkaWQgdGhlIGZvbGxvd2luZyBhcyBzdXBlciB1c2VyOgo+IAo+ICNs
c2h3IC1udW1lcmljfGNhdCA+IGluZm8udHh0Cj4gCj4gSGVyZSBpcyBteSBvdXRwdXQuCj4gCj4g
YnJhbmR0LnNsaW50LmxhcHRvcAo+IMKgwqDCoCBkZXNjcmlwdGlvbjogTm90ZWJvb2sKPiDCoMKg
wqAgcHJvZHVjdDogQk9IQi1XQVg5IChDMTcwKQo+IMKgwqDCoCB2ZW5kb3I6IEhVQVdFSQo+IMKg
wqDCoCB2ZXJzaW9uOiBNMTEyMAo+IMKgwqDCoCBzZXJpYWw6IFBBUVBNMjEzMTkwMDAzMjgKPiDC
oMKgwqAgd2lkdGg6IDY0IGJpdHMKPiDCoMKgwqAgY2FwYWJpbGl0aWVzOiBzbWJpb3MtMy4yLjAg
ZG1pLTMuMi4wIHNtcCB2c3lzY2FsbDMyCj4gwqDCoMKgIGNvbmZpZ3VyYXRpb246IGNoYXNzaXM9
bm90ZWJvb2sgZmFtaWx5PU1hdGVCb29rIEQgc2t1PUMxNzAKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApCbGlu
dXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlz
dGluZm8vYmxpbnV4LWxpc3QK

