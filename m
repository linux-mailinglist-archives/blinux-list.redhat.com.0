Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 668E369F8F5
	for <lists+blinux-list@lfdr.de>; Wed, 22 Feb 2023 17:26:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1677083218;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=YlMXVPZxiLFVtTp+L7YSLXET7SVw1Co6rahqcCTNLao=;
	b=EZQGkka3IJUwqLKXJHJucAn/e7cawHSKLE8gQ7Avj7fcN72TkL+WfefWs3Hl4NcLj7kx+C
	SEQY2jV2y8LgjDQbvd42LctVXIYfnMKZMB7ix+Jktq32t6RPbbMhBRI95N8LbSGI4HM5ux
	ovGBe6XaE4oDfhOi7j9ZeXmFM6rx7zM=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-372-S982yuniOGWwpXHu9_Sw8Q-1; Wed, 22 Feb 2023 11:26:55 -0500
X-MC-Unique: S982yuniOGWwpXHu9_Sw8Q-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com [10.11.54.6])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 847ED3C218B5;
	Wed, 22 Feb 2023 16:26:53 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 8D6502166B26;
	Wed, 22 Feb 2023 16:26:49 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 1105019465A3;
	Wed, 22 Feb 2023 16:26:49 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Wed, 22 Feb 2023 08:26:27 -0800 (PST)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: why
In-Reply-To: <mailman.918.1677018162.686538.blinux-list@redhat.com>
References: <mailman.918.1677018162.686538.blinux-list@redhat.com>
MIME-Version: 1.0
Message-ID: <mailman.1264.1677083208.686535.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.6
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

I get the error page lynx, links, and elinks.

Tom


On Tue, 21 Feb 2023, Linux for blind general discussion wrote:

>
> Can  someone shed light on why links the chain can access
> http://www.realclearpolitics.com
> while lynx the cat only gives me  an error page  with admonitions
> to enable js and remove ad blockers?
>
> I thought links the chain didn't support js. Is that wrong?
>
> Thanks.
>
> -- 
> Rudy Vener
> Website: http://www.rudyvener.com
> Check out my latest story: The Last Mile https://www.scifishorts.co/authors/rudy-vener
> Get a Free month of Sci-Fi Shorts when you subscribe at https://www.scifishorts.co with coupon code "FREEMONTHAY88"
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

