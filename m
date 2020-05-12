Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [207.211.31.120])
	by mail.lfdr.de (Postfix) with ESMTP id 6F8E11CFC4A
	for <lists+blinux-list@lfdr.de>; Tue, 12 May 2020 19:36:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1589304967;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=MTH4bMUYBBO2o2q0PKYP1500WVaAP1vWlFtdDNIdNjs=;
	b=Dx9LcQO9oNrzxAxXEvRoOe1qMsBACHr/0oEq2WWw41z7ZZrspAH47ex95Ce7x2wjiIrca/
	bPuzR4ROqcyHuMq8qKHBW7QNI/K/rLHRVUZl0+Fz5+inkSlPpuoF6WZKFYFMlrSD6RWoZS
	AajGkdYSndSXinSXJ4ZSFmuhwhOFFuo=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-91-sYAu91P4OlSIoa_GQvRAuA-1; Tue, 12 May 2020 13:36:04 -0400
X-MC-Unique: sYAu91P4OlSIoa_GQvRAuA-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id E8EE3461;
	Tue, 12 May 2020 17:35:55 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 31C385D9DD;
	Tue, 12 May 2020 17:35:55 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id ECD364CAA0;
	Tue, 12 May 2020 17:35:53 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 04CHZmNN004219 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 12 May 2020 13:35:48 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 274E2200A798; Tue, 12 May 2020 17:35:48 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 23855202683E
	for <blinux-list@redhat.com>; Tue, 12 May 2020 17:35:45 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 51613811E77
	for <blinux-list@redhat.com>; Tue, 12 May 2020 17:35:45 +0000 (UTC)
Received: from mail-qk1-f170.google.com (mail-qk1-f170.google.com
	[209.85.222.170]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-159-_glDHStqMXCWN_zn3lXGtw-1; Tue, 12 May 2020 13:35:43 -0400
X-MC-Unique: _glDHStqMXCWN_zn3lXGtw-1
Received: by mail-qk1-f170.google.com with SMTP id f83so14463222qke.13
	for <blinux-list@redhat.com>; Tue, 12 May 2020 10:35:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=DIxDaqQnSAchkPqpQ+S2WsS1PkcE5Oq2gKKRIFxfzVo=;
	b=NQITxobDmBocsTz/wEB8YRpOSExVo2v7I430j4v9gu4I+pXDzy2w2nf6Qt7YEL2iEq
	SJvdANLrQ6NiY5/gXdYwpdac84VWLPDACVr855dybZNRbXJTcgv5EqtWpwnVBT9smXNP
	Qzk1KWCRajX8bETCsDNGi7n4WeWV6jOK6yfunQGJxdS8Bfil9BMokM657jhU14/yYPdH
	aRpsjb/JvZzCCBvxhLNpHaHnku1iMHRGweuOIR9t08Qut4TusLf8GxRrdjzPazZ1tNv2
	oM/6uWzlTnm6fo3TUor4KHvqcB8HUPqEDP7uZ8nevdISxrR6PnzN6QvP2SrN7FQbYX8Z
	cgVg==
X-Gm-Message-State: AGi0PuYHc+fzluR0vQ74im6G3jG1VBmaFOnK1fS8CaDzSMnPc+pStQB0
	vaKTNnyEqAKFS1dkHxbSatOqIZIs
X-Google-Smtp-Source: APiQypIgWywCDhLYjuDdvMW5Y2YA1q3xH0TkoOXomXPC9bRxdUFDQG0zUAX9G7c2GwcTtTwfgPMPuA==
X-Received: by 2002:ae9:f401:: with SMTP id y1mr23289026qkl.8.1589304942136;
	Tue, 12 May 2020 10:35:42 -0700 (PDT)
Received: from xu4.kyle.tk
	(2606-a000-111a-8d0a-0000-0000-0000-065f.inf6.spectrum.com.
	[2606:a000:111a:8d0a::65f]) by smtp.gmail.com with ESMTPSA id
	v28sm10043835qtb.49.2020.05.12.10.35.41 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Tue, 12 May 2020 10:35:41 -0700 (PDT)
Subject: Re: Manjaro linux
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <E811AB13-AE96-4C85-93CB-894ED5675931@gmail.com>
	<alpine.NEB.2.21.2005121221430.13470@panix1.panix.com>
	<CAO2sX32dVWnC1F8EQuQef1_SPStF0=r1c-k+JSz4M+Jm7z82PQ@mail.gmail.com>
	<c33e7e92-9eb7-3b58-afb4-9285eb928b86@gmail.com>
	<c638d1b2-f0c6-f973-1cbe-fe38897bbd3e@ukr.net>
Message-ID: <969c7e66-e61f-d352-122a-18ed57b8cfe8@gmail.com>
Date: Tue, 12 May 2020 13:35:39 -0400
User-Agent: Mozilla/5.0 (X11; Linux armv7l; rv:68.0) Gecko/20100101
	Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <c638d1b2-f0c6-f973-1cbe-fe38897bbd3e@ukr.net>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
X-loop: blinux-list@redhat.com
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://www.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://www.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://www.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Content-Transfer-Encoding: 7bit

Ah yes. That bug report seems to be much more detailed than what some 
users were telling me. Oddly enough, "Try Ubuntu" works with BIOS on the 
GNOME version. I have been told that the

sudo -e ubiquity

work-around does apparently fix the problem, although if you can get to 
the assistive technology setting, that should also fix it. Thanks for 
the detailed link.

~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

