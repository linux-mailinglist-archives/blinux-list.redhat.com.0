Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 2073E65F7F7
	for <lists+blinux-list@lfdr.de>; Fri,  6 Jan 2023 01:03:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1672963402;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=PxFUnsfjjwHd6jpHcp8hkwRuydSDfDQfYByCjr58c80=;
	b=T+goJqxC8IPvZMrr6deef+LrFKtS+TMzZRMaFT2+XQ8yeaoCUYyuAZe1MevOY2crQjUMv/
	oC47gILM8jhZIdMiPuzGF8CgU2Wl4wkNFf3Gvip3P40NGddG40YyXZgiuPcl/LcPkj1d7R
	G7ZXkpnN3c44nYisMNQcSu7R6ExXACA=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-396-F6_mXbIqNzy4KOSw8o7_5g-1; Thu, 05 Jan 2023 19:03:19 -0500
X-MC-Unique: F6_mXbIqNzy4KOSw8o7_5g-1
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com [10.11.54.10])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id E6CAF8027FE;
	Fri,  6 Jan 2023 00:03:17 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 34042492D8B;
	Fri,  6 Jan 2023 00:03:17 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id A619619465A0;
	Fri,  6 Jan 2023 00:03:15 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Thu, 5 Jan 2023 19:03:06 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: ibm oracle cloud free teer linux version
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <mailman.3123.1672962483.2515662.blinux-list@redhat.com>
In-Reply-To: <mailman.3123.1672962483.2515662.blinux-list@redhat.com>
Message-ID: <mailman.3124.1672963395.2515662.blinux-list@redhat.com>
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

Unfortunately I don't believe they have anything that has ISPConfig 
already installed. For now, to get it working, you will still need 
Ubuntu 20.04 if they still offer that, as ISPConfig's 22.04 support has 
yet to emerge from the beta cycle as far as I know.


I have had good luck with Hestia Control Panel

https://hestiacp.com/

which does support Ubuntu 20.04 and 22.04 as well as Debian I think 10 
and 11. Neither distro includes Hestia Control Panel in the 
installation, but installing and setting it up is actually much easier 
than getting ISPConfig running on a server for the first time. There is 
even an online configurator that will allow you to copy and paste the 
command line you will use to perform the installation once you get the 
installation script downloaded on your server. I have installed plenty 
of these on my own Oracle Cloud and other servers, so if you need any 
help, I should be able to answer any questions you may have.

~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

