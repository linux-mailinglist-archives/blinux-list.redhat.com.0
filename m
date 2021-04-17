Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 8C1FB3632C1
	for <lists+blinux-list@lfdr.de>; Sun, 18 Apr 2021 02:01:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1618704107;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=ZUDzPzRqH42FZ1xtE896qr8iYJvZp98pu+EBqLW3jtA=;
	b=ee5gP1ILdzJcUFO953fRRcPMR/kMxCJP/c6STBpY7dw6rt18NcnHcsLqHmLEdbwbAa7b8l
	gpHR29gHEltkF8sNrXofxCq2NY5BaP1h06ryCs4mPqemo0FHvcXIjxW/bdhE0rvZ44Q2CT
	UxFy7W4qk8VTF4POzlwgdaJTgz64YT8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-517-PoR7UfcvMKWyf5AkIq-bYg-1; Sat, 17 Apr 2021 20:01:45 -0400
X-MC-Unique: PoR7UfcvMKWyf5AkIq-bYg-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A83F48030B5;
	Sun, 18 Apr 2021 00:01:41 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 899805D72E;
	Sun, 18 Apr 2021 00:01:41 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id EBFF744A5E;
	Sun, 18 Apr 2021 00:01:40 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 13I01a73001210 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 17 Apr 2021 20:01:36 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 0E8DD345B4; Sun, 18 Apr 2021 00:01:36 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 092A5345BF
	for <blinux-list@redhat.com>; Sun, 18 Apr 2021 00:01:32 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 634B880A1D5
	for <blinux-list@redhat.com>; Sun, 18 Apr 2021 00:01:32 +0000 (UTC)
Received: from mx1.simplelogin.co (mx1.simplelogin.co [94.237.111.15])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-572-mhbxWUT4PZCwzFunxICDKA-1; Sat, 17 Apr 2021 20:01:22 -0400
X-MC-Unique: mhbxWUT4PZCwzFunxICDKA-1
X-SimpleLogin-Client-IP: 2a04:3544:1000:1510:8c7a:9cff:fe3c:4b2c
Received: from [172.17.0.3] (mx1.simplelogin.co
	[IPv6:2a04:3544:1000:1510:8c7a:9cff:fe3c:4b2c])
	by mx1.simplelogin.co (Postfix) with ESMTP id 55C8F5EEE8
	for <blinux-list@redhat.com>; Sat, 17 Apr 2021 23:51:41 +0000 (UTC)
In-Reply-To: <161866688954.6.12074603936546144678.5956995@simplelogin.co>
References: <161866688954.6.12074603936546144678.5956995@simplelogin.co>
Subject: Re: Formatting - was Would you be interested in having natural
	sounding TTS voices by Readspeaker on Linux? demo link included
MIME-Version: 1.0
To: blinux-list@redhat.com
Cc: blinux-list@redhat.com
Message-ID: <161870350119.8.17896736538043458897.5969450@slmail.me>
Date: Sat, 17 Apr 2021 23:51:41 -0000
X-SimpleLogin-Type: Reply
X-SimpleLogin-EmailLog-ID: 5969450
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
X-loop: blinux-list@redhat.com
X-Content-Filtered-By: Mailman/MimeDel 2.1.12
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi,
Thanks for letting me know how the format shows up for you.
Yea, I've heard that Alpine is good. Is it only for the Console? Can it be used in Graphical too? I'm mostly a Graphical user, but even if its only for Console, I may still check it out.
Yea, I agree that its a good idea to have a wide variety of voices to choose from. Its all a matter of personal preference and I'd like for Linux users to have more of those choices.
Personally I'm not a fan of the more computerized sounding voices. I much prefer the more natural sounding voices if I have the choice. I'd like for there to be as many natural voices for Linux as there are computerized ones. Voxin with Nuance is a good one for natural voices. But I'd like to see more diversity of different TTS synths, every synth has its own style.
And for those of us who prefer natural voices, Voxin is basically our only choice for Linux. It would be good to have some other choices there. If this project moves forward, it would be great to have Readspeaker as another option.
Anyways, thanks for letting me know about the formatting, and for your input re TTS.
SL

"The original formatting was fine here too.  I suspect the email client and its configuration for text handling is a factor.  I'm using alpine.

>> For what it's worth, I didn't notice anything off with the original
>> message's formatting...
>>
>> As for the question, I'm quite content with espeak-ng's default voice
>> and consider it higher quality than the more natural sounding voices
>> I've heard, many of which I feel fall into the Uncanny Valley if used
>> to read anything longer than a single sentence...
>>
>> That said, more choice is generally a good thing."
>>
>> _______________________________________________
>> Blinux-list mailing list
>> Blinux-list@redhat.com
>> https://listman.redhat.com/mailman/listinfo/blinux-list
>>
>
> -- 
> XR
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
>

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

