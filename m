Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id E1964705B16
	for <lists+blinux-list@lfdr.de>; Wed, 17 May 2023 01:16:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1684279016;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=kvX7eYC7bCzvvlByE6RMPj7Aw5lbot7P+bpSy2iTynI=;
	b=O/4dEwWK3D5/RC2KiPOyzyJQPXASBKhsMNuVRlHkXwT0PiL57fxlGGRR/TYZaOrah/6+a/
	2WECPtFsUQrcqCC8te/eWhuj97/yn7Q4SGFdJW70R4i9NvpukWlG7aGI0Ulv6B9A0f/5Ri
	560FqTlZH19JevrZ7mHmkEE1fJ51OIs=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-663-xVEDZ1h-My-Wqh-qxno6zg-1; Tue, 16 May 2023 19:16:53 -0400
X-MC-Unique: xVEDZ1h-My-Wqh-qxno6zg-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com [10.11.54.2])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id DD11C85A5B1;
	Tue, 16 May 2023 23:16:51 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 3F8F84078908;
	Tue, 16 May 2023 23:16:47 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 5F7AE19465B3;
	Tue, 16 May 2023 23:16:46 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Tue, 16 May 2023 19:16:58 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: blinux-list@redhat.com
Subject: My try on making hexchat accessible
Message-ID: <mailman.665.1684279005.1505526.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.2
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

So I have been trying for months to make hexchat more accessible. This 
is what I'm using.

#!/usr/bin/env bash

tail -fn 1 "hexchat.log" | tee >(spd-say -r +99 -y voxin -e) >(yad 
--text-info --show-cursor --no-buttons)

it speaks with spd-say and gives you a yad dialog for reading output. 
Any ways I could improve the script? Also I read something on here about 
nvda2speech do you think I could get it to work with nda and wine using 
adiirc? The only thing about hexchat that is inaccessible is the output 
window.

Thanks for any help or suggestions.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

