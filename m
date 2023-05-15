Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A08E703DE5
	for <lists+blinux-list@lfdr.de>; Mon, 15 May 2023 21:55:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1684180531;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=Pi/BfJ0tB+OD3I0il/NqdUfkOIwIv91ULYn3eAK47Lo=;
	b=h4Q0t4pvhVVwgMHX7FBo64taliJw5gC0mhfag+ZBYFEuYSgD81Sq8BmGX3RT1W/UcYGOIL
	tHciSOXNE8b+Y/wnf/WQvh3gYS7EJra286MZW1FUYQnMfV3uFSrTacd1NOQkZb4GYcnMFo
	YQ/PoSJwvILMHKP0u0CsrHPUlvbcg4Y=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-620-wqmTuE0gNgmIvylNS5ccqQ-1; Mon, 15 May 2023 15:55:27 -0400
X-MC-Unique: wqmTuE0gNgmIvylNS5ccqQ-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com [10.11.54.7])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 4A2D385C06E;
	Mon, 15 May 2023 19:55:25 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 81510140E917;
	Mon, 15 May 2023 19:55:24 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 5C89119465A8;
	Mon, 15 May 2023 19:55:21 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Mon, 15 May 2023 15:55:15 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: No speech after loging into my arch bocx using gnome 44.
To: blinux-list@redhat.com
References: <mailman.424.1684178441.1505523.blinux-list@redhat.com>
In-Reply-To: <mailman.424.1684178441.1505523.blinux-list@redhat.com>
Message-ID: <mailman.405.1684180520.1505526.blinux-list@redhat.com>
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

Ck9uIDE1LzUvMjMgMTU6MjAsIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3Jv
dGU6Cj4gSnVzdCB1cGRhdGVkIG15IGFyY2ggYm94IHdpdGggdGhlIGxhdGVzdCA2LjMuMi0xIGFu
ZCBub3Bvd29yY2EgZHBvZXNudCAKPiBzcGVhayBhZnRlciBsb2dpbmcgaW7CoMKgIFNwZWFrdXAg
d29ya3MgZmluZS7CoCBBbnlvbmUgZWxzZSBoYXZpbmcgdGhpcyAKPiBwcm9ibGVtP8KgIFRoYW5r
cy4KPgpJIHVzdCByZWJvb3RlZCBtaW5lIGFuZCBJJ20gbm90IGV4cGVyaWVuY2luZyB0aGUgcHJv
YmxlbS4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkJs
aW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vbGlz
dG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QK

