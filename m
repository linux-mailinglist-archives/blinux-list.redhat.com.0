Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id F25A33D2C2D
	for <lists+blinux-list@lfdr.de>; Thu, 22 Jul 2021 20:54:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1626980052;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=5tLx3k7wgprc9VATE+pvJlKNwV7HI0fo/DbtGYch7w4=;
	b=K9uSwnx69sp0eJTgRX2XZe9ZwoIVJVx+cK3ymME9Dfph30EkUFs17jf0sXNCpzlhpXOfx0
	IJ9brFs0xsnSZuehmwHRnGqJjSzHtOT+PQLcz9nxWskBX2c1PCBy5yodgp6BipaQe9vjyG
	R9P5VaeLNU0t877gvYjN6jHiSbSFDkA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-445-r-CyswIpMcuFSQG3Uz5VfA-1; Thu, 22 Jul 2021 14:54:10 -0400
X-MC-Unique: r-CyswIpMcuFSQG3Uz5VfA-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 971ED18C89C4;
	Thu, 22 Jul 2021 18:54:06 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 314DB385;
	Thu, 22 Jul 2021 18:54:05 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 96A104BB7C;
	Thu, 22 Jul 2021 18:54:03 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 16MIrsiO010334 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 22 Jul 2021 14:53:55 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id D38DB20B4ABD; Thu, 22 Jul 2021 18:53:54 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id CF56B20B893B
	for <blinux-list@redhat.com>; Thu, 22 Jul 2021 18:53:51 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 10E0480B71F
	for <blinux-list@redhat.com>; Thu, 22 Jul 2021 18:53:51 +0000 (UTC)
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com
	[209.85.218.41]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-63-LeJ4UMUmOJiojPnn82oFcw-1; Thu, 22 Jul 2021 14:53:49 -0400
X-MC-Unique: LeJ4UMUmOJiojPnn82oFcw-1
Received: by mail-ej1-f41.google.com with SMTP id c17so9791719ejk.13
	for <blinux-list@redhat.com>; Thu, 22 Jul 2021 11:53:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=RYsMGneWQAftd92uxi+QpcdERMZFjYzZBiKih4BSTzU=;
	b=SbgrkYEeSxVSG2hwF1GTrp5BAgB6LuCD7RdFW6ngayjZcyu2e2OiGxU0PC3D3FvjNs
	Dl8FiHQhLJGRPAHe5SjsXa5siaWLQraOMCtt1+UHXDIyQj8X8GB/dRQjfDpVHm2Lh3bW
	79edWOOi+mrc6cVJwR+AFr8WeVyJSI19NluVqTu9bdVLAzwNt/iXy8VdemH9zR1UVE3W
	4Z8PObZ3DL/AsVXFC2Q3mSXptYjP2/cGea4qJNj5GKEEE2ZD49EKEKYfj2uQDgzjm09O
	jUgLZvkc3XAkCNgLaC5aEWxxhbmasS+Dv+6uFQMNC0KKxLaPtdBYR/8KHD2gi25URIfD
	9jog==
X-Gm-Message-State: AOAM533+0OZVGKC/0sv/jSaSmtRU+FtUsbBlQ4dwc7yQtvxagZ8vR1Dh
	rujLruHncuk7zZo5qQHhl3tYh0O5+ug=
X-Google-Smtp-Source: ABdhPJwShoP0LEU7Nz7sAwdbXAIddFIhuSfRwbsxpOe+bXHdiNzmfMXVb9iamax5iIBfKJYZD/e2QA==
X-Received: by 2002:a17:906:a04f:: with SMTP id
	bg15mr1164336ejb.417.1626980027503; 
	Thu, 22 Jul 2021 11:53:47 -0700 (PDT)
Received: from darkstar.example.slint ([197.185.105.92])
	by smtp.gmail.com with ESMTPSA id
	q11sm12808168eds.60.2021.07.22.11.53.45 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Thu, 22 Jul 2021 11:53:47 -0700 (PDT)
Subject: Re: Adjusting lightdm screenreader volume (How do I...)
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <b03aafa4-daf7-d333-f8dc-80aa029225c9@gmail.com>
	<210fc29d-9144-c009-3557-fd2304aa47cd@gmail.com>
	<6a20948b-bceb-bc96-c787-cf3f2c27c2af@gmail.com>
Message-ID: <84a2815d-0461-28bc-8f52-6d0f24e34d60@gmail.com>
Date: Thu, 22 Jul 2021 20:53:41 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
	Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <6a20948b-bceb-bc96-c787-cf3f2c27c2af@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
X-loop: blinux-list@redhat.com
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://listman.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Hi all,


In a similar vane, is there a way to set the Voice used by Orca to 
something else than the very bad attempt at a US accent from Espeak? My 
keyboard does not have an Insert key, that is why I don't simply open 
the Orca preferences.


Warm regards,

Brandt Steenkamp

Sent using Thunderbird from Slint

On 7/22/21 8:38 PM, Linux for blind general discussion wrote:
> Ah a mix of both ways sorted it, it's now less loud
>
> On 7/22/21 2:58 PM, Linux for blind general discussion wrote:
>> I know of two things you can do to set the speech volume in lightdm. 
>> The easiest option is to open Orca preferences and set the volume 
>> under the voice tab. However, this will only set the speech volume. 
>> Since this is all you really need here, it shouldn't cause a problem. 
>> It also has the benefit of setting the volume immediately right on 
>> the lightdm screen, so you won't have to reboot or log out of your 
>> session to wait for the change to be effective.
>>
>>
>> The other method is a bit more complicated, but it will set your 
>> system and application volumes, as well as your default device if you 
>> have more than one and want to use something else. First, login as 
>> your normal user and set your volumes the way you want them. Then as 
>> root, copy your user's .config/pulse to /var/lib/lightdm/.config like 
>> so, noting that the # at the beginning of this line represents a root 
>> shell and should not be copied:
>>
>> # cp -R /home/<username>/.config/pulse /var/lib/lightdm/.config/
>>
>> replacing <username> with the name of your normal unprivileged user. 
>> Now, also as root, run
>>
>> # chown -R lightdm:lightdm /var/lib/lightdm/.config/pulse
>>
>> This will set the ownership of that configuration folder to lightdm 
>> so that it will be able to read it. On the next reboot, lightdm 
>> should speak at a more acceptable volume. Hope this helps.
>>
>> ~Kyle
>>
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

