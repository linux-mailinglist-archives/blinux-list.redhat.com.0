Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id DEDAD6999A3
	for <lists+blinux-list@lfdr.de>; Thu, 16 Feb 2023 17:16:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1676564204;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=ZynHW/31Pz38AR1erZVsJAk/JV55aNW3V78r9xGEAos=;
	b=FKlY0sn06jxOASmKh4kH9EAdtyruWxEs/cnpMqQH7DRYQoQLg0x0XIWrKgRxku1fGW02bX
	RUWLppISgvBuCRHW96619/V9gOSswOQksvobECaPf9x3zxkZ/AaBKWavaGUTb+cAmxpeVa
	M7svCzIz5B3R/zFswC+2z/8eyU/c68k=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-38-7owHw6cePYSCGmLsH9NFYg-1; Thu, 16 Feb 2023 11:16:42 -0500
X-MC-Unique: 7owHw6cePYSCGmLsH9NFYg-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com [10.11.54.5])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 49F6D884340;
	Thu, 16 Feb 2023 16:16:27 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id D611B51FF;
	Thu, 16 Feb 2023 16:16:26 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 3EB071946597;
	Thu, 16 Feb 2023 16:16:26 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Thu, 16 Feb 2023 11:16:14 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: audacity
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <mailman.72.1676559958.3521.blinux-list@redhat.com>
 <mailman.75.1676562907.3521.blinux-list@redhat.com>
In-Reply-To: <mailman.75.1676562907.3521.blinux-list@redhat.com>
Message-ID: <mailman.99.1676564186.3519.blinux-list@redhat.com>
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
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

According to Iris:
> sox input-file output-file vol x


Yes, probably much better than using the sledgehammer when a screwdriver 
will do the job much more efficiently, although it would be better if 
there was a way to use sox to raise the volume to the maximal level 
allowed without clipping. The nice thing is that sox will output the 
number of samples clipped, so you can always try again with a slightly 
lower number if you get output like

sox: warning: vol clipped 851 samples

I think you can add a limiter value to this that will apply a limiter at 
points where clipping would occur, so you can probably run it like

sox input-file output-file vol x y

X can probably be 1.5 or 2, and you would want y to be somewhere between 0.01 and 0.1 maybe. I can certainly understand the desire to use Audacity for this, since most of this is done for you so you don't have to play with the numbers so much.
~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

