Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 881105F255E
	for <lists+blinux-list@lfdr.de>; Sun,  2 Oct 2022 23:06:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1664744815;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=UvzGXxMQ+6bknmgcO21Uu8GW4OM+v9yUKZZgBvkjxf0=;
	b=gdGHoHewr1+KHh6K0HcUoF0aNw0MaVy8HXrv/bTe6XVn8S0OT0zw8yLVM/2SGChBy8pN5P
	0d329XBiIBKHyU90yZTHA5B7soEhAuftkzjmnwFsMrDcMFgwIcgJQtYo7mxkmfy7AdP9xw
	i9pvY5/dmdzNkuuRZCA6QyKZfR2bUZI=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-635-4LoTRrDjNqWoXiOgd4rEAg-1; Sun, 02 Oct 2022 17:06:52 -0400
X-MC-Unique: 4LoTRrDjNqWoXiOgd4rEAg-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com [10.11.54.8])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 61AD2101A528;
	Sun,  2 Oct 2022 21:06:50 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 29E8BC15BA4;
	Sun,  2 Oct 2022 21:06:50 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id B7F651946594;
	Sun,  2 Oct 2022 21:06:49 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Sun, 2 Oct 2022 17:06:44 -0400 (EDT)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: screen in Ubintu shell question?
In-Reply-To: <mailman.4860.1664744302.6080.blinux-list@redhat.com>
References: <mailman.4818.1664738971.6081.blinux-list@redhat.com>
 <mailman.4806.1664742047.6077.blinux-list@redhat.com>
 <mailman.4356.1664742791.6074.blinux-list@redhat.com>
 <mailman.4860.1664744302.6080.blinux-list@redhat.com>
MIME-Version: 1.0
Message-ID: <mailman.4825.1664744808.6081.blinux-list@redhat.com>
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Hi,
no idea what the gnu is about..at all.
still, I discovered my error.
My source for the command added a dash, which I was typing before the 
letter  h.
Once I stopped doing that the hardcopy process began, allowing me to 
capture.
Thanks, problem solved.
Kare



On Sun, 2 Oct 2022, Linux for blind general discussion wrote:

> On 2022-10-02 16:33, Linux for blind general discussion wrote:
>> There is a reason why I want to use links the chain here, documenting a
>> dreamhost issue for dreamhost instead of shellworld.
>> Still your wisdom is sound.
>> now, if I can just get the hardcopy creation process to work.
>
> It should work with any interactive program that waits for
> user-interaction.  While it's waiting, you hit GNU-screen's prefix
> key (control+a) and then the letter "h" to indicate you want a
> hardcopy of the screen.  It should save that to a file in the current
> directory called "hardcopy.0" (I think if you do more than one of
> them, it numbers them sequentially).  You can continue to use the
> program as normal (possibly taking multiple screen-captures as you
> perform various actions) and then when you quit, GNU screen quits
> too.
>
> Alternatively, you can launch GNU screen, which puts you in a
> sub-shell inside screen.  You can then launch multiple programs
> (either each in their own screen window, or serially) just as you
> normally would, using the <prefix>h to capture a hardcopy of the
> screen to a file.
>
> -Tim
>
>
>
>
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
>
>

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

