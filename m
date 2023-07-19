Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 36FB0759170
	for <lists+blinux-list@lfdr.de>; Wed, 19 Jul 2023 11:24:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1689758693;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=/a2Z8qDLjk5I1La3kKRPV9UZc+cLQ1oSwpaOOFOFgbo=;
	b=MWCKzZJp14Lz7/1aG8Xi8VkI1UJGR5p4W5jxW32Ib8k1pwdn+yS4I7CY8pKJ4wflYxQA1J
	2mm90ETCpKdraJKgW/cgGBtsppffIPiYi48YBO7SsqcfjYIS28KJOkxNxpu8MxFbrCJzRz
	46jTleolcqQj58dM3FtqX1SZnCUOC74=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-481-Rdpn1rr_Pda2gL2I70xfwA-1; Wed, 19 Jul 2023 05:24:49 -0400
X-MC-Unique: Rdpn1rr_Pda2gL2I70xfwA-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com [10.11.54.5])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 702EC805C10;
	Wed, 19 Jul 2023 09:24:47 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 70F3010E56;
	Wed, 19 Jul 2023 09:24:41 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 9951219465A4;
	Wed, 19 Jul 2023 09:24:35 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Wed, 19 Jul 2023 10:44:41 +0200 (SAST)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Console E-mail client for my need
In-Reply-To: <mailman.441.1689721179.687819.blinux-list@redhat.com>
References: <mailman.489.1689716021.687810.blinux-list@redhat.com>
 <mailman.489.1689716584.687812.blinux-list@redhat.com>
 <mailman.482.1689717546.687817.blinux-list@redhat.com>
 <mailman.441.1689721179.687819.blinux-list@redhat.com>
MIME-Version: 1.0
Message-ID: <mailman.604.1689758669.687815.blinux-list@redhat.com>
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

Good day,
I have alpine working through gmail and on my work setup, I got it working 
using oauth2.
For the oauth2 setup you need the latest version 2.26 to work.
The gmail setup was easier, but I had to jump through a few hoops for both 
to work.
Once done, both works fine though.
HTH, Willem


On Tue, 18 Jul 2023, Linux for blind general discussion wrote:

> Thanks all for answering. As for Alpine, earlier today I stumbled upon a dead 
> URL which was suposed to be its official web page, but now I went to Gentoo 
> package database and there is a reference to an active page at 
> alpineapp.email, so It's still alive. Seems a good option indeed, as it has a 
> wizard to help set up the program. The only potential disadvantage is it 
> appears to have a single guy maintaining it, but since e-mail related 
> protocols don't change much over time, then there won't probably be a need to 
> upgrade my e-mail client as well.
>
> AERC seems a good client, but the developer claims it is still experimental 
> or at least work in progress. NMH seems stable, but strangely it wasn't yet 
> packaged for Gentoo...
>
> Lets see. thanks all again,
> Cleverson
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

