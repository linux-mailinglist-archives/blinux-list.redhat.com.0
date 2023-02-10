Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C64069178F
	for <lists+blinux-list@lfdr.de>; Fri, 10 Feb 2023 05:23:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1676003029;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=+zkyJCdUsokP33nrlB88FB7SBE6pj3mHPrNSq7GAOBI=;
	b=RO/wNY9LcuJs8INHzmKiBfw8sRxr3HZebMV7/YM8DtKxU/y3vUSc8ApNi917Mn03OEmxf+
	xflgtDqlQEf83gdughRkFjCk0b6l4JY8CYjJrrUXag/BYTzJcrWUx6SWwASQ/Ieiol7CeN
	4Y1lhALqzNBornA2E5hfDoBNeAI1rlI=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-186-e3NuJ32mPZuBO2ZaUpGfNQ-1; Thu, 09 Feb 2023 23:23:45 -0500
X-MC-Unique: e3NuJ32mPZuBO2ZaUpGfNQ-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com [10.11.54.4])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 64C471871CD8;
	Fri, 10 Feb 2023 04:23:44 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 8EE002026D4B;
	Fri, 10 Feb 2023 04:23:40 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id F08161946597;
	Fri, 10 Feb 2023 04:23:39 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Thu, 9 Feb 2023 23:23:32 -0500 (EST)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: carbonyl: Chromium based browser built to run in a terminal
In-Reply-To: <mailman.5451.1675991501.8173.blinux-list@redhat.com>
References: <mailman.5886.1675981319.8177.blinux-list@redhat.com>
 <mailman.5469.1675986838.8174.blinux-list@redhat.com>
 <mailman.5587.1675987861.8171.blinux-list@redhat.com>
 <mailman.5451.1675991501.8173.blinux-list@redhat.com>
MIME-Version: 1.0
Message-ID: <mailman.5567.1676003019.8176.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.4
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Was about to suggest Chime use Lynx to view that readme file.
Kare



On Thu, 9 Feb 2023, Linux for blind general discussion wrote:

> I used lynx to view the readme.md file and in carbonyl/scripts you run the
> build.sh script to build the package.
>
>
>
> Jude <jdashiel at panix dot com> "There are four boxes to be used in
> defense of liberty:
> soap, ballot, jury, and ammo. Please use in that order."
> -Ed Howdershelt (Author, 1940)
>
> .
>
> On Thu, 9 Feb 2023, Linux for blind general discussion wrote:
>
>> Well, there seems no man-page, also, seemingly 1 of the few read me files
>> which are not capitolized. In those instructions, do they want me to run all
>> those g n u commands? Thanks, this may be really interesting.
>> Chime
>>
>> _______________________________________________
>> Blinux-list mailing list
>> Blinux-list@redhat.com
>> https://listman.redhat.com/mailman/listinfo/blinux-list
>>
>>
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

