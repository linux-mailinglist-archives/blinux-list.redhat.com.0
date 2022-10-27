Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F63B60F425
	for <lists+blinux-list@lfdr.de>; Thu, 27 Oct 2022 11:57:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1666864676;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=LY4EyNl7/x0tmf30DKmEo9OD0n9aYKQleKscPzDLHF4=;
	b=No9LCjEpVfvylGJ799DtlKUXqDiT2Kvu+j2sP46Cgl3j18hUO81I8Cn29iYkdvAbwXUO7m
	YYTImsKOL5NrfxH2K465Coqv9UrqD6Y0jgCmqghRJOfMFU7NkupbibP7ZZyJ3kuLnlgzKN
	M/RKp2Kchm2z/n6VBV7mVfLAyst2yTQ=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-237-Ijp6X3oSNcOOOpbSce-PJw-1; Thu, 27 Oct 2022 05:57:52 -0400
X-MC-Unique: Ijp6X3oSNcOOOpbSce-PJw-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com [10.11.54.8])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id D45D9185A7A3;
	Thu, 27 Oct 2022 09:57:50 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 56AC5C16922;
	Thu, 27 Oct 2022 09:57:50 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 17FD81946A7F;
	Thu, 27 Oct 2022 09:57:50 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Thu, 27 Oct 2022 10:57:43 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.0
Subject: Re: void-linux
To: blinux-list@redhat.com
References: <mailman.3229.1666863125.3003.blinux-list@redhat.com>
 <mailman.3171.1666863524.3004.blinux-list@redhat.com>
 <mailman.3232.1666864286.3003.blinux-list@redhat.com>
In-Reply-To: <mailman.3232.1666864286.3003.blinux-list@redhat.com>
Message-ID: <mailman.3046.1666864669.3009.blinux-list@redhat.com>
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

I'm not finding an easy way to check the Void repoes for Orca or the ATK 
stack personally, their site is nicely laid out, but...just needs a way 
to search packages. Okay, okay, Arch has spoiled me with that.

I like the look of Void, but...not got around to trying it yet and your 
messages make me think okay, but....is it worth giving a shot?

On 10/27/22 10:51, Linux for blind general discussion wrote:
> A few messages on reddit from a few years ago claimed void-linux could run
> the accessibility stack and this was from someone who was alledgedly
> totally blind.  I found no procedure to do a talking install nor any claim
> that this totally blind person had done a talking install.
>
>
> Jude <jdashiel at panix dot com>
> "There are four boxes to be used in defense of liberty:
>   soap, ballot, jury, and ammo. Please use in that order."
> -Ed Howdershelt (Author, 1940)
>
> .
>
> On Thu, 27 Oct 2022, Linux for blind general discussion wrote:
>
>> Ctrl+alt+Z...
>>
>>
>> Isn't that shortcut for ChromeVox however?
>>
>> I'm not sure what Void comes with as far as A11Y stuf, or if you can install
>> things like Orca, Espeak, et al however. I've not got around to trying it in a
>> VM yet. Looking at it I'm not sure if it comes with Orca or how easy it'd be
>> to update Orca at all vs something like Arch or another Linux distro
>>
>> On 10/27/22 10:31, Linux for blind general discussion wrote:
>>> Can it talk while installing?  If so, this is not documented anywhere on
>>> the web I have found.
>>> Unfortunately control-alt-z does not get the current version of
>>> google-chrome-stable talking on linux and neither does anything else I
>>> found documented in the orca-list.  So for google-chrome there is either a
>>> new way to get it talking in linux or no way to get it to talk in linux.
>>>
>>>
>>>
>>> Jude <jdashiel at panix dot com> "There are four boxes to be used in
>>> defense of liberty:
>>>    soap, ballot, jury, and ammo. Please use in that order."
>>> -Ed Howdershelt (Author, 1940)
>>>
>>> .
>>>
>>> _______________________________________________
>>> Blinux-list mailing list
>>> Blinux-list@redhat.com
>>> https://listman.redhat.com/mailman/listinfo/blinux-list
>>>
>> _______________________________________________
>> Blinux-list mailing list
>> Blinux-list@redhat.com
>> https://listman.redhat.com/mailman/listinfo/blinux-list
>>
>>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
>

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

