Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 68D86696C97
	for <lists+blinux-list@lfdr.de>; Tue, 14 Feb 2023 19:17:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1676398659;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=8CCBjIJ4/t4fh6LXMdPN3lYmNF8IfzfCd/HwQcUqS70=;
	b=cwu0W1K5dndPTXSXqMwJFcxGbQI8PFAZrkO+B0dFeHLw3jnJZvlUfj+FE6OcqjxYPn7IiT
	Z47X/cAH61Z/eCWnsZBjYNkw+M3NzOG0RW3fOMFHyflJspvi4CR8ypjc3tmqlYT0jJFrLN
	91GqTVhVhVSEr6Zn7k8QtO4u2yWBYoM=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-549-hd000gglMGKK2ZDyqPoFcw-1; Tue, 14 Feb 2023 13:17:36 -0500
X-MC-Unique: hd000gglMGKK2ZDyqPoFcw-1
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com [10.11.54.9])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id ACD3938173C6;
	Tue, 14 Feb 2023 18:17:34 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 35B37492B03;
	Tue, 14 Feb 2023 18:17:24 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 703C019465A0;
	Tue, 14 Feb 2023 18:17:23 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Tue, 14 Feb 2023 13:17:18 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.2
To: Blinux-list@redhat.com
Subject: install desktop in wsl2
Message-ID: <mailman.540.1676398642.1039595.blinux-list@redhat.com>
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
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

IMKgwqDCoCBoaSwgaSdtIHRyeWluZyB0byBpbnN0YWxsIGEgZGVza3RvcCBvbiB1YnVudHUgMjIw
NCBpbiB3c2wyLiBJJ3ZlIAp0cmllZCBnbm9tZSBhbmQgbWF0ZSBhbmQgSSBrZWVwIGdldHRpbmcg
YSBtZXNzYWdlIGFib3V0IGFjcGkgZW5kcG9pbnQgCm5vdCBiZWluZyBjb25uZWN0ZWQgdGhpcyBz
bG93cyB0aGUgd3NsIGRvd24gYW5kIGl0IHRha2VzIGZvcmV2ZXIgdG8gZG8gCmFueXRoaW5nIHdp
dGggc3Vkby4gZG9lcyBhbnlvbmUga25vdyBob3cgdG8gZml4IHRoaXMgcHJvYmxlbSB0aGFua3MK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkJsaW51eC1s
aXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vbGlzdG1hbi5y
ZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QK

