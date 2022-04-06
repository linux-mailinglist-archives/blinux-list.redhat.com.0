Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 457004F6404
	for <lists+blinux-list@lfdr.de>; Wed,  6 Apr 2022 17:56:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1649260573;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=d2Rtto0FCiac4T4EzoB5K4BehoWacjmje0dbJkL8FR4=;
	b=NreC4Fu849HskNxQoU76fpMvaKQVU4edrX98B+N00gyjYtdKvN0X3RY/YbZiPxYSROgF8T
	LXEPqBkvy5iVeLMlUtLzvhL3i0bbJ6OCgizmc6ByGU/rDCVzPc1QmuqdHwEJ+ru+i0AtPE
	Sw5AOS+Z7mXEzCppldVkdS8s4+CyKL4=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-230-Mr7dWF1LOOCUc8FvFvrWqA-1; Wed, 06 Apr 2022 11:56:11 -0400
X-MC-Unique: Mr7dWF1LOOCUc8FvFvrWqA-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com [10.11.54.8])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id C0F6B3802613;
	Wed,  6 Apr 2022 15:56:09 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 87230C27E98;
	Wed,  6 Apr 2022 15:56:07 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id D1F761940372;
	Wed,  6 Apr 2022 15:56:02 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Wed, 6 Apr 2022 17:54:20 +0200
To: blinux-list@redhat.com
Subject: Re: different desktops
Mail-Followup-To: blinux-list@redhat.com
References: <mailman.6893.1649230241.111206.blinux-list@redhat.com>
 <mailman.6722.1649237413.111209.blinux-list@redhat.com>
 <mailman.6967.1649240845.111210.blinux-list@redhat.com>
 <mailman.6938.1649249456.111201.blinux-list@redhat.com>
MIME-Version: 1.0
In-Reply-To: <mailman.6938.1649249456.111201.blinux-list@redhat.com>
User-Agent: Mutt/2.2.2 (aa28abe8) (2022-03-25)
Message-ID: <mailman.6823.1649260561.111208.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.8
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Sure. Ratpoison due to Strychnine is excellent.

Nowadays, though, I've found that i3 is yet another contender. Though I still find it difficult to access the taskbar, it is highly configurable just like ratpoison.

I also tried icewm, and I wasn't impressed by its accessibility.

On Wed, Apr 06, 2022 at 01:50:50PM +0100, Linux for blind general discussion wrote:
>Yes another vote for Ratpoison here
>
>That being said, I've not got IceWM to work with Orca, or anything, so
>what am I missing?
>
>I do though need to get scripting things for Ratpoison. Mostly things
>like a battery monitor and a few other things
>
>On Wed, Apr 06, 2022 at 06:27:16AM -0400, Linux for blind general discussion wrote:
>> ratpoison with strychnine is a contender since you don't use the mouse in
>> that environment and everything is pointed at the keyboard.  The icewm
>> environment may be another contender.
>>
>>
>> On Wed, 6 Apr 2022, Linux for blind general discussion wrote:
>>
>> > Sure, imho all desktops were not created equal when it comes to accessibility.
>> >
>> > The fact that Mate is the first to go to says a lot about the ease of
>> > navigating its controls to select applications, getting to the desktop,
>> > launching the default Caja file manager etc.
>> >
>> > These are the things that define accessibility and some desktops are not able
>> > to do that. I am also thinking of the ability to check on the computer status
>> > such as the battery, network connectivity and so forth.
>> >
>> > On Wed, Apr 06, 2022 at 02:30:14AM -0500, Linux for blind general discussion
>> > wrote:
>> > >For a linux user, using the Orca screen-reading program and keyboard
>> > >shortcuts, and not the mouse, would there be any advantage of using one
>> > >desktop over another?
>> > >At this time, which desktops are usable for Orca users?
>> > >
>> > >_______________________________________________
>> > >Blinux-list mailing list
>> > >Blinux-list@redhat.com
>> > >https://listman.redhat.com/mailman/listinfo/blinux-list
>> > >
>> >
>> >
>>
>> _______________________________________________
>> Blinux-list mailing list
>> Blinux-list@redhat.com
>> https://listman.redhat.com/mailman/listinfo/blinux-list
>>
>
>_______________________________________________
>Blinux-list mailing list
>Blinux-list@redhat.com
>https://listman.redhat.com/mailman/listinfo/blinux-list
>

-- 
Good people do not need laws to tell them to act responsibly, while bad people will find a way around the laws.
- Plato (427-347 B.C.)

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

