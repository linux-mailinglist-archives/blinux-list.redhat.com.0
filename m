Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id D5B58524546
	for <lists+blinux-list@lfdr.de>; Thu, 12 May 2022 07:59:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1652335186;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=s930iG2HjgpyVRFd9wv4d5djUfZsHnUD7siEINh3unc=;
	b=jKZtQFCp4mpzIuF2vXJltk6Ieb56Ji8Vpr6zcgJPuYlG9r2OBwzDNiCncu1w7XKdX+VTxO
	hrECuQBqVyjKCreUQ/QHs5Wm+qm6PZEXNcJQbUCxeN2t9V7gOSyW90CSQE35qz+JXIWCK0
	eQF1RnTHAhNkQxfU3Kjsa1qYfqoaV/o=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-22-0qBsqcwJPa-cJJuD20vaQg-1; Thu, 12 May 2022 01:59:42 -0400
X-MC-Unique: 0qBsqcwJPa-cJJuD20vaQg-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com [10.11.54.2])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 6042829DD99D;
	Thu, 12 May 2022 05:59:41 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 0431740C1421;
	Thu, 12 May 2022 05:59:37 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id ADA79194F4BC;
	Thu, 12 May 2022 05:59:37 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Thu, 12 May 2022 07:59:28 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.0
Subject: Re: Rather interesting issue on a standard Ubuntu 22.04 install
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <mailman.14876.1652299190.111208.blinux-list@redhat.com>
In-Reply-To: <mailman.14876.1652299190.111208.blinux-list@redhat.com>
Message-ID: <mailman.14788.1652335176.111203.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.2
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Ok,


Murphy is really out for me at this time, as I got to my office this 
morning, the gnome password panel was showing and after entering said 
password, issue stopped being one.


After changing the system back to requiring a password for login, the 
issue is gone.


Warm regards,

Brandt Steenkamp

Sent using Thunderbird from the Ubuntu machine

On 2022/05/11 21:59, Linux for blind general discussion wrote:
> Hi all,
>
> Seeing that I am not usually an Ubuntu or Gnome user, I find myself rather stuck after installing Ubuntu 22.04 LTS running gnome. For some reason that I cannot begin to even guess at, after changing the login from requiring my password to automatic, the keyboard focus is now stuck in the top bar, and nothing I do is moving the thing.
>
> Please help?
>
> Warm regards,
>
> Brandt Steenkamp
>
> Sent from my MacBook Air
>
> Contact:
>
> Phone: +27 (0)60 525 9181 <tel://+27605259181>
>
> Email: brandt.steenkamp@gmail.com <mailto:brandt.steenkamp@gmail.com>
>
> Twitter: @brandtsteenkamp <http://www.twitter.com/brandtsteenkamp>
>
>
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

