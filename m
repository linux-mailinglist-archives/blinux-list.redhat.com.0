Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E74F60468B
	for <lists+blinux-list@lfdr.de>; Wed, 19 Oct 2022 15:14:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1666185259;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=5kg52TPQMAdwVKUCll3eQ85v0gQCaHalbliVxD4OHlM=;
	b=i3mIEj2j7dIVakM6Kpsy8rmWdvBR1895brO/HiGoAaguXJ93rVaaZ3wUAtokwREhaY6Bbc
	HcqLNtTjlU95NTkRmrFln4ExSe7pEYoXjjSi8n67xlrErE+6vy8fREa3v2KPjACOWBvj6W
	3Zr2NQ9skYgyYTR5Z5NKdFlTS9BSLX4=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-656-hxTrhiihNVepM7ocrm9WHw-1; Wed, 19 Oct 2022 09:14:17 -0400
X-MC-Unique: hxTrhiihNVepM7ocrm9WHw-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com [10.11.54.3])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 472CA85704D;
	Wed, 19 Oct 2022 13:14:15 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 1AE55111CD5E;
	Wed, 19 Oct 2022 13:14:15 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 8609E19465B2;
	Wed, 19 Oct 2022 13:14:13 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Wed, 19 Oct 2022 14:01:07 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.3
Subject: Re: Konsole progress/any good alternatives?
To: blinux-list@redhat.com
References: <mailman.1113.1666176261.3005.blinux-list@redhat.com>
 <0342ebc7-75b2-1b7f-37c0-5fe84a2a3b1c@linux-a11y.org>
 <mailman.1225.1666183031.3011.blinux-list@redhat.com>
In-Reply-To: <mailman.1225.1666183031.3011.blinux-list@redhat.com>
Message-ID: <mailman.1204.1666185252.3008.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.3
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

I've no clue where to start or the smarts to get anywhere with it at 
all, my knowledge of how things interact with Orca starts and ends with 
..is exposed to Orca, past that I've zero clue how to get anything to 
speak to/with/via Orca at all. I know what should be happening, sure, but...


On 10/19/22 13:34, Linux for blind general discussion wrote:Howdy,
>
> just did a quick look into accerciser. seems that the terminal content 
> is already exposed to AT. So there is at least something in place. 
> maybe a focus is missing or similar.
>
> cheers chrys
>
> Am 19.10.22 um 14:25 schrieb chrys:
>> Howdy,
>>
>> well you can use any terminal emulator. gnome-terminal, 
>> mate-terminal, lxterminal (i think those are all based on VTE)
>> for Konsole, the issue is tracked here.
>> https://phabricator.kde.org/T10099
>> currently without huge progress. debugging is required. maybe you 
>> wanna step in :)?
>>
>> Cheers chrys
>> Am 19.10.22 um 12:44 schrieb Linux for blind general discussion:
>>> Just checking to see if there's been any movement on Konsole yet, or 
>>> if not what a good alternative would be that works nicely with KDE? 
>>> I like lxterminal, but I'm after something with more eatures and 
>>> that works nicely with Plasma
>>>
>>> Hoping for Konsole to work with Orca since KDE 5.26.11's fixed a few 
>>> nagging issues with the desktop. I've not seen a new version land in 
>>> Arch's repos or Konsole at all, any repo and I'm unsure if 
>>> Konsole-git has any improvements as far as Orca goes
>>>
>>> _______________________________________________
>>> Blinux-list mailing list
>>> Blinux-list@redhat.com
>>> https://listman.redhat.com/mailman/listinfo/blinux-list
>>>
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

