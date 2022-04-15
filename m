Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 63F0F502512
	for <lists+blinux-list@lfdr.de>; Fri, 15 Apr 2022 08:00:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1650002408;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=6eamARhQ/3xX460jIhPDgOlWgrgOr4IaxMO2Urkv0oo=;
	b=JB2wU0ROhGoVbzjweEYTB6Es+XMldF9ZRn3EZpx5oi/Dyd50m4Bpui+et6Qz9B0T0XN/S7
	V1k+w4nkhviPY/T1GQDi0/jF70BtJ4sia2sc8O0gleBHwzoi1Hhy0rQbyfSSRF2neUk/0h
	EMoYgD5MU1Afx32LXqd+8K8ob7lxMQs=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-530-AiB8EhzwNKa8eKgaH__zOQ-1; Fri, 15 Apr 2022 02:00:04 -0400
X-MC-Unique: AiB8EhzwNKa8eKgaH__zOQ-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com [10.11.54.1])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id D6DD21C04B65;
	Fri, 15 Apr 2022 06:00:02 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id D8E2440CF8F6;
	Fri, 15 Apr 2022 05:59:59 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 57D19194034E;
	Fri, 15 Apr 2022 05:59:59 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Fri, 15 Apr 2022 01:59:29 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: FYI - Command Line Programs for the Blind
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <mailman.7836.1649830111.111205.blinux-list@redhat.com>
 <mailman.8034.1649840185.111204.blinux-list@redhat.com>
 <mailman.8235.1649845924.111201.blinux-list@redhat.com>
 <mailman.8235.1649853207.111206.blinux-list@redhat.com>
 <mailman.8153.1649856275.111209.blinux-list@redhat.com>
 <mailman.8268.1649857705.111206.blinux-list@redhat.com>
 <mailman.8242.1649858545.111203.blinux-list@redhat.com>
 <mailman.8365.1649876915.111204.blinux-list@redhat.com>
 <mailman.8363.1649886716.111208.blinux-list@redhat.com>
 <mailman.8343.1649887607.111209.blinux-list@redhat.com>
 <mailman.8428.1649888423.111203.blinux-list@redhat.com>
 <mailman.8385.1649917954.111207.blinux-list@redhat.com>
 <mailman.8642.1649947864.111206.blinux-list@redhat.com>
 <mailman.8751.1649996850.111206.blinux-list@redhat.com>
In-Reply-To: <mailman.8751.1649996850.111206.blinux-list@redhat.com>
Message-ID: <mailman.8594.1650002398.111207.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.1
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Answers inline


So you don't want to be able to connect your phone to your computer and 
be able to manage texts, notifications, calls and what ever else from 
the computer then?


> I can do that. There are fre and open source apps on F-Droid that do 
> exactly this, that is if I wanted it, though really, I just don't see 
> the need for it at this point. I can manage calls, texts and other 
> notifications right from my phone easily enough, and I can even manage 
> calendars and email among many other things quite successfully and 
> easily from my phone. Why should I want to do most of this on the 
> computer when I have the phone right next to me already? I don't even 
> feel the need to connect a bluetooth keyboard these days, now that 
> Talkback has a braille keyboard built right in now, as Google did 
> split that off from GBoard and integrate it right into Talkback now, 
> and WOW that thing is just lovely. Text messages that once took me 2 
> minutes to type out on that horrible on-screen keyboard now take as 
> little as 20 seconds. The only thing better would be if they would 
> bring back real buttons.

> Course, that really only works for Android, but you don't have an 
> iPhone, because you'd have to give Apple your existing email address 
> and phone number.


You're right. I only have Android here, and as deGoogled as I can make 
it, meaning that I still have to have Talkback, and only their voices 
work before I unlock my screen, but I otherwise run Lineage for MicroG 
now, which doesn't even have a Google account setup. But there are many 
other benefits to Android devices, not the least of which is the fact 
that there are many more of them made by many more manufacturers, and 
even more devices are capable of running LineageOS, formerly 
Cyanogenmod, than are made by Apple alone. ANd it's not just the privacy 
thing either. Apple locks down their OS and their app store, and 
"jailbreaking" only allows me to use just another app store. On any 
other device on the market not made by Apple, I can easily get apps that 
are not in the app store just by either downloading them directly to the 
phone, or even to the computer and then installing them via adb to the 
phone if I like. The choice and the freedom are mine.


> Also for the Android thing I think there actually a way to do that 
> with Linux but it's not the your phone companion thing naturally.


No, it's not called Your Phone Companion, but it does exist, and there 
are actually several different options, both open and closed source 
should I decide I want such a tool. Eventually, NextCloud is supposed to 
sync text messages, and I already use my own personal NextCloud for 
contacts and calendars and such, so that may be the next logical step.


> Hmm, not sure if it's possible to do much on Android without an 
> account. At least if it's based on the Google software much at all 
> it'll have the notification to complete setup if you skip setup.


Well first, as I mentioned in a previous answer, I have LineageOS 18.1 
here, equivalent to Android 11, and I got the MicroG version that 
doesn't need gapps. I just added in Talkback and a version of GoogleTTS 
that I got from MindTheGapps so that I could have speech during setup 
and upon startup before I unlock the screen. Talkback is in F-Droid, but 
when I tried sideloading it before booting the phone into Lineage for 
MicroG for the first time, the F-Droid version didn't work, didn't even 
show up in the accessibility settings, so I used the MindTheGapps 
version, which does work. I normally use RHVoice, but it doesn't work 
during setup, and although Espeak works during setup, it doesn't work 
when I restart the phone until I unlock the screen, so I used the same 
MindTheGapps GoogleTTS just for that and once the screen is unlocked, 
RHVoice starts normally. I get lots of things from F-Droid, which does 
not require a Google account, and I even downloaded the Aurora Store 
from F-Droid, which gives me access to free apps that are in the Google 
Play Store anonymously without a Google account. I could just as easily 
go to apkmirror.com or apkpure.com to get apps that don't appear in 
F-Droid, but the Aurora Store keeps my Play Store apps updated a bit 
more easily.


To answer the initial point though, I can get much done with any vendor 
Android without a Google account as well. I don't even have to tell it I 
don't have access to the internet in order for a skip button to show up 
on the Google setup page. Yes, it will give me a stupid question after I 
tap the skip button, but it's done at that point, no need to keep going 
back to it or anything like that, and although there are checkboxes that 
I need to turn off, there aren't so many of them as I recentlyh saw on a 
Microsoft computer that wasn't even connected to the internet.


OK, so you do have a point that setup will keep notifying me that I 
should "finish setup," but back when I just set up a Google account and 
let it do what it was gonna do, it still notified me that I needed to 
finish setup, and I left nothing undone at that time, so it seems it 
just does this for a time for some reason. Usually after restarting the 
phone a few times, the notification does go away in all cases. I have 
now skipped the Google account setup on phones running everything from 
Android 6 all the way up to 10, and I get the same result every time. 
The Google account setup can be skipped, and I can still have the apps I 
need or want on the device, and even use the included calendar and 
contacts and all that stuff without signing into an account.

~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

