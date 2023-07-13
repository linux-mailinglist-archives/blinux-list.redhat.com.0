Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id DF6B3752800
	for <lists+blinux-list@lfdr.de>; Thu, 13 Jul 2023 18:06:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1689264371;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:in-reply-to:in-reply-to:
	 references:references:list-id:list-help:list-unsubscribe:
	 list-subscribe:list-post; bh=p/Q1aIKhozw5bXLRTzLSpoEWi7QPfbrMtKCOOSgbxkU=;
	b=a5U7HDQ+dGSKwdSIpsiM6YIIZUFZKQbYe53o1hgK6nPhBZ1VZzF4uYNLqpHYNM44f8eEYR
	Z6b+TjZHn+iffE6w+3nKpri4hyGNeurcSWiDK5lUB10q7Eudr+bMk85ih0zB8JtBVF1y3Y
	GCIZTtCfqmmzCv03ZRvzJNxFgaJ5EKk=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-205-lOZHVL4hPCuRknyGft3gQg-1; Thu, 13 Jul 2023 12:06:08 -0400
X-MC-Unique: lOZHVL4hPCuRknyGft3gQg-1
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com [10.11.54.9])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 798F28D168C;
	Thu, 13 Jul 2023 16:05:59 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 62339492B02;
	Thu, 13 Jul 2023 16:05:59 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id D69B419465A4;
	Thu, 13 Jul 2023 16:05:48 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
To: blinux-list@redhat.com
Subject: Re: Slint for beginners?
Date: Thu, 13 Jul 2023 11:01:10 -0500
MIME-Version: 1.0
In-Reply-To: <mailman.18.1689263767.110742.blinux-list@redhat.com>
References: <mailman.821.1689183357.3826225.blinux-list@redhat.com>
 <mailman.24.1689262689.110736.blinux-list@redhat.com>
 <mailman.18.1689263767.110742.blinux-list@redhat.com>
User-Agent: POP Peeper Pro (5.4.6.0)
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:lYBzMFe5LKg=;j92b3r75u2ID3BzvIWNFKHeTHWy
 2VJbq7ctkWoH2Q/6QdAjmxgc8xmF5R3vYsr/AcPoObSuNafbGZeiWpaq/h9ceYIm2ZL3D2bEI
 dqkAID6NzlHISoDpWOn+vvJVW0TZYx7sd9Uzcvj6gxmPz3ftncHkjwt2BGGt4PtYqDUMvwjaB
 CQP5YcyDZ2FJeJksSMK6bH+j7ECVz5jCFXlaPIX7Y1qXTNTiM5we6FHcnVZh+Luw/Rh/BbcI8
 lQuD+AYpB5wIbXI0Jc/LJ99eEg70hmh5XK82u4qvOpBzHN9yKgyNbvOq/ppmsaqtm/+WvBKv2
 wJPh0Ha/kEG0cEyHG+GrMCa2hjyYAcYpS4/6cMAeJ2HTV5dAJenWpuVG1tUJfjnnue4ClnUvW
 WT0DluBwk6j6hNC8QRNtBOIm/fiUqT1mwIWNh1EtCI0Pr1AadgYhgW1n8c9CiGKCyF+sJWbWe
 73a131iy7ap/2oGQgrcmLfU6JXcFlhhyibAeTMS0dwXmmuS1VBkTwiDqIvFAQmA0ZyL4uhw1+
 1aWdm4fz3aPAiwy6wZkDMH9uzJGyF/EhCox2NKpCUNCvDb6sPD3K+kMR8TrXfPgCxGrO5hrnB
 rzb6xRuPt8AuupEb86AF+teUlvx9/0OI/BFB0S+MeDBPAOQLxInBPzQUTCcnwsXDJZesmoRbe
 qwfsjWI2dtmEe5PDm4KyG+Rf0wVg+jNYJZX5C1IK1FzmSXy9jWUGKVxpWroLQyemrANakx3x4
 rkP1skv4r31fQVdJPwg9kivcratR9kxahTyDtqM1798mR/gszNmwwo/LqPp0brm491XWGn/8V
 cUW8Ae5/h5CCkmwY8lerzgri4+ZfkX35hCixUr1GYAOGoWSujHtbfyAF89DDPToDonAEc9kPb
 5A9czWtzqM/cGclcmkWo+MEYjXP1+w2kQz0Pdv2JyrwUrlmQZuYYyIFYf+u5TzyXQx/NnIDZE
 aE5RjA==
Message-ID: <mailman.25.1689264348.110742.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.9
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: multipart/mixed; boundary="===============8242202849373007265=="

--===============8242202849373007265==
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable

It means operating on the command line, without a graphical user interface.=
 Text mode.

----- Original Message -----
From: Linux for blind general discussion <blinux-list@redhat.com>
To: Linux for blind general discussion <blinux-list@redhat.com>
Date: Thu, 13 Jul 2023 10:55:51 -0500
Subject: Re: Slint for beginners?

> It's always been a puzzle to me:=A0 What is meant by console or console
mode?=A0 I've heard that term for many years; just never knew what it was
or is?=A0 Thanks for any explanation or description.

Howard


On 7/13/2023 10:37 AM, Linux for blind general discussion wrote:
> Yes, I think slint would be a good distribution for you as a beginner if
> you select to start in console mode during the installation.  The reason
> is even with mate and running mate-terminal the speech is less stable tha=
n
> with speakup and running in console gets you speakup and other screen
> reader packages that are more stable than orca.  If you decide to go with
> slint, please do yourself a favor and subscribe to the slint email list.
> That's on freelists.org since that way you'll get operating-specific help
> and you're not the only one using slint with a screen reader on that list=
.
>
>
> -- Jude <jdashiel at panix dot com> "There are four boxes to be used in
> defense of liberty: soap, ballot, jury, and ammo. Please use in that
> order." Ed Howdershelt 1940.
>
> On Wed, 12 Jul 2023, Linux for blind general discussion wrote:
>
>> Good afternoon,
>> I am new to Linux & am currently using Mint 21.1, but keep loosing speec=
h with Orca.
>> As a result, I may switch to Slint, which was recently recommended to me=
 by a friend.
>> Before I do though, I'd like to get opinions from the members of this li=
st as to whether or not this would be a good distribution for me, as a begi=
nner?
>>
>>
>> Thanks,
>> Jessica Dail
>>
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
--
When in doubt; Cheat !

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list


--===============8242202849373007265==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

--===============8242202849373007265==--

