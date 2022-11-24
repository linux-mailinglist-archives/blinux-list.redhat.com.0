Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C74263747F
	for <lists+blinux-list@lfdr.de>; Thu, 24 Nov 2022 09:54:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1669280043;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=OVzxPUkCJFPsMMfshKTGry6Ieyx5Cf80JRVUij7dnM0=;
	b=gJk4gAhb9ynJtTfeKEjSs+QDdW+SJkSLI4i587pdoIDrF3q9ZVW/YvD0S0CboOYU9EHVcA
	Otp3+LIB103MCBiSE3gGdyR8burGobmYMRwYmoMOzsnKm8chljtEt3fAXvZ8wxl6kvSWTc
	uFSUHWszqWQrB71rgXZK2zw/F1ruAg0=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-260-FVBaNGasOpubn8p76xlZIA-1; Thu, 24 Nov 2022 03:54:00 -0500
X-MC-Unique: FVBaNGasOpubn8p76xlZIA-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com [10.11.54.5])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id AC1051C05133;
	Thu, 24 Nov 2022 08:53:58 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 3CC8F4EA4E;
	Thu, 24 Nov 2022 08:53:58 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id DD1E71946A45;
	Thu, 24 Nov 2022 08:53:44 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Thu, 24 Nov 2022 16:53:37 +0800 (CST)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: How to hear sounds from line-in jack? (fwd)
In-Reply-To: <mailman.1556.1669278785.6934.blinux-list@redhat.com>
References: <mailman.1365.1669212143.6934.blinux-list@redhat.com>
 <mailman.1556.1669278785.6934.blinux-list@redhat.com>
MIME-Version: 1.0
Message-ID: <mailman.1720.1669280024.6928.blinux-list@redhat.com>
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Thank you very much!

On Thu, 24 Nov 2022, Linux for blind general discussion wrote:

> Date: Thu, 24 Nov 2022 09:32:58 +0100
> From: Linux for blind general discussion <blinux-list@redhat.com>
> To: blinux-list@redhat.com
> Subject: Re: How to hear sounds from line-in jack? (fwd)
> 
> Hi list,
>
> I don't know which soundcard you are using, but in mine I have following
> parameters:
> 1. "Line",0 - set it to the full volume and turn it on,
> 2. "Line Boost",0 - set it to full volume if previous set won't help.
> 3. "Input Source",0 - it is enum parameter; in my soundcard it has 3 items:
> "Front Mic", "Rear Mic" and "Line". If you have similar choice, set to "L
> "Front Mic", "Rear Mic" and "Line". If you have similar choice set it to
> "Line".
>
> These all parameters should be helpfull. Set them with amixer command:
> amixer sset "Line",0 100% on - for example.
>
> If it won't help try to set a "Capture",0 parameter to full volume and
> turn it on if it has such option.
>
> Greetings.
> Artur
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

