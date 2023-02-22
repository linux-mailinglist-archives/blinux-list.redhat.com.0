Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 73B3869EDF5
	for <lists+blinux-list@lfdr.de>; Wed, 22 Feb 2023 05:35:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1677040536;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=MOzX6vOnNFlPpWEQjqZp/QAWNE3hsGAM31vlWWO34ns=;
	b=MQkeDMrbplSK9baljboj6muHe0SWhjzy86ejKMYbA3KzN/kQFmdrEcO8zwGyqhh7YhdcAt
	Xxcb9N6xrZSYOWcXYow4RCawMrgOTsJU498gBwW8Pv1Rx9ZPUkyVBHhmmEKPIcs6SXFidW
	rll0E47+3KAdMJ40fAB/Xp4mXuAgSuA=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-307-jqKABa3vPfOTYgRNTQD33A-1; Tue, 21 Feb 2023 23:35:32 -0500
X-MC-Unique: jqKABa3vPfOTYgRNTQD33A-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com [10.11.54.3])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id AF8D31C0512F;
	Wed, 22 Feb 2023 04:35:30 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id E198E1121314;
	Wed, 22 Feb 2023 04:35:29 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 4FD1419465B1;
	Wed, 22 Feb 2023 04:35:29 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Tue, 21 Feb 2023 23:35:21 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: What a find! DECTalk!
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <mailman.886.1677038394.686542.blinux-list@redhat.com>
 <mailman.972.1677039333.686538.blinux-list@redhat.com>
In-Reply-To: <mailman.972.1677039333.686538.blinux-list@redhat.com>
Message-ID: <mailman.838.1677040529.686536.blinux-list@redhat.com>
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

Thus spake Karen:
> I am curious Kyle, when used with Orca, which of the dectalk voices 
> may you choose from?


I can see Paul, Harry, Dennis, Betty, Ursula, Wendy and Kit, for some 
reason they are specified by only their initials. The only ones I can't 
see are Rita and Frank. Not sure why they're not available, but all the 
rest are working, although the pitch does need to be adjusted for each 
voice. The male adult voices seem to work best at 1.0, the adult female 
voices seem to sound best at 4.0 and Kit the kid sounds best at about 5.0.


There is a dectalk mailing list where the developers for this project 
seek input and testers.


Where is the list? I didn't see it in the README file or anything. I'd 
much rather report any issues I have or give any input using an email 
list than to sign up with Microsoft to report bugs and such. Thanks.

~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

