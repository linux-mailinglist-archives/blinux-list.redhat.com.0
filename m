Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 19C5A6D339E
	for <lists+blinux-list@lfdr.de>; Sat,  1 Apr 2023 21:47:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1680378444;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=iZCQJN5KFPEeTYHjFHEwK+5/7k1udYcLdIcJ4nGX2bs=;
	b=AgQJymS8eKimj4a6470BnABp2uJf7BgDyD5yv4E1bmykPPcFFflEYVRTV0E3ntM8ssgZm1
	H89jy1/664avTgZHotlyEiBzVLl54mzJaogZy+0jq0unviKtjiyQEJtTYJtuTmEc+AhfeI
	OtdCJoREW/xByIf5RpJpFpl8iwukgBs=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-361-i36tsSuYN-6SmuzPNRKrlQ-1; Sat, 01 Apr 2023 15:47:20 -0400
X-MC-Unique: i36tsSuYN-6SmuzPNRKrlQ-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com [10.11.54.3])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id CE874800B23;
	Sat,  1 Apr 2023 19:47:18 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 129A31121314;
	Sat,  1 Apr 2023 19:47:18 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 73D461946A44;
	Sat,  1 Apr 2023 19:47:17 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Sat, 1 Apr 2023 15:47:10 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
To: blinux-list@redhat.com
References: <mailman.1920.1680294381.2676480.blinux-list@redhat.com>
 <mailman.40.1680347357.558775.blinux-list@redhat.com>
 <mailman.82.1680367672.558774.blinux-list@redhat.com>
Subject: Re: Orca not speaking on new Debian install.
In-Reply-To: <mailman.82.1680367672.558774.blinux-list@redhat.com>
Message-ID: <mailman.106.1680378436.558770.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.3
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"


On 1/4/23 12:47, Linux for blind general discussion wrote:
> Not sure how I can check if at-spi and orca are running as, in
> addition to not getting speech in the GUI, I'm also apparently locked
> from switching to a tty that's at the console, which is also an issue
> since the work flow I'm used to is using tty switching to do web stuff
> in the GUI and everything else in the console, though I thought the
> inability to switch ttys was rather irrelevant if I'm not getting
> speech in the GUI to begin with, though I suppose it is more relevant
> than initially thought since I hadn't considered trying to diagnose
> the running xsession from the console...

You'll need to solve that problem in any case.

To diagnose, your best option under the circumstances is probably an ssh 
session from another machine.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

