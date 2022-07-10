Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id D64A656CDAB
	for <lists+blinux-list@lfdr.de>; Sun, 10 Jul 2022 10:06:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1657440370;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=o34dK1kdvbaLh2PPIRA6C3VmPy226BNQgf3F6l61PHI=;
	b=gy6e3BDB4CTfP8IhVjOYhn6mzFaSV6ESpH5vnTej+JVUuFdQMS2VztyS/sXS6SvurGeAFi
	lPgT36cJWdvhSubXsT7zYp4ZP+TZZQrnzjJkTdXIXQErX8+/S9PdoIhB7BqaCWmQEJiXlM
	4BEsA8w2xVceQV9ZiPVsms8k5MRW+PA=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-237--P4XxMvtOgWWp9ixPbEKvQ-1; Sun, 10 Jul 2022 04:06:08 -0400
X-MC-Unique: -P4XxMvtOgWWp9ixPbEKvQ-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com [10.11.54.3])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 4CCFC3804507;
	Sun, 10 Jul 2022 08:06:07 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id CF9421121315;
	Sun, 10 Jul 2022 08:06:02 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 23130194707B;
	Sun, 10 Jul 2022 08:06:02 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Sun, 10 Jul 2022 10:05:46 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: I3wm, any progress?
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <mailman.32420.1657364089.111201.blinux-list@redhat.com>
 <mailman.32225.1657370151.111208.blinux-list@redhat.com>
In-Reply-To: <mailman.32225.1657370151.111208.blinux-list@redhat.com>
Message-ID: <mailman.32342.1657440361.111208.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Hi guys,

I've tried my hand at i3, but, just, no. RatPoison with the Strychnine 
(spelling) tool for setup works better in all ways for the blindy.

Warm regards,

Brandt Steenkamp

Sent using Thunderbird from Windows 11

On 2022/07/09 14:34, Linux for blind general discussion wrote:
> Hi,
>
> Yes, I use I3WM as my daily driver on Arch Linux. The trick with being
> productive with I3 is to configure its config file (mine is in
> ~/.config/i3/config).
>
> The manual is straightforward. Since I do not do the taskbar checking,
> that is where you may have problems for checking notifications and
> battery status etc.
>
> Linux for blind general discussion <blinux-list@redhat.com> writes:
>
>> So, I was told the other week I3 works with Orca.
>>
>> Anyone had any luck with getting i3 to work with Orca up till now? I
>> mean, if it can be made to work, it'd suit my laptop more than a full
>> fledged desktop. So I'm stil curious on this
>>
>> _______________________________________________
>> Blinux-list mailing list
>> Blinux-list@redhat.com
>> https://listman.redhat.com/mailman/listinfo/blinux-list
>>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
>

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

