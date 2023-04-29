Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id B78F36F2354
	for <lists+blinux-list@lfdr.de>; Sat, 29 Apr 2023 08:22:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1682749356;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=teqPfxmHKfXJ0J1rNvq08MNdoOJI0Ntt3JFt+APkYgQ=;
	b=CaMsMDWlec4UHGKFH8JlPPkyPi6oEZDl5K5JOofslh1aJ+uNG4/bFp0fC698Azko2T0xMZ
	s+hILEAvC5xGjKqLezRacGth6UHuXHNW6+zZJRcPifj1/1a4bV/MnraRSPEpxw1DlztNFg
	NiefX05NuitBbcWmx1cnuhStZBH4eHQ=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-47-3xHyQY7gOU2rSYr9EpKsxA-1; Sat, 29 Apr 2023 02:22:32 -0400
X-MC-Unique: 3xHyQY7gOU2rSYr9EpKsxA-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com [10.11.54.3])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id E13F329A9D3F;
	Sat, 29 Apr 2023 06:22:30 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 389641121315;
	Sat, 29 Apr 2023 06:22:23 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 82B2A1946A52;
	Sat, 29 Apr 2023 06:22:22 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Sat, 29 Apr 2023 07:22:15 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.1
Subject: Re: Kde accessibility docker question
To: blinux-list@redhat.com
References: <mailman.2100.1682687131.2351824.blinux-list@redhat.com>
 <mailman.2134.1682707136.2351823.blinux-list@redhat.com>
In-Reply-To: <mailman.2134.1682707136.2351823.blinux-list@redhat.com>
Message-ID: <mailman.20.1682749341.290943.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.3
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Hopefully, speaking of improving KDE apps...they improve konsole as well



On 4/28/23 19:38, Linux for blind general discussion wrote:
>
> On 28/4/23 09:05, Linux for blind general discussion wrote:
>> I don't know where was it posted, but 5 6 months ago, someone posted 
>> a tutorial, how to test new KDE Accessibility with all commands 
>> needed to get it working with Orca, but I lost the email and I can 
>> not find it with Google. Please, can you help?
>
> I tried KDE accessibility a few years ago. It was simply a matter of 
> installing the appropriate package group and then starting Orca when 
> KDE was running, if I remember correctly.
>
> Some aspects of the desktop environment were accessible, but many were 
> not. However, the KDE community has been devoting increased attention 
> to accessibility recently, so there may be improvements in the latest 
> release.
>
> I would suggest installing it and then attempting to run Orca.
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

