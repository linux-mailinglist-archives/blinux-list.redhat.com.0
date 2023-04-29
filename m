Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 49A0D6F2541
	for <lists+blinux-list@lfdr.de>; Sat, 29 Apr 2023 17:45:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1682783135;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=vrud4+pSGvoQOhd0kJ+aFzadqfe7wkmKaTj37Lpbg1g=;
	b=i5mD5THc0m0M1AFLHKbfOH47xYLfL8e7FcHIZV0X/FAYEuSwTlmX7lr3LJh6pbupfXAhch
	VksfPI5074TF8BIasFk3MmrhhO8TLApwEzEZy+dWrSG0iaRx9oT24C81+iDRCUNbBIhmQ/
	X1QRobhgXWJpxkjgonl/eVCO2mIctrU=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-633-HkLbtZbPNAWkjyq-Z5VfLQ-1; Sat, 29 Apr 2023 11:45:31 -0400
X-MC-Unique: HkLbtZbPNAWkjyq-Z5VfLQ-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com [10.11.54.5])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id B652A299E740;
	Sat, 29 Apr 2023 15:45:29 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 88B9551E3;
	Sat, 29 Apr 2023 15:45:29 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 253091946A49;
	Sat, 29 Apr 2023 15:45:29 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Sat, 29 Apr 2023 17:43:04 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.1
Subject: Re: Kde accessibility docker question
To: blinux-list@redhat.com
References: <mailman.2100.1682687131.2351824.blinux-list@redhat.com>
In-Reply-To: <mailman.2100.1682687131.2351824.blinux-list@redhat.com>
Message-ID: <mailman.64.1682783128.290939.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.5
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: de-LU, en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Howdy Pavel,

sorry for the late answer. you can find the tutorial on my patron page.
https://www.patreon.com/posts/test-of-current-72147479

there was a lot of improvement in the last 2 versions of KDE. I just 
work on Konsole (Terminal Emulator of KDE). Its not complete but a lot 
improved. Sadly i lack spare time til October (as i have to hit a 
project deadline for my per day job). But i come up as soon as its ready.

cheers chrys

Am 28.04.23 um 15:05 schrieb Linux for blind general discussion:
> Hi,
>
> I don't know where was it posted, but 5 6 months ago, someone posted a 
> tutorial, how to test new KDE Accessibility with all commands needed 
> to get it working with Orca, but I lost the email and I can not find 
> it with Google. Please, can you help? Maybe it was here, but maybe in 
> old Orca mailing list.
>
> Thanks,
>
> Pavel
>
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
>

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

