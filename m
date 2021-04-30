Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 8F6F736FAF8
	for <lists+blinux-list@lfdr.de>; Fri, 30 Apr 2021 14:53:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1619787237;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=aVNpx7vE40/sCvaX6W30206so1v9LxR1ni6/9q+9Yk4=;
	b=J5EQRVc+MQHrwSbgO1mwWk0kl8VSObMIm2Ie/P0JZ7L2dv9FsT0+eMfuP+1Zvs5Sl470YH
	CKIsRBurhC3jybtUZdHG5/42/r8610vJ77ZLreRfLbCLtD4/aAXXbMiXpWg9xMZ1PcGIaQ
	Js3KtSfO8rDPuRVNRrJGH3iIFnlrjrI=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-220-rQlBkbFlNKqC7iMjjXAaoQ-1; Fri, 30 Apr 2021 08:53:55 -0400
X-MC-Unique: rQlBkbFlNKqC7iMjjXAaoQ-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 4515819611A1;
	Fri, 30 Apr 2021 12:53:52 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 35C225D767;
	Fri, 30 Apr 2021 12:53:49 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id D93A218095C2;
	Fri, 30 Apr 2021 12:53:43 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 13UCrYWH017740 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 30 Apr 2021 08:53:34 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 07EA02039D56; Fri, 30 Apr 2021 12:53:34 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id F3C062039D4E
	for <blinux-list@redhat.com>; Fri, 30 Apr 2021 12:53:28 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 6395385828E
	for <blinux-list@redhat.com>; Fri, 30 Apr 2021 12:53:28 +0000 (UTC)
Received: from mail-qt1-f169.google.com (mail-qt1-f169.google.com
	[209.85.160.169]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-404-lM3RNuH0OW2dIMe7x_DVVg-1; Fri, 30 Apr 2021 08:53:26 -0400
X-MC-Unique: lM3RNuH0OW2dIMe7x_DVVg-1
Received: by mail-qt1-f169.google.com with SMTP id z5so13381973qts.3
	for <blinux-list@redhat.com>; Fri, 30 Apr 2021 05:53:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=TzFLpP8VILIyUD8/dAEg4n7D1ApBM7HPgAOu/E76sBM=;
	b=JVBp8xwqzggKnIBbGnyEMLVeap1oDeCTXrhauyK+rSk53ZBUARVFExQzBDpu2TJHKO
	mqs+EoYxDh7XcTIMTb6P7kxZ1Ep7OlowjsRLdHjbvTzVMH0URM98Lp5HGmWo51HXbbKk
	hLf9q2IcULnJIoh6C49yDjfkL3th5WzczzPnYJpwpM+JE/Q0tKtAwg+/iCXZrP6xhQQe
	NjrV/nwhz7b1D91ox4KJm/UaugltE32C1ID49joIL7FKPRGQxJT60ti9hwMLTrtS8x2Z
	u2Sgaq39H7bTb9WXrJS5EJcIA5ud61c3FMstMFkCtO/ArvVlD9vb/80SFF3IWAcra/jg
	iuSw==
X-Gm-Message-State: AOAM532xwr1dVneREcVyZoEOk0AkiLZFVaG6/jljXzqXDMrOh7DTup09
	ElSo5sOinZMJchrJMg7ywzBbkMF32tg=
X-Google-Smtp-Source: ABdhPJyYKEiCMdUEjjKHjIkAL+On/o0ZOwdaVTIrebOxjirC3iihq5nZj2EH1OHlXIAVZV22V+IQHQ==
X-Received: by 2002:ac8:c83:: with SMTP id n3mr4522993qti.236.1619787205588;
	Fri, 30 Apr 2021 05:53:25 -0700 (PDT)
Received: from ?IPv6:2603:6080:6304:450a::f84?
	(2603-6080-6304-450a-0000-0000-0000-0f84.res6.spectrum.com.
	[2603:6080:6304:450a::f84]) by smtp.gmail.com with ESMTPSA id
	h193sm1284895qke.90.2021.04.30.05.53.24 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Fri, 30 Apr 2021 05:53:24 -0700 (PDT)
Subject: Re: Thinking of getting a computer to install Linux on any
	suggestions?
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <4A02183D-704A-4016-9178-15B50AAD1158.ref@yahoo.com>
	<4A02183D-704A-4016-9178-15B50AAD1158@yahoo.com>
Message-ID: <c50dcd50-1ac2-8d75-0d64-5440bead0a5a@gmail.com>
Date: Fri, 30 Apr 2021 08:53:23 -0400
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:78.0) Gecko/20100101
	Thunderbird/78.10.0
MIME-Version: 1.0
In-Reply-To: <4A02183D-704A-4016-9178-15B50AAD1158@yahoo.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
X-loop: blinux-list@redhat.com
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://listman.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

I recommend the Odroid N2, although you will need to get an eMMC chip or 
a MicroSD for its storage and a case for it. It comes with 4GB of RAM, 
so if you need more, the Raspberry Pi 4 with 8GB is an option as well, 
and it can also boot from MicroSD. The nice thing about both of these I 
mentioned is that neither has UEFI to get in your way, and installation 
is a one-time deal. You don't have to write an iso and run that, then 
run an installer. You instead just write an image to your MicroSD and 
run that. The written version is already installed to your media, no 
second install is required. I put together these machines, install only 
Linux-based operating systems and support them at no cost for 31 days, 
or at your option, on an extended subscription plan. Let me know if 
you're interested in this type of system and I can give you pricing 
information. These do cost far less than most desktop and laptop 
computers, so most likely it won't break the bank, and you will get a 
pretty good Linux computer for the price. Mine for example runs faster 
than the AMD FX beasty I had 5 years ago that cost me nearly $600 to 
build, but only cost me roughly 1/4 the price, although that takes into 
account I already had the flash storage I needed for it. The biggest 
savings will come from your power bill, which will go down significantly 
using one of these computers vs a traditional desktop or laptop. My 
beasty that I mentioned for example pulled an astounding 250 watts under 
moderately heavy load and sounded like it was ready to go into orbit, 
whereas this N2 I'm using to write this message pulls no more than about 
10 under the same load, and remains absolutely silent and even stays 
cool to the touch. The Raspberry Pi 4 I mentioned won't be as cool, and 
uses only MicroSD for storage, so it runs a bit slower when a lot of 
reading and writing needs to be done, but it does have more RAM, and 
still consumes far less power than a conventional desktop or laptop, 
even under the heaviest load. Hope this helps.

~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

