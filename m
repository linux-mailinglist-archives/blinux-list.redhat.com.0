Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D52F637162
	for <lists+blinux-list@lfdr.de>; Thu, 24 Nov 2022 05:09:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1669262943;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=rt6iBz57Ga72sI2LRtWJ+edaKMMhkSZ3oYv+3f1vhFM=;
	b=S8NwMDzYFQvkAnGowynPIgW9+ZHXwQ01l/YhHSxEHAIJdgJZ8gsD9JzS8qL3tGnGkJZPWb
	JLgMSJDYqHLfhBB6BDK1FVI2uGAu496Z/IBhhemcWAFL8rWXfDW+rpPE6xyRVRXEU6rtX1
	WJ8amOYigeOn2Pw7Ju8x70fNrmZF360=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-611-KJQ0Y3VyO3G40gXdk6nsYg-1; Wed, 23 Nov 2022 23:09:00 -0500
X-MC-Unique: KJQ0Y3VyO3G40gXdk6nsYg-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com [10.11.54.3])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 3BEE92A2AD78;
	Thu, 24 Nov 2022 04:08:58 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 23B161121339;
	Thu, 24 Nov 2022 04:08:56 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 837B91946595;
	Thu, 24 Nov 2022 04:08:55 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Wed, 23 Nov 2022 23:08:50 -0500 (EST)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: command line canadian English spell checkers?
In-Reply-To: <mailman.1633.1669260756.6926.blinux-list@redhat.com>
References: <mailman.1562.1669259204.6932.blinux-list@redhat.com>
 <mailman.1633.1669260756.6926.blinux-list@redhat.com>
MIME-Version: 1.0
Message-ID: <mailman.1642.1669262935.6929.blinux-list@redhat.com>
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Well, that would be fine if I were actually running stand alone Linux.
I got our admin to indeed add the word list, but if center, and centre 
appear, from a speech standpoint they sound the same.
By the way, if anyone is interested, there is now a command line  Linux 
port of both Wordperfect, and Lotus 123.  can share the link here if 
anyone wants the editions.
i suspect I may end up using a Canadian edition of a word processor for DOS 
instead.
Thanks though!  Quite informative.
Karen



On Thu, 24 Nov 2022, Linux for blind general discussion wrote:

> Tim here.  According to my Debian box packages, the aspell package
> should include a Canadian word-list.  You can either specify it
> with a one-off
>
>  $ aspell -d en_CA ...
>
> or you can put it in your config:
>
>  $ echo lang en_CA >> ~/.aspell.conf
>
> to make it the default.  You can then check files like
>
>  $ aspell check mydocument.txt
>
> If the TUI interface is a bit too cluttered for your taste, lying
> about your terminal-type can help:
>
>  $ TERM=dumb aspell check mydocument.txt
>
> There are a LOT of options to aspell, so you can lose hours reading
> up on it and experimenting, but that should give you the basics.
>
> -Tim
>
> On 2022-11-23 22:00, Linux for blind general discussion wrote:
>> Hi,
>> rather simple.
>> My dream here would actually be a DOS port of an entire Canadian  word
>> processor, but I will take something that might be usable from the command
>> line only.
>> any ideas?
>> Karen
>>
>>
>> _______________________________________________
>> Blinux-list mailing list
>> Blinux-list@redhat.com
>> https://listman.redhat.com/mailman/listinfo/blinux-list
>>
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

