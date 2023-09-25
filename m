Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F05D7AD939
	for <lists+blinux-list@lfdr.de>; Mon, 25 Sep 2023 15:34:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1695648848;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:autocrypt:autocrypt;
	bh=aCSxRgH2bwqz7bLqk1+/tY5uhX4EAso2g1sHJO8ypLY=;
	b=Ej74TmVg8SW/moZV6n8WPyYntC5iwzR8Ta1uYoWgsCojAa6qA0kWy0+HegLiYSYepokyEo
	z4Xqt9l0Hhc2OrU7ezIjtl/ZORP42oAmQXTN/do3I9ZJiJhAJidVwokd3UA6xQ+H4n2RfO
	P6iCfLO148wDs1qQ+BXzyqYV+MH3xZ8=
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-631-AwOBrv61PDyZ79cONgIzag-1; Mon, 25 Sep 2023 09:33:59 -0400
X-MC-Unique: AwOBrv61PDyZ79cONgIzag-1
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com [10.11.54.9])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 2714F1C09A46;
	Mon, 25 Sep 2023 13:33:58 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 43778711297;
	Mon, 25 Sep 2023 13:33:36 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 5B7D319465A4;
	Mon, 25 Sep 2023 13:33:34 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Mon, 25 Sep 2023 09:33:26 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: Talking Images for 64-bit Laptop
To: blinux-list@redhat.com
References: <mailman.2112.1695416202.2242621.blinux-list@redhat.com>
 <mailman.2216.1695421961.2242620.blinux-list@redhat.com>
 <mailman.294.1695641943.4021072.blinux-list@redhat.com>
Autocrypt: addr=jason@jasonjgw.net; keydata=
 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
 Jlx6Ar305Q==
In-Reply-To: <mailman.294.1695641943.4021072.blinux-list@redhat.com>
Message-ID: <mailman.309.1695648813.4021072.blinux-list@redhat.com>
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
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Note that if you're in a graphical environment, switching to a virtual 
terminal is achieved with ctrl-altF1, ctrl-alt-F2, etc., and at least 
one of those terminals will be taken up by your graphical session. These 
days, tty1 is usually devoted to the graphical session; possibly tty2 as 
well.

On 25/9/23 07:38, Linux for blind general discussion wrote:
> I appreciate all this information because I got in a bit of a
> hurry and ended up at the wrong site and the web monster showed
> me a 3-GB image for slint which I downloaded.  The download went
> fine and the image flowed like good wine on to a 4-GB usb stick.
>
> slint-14.2.iso?viasf=1
>
> Whatever this is, it's not a bootable image but probably all the
> sources which is a nice thing to have but won't do the job at
> hand right now.  I should mount it and see what's there but it
> produced a thumb drive with 1 single partition of type hidden
> according to fdisk -l /dev/sdx.
>
> This whole project is going fairly nicely in that my wife helped
> me turn off secureboot and change the boot order to usb first
> then internal drive and, if the internal drive wasn't sick, I'd
> be up and running.
>
> 	Another debian-11 distro on a different thumb drive jups
> right in to the installation routine if you type s at the beeps
> and the system seems to just love it.
>
> 	Since the keyboard is a laptop keyboard, getting a
> secondary tty is a bit tricky.  I had good beginners' luck after
> getting to the partitioner but I haven't been able to duplicate
> that more than once.  I held alt+F1, I think and got the second
> console and was able to look around in /dev.  The mentally-ill
> internal drive, however, was nowhere to be found and the only
> /dev/sdx listing was my boot drive for Linux.
>
> 	I killed everything and restarted but couldn't get the
> second console or any of the others to show but the partitioner,
> this time could see every drive in the system and their
> descriptions were spot on so I could have installed then had I
> wanted to do so.
>
> 	I could see that the internal drive is a Kingston ssD
> with 2 terabytes and all the partitions including Microsoft's
> partition were listed.  I am sorely tempted to plug a real
> keyboard in to a usb converter which has a number pad like the
> good Lord meant keyboards to have, I mean a real number pad, not
> these fake ones that only give you numbers but have no numlock to
> cycle back and forth.
>
> 	When I was going to the school for the blind, they
> started us in typing on QWERTY keyboards back in 1962 when I was
> in the Fifth grade so it's nice when stuff stays in the usual
> place.
>
> 	That time when I could see all the drives on the system
> and could have installed Linux, I kept getting a really nice
> keyboard help instead of the secondary consoles so I don't know
> what changed but I couldn't call them up any more.
>
> 	The keyboard help said F1 when I pressed the key to the
> right of Escape so alt + that should have switched to tty1 from
> tty0.
>
> 	Anyway, I'll try your suggestion and see if I get slint
> when I put that image in.
>
> 	When I get Windows 11 working again, I will have a laptop
> with windows  11 or a Linux laptop if I plug in the slint image,
> hopefully the correct one this time.
>
> 	I do see that the CMOS clock is right in that if I do the
> date command from /dev/tty1, I see a utc date that is appropriate
> for my time zone.  Older Windows systems set the CMOS clock based
> on local time so this one is new enough to do it the right way.
>
> Linux for blind general discussion <blinux-list@redhat.com> writes:
>> Hi Martin,
>>
>> to clarify, I have provided an image of an installed system as you
>> requested:
>> https://slackware.uk/slint/x86_64/slint-14.2.1/minislint/README.minislint
>> but it was for a previous Slint version.
>>
>> You'd be better off installing the most recent version in an USB stick
>> (or a SD
>> card in an USB enclosure)  as indicated in:
>> https://slint.fr/en/HandBook.html#_install_slint
>>
>> Cheers,
>> Didier
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
>

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

