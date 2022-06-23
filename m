Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DF62557F53
	for <lists+blinux-list@lfdr.de>; Thu, 23 Jun 2022 18:08:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1656000481;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=x7qqsKaKnl+G/qF6IqIzT05xtzBwiE/4eLNOOVcmRs8=;
	b=jQAWLn+fZv8lV0U5Le/g2wGWBVuuxlm7RBbJ1CTawAO/sqJLVwRLThdB+bHK6Q0cv/mhHm
	j93o96Px/dPv9zMUd/bt1nVfBDYRd71/p9A0fYYS6XI5Yv5BSS1B1Yo/rXq2CuB/v+h+It
	L7Nzyil9WPMBlyJrvFmVXjzgwoYffmc=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-612-gNvaCFSUPlasP2U2EBuPCg-1; Thu, 23 Jun 2022 12:07:58 -0400
X-MC-Unique: gNvaCFSUPlasP2U2EBuPCg-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com [10.11.54.8])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id A8B4E81D9CA;
	Thu, 23 Jun 2022 16:07:56 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 8E5FDC2810D;
	Thu, 23 Jun 2022 16:07:53 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id C95D8194B95E;
	Thu, 23 Jun 2022 16:07:52 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Thu, 23 Jun 2022 17:07:42 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: Thoughts on KDE Plasma as of right now
To: blinux-list@redhat.com
References: <mailman.28324.1655979483.111202.blinux-list@redhat.com>
 <mailman.28082.1655981624.111205.blinux-list@redhat.com>
 <mailman.28290.1655982320.111204.blinux-list@redhat.com>
 <mailman.28639.1655998451.111206.blinux-list@redhat.com>
 <mailman.28526.1655999581.111209.blinux-list@redhat.com>
In-Reply-To: <mailman.28526.1655999581.111209.blinux-list@redhat.com>
Message-ID: <mailman.28219.1656000472.111203.blinux-list@redhat.com>
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
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

In no particular order...


1. Yes, a said in the other mails, none of the dialogs read, but I can 
add export QT_LINUX_ACCESSIBILITY_ALWAYS_ON=1 # for QT5 accessibility 
into both .xinitrc and /bashrc too


Yes I was trying to add a shortcut for opening a terminal with Meta+T 
for example. Is it already in one of the Meta 1-0 keys, if so I didn't 
find it, or is it only set to look for yakuake/Konsole? I can dig in the 
.xml files to check and see if so


PAM and unlocking after sleep/when doing startx does not accept my 
password and acts as a failed login, thus locking me out after 3 failed 
logins.



On 6/23/22 16:52, Linux for blind general discussion wrote:
> Wonder if we could set that environment variable as KDE starts?
> Devin Prater
> r.d.t.prater@gmail.com
>
>
>
>
> On Thu, Jun 23, 2022 at 10:34 AM Linux for blind general discussion <
> blinux-list@redhat.com> wrote:
>
>> Howdy,
>>
>>> I mean, all I really need is the apps being fixed, things like
>>> konsole, the various windows and programs and it's definitely useable.
>>> Dolphin is surprisingly great, I went in expecting oh, it'll be a pain
>>> to use.
>> yes, most apps already got very basic support, but this needs to be
>> improved a lot. first lets fix up most the desktop related components.
>> Konsole should have basic accessibility support as well. but i think the
>> handling in orca to VTE is very special black magic. this might need to
>> be done for Konsole as well.
>> the support for konsole is tracked at this task:
>> https://phabricator.kde.org/T10099
>> last thing was QT was missing the Terminal accessibility role. this was
>> added then by frederik. so the work could here beeing continue as well.
>>
>>> The only show stopper or me, and I've not found a workaround yet, is
>>> that the QT5 windows and panels do not read
>> QT5 windows should be accessible by default. you might have to set an
>> environment variable:
>> set this to your ~/.bashrc file
>> export QT_LINUX_ACCESSIBILITY_ALWAYS_ON=1 # for QT5 accessibility
>>
>> by the way, in latest plasma 5.25 there is a new shortcut to focus all
>> available desktop panels Meta + Alt + p (it cycles between all available
>> desktop panels and the desktop itself). the desktop panel and tray area
>> is also now keyboard navigate able. But some accessibility labels are
>> missing or could  be improved. this is next on my list.
>>
>> just to share the latest links i send to orca list:
>> my blog post about current KDE accessibility team efforts:
>> https://www.patreon.com/posts/68079468
>>
>> Carls current proposal to have accessibility as 3 year goal (this is a
>> voting process):
>> https://phabricator.kde.org/T15611
>> my old proposal from 2019 to try to set accessibility as KDE goal (sadly
>> not voted):
>> https://phabricator.kde.org/T11074
>> lets hope accessibility is set as KDE goal for now. this would be great
>> and would give that a lot of love and attention.
>>
>> i will do a basic review of the current situation at weekend. for those
>> are curious about KDEs accessibility state.
>>
>> cheers chrys
>> Am 23.06.22 um 13:05 schrieb Linux for blind general discussion:
>>> I mean, all I really need is the apps being fixed, things like
>>> konsole, the various windows and programs and it's definitely useable.
>>> Dolphin is surprisingly great, I went in expecting oh, it'll be a pain
>>> to use.
>>>
>>> No, Dolphin was quick, useable and responsive. The only show stopper
>>> or me, and I've not found a workaround yet, is that the QT5 windows
>>> and panels do not read, the irony of the accessibility panel being
>>> inaccessible is not lost on me, but I'm tempted to keep it around to
>>> see where it goes, and given the Steam Deck uses Plasma last I
>>> checked, here's hoping for improvements that get ported there too
>>>
>>> On 6/23/22 11:53, Linux for blind general discussion wrote:
>>>> Yeah, I've not tried it in like half a year, but this has prompted me to
>>>> begin as a Patron to linux-accessibility again. Just $19 per month,
>>>> but I
>>>> hope it helps enthusiasm and to keep up this really great work!
>>>> Devin Prater
>>>> r.d.t.prater@gmail.com
>>>>
>>>>
>>>>
>>>>
>>>> On Thu, Jun 23, 2022 at 5:18 AM Linux for blind general discussion <
>>>> blinux-list@redhat.com> wrote:
>>>>
>>>>> So given the news about KDE accessibility getting worked on, I figured
>>>>> I'd give KDE a shot. I wasn't that impressed last time.
>>>>>
>>>>> However. It's improved a lot, I can do basic things, which is a big
>>>>> step
>>>>> up, and I get talking app launchers, and can do email, web browsing and
>>>>> text editing which is a big, big plus.
>>>>>
>>>>>
>>>>> That being said, I still cannot change system settings or default apps
>>>>> like I can on, say, Mate but, and here's the thing I like about KDE
>>>>> Plasma as of writing this...
>>>>>
>>>>>
>>>>> It is fast, it, on my Arch box, so YMMV on other OSes, but I'm running
>>>>> this on my Arch box, the thing I like about it is the keyboard commands
>>>>> make sense.
>>>>>
>>>>> Now, if I can just work on adding a shortcut that doesn't require me to
>>>>> go and fight with a window that won't read, that'd be good. Plasma is
>>>>> pleasently surprising and worth checking in on.
>>>>>
>>>>> _______________________________________________
>>>>> Blinux-list mailing list
>>>>> Blinux-list@redhat.com
>>>>> https://listman.redhat.com/mailman/listinfo/blinux-list
>>>>>
>>>>>
>>>> _______________________________________________
>>>> Blinux-list mailing list
>>>> Blinux-list@redhat.com
>>>> https://listman.redhat.com/mailman/listinfo/blinux-list
>>>>
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
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
>

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

