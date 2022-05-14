Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D5B852726F
	for <lists+blinux-list@lfdr.de>; Sat, 14 May 2022 17:07:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1652540850;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=2/TcnZcF9rSjENKlW2O9wmnrae/XG1JCyyKsnlCn9Q0=;
	b=RHuUxCqIfp8F0ErfiQ84bYaH2PHtAftcUSsk+HHNuvHTt2snzEYN4ACJGN8Pw8wRYVVqqs
	fLoaLOElyVyoC6OBoVLD4RpJwKvvLmSJDdFsMh9GnsTx9RyTFOBYbnLLl/RvaG9uC3HlAG
	J8Ag1j85He4pH5TTFlEG5IppYYDe/So=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-613-BX6mMfBQPmOQrEy-1kkORQ-1; Sat, 14 May 2022 11:07:29 -0400
X-MC-Unique: BX6mMfBQPmOQrEy-1kkORQ-1
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com [10.11.54.10])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id CA3C680013E;
	Sat, 14 May 2022 15:07:27 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 5AE34416385;
	Sat, 14 May 2022 15:07:23 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 930081947069;
	Sat, 14 May 2022 15:07:22 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Sat, 14 May 2022 11:07:14 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
Subject: Re: Ubuntu muted on boot
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <mailman.15446.1652528816.111206.blinux-list@redhat.com>
In-Reply-To: <mailman.15446.1652528816.111206.blinux-list@redhat.com>
Message-ID: <mailman.14962.1652540842.111205.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.10
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

The same thing happens to me with Mint Mate 20.04. My workaround is to 
login and then hit the volume up button once, which unmutes.
I got tired of trying to figure it out and just live with it. BTW, that 
is on a Lenovo Thinkpad T420S.

John


On 5/14/2022 7:46 AM, Linux for blind general discussion wrote:
> Hi all,
> 
> 
> I did go and disable "auto mute" in alsamixer, but Ubuntu stays muted 
> after rebooting, I can quickly unmute it using the media keys on my 
> Keychron keyboard, but I cannot figure how to make this "muted state" at 
> boot go away.
> 
> 
> If you can help, I would really appreciate it. Some times my wife, a 
> died in the wool Windows user needs something off of my Machine, and 
> she's really, really technologically disabled.
> 

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

