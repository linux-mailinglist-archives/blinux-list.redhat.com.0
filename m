Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id D8182742B27
	for <lists+blinux-list@lfdr.de>; Thu, 29 Jun 2023 19:25:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1688059550;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=pdWItgv9OuTNENA9AyoG/GN+CfjVo0EGVeu8lDMSHho=;
	b=IUlxyi9HEE4Xw6UlGdnHX9xMuVe2Oksi+t7R9o/bSR94nzB3VeS1SUTmBjXZjfw0Aa0u6g
	JiHEMG49kQnnh4bS+YFXwA8EcABtWlWYdtbaTSP7hF/WftfoVsKmDm3GIsUQycZSeA2c9z
	MLAirM0gD/sDLdASvR4y38PSlaLRItQ=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-376-qKxhhfTCOSuUhjKNaFgN0w-1; Thu, 29 Jun 2023 13:25:46 -0400
X-MC-Unique: qKxhhfTCOSuUhjKNaFgN0w-1
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com [10.11.54.10])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 76AD4800159;
	Thu, 29 Jun 2023 17:25:43 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 4A6734CD0C2;
	Thu, 29 Jun 2023 17:25:39 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 6BFA61946A66;
	Thu, 29 Jun 2023 17:25:38 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Thu, 29 Jun 2023 13:25:27 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: The Weirdness Just Keeps on Coming (was Can I run a .bat file
 from basica
To: blinux-list@redhat.com
References: <mailman.1068.1687974160.3098368.blinux-list@redhat.com>
 <mailman.1101.1687976238.3098364.blinux-list@redhat.com>
 <mailman.964.1687976680.3098361.blinux-list@redhat.com>
 <mailman.962.1688008087.3098369.blinux-list@redhat.com>
In-Reply-To: <mailman.962.1688008087.3098369.blinux-list@redhat.com>
Message-ID: <mailman.1171.1688059538.3098363.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.10
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

I think I have just found a way to save you a ton of trouble.

https://github.com/rwtodd/bascat

This does say that it is written in powershell, but other branches are 
mentioned that do the same thing in other languages. You may be 
especially interested in the branch called rust-version. Although this 
is listed as a stale branch, it most likely will still do what you need.


You may also be able to use a gwbasic decoder to convert the program to 
text, as gwbasic and basica I believe are similar. The original gwbasic 
source code that Microsoft released in 2020 is the assembly code from 
the 1983 version, and gwbasic and basica are said to be functionally 
identical, so although your mileage may vary, it just may work. 
Incidentally, gwbasic has already been built to run on FreeDOS, and 
therefore should also run on dosemu as well.

~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

