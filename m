Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id CC1D64DD0B8
	for <lists+blinux-list@lfdr.de>; Thu, 17 Mar 2022 23:29:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1647556151;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=8dWtOIuSb2nLJVGDCooRwQPTBh5PeA17LzD0PRwefGY=;
	b=Y7tR0enDL/ZDdOP0KpAiXCq/mcPhBHNLi2UCznbjXy3uS+fDwBfHunrVAqHjAQhgoqUCxR
	xWKjGlK5QX0FXSoavrPlqxyLfhX2xO7nAl55amFEPj1slkKTYkYEb0KvDv+rVFbw4cSrcr
	Oqnsy8+OO7Ra6XIHsAZ/owHEyu2/BSY=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-214-iJK4H-qJPeOd1rFTKZTN9Q-1; Thu, 17 Mar 2022 18:29:08 -0400
X-MC-Unique: iJK4H-qJPeOd1rFTKZTN9Q-1
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com [10.11.54.9])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id A8D801C0690A;
	Thu, 17 Mar 2022 22:29:06 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 2A0414029A6;
	Thu, 17 Mar 2022 22:29:06 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 7E4F2192F6C5;
	Thu, 17 Mar 2022 22:29:05 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Thu, 17 Mar 2022 23:28:33 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: getting started with Liblouis
To: blinux-list@redhat.com
References: <6df9e5ca-9db1-3155-3afe-24b47cd7c183.ref@verizon.net>
 <mailman.2021.1647388814.111205.blinux-list@redhat.com>
 <mailman.2147.1647415850.111205.blinux-list@redhat.com>
 <mailman.2542.1647450204.111203.blinux-list@redhat.com>
 <mailman.2599.1647452270.111210.blinux-list@redhat.com>
 <mailman.2537.1647459655.111209.blinux-list@redhat.com>
 <81ce583f-b364-df9e-a3e7-64b96d60dcdb@slint.fr>
 <YjOHoif5PlSS753o@abilitiessoft>
 <mailman.2889.1647546876.111202.blinux-list@redhat.com>
 <mailman.2703.1647549153.111205.blinux-list@redhat.com>
In-Reply-To: <mailman.2703.1647549153.111205.blinux-list@redhat.com>
Message-ID: <mailman.2815.1647556144.111210.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.9
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

CkxlIDE3LzAzLzIwMjIgw6AgMjE6MzIsIEkgd3JvdGU6Cj4gV2hpbGUgSSBhbSBhdCBpdCwgSSB3
aWxsIGFsc28gcGFja2FnZSBsaWJsb3Vpc3V0ZG1sIDIuMTEuMCBmb3IgU2xpbnQ2NC0xNS4wLgpE
b25lLgoKQ2hlZXJzLApEaWRpZXIKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQu
Y29tCmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxp
c3QK

