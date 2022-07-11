Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 54FC5570981
	for <lists+blinux-list@lfdr.de>; Mon, 11 Jul 2022 19:52:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1657561927;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=utW84zoJWDSjumPtaV/0Ddu7PchOqzo4ABPqBGdG7PA=;
	b=PRaBSKxUXNTxCxUtcxFf06NissPqIpv+wpeYhHEldQ1o/pQdlnWreLqgYWjdBhWnndlQrM
	0spV2GybYftB2Ux/Tc4D2a6yzWPzlpdH7J8vZlZ8IHPuiGQ6x2v/Q1pALoBvakzFY/ZJus
	Gvnylu/K4MkNUKWD2UFjlG0PnD1Mg4U=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-537-QPVfB32_NGW1CHWMi8ILkA-1; Mon, 11 Jul 2022 13:52:03 -0400
X-MC-Unique: QPVfB32_NGW1CHWMi8ILkA-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com [10.11.54.3])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 45FAC85A584;
	Mon, 11 Jul 2022 17:52:01 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 851621121315;
	Mon, 11 Jul 2022 17:51:57 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 04C2F1947060;
	Mon, 11 Jul 2022 17:51:57 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Mon, 11 Jul 2022 13:51:31 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: I3wm, any progress?
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <mailman.32420.1657364089.111201.blinux-list@redhat.com>
 <mailman.32225.1657370151.111208.blinux-list@redhat.com>
 <mailman.32342.1657440361.111208.blinux-list@redhat.com>
 <mailman.32667.1657446476.111209.blinux-list@redhat.com>
 <mailman.32023.1657544590.111207.blinux-list@redhat.com>
 <mailman.32711.1657550119.111202.blinux-list@redhat.com>
 <mailman.32532.1657550966.111203.blinux-list@redhat.com>
 <mailman.32062.1657556842.111207.blinux-list@redhat.com>
In-Reply-To: <mailman.32062.1657556842.111207.blinux-list@redhat.com>
Message-ID: <mailman.32855.1657561916.111209.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Well, for one thing, an 11-year-old I7 will beat out an 11-year-old ARM 
machine, but a Raspberry Pi 4 for example will probably give it a run 
for its money, not to mention the fact that the I3, I5 and I7 are all at 
least 12 years old in any case. The bottleneck in the Raspberry Pi 4 is 
probably the i/o more than processing, although they seem to have fixed 
a good bit of the i/o issues of earlier incarnations. I do want to see a 
RISC-V computer in the not-too-distant future, as that should blow 
everything out of the water by all accounts, and the architecture is 
open source, and is said to be capable of 128-bit computing.


Regarding the scripts that run Firefox and whatnot, these are still in 
the repository at

https://gitlab.com/f123/Kies

Everything you need is in the folder called kies_wrappers. They used 
startx to run jwm and Orca in the background and Firefox and some other 
apps on top. These certainly could be modified to run flwm instead of 
jwm. As I recall, there were also scripts or functions that would stop 
Fenrir trying to speak the graphical console.

~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

