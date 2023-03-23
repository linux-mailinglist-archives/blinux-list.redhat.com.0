Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A5B06C72BB
	for <lists+blinux-list@lfdr.de>; Thu, 23 Mar 2023 23:06:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1679609210;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:in-reply-to:in-reply-to:
	 references:references:list-id:list-help:list-unsubscribe:
	 list-subscribe:list-post; bh=bIVOmLsZE9RK0aej2ZG7dWZXRpavsF1SybtcHkpeAig=;
	b=R0CASrPzSp2irGrEx/kuhFuSEgFMeg5ASd/o9lOjC9q0chsYHtZY3rX9jUmpd9YXyUtlg1
	6QHTTZ+iFQbWYMdJHoUbCb+v8rqgbbBEgfA3GNCDdZGuGBNBP45me7Z6wpFsyPgl8s3ptL
	W7I6HgaCycknYh0dVx1RUGI04om8vsE=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-292-CyjPq4axMuOz4IgUCKuFVw-1; Thu, 23 Mar 2023 18:06:48 -0400
X-MC-Unique: CyjPq4axMuOz4IgUCKuFVw-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com [10.11.54.5])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id CFAAB85A588;
	Thu, 23 Mar 2023 22:06:46 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 00B7B44037;
	Thu, 23 Mar 2023 22:06:46 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id A1A2A19466DF;
	Thu, 23 Mar 2023 22:06:45 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
To: blinux-list@redhat.com
Subject: Re: [orca] Odilia, the new Linux screenreader written in Rust,
 reaches 0.1.0 (fwd)
Date: Thu, 23 Mar 2023 17:01:54 -0500
MIME-Version: 1.0
In-Reply-To: <mailman.1539.1679608558.636362.blinux-list@redhat.com>
References: <mailman.1101.1679499219.636362.blinux-list@redhat.com>
 <mailman.1130.1679509316.636367.blinux-list@redhat.com>
 <mailman.1311.1679555916.636358.blinux-list@redhat.com>
 <mailman.1401.1679570769.636358.blinux-list@redhat.com>
 <mailman.1539.1679608558.636362.blinux-list@redhat.com>
User-Agent: POP Peeper Pro (5.4.5.0)
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:UiiNS1fBxJ8=;calnu+3A5ZdkIQPTDnQ8/YEGJUT
 ITWClKjSCOxz8KkSCTdvwYbVrDcptXvedcsIBliKhnUZKm5sFKxPa0KFANvL6IVh4CjjHENQI
 BY/+9hCPEhrwWCHirRkgnEoFmE1hlmn7gD4oe+iCfwn79CbDW4VtWPxgvfSZiqqz5iZWJ1Xib
 skz+SLboQ8AlNTe6oiDJttX21aIdoOdCnQDU1xjoRFN5nyP+ytNT16dqpyQmf2zDFZ3mF7NMI
 EBpJ1Wv8CAyVMzN5f2AdGF6HpMzH96zy/6Wibp67RKfbGUk2Z7i4+pqufxAmtd9vbqCAyrNUS
 6/Sbp6Xtf9S5qR2jmZsptKdZKfMxXslY6uwOXzIvjGG/Bq3K3s6Dw50zb+0oVmYJ+xEg0YMAz
 4UYCHxX+cS+1/BiFFjeogTYvbEIg3+L764z53A0QAbxw8bwdVLPfJKxedlc8krDQze/dd305S
 ZU1mSt6FIErrJ3xMDFZ1tF5ubTobt453iYirbin1glRg0FJTC6mRmXXKcflRpRwDctkVXPpRI
 M9wPEzL3aMirhsejKm61DdTDkomb1MQMoIk9hAi6xngZxTVIXxDcobEWvQRhzgIzLOiE2G/pe
 jQ9gibUZ6A02yPfNxLwn4DfsXX57GYsBtw1QjhtXp3GN0GmxhB/Fd6UAMWUV+2YjXWHUAed5k
 kDhiGib7djOp1zPh9RDDQLrg0vMJA955/oEbAjSzt7Eoj3qZAdUUTl+7rIPEyMK1dhhp1+tQ2
 da8+ekYFqujWtUuiNkP1dXW+Z/ceH5ZpY/ir8KlMhRSQhF0TQ4XuKntPo0B9HkUl/8sgfXEjX
 C0fkP28y+ULsnUgUXoqd+dRdNYtVXSejWw1R+lxEvkwHtB4Wse0emUZhI8F11putkMooHbKil
 7gHcFna7SGSySbgaz1O/L3N9dX3BREb7wSX2NLzvm1gO4Owujvv0U4K/ZWDFVdAu+8Z4lmzMJ
 5Y74gA1jxm9eUdXCF7wjtENAoXc=
Message-ID: <mailman.1710.1679609205.636363.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.5
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: multipart/mixed; boundary="===============0872423035021399132=="

--===============0872423035021399132==
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable

Let's hope it does not die on the vine like so many other projects.=20

----- Original Message -----
From: Linux for blind general discussion <blinux-list@redhat.com>
To: blinux-list@redhat.com
Date: Thu, 23 Mar 2023 21:55:14 +0000
Subject: Re: [orca] Odilia, the new Linux screenreader written in Rust, rea=
ches 0.1.0 (fwd)

> Orca is indoubtebly an amazing project, with a lot of good work behind it=
.

Though, as great as the final product is, there are certain limitations.

The screenreader is written in a language that can take eternity just to
finish a loop, and is not capable of true concurrency. I'm not
criticizing Python here, I use it myself and love the language, I'm just
saying using it for performance critical tasks has its caveats.


Rust is from ground up designed for high performance and parallel
computing. That's why I'm personally very excited to see these strengths
used for accessibility, they could yield very interesting results.


Odilia also handles input devices differently, and aims for supporting
touch screens in the future. That's also a very interesting feature,
especially now, as Linux mobile phones are on a rise.


We'll see how the project goes, and what results we get. But it's
certainly a very interesting and impressive work, that fully deserves
attention.


Best regards


Rastislav


Dna 23. 3. 2023 o 12:26 Linux for blind general discussion nap=EDsal(a):
> On 23/3/23 03:18, Linux for blind general discussion wrote:
>> Interesting, could you be more specific on this? From those I know, NVDA
>> is Python & C/C++, Jaws is written entirely in C++ if I remember correct=
ly.
>>
>> VoiceOver, just like the two is older than Rust itself, so I guess it's
>> written in the Apple's middle-level languages.
>>
>> While Android has a Java centered accessibility system.
> Indeed, I think this might be the first implementation of a screen
> reader in Rust.
>
> I'm not immediately persuaded that writing another screen reader for the
> Linux desktop is a good idea over-all. I think Orca is expertly
> maintained, and that most of the problems of graphical user interface
> accessibility under Linux arise outside of Orca itself.
>
> On the other side, implementing from the ground up with new technologies
> might yield positive results in the end, if the project is sustainable,
> and people can of course contribute to the community however they wish.
> That includes working on a new screen reader project if it's what they
> want to do.
>
> The last time there was a second screen reader for the Linux desktop - I
> think it was called LSR - it was maintained by IBM. Then IBM decided to
> discontinue their work on the project, and no one took it over. So we've
> been in the "multiple screen reader" situation before.
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


--===============0872423035021399132==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

--===============0872423035021399132==--

