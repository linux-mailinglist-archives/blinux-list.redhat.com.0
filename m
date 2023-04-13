Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id ED38F6E165A
	for <lists+blinux-list@lfdr.de>; Thu, 13 Apr 2023 23:14:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1681420446;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=LolV7/zs+dzHBU2cV7eF8HkSYmH9moceCGvkyMb2dlI=;
	b=AuM/U4FojFFRP+5k1zpUWKARxJ6uYuWgb5D1L2oDw5q0ysPEweMm5b2pu9XiLT6m/Jxl34
	RAx0TLfHafAk+Zm0Ma7gasZab7iMj2uCmbrj6RAqi3ZAZ4RFzieVtDSGTZfIWegFTuyonW
	moLyPwz13XTHVKMOLpnAnYgZ0yRVHCg=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-20-4X7UELtfPqSkKyGyDWDccg-1; Thu, 13 Apr 2023 17:14:04 -0400
X-MC-Unique: 4X7UELtfPqSkKyGyDWDccg-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com [10.11.54.8])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 27616185A78B;
	Thu, 13 Apr 2023 21:14:02 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 0FBC6C1602A;
	Thu, 13 Apr 2023 21:14:02 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 834CC1946A75;
	Thu, 13 Apr 2023 21:14:01 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Thu, 13 Apr 2023 17:13:50 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Subject: Re: In the market for a new Desktop.
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <mailman.1841.1681419307.2632801.blinux-list@redhat.com>
 <mailman.2007.1681419804.2632806.blinux-list@redhat.com>
In-Reply-To: <mailman.2007.1681419804.2632806.blinux-list@redhat.com>
Message-ID: <mailman.1964.1681420441.2632807.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.8
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

I thought about the custom build myself, but from what I see at the 
moment, the CPU and motherboard bundles are running close to $500 now, 
and that's not even taking into account the RAM. The good thing is that 
you won't be saddled with an OS that you have to get rid of, because 
there is no OS on a custom build other than the one you put on it or 
hire a builder to put on it, and the boot firmware should just boot up 
from the optical drive or USB you plug into it before you transplant the 
hard drives. That said, you shouldn't even have to worry about 
installing a new OS from scratch unless your SSD is damaged. This is 
because Linux is very easy to transfer from one PC to the next just by 
taking the OS drive out of one and putting it into the other. Since in 
that case you wouldn't really need to worry about hard drives sucking up 
your funds, your CPU, motherboard, RAM, case and optical drive should 
most likely stay under $700, and definitely under the $1,000 high side 
of your budget without making your life needlessly difficult or making 
you get help just to boot it up for the first time.

~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

