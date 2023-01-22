Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 8608A677106
	for <lists+blinux-list@lfdr.de>; Sun, 22 Jan 2023 18:17:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1674407873;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=eflVu/AeZXumY2t4+AVZ4Junu5vDChwUa2aWIXnSXKU=;
	b=gXbxL7wR362yQLauJMscdot6jw4XfFQvX7VaklH0rZjRtuabN2tkyj5V2fdoBgolTbT38c
	sufB/m4TCK2wqQFRmREU7b6OwjiS/Lrdy4R2cew191VJf23XU6mzof8jbCsHg0whJsp0Lh
	JjZz5svJVFYyZqkGstg51XMCWNhohhw=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-662-rmM4_pX6NNeVl396zzkDuw-1; Sun, 22 Jan 2023 12:17:50 -0500
X-MC-Unique: rmM4_pX6NNeVl396zzkDuw-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com [10.11.54.1])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id D2B8885C069;
	Sun, 22 Jan 2023 17:17:48 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id BEE5D40C2005;
	Sun, 22 Jan 2023 17:17:42 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id C560C194658D;
	Sun, 22 Jan 2023 17:17:36 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Sun, 22 Jan 2023 18:15:41 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux armv7l; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: new version of jenux
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <mailman.286.1674235413.8169.blinux-list@redhat.com>
 <mailman.358.1674274777.8176.blinux-list@redhat.com>
 <mailman.397.1674314804.8168.blinux-list@redhat.com>
 <mailman.400.1674322782.8168.blinux-list@redhat.com>
 <mailman.410.1674327069.8170.blinux-list@redhat.com>
In-Reply-To: <mailman.410.1674327069.8170.blinux-list@redhat.com>
Message-ID: <mailman.504.1674407856.8170.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Hello,

is some way to run Jenux on Raspberry Pi 4B or 400?

Thanks.

Best regards

Vojta.

Dne 21. 01. 23 v 19:51 Linux for blind general discussion napsal(a):
> Daniel nash has been aware of this problem for all four failing isos.  He
> suggested I take actions I thought quite risky with regard to uefi on the
> single computer I have.  I took some of those actions and those actions
> failed to solve this problem.  Microsoft is burried deep in the middle of
> this mess as originator of uefi and Daniel Nash got the uefi code from
> fedora.  He may have done things to the code as it went into jenux that
> broke things but I can't say for sure since I wasn't looking over his
> shoulder.  If I can get a be my eyes volunteer to tell me any error
> messages that come up as this failed iso boots I'll get those to Daniel
> Nash and then we may have located one of his problems.
> 
> 
> 
> Jude <jdashiel at panix dot com> "There are four boxes to be used in
> defense of liberty:
>   soap, ballot, jury, and ammo. Please use in that order."
> -Ed Howdershelt (Author, 1940)
> 
> .
> 
> On Sat, 21 Jan 2023, Linux for blind general discussion wrote:
> 
>> Hi Judd.  Have you reported this to Daniel Nash?  I think he is the jeux developer.  You might want to let him know what is going on so he can track it down.  Thanks.
>>
>> Matthew
>>
>>
>>
>>> On Jan 21, 2023, at 10:26 AM, Linux for blind general discussion <blinux-list@redhat.com> wrote:
>>>
>>> You have to install the version to find out.  On the current equipment
>>> that's not possible.  Sometime this weekend I'll see if be my eyes can
>>> give me information about what comes up on the screen before jenux fails
>>> to speak and reboots.  I'm curious if any computer other than the author's
>>> can install this or the last three versions of jenux which is my reason
>>> for posting here.
>>>
>>>
>>>
>>> Jude <jdashiel at panix dot com> "There are four boxes to be used in
>>> defense of liberty:
>>> soap, ballot, jury, and ammo. Please use in that order."
>>> -Ed Howdershelt (Author, 1940)
>>>
>>> .
>>>
>>> On Fri, 20 Jan 2023, Linux for blind general discussion wrote:
>>>
>>>> what is new in the latest version?
>>>>
>>>> On 1/20/2023 9:23 AM, Linux for blind general discussion wrote:
>>>>> Not ready for download.  The sha512sum file up on the website to check the
>>>>> iso's integrity doesn't match.  This one probably won't have any ability
>>>>> to install on thinkpenguin computers either since the last three isos also
>>>>> failed but I'll check it out just to make sure the loosing streak remains
>>>>> unbroken.
>>>>>
>>>>>
>>>>> Jude <jdashiel at panix dot com>
>>>>> "There are four boxes to be used in defense of liberty:
>>>>>   soap, ballot, jury, and ammo. Please use in that order."
>>>>> -Ed Howdershelt (Author, 1940)
>>>>>
>>>>> .
>>>>>
>>>>> _______________________________________________
>>>>> Blinux-list mailing list
>>>>> Blinux-list@redhat.com
>>>>> https://listman.redhat.com/mailman/listinfo/blinux-list
>>>>>
>>>>
>>>> _______________________________________________
>>>> Blinux-list mailing list
>>>> Blinux-list@redhat.com
>>>> https://listman.redhat.com/mailman/listinfo/blinux-list
>>>>
>>>>
>>>>
>>>
>>> _______________________________________________
>>> Blinux-list mailing list
>>> Blinux-list@redhat.com
>>> https://listman.redhat.com/mailman/listinfo/blinux-list
>>>
>>
>> _______________________________________________
>> Blinux-list mailing list
>> Blinux-list@redhat.com
>> https://listman.redhat.com/mailman/listinfo/blinux-list
>>
>>
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

