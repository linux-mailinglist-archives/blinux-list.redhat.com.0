Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EA5E69F94D
	for <lists+blinux-list@lfdr.de>; Wed, 22 Feb 2023 17:50:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1677084618;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=ebUu7wYR8vtYpWKtQjFCvmE8Ux37idcSqkSZjCqfz7o=;
	b=TBhJxOCmnz09IgfZiNbNc9QTYuinaSB9PbFVaYsb85uxecxtgVCWz5a2jJ1HK05SG+Qgsx
	DH7WoAzMHktSf62NRpcFluBZTHQNduPAP4671M8GSmg0VejOqv+p5Jfcgex66e0lr4yEnP
	wE0fvnu42NZ2Re6rZnXlRMY5Voj9AXg=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-610-s6yG_z4yN5KQcY_jKlrqNw-1; Wed, 22 Feb 2023 11:50:14 -0500
X-MC-Unique: s6yG_z4yN5KQcY_jKlrqNw-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com [10.11.54.8])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id D028E8C67FD;
	Wed, 22 Feb 2023 16:49:17 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 32400C15BA0;
	Wed, 22 Feb 2023 16:49:17 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 23B2B1946595;
	Wed, 22 Feb 2023 16:49:17 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Wed, 22 Feb 2023 11:47:54 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: why
References: <mailman.918.1677018162.686538.blinux-list@redhat.com>
 <mailman.1264.1677083208.686535.blinux-list@redhat.com>
MIME-Version: 1.0
In-Reply-To: <mailman.1264.1677083208.686535.blinux-list@redhat.com>
Message-ID: <mailman.1609.1677084556.686539.blinux-list@redhat.com>
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
Content-Disposition: inline
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

and links 2.25 on Slint linux both
take me to realclearpolitics.com with no problem.
In both cases this is links the chain.

On Wed, Feb 22, 2023 at 08:26:27AM -0800, Linux for blind general discussion wrote:
> I get the error page lynx, links, and elinks.
> 
> Tom
> 
> 
> On Tue, 21 Feb 2023, Linux for blind general discussion wrote:
> 
> > 
> > Can  someone shed light on why links the chain can access
> > http://www.realclearpolitics.com
> > while lynx the cat only gives me  an error page  with admonitions
> > to enable js and remove ad blockers?
> > 
> > I thought links the chain didn't support js. Is that wrong?
> > 
> > Thanks.
> > 
> > -- 
> > Rudy Vener
> > Website: http://www.rudyvener.com
> > Check out my latest story: The Last Mile https://www.scifishorts.co/authors/rudy-vener
> > Get a Free month of Sci-Fi Shorts when you subscribe at https://www.scifishorts.co with coupon code "FREEMONTHAY88"
> > 
> > _______________________________________________
> > Blinux-list mailing list
> > Blinux-list@redhat.com
> > https://listman.redhat.com/mailman/listinfo/blinux-list
> > 
> > 
> 
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list

-- 
Rudy Vener
Website: http://www.rudyvener.com
Check out my latest story: The Last Mile https://www.scifishorts.co/authors/rudy-vener
Get a Free month of Sci-Fi Shorts when you subscribe at https://www.scifishorts.co with coupon code "FREEMONTHAY88"

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

