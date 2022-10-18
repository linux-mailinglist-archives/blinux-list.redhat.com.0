Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 71204602F41
	for <lists+blinux-list@lfdr.de>; Tue, 18 Oct 2022 17:12:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1666105942;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=m0TxnaNvkcJ6VSyB5rb6A3Vd9TUidYeO2ikD/22CzCI=;
	b=ivscFxW1yd/CNbMgJ3vGQDnpTxIshXI0fNOYM3tk+vMZEIx0GtbpW5geAyE4pLFeSuCN0y
	pFW0gFRWxnoIDg7m/fak+6+IeGktI86qUbgY+e+GqL6PIWAVI13nlVhJB1n5tKwt3iekIg
	teqJrfh/FbrZZa24uA0Sqb+CtgnC9cQ=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-247-8WEphwroMxWqNmR1F7eHLQ-1; Tue, 18 Oct 2022 11:12:19 -0400
X-MC-Unique: 8WEphwroMxWqNmR1F7eHLQ-1
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com [10.11.54.9])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id D2584882820;
	Tue, 18 Oct 2022 15:12:13 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id A6E63401D45;
	Tue, 18 Oct 2022 15:12:11 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id C052F19465A2;
	Tue, 18 Oct 2022 15:12:10 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Tue, 18 Oct 2022 16:12:00 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.3
Subject: Re: Turning off screen in Linux
To: blinux-list@redhat.com
References: <mailman.882.1666078921.3006.blinux-list@redhat.com>
 <mailman.880.1666101707.3003.blinux-list@redhat.com>
In-Reply-To: <mailman.880.1666101707.3003.blinux-list@redhat.com>
Message-ID: <mailman.952.1666105929.3007.blinux-list@redhat.com>
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

Does turning off the screen make that much of a difference to battery 
life actually? I'm unsure since I've heard so many claims over the years 
of it does, it doesn't, it does but only this much, etc


On 10/18/22 15:01, Linux for blind general discussion wrote:
> Tim here.  I believe xrandr should let you do this.  First, you
> need to get the name of your display according to xrandr:
>
>    $ xrandr | awk '/primary/{print $1}'
>    LVDS-1
>
> For me that's "LVDS-1" but your output might be different, like
> "VGA" or "HDMI-1" or something.
>
> You should then be able to disable/power-down that display with
>
>    $ xrandr --output LVDS-1 --off
>
> If you need to re-enable it for whatever reason, change the "off"
> to "auto":
>
>    $ xrandr --output LVDS-1 --auto
>
> I'm not sure how this interacts with screen-readers, and based on
> my testing, it feels like applications might go a little weird,
> getting resized to an itty-bitty size (I think my texting xterm got
> resized down to fit in a 320x200 display, since it was shrunk down
> when I re-enabled the screen).
>
> If it's a problem for you, there might be a way to create a
> virtual monitor, by including something like
>
>    SubSection "Display"
>      Depth 24
>      Virtual 1024 768
>    EndSubSection
>
> in the "Screen" section of your xorg.conf file.  X should then think
> you have two displays connected to your system, and you can use the
> `xrandr ... --off` command to turn off the real one while still
> having the virtual one of a size large enough to make X programs
> happy.
>
> Or possibly run "xvfb" to create a virtual X environment, possibly
> adding the physical display to its configuration, and then using
> xrandr to disable the real screen?
>
> Just a few ideas,
>
> -Tim
>
> On 2022-10-18 07:41, Linux for blind general discussion wrote:
>> Hello everyone,
>>
>> Ubuntu Mate 22.04 64-bit.
>>
>>
>> I suppose there are multiple ways to go about turning off the laptop
>> screen on Linux, from switches to more invasive configuration modifications.
>>
>>
>> I wonder, what is the ideal solution for us to set up, so it would be
>> possible to turn off the screen, so we could save battery, protect the
>> displayed information etc. but we could at the same time switch the
>> setting when necessary without the need to log out / restart?
>>
>>
>> Thanks for your advices!
>>
>>
>> Best regards
>>
>>
>> Rastislav
>>
>>
>>
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

