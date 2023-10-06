Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id BD7FB7BB54E
	for <lists+blinux-list@lfdr.de>; Fri,  6 Oct 2023 12:32:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1696588377;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=QmhPm6ZaMUduzSrG6IomqvytXOIDz8A7mg96Nz83YO4=;
	b=X0xLyWM4nOXXQ8LHGBAH9kb+dHWZZQw2NLXi2204M7H6giIbYj5VNUuz7iox884q4CApc4
	fVENhoByGM5i8VxMFiePNpoQcQQp09MJAOTeBLHC8qsRSyhcB09NPbn+GBVaApLotSHH4G
	rG5rNCy+fiAeP77e1Nj9a/s0z58c8Wk=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-620-xiBACf74NtiFLUJHhQV-yw-1; Fri, 06 Oct 2023 06:32:55 -0400
X-MC-Unique: xiBACf74NtiFLUJHhQV-yw-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com [10.11.54.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 0560685A5BF;
	Fri,  6 Oct 2023 10:32:53 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 55A6F140E953;
	Fri,  6 Oct 2023 10:32:52 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 9884719465B6;
	Fri,  6 Oct 2023 10:32:46 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Fri, 6 Oct 2023 11:32:35 +0100
MIME-Version: 1.0
User-Agent: Betterbird (Linux)
Subject: Re: Very minimal graphical environment
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <mailman.1669.1696587735.2981449.blinux-list@redhat.com>
In-Reply-To: <mailman.1669.1696587735.2981449.blinux-list@redhat.com>
Message-ID: <mailman.1765.1696588366.2981447.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.7
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

I'd suggest having a minimal window manager like i3 for this, which is 
the first thing that came to mind. Very, very minimal and easy to set up 
and configure with a text config file which means you can tweak it to 
remove all the stuff you don't want


Mostly going with i3 since it hasn't failed me yet, while qtile broke my 
config majorly earlier


On 10/6/23 11:22, Linux for blind general discussion wrote:
> Hi list,
>
> I am forced to become a graphical environment user so I will begin my adventure with Orca.
> I would like to have a very minimal installation of such environment. I want to have complete setup wich is quite enough for Orca and web browser such as Chromium or Firefox. Can you recommend me something?
> I don't need desktops, file managers, mail clients, calendars and any other core software build into the graphical environment. Just to do a suitable installation to run Orca with internet browser. How to do it? Any recommendations, suggestions, opinions?
>
> Greetings.
> Artur Rutkowski
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

