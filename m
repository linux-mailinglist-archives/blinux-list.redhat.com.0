Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id A7C3D5BBE9B
	for <lists+blinux-list@lfdr.de>; Sun, 18 Sep 2022 17:16:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1663514213;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=aQMOwBzI7IUIJj86hpj6asoA654M6zI9z21A0HDBIEc=;
	b=AIS8t7TbSuCpFYCnOHNg1go3d8TI0dc9o5JgL95K2fEVEQGCxq2TEgrsVidcIikJxlL5jg
	0efy7q9H0E+XApiQ6U1CqQJ5XYSDtsF+9rNe9kwE3LGUcatfd3c7u2F5YReTDInhlNRfWa
	pfsFeJFwr4VPkhM02D/Sf4nwQ29bT+s=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-361-6tRdyURAPYGPjHi4B7utbQ-1; Sun, 18 Sep 2022 11:16:49 -0400
X-MC-Unique: 6tRdyURAPYGPjHi4B7utbQ-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com [10.11.54.5])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 1CD0D3C021A8;
	Sun, 18 Sep 2022 15:16:48 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id D16E439D6A;
	Sun, 18 Sep 2022 15:16:47 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 4B57819465A0;
	Sun, 18 Sep 2022 15:16:47 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Sun, 18 Sep 2022 23:16:37 +0800 (CST)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: How to getstart amulecmd?
In-Reply-To: <mailman.1051.1663503355.6077.blinux-list@redhat.com>
References: <mailman.934.1663393847.6081.blinux-list@redhat.com>
 <mailman.1051.1663503355.6077.blinux-list@redhat.com>
MIME-Version: 1.0
Message-ID: <mailman.973.1663514206.6078.blinux-list@redhat.com>
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

Hello Artur:

Did you mean that I must execute amuled before executing amulecmd?

On Sun, 18 Sep 2022, Linux for blind general discussion wrote:

> Date: Sun, 18 Sep 2022 14:07:13 +0200
> From: Linux for blind general discussion <blinux-list@redhat.com>
> To: blinux-list@redhat.com
> Subject: Re: How to getstart amulecmd?
> 
>> From artur@locust Sun Sep 18 12:04:52 2022
> To: blinux-list@redhat.com,blinux-list@redhat.com
> Subject: Re: How to getstart amulecmd?
> In-Reply-To: Your message of Sat, 17 Sep 2022 13:47:43 +0800 (CST)
> 	<mailman.934.1663393847.6081.blinux-list@redhat.com>
> References: <mailman.934.1663393847.6081.blinux-list@redhat.com>
>
> Hi,
>
> The amuled (daemon) requires password as its part of setup procedure.
> I suppose, it is for security reasons, because it can run on remote hosts.
> Further instructions you can find in /usr/share/doc/README.Debian or
> similar document on your distro.
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

