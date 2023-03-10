Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 56C576B4F71
	for <lists+blinux-list@lfdr.de>; Fri, 10 Mar 2023 18:50:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1678470631;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=c2UJwvqLQcPOh2H/SsWh1VrM2LxcFhmEiSLlBohDbTM=;
	b=MCcnjAxpdLu7ooEIiFtbI9pYmf4JKkvG8vVlTnZEit7Tf21+h88AtG1WyN5eP7JiSltBq4
	ywNwWUrwvhaAOqPvz6CP0TfX2OlD7xEkcNvc8qdWdW4lC54KRk6EDqBuRub9jYVKlMdXXv
	GXUiabHdpNPg11n6tP5toCNZhk24mt4=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-392-Khzq-b0zPP6kcEl68zWwRA-1; Fri, 10 Mar 2023 12:50:29 -0500
X-MC-Unique: Khzq-b0zPP6kcEl68zWwRA-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com [10.11.54.2])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id A5FBB1C07593;
	Fri, 10 Mar 2023 17:50:27 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id B5B7440BC781;
	Fri, 10 Mar 2023 17:50:14 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 2A7161946A69;
	Fri, 10 Mar 2023 17:50:14 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3731.400.51.1.1\))
Subject: Re: XFCE a11Y specific tweaks?
Date: Fri, 10 Mar 2023 11:30:20 -0600
References: <mailman.2253.1678436282.1521160.blinux-list@redhat.com>
 <mailman.2232.1678451795.1521165.blinux-list@redhat.com>
 <mailman.2342.1678458650.1521161.blinux-list@redhat.com>
 <mailman.2251.1678458737.1521165.blinux-list@redhat.com>
To: Linux for blind general discussion <blinux-list@redhat.com>
In-Reply-To: <mailman.2251.1678458737.1521165.blinux-list@redhat.com>
Message-ID: <mailman.2339.1678470613.1521160.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.2
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

With what distribution had x f c e been used for you?
Was it xubuntu, or had x f c e been added to yet another distribution you use?
Thanks for your patience.

> On Mar 10, 2023, at 08:32, Linux for blind general discussion <blinux-list@redhat.com> wrote:
> 
> It does, as a pleasant surprise.
> 
> 
> Now if it'd quit randomly saving my sessions, that'd help. I've a mind to just start brute forcing that one. I like what XFCE is going for, it's absolutely light and good for my low power machine
> 
> On 3/10/23 14:30, Linux for blind general discussion wrote:
>> yes and has for some time by now.  I used it a couple years ago.
>> 
>> 
>> 
>> Jude <jdashiel at panix dot com> "There are four boxes to be used in
>> defense of liberty:
>>  soap, ballot, jury, and ammo. Please use in that order."
>> -Ed Howdershelt (Author, 1940)
>> 
>> .
>> 
>> On Fri, 10 Mar 2023, Linux for blind general discussion wrote:
>> 
>>> Does orca work with x f c e now?
>>> 
>>>> On Mar 10, 2023, at 02:17, Linux for blind general discussion <blinux-list@redhat.com> wrote:
>>>> 
>>>> Quick question. I've put XFCE  on an Arch install on an old laptop, since it's one that takes up the least space out of all desktops and is lightweight.
>>>> 
>>>> 
>>>> So what are some suggested things I should do from an A11Y standpoint? I'm setting up shortcuts for things like Firefox or Thunderbird, an so on. I've checked the box for assistive tech, I've set my .bashrc up correctly.
>>>> 
>>>> 
>>>> So what XFCE specific things do people suggest? I'm starting to like XFCE now I've got the hang of it a little, just wondering what A11Y things I need to do in order to get the last few kinks out of it
>>>> _______________________________________________
>>>> Blinux-list mailing list
>>>> Blinux-list@redhat.com
>>>> https://listman.redhat.com/mailman/listinfo/blinux-list
>>> _______________________________________________
>>> Blinux-list mailing list
>>> Blinux-list@redhat.com
>>> https://listman.redhat.com/mailman/listinfo/blinux-list
>>> 
>>> 
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

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

