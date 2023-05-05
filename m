Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 661376F7E17
	for <lists+blinux-list@lfdr.de>; Fri,  5 May 2023 09:43:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1683272634;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=fg46qI2qBoynwcYZEpHYIOE5S8BKFOMcXH8RFwZqIUY=;
	b=U9OsxJkpStbW4May6ths54FBf7DefWgiMNxdOAy6MpDHPoqnCbyYhWpSlTAVvR3eWhvQCV
	SlbtZg8uXGJE+9VZsJ/1MEXqPsoUrfTv393h/+dTLhgVkjge0jz7LvYHLwvEEdyfgXEMUR
	oCHngXffdG3yJ3TH8dIjnIT2kpCs7wE=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-91-2sCdeRhsNi-vtGrkxXCGjQ-1; Fri, 05 May 2023 03:43:52 -0400
X-MC-Unique: 2sCdeRhsNi-vtGrkxXCGjQ-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com [10.11.54.6])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 5BA9E1824603;
	Fri,  5 May 2023 07:43:50 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 96CD52166B33;
	Fri,  5 May 2023 07:43:49 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 159B01946A4C;
	Fri,  5 May 2023 07:43:49 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Fri, 5 May 2023 09:43:41 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.1
Subject: Re: Anything dmenu-like?
To: blinux-list@redhat.com
References: <mailman.1902.1683269376.290943.blinux-list@redhat.com>
In-Reply-To: <mailman.1902.1683269376.290943.blinux-list@redhat.com>
Message-ID: <mailman.2027.1683272628.290944.blinux-list@redhat.com>
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
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

c2d0ay1tZW51IHdvcmtzIHdlbGw6IGh0dHBzOi8vZ2l0aHViLmNvbS9ud2ctcGlvdHIvc2d0ay1t
ZW51ClRoZSBhdXRob3Igbm93IHJlY29tbWVuZHMgb3RoZXIgaGUgYWxzbyBkZXZlbG9wIGJ1dCBk
aWRuJ3QgdHJ5IHRoZW0KCkkgc2hpcCBpdCBpbiBTbGludCBmb3IgaTMgd2l0aCBJMzggaHR0cHM6
Ly9naXQuc3Rvcm11eC5vcmcvc3Rvcm0vSTM4CgpDaGVlcnMsCkRpZGllcgotLSAKRGlkaWVyYXRz
bGludGRvdGZyCgpMZSAwNS8wNS8yMDIzIMOgIDA4OjQ5LCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJh
bCBkaXNjdXNzaW9uIGEgw6ljcml0wqA6Cj4gSnVzdCBjaGVja2luZyBpbiB0byBhc2ssIHNpbmNl
IEkgd2FzIHBva2luZyBhcm91biB0aGUgQVVSIGVhcmxpZXIKPiAKPiBJcyB0aGVyZSBhbnl0aGlu
ZyBjbG9zZSB0byBkbWVudSB0aGF0J3MgdXNlYWJsZSB3aXRoIE9yY2E/IEkgbWVhbiB0aGF0IGhh
cyBhCj4gc2VhcmNoIGFuZCBmdXp6eSBtYXRjaGluZywgYXMgd2VsbCBhcyBob3cgZG1lbnUgb3Bl
cmF0ZXMgYW5kIGlzIGxpZ2h0d2VpZ2h0IAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51eC1saXN0QHJl
ZGhhdC5jb20KaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGlu
dXgtbGlzdAo=

