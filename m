Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 879737571BA
	for <lists+blinux-list@lfdr.de>; Tue, 18 Jul 2023 04:21:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1689646916;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=zz48b4IhFerVRX7ihP+sx9arAEoDk7ThzhQr5XYox7E=;
	b=SmYpta+7MDZMoK449kSdKwyu4/+NYW1dFcIMG0Wahf8McqwbAGXk80WJmkk+eOCSE6MaAi
	CQ/SxC7vKgs2KyYj6NG6a8tYQGmuzPecFqXPLUhsB+36/1SReAQmlcL1xLeRxHH6Qi0Jsp
	6iF548hVJpYk3uw5NGUJdOZqt3rdhR4=
Received: from mimecast-mx02.redhat.com (66.187.233.73 [66.187.233.73]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-297-2rqlSQRuPDGwOexVumE1Kw-1; Mon, 17 Jul 2023 22:21:52 -0400
X-MC-Unique: 2rqlSQRuPDGwOexVumE1Kw-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com [10.11.54.7])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id C97A41C28CE1;
	Tue, 18 Jul 2023 02:21:50 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 8F1241454143;
	Tue, 18 Jul 2023 02:21:46 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id D89C31946595;
	Tue, 18 Jul 2023 02:21:45 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
To: "Blinux-list@redhat.com" <Blinux-list@redhat.com>
Subject: Fixing a corrupted partition table using orca?
Thread-Topic: Fixing a corrupted partition table using orca?
Thread-Index: AQHZuR6WpczColbsEEiFKVPKxpBG0g==
Date: Tue, 18 Jul 2023 02:21:40 +0000
Accept-Language: en-US
MIME-Version: 1.0
Message-ID: <mailman.287.1689646905.687810.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.7
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-ID: <3CFE3AE8126D8749A365EAAE06049A49@sct-15-20-4755-11-msonline-outlook-e13cf.templateTenant>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGksDQpNeSBMaW51eCBtYWNoaW5lIGhhcyBhIGNvcnJ1cHRlZCBwYXJ0aXRpb24gdGFibGUuDQpJ
cyBpdCBwb3NzaWJsZSBmb3IgbWUgdG8gZml4IGl0LCB1c2luZyB0aGUgb3JjYSBzY3JlZW4gcmVh
ZGVyPw0KSeKAmW0gdXNpbmcgTGludXggTWludCAyMS4xIHdpdGggT3JjYSA0Mi4NCiANCg0KVGhh
bmtzLA0KSmVzc2ljYSBEYWlsCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29t
Cmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QK

