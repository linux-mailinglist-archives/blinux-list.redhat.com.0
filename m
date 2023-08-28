Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B71F78B78E
	for <lists+blinux-list@lfdr.de>; Mon, 28 Aug 2023 20:51:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1693248698;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=dKSZi2ffBbdWe2yCVPPpEHfIj127vSicQTdfZPTsIY8=;
	b=dmATFxWrL2mEZqhWOgQNVK77ACPQQjHTEMsN9o5SvYjWMU0awVXE8MOjAvUQb8CtLyFjMU
	rqU9kDwPy1r77RJsLvOum/2CoYmp+quuQzc5NUEm769gLUJ4pmEttloJS2sUZvFUsTgC+a
	9PPTjDrs+jW5/Ih2m651gyhXnEB4rwU=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-564-LEcSOSkxOkK2DbK2qsPGIg-1; Mon, 28 Aug 2023 14:51:34 -0400
X-MC-Unique: LEcSOSkxOkK2DbK2qsPGIg-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com [10.11.54.2])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id AEB39823D69;
	Mon, 28 Aug 2023 18:51:32 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 921FB40D283A;
	Mon, 28 Aug 2023 18:51:32 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 01ED119465B9;
	Mon, 28 Aug 2023 18:51:32 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Mon, 28 Aug 2023 11:51:25 -0700
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: got knoppix talking
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <mailman.297.1693248212.1829980.blinux-list@redhat.com>
In-Reply-To: <mailman.297.1693248212.1829980.blinux-list@redhat.com>
Message-ID: <mailman.302.1693248691.1829983.blinux-list@redhat.com>
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

where can I get the cheat codes from?

On 8/28/2023 11:43 AM, Linux for blind general discussion wrote:
> This is what I did to get knoppix talking.
> Machines usually make two beeps the first is the machine starting up and
> the second beep is the grub beep.
> Just after the first beep:
> alt-b down-arrow control-u
> key in cheatcode and hit enter.
>
>
> -- Jude <jdashiel at panix dot com> "There are four boxes to be used in
> defense of liberty: soap, ballot, jury, and ammo. Please use in that
> order." Ed Howdershelt 1940.
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

