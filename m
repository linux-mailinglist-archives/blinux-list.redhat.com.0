Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id C0E9C64A5B9
	for <lists+blinux-list@lfdr.de>; Mon, 12 Dec 2022 18:23:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1670865821;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=+lMqwtc1Iag2rdOxy0+dYd0UhAVzvY8z2+EZj5A9F4g=;
	b=aHuHHnNIOicxZ6WTU15n3wsE27PNWcqilSmXtZDW8PrYywDB5mgUeJCAgLYKWhINJkL8zm
	+5wZAj+ivQQWUISnjIFUg7wnl0sd2ZD2G48TksYboeVS6pdtKdKccxDgaxHbJKGp2yGn4q
	NrW2QX8uDXaelAQ1egz9NNcqSAltSV0=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-631-BW2GxYMPM9GzzQV8wyl_Mw-1; Mon, 12 Dec 2022 12:23:40 -0500
X-MC-Unique: BW2GxYMPM9GzzQV8wyl_Mw-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com [10.11.54.8])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id EDFC3803533;
	Mon, 12 Dec 2022 17:23:37 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id DE3B1C15BA0;
	Mon, 12 Dec 2022 17:23:33 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 65AE8194658F;
	Mon, 12 Dec 2022 17:23:33 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Mon, 12 Dec 2022 12:23:19 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Subject: Re: bash script question
To: blinux-list@redhat.com
References: <mailman.1629.1670808097.7716.blinux-list@redhat.com>
 <mailman.1768.1670820740.7712.blinux-list@redhat.com>
 <mailman.1795.1670832655.7713.blinux-list@redhat.com>
In-Reply-To: <mailman.1795.1670832655.7713.blinux-list@redhat.com>
Message-ID: <mailman.2029.1670865812.7712.blinux-list@redhat.com>
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
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Why are you capitalizing your variable?

$SECONDS seems to be a predefined builtin.


echo $SECONDS


from a shell where $SECONDS has never been exported gives some 
interesting results both in bash and zsh. In this case, $SECONDS is 
being initialized to 0, and it begins counting the seconds from the time 
it was initialized, which is why it actually shows the number of seconds 
that the quiz took even though there was no code to count the seconds. 
Hope this helps.

~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

