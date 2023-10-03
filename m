Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id C8F557B691A
	for <lists+blinux-list@lfdr.de>; Tue,  3 Oct 2023 14:35:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1696336553;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=y9pgvQS3HSEv4k10jGrG3YzxuSgXshtJ0ehS3BqRUbA=;
	b=IUWHoctpEa2g8dvNIkpgWaehiwt7zK8e+TDG3ib/OksmhPusd+OPPfedEV0Wtmo52lJ0BS
	iauyze2f06e9XDJ4tFVt/nWwaunsdm4S6tzgmP+3o3fU4cfamybfLwAJ0QvhZlmbGYwsdh
	9lAVkKp67Jy+W0jCt61lUNGzassgVtk=
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-434-6tmpp0AUPZe5xtNeUux1Og-1; Tue, 03 Oct 2023 08:35:39 -0400
X-MC-Unique: 6tmpp0AUPZe5xtNeUux1Og-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com [10.11.54.5])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id E64AF3816C8E;
	Tue,  3 Oct 2023 12:35:37 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 4C92451E3;
	Tue,  3 Oct 2023 12:35:31 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 8A9C019465A3;
	Tue,  3 Oct 2023 12:35:30 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Tue, 3 Oct 2023 14:35:03 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: arch-installer accessibility
To: blinux-list@redhat.com
References: <mailman.104.1696161029.2981442.blinux-list@redhat.com>
 <mailman.145.1696162429.2981444.blinux-list@redhat.com>
In-Reply-To: <mailman.145.1696162429.2981444.blinux-list@redhat.com>
Message-ID: <mailman.459.1696336529.2981444.blinux-list@redhat.com>
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
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Hi,

where can I get list of speakup hotkeys? I am unable to get light 
tracking mode.

Thanks a lot,

Pavel



Dne 01. 10. 23 v 14:13 Linux for blind general discussion napsal(a):
> That's how I installed archlinux.  To get speakup going on archlinux when
> you boot and hear the tones, downarrow once then hit enter then wait.
> Speakup should come up.  When it does and you're at the root prompt then
> get highlight tracking on with speakup.  Then run archinstall and you
> should find it much more verbal and workable.
> In additional packages to get espeak-ng installed and able to work when
> that prompt comes up you need to add espeakup espeak-ng and alsa-utils.
> Once you get all other questions answered you'll be offered the
> opportunity to chroot into your new system and customize things.  Do that
> and in there systemctl enable espeakup and also enable dhcpcd systemctl
> enable dhcpcd.
> If none of that works then you got a bad copy of archlinux and need to
> complain to your internet provider and have them fix your internet so that
> doesn't happen again and by none of this I mean on boot downarrow then hit
> enter at the tones if you don't get speech or the install breaks somewhere
> else you may have made a bad choice but if packages install fails that's
> definitely an internet provider screw up.
>
>
> -- Jude <jdashiel at panix dot com> "There are four boxes to be used in
> defense of liberty: soap, ballot, jury, and ammo. Please use in that
> order." Ed Howdershelt 1940.
>
> On Sun, 1 Oct 2023, Linux for blind general discussion wrote:
>
>> Hi,
>>
>> Because I am an absolutelly UEFI idiot and I don't understand how to install
>> it with commands, I want to install Arch Linux to my Acer laptop, which no
>> more supports legaci using arch-install script. But the script is menu based
>> and the menu items are in single line. So has speakup the same mode, I think
>> it is called as light mode, or can I install Fenrir to live usb flash
>> installer? Or can I use some other tool to install EFI? I know how to install
>> mbr, but Efi isn't my friend. Secure boot is turned off, when it was turned
>> on, booting to Arch was impossible and also using vmware was inpossible.
>>
>> Thanks,
>>
>> Pavel
>>
>>
>> _______________________________________________
>> Blinux-list mailing list
>> Blinux-list@redhat.com
>> https://listman.redhat.com/mailman/listinfo/blinux-list
>>
>>
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

