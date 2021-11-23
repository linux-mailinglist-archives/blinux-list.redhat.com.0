Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D62C45A7CF
	for <lists+blinux-list@lfdr.de>; Tue, 23 Nov 2021 17:33:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1637685187;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=FAVROhnWblML5VAMhxG9Z6d/b5q9uwoEarDqR+Ztd6M=;
	b=EhxGEBUoLIsFFg2tbnO+qVpAryymLwxGVz6qasqRCovXrfez5LbpWHtG/A23NZrJah23cI
	SN3O0qNKqHR2KPzTbtHwdTnprTaopLvRpl3zFTfgsiIKbie9pEJvijgmQyLPZFfXIiMVEW
	IHRQvhBp9oqyOMI0LCJTguGLMAAY66A=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-530-RMYbtUrrOuORV6cQh_5flg-1; Tue, 23 Nov 2021 11:33:03 -0500
X-MC-Unique: RMYbtUrrOuORV6cQh_5flg-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id C052087D542;
	Tue, 23 Nov 2021 16:32:57 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 2E134100164A;
	Tue, 23 Nov 2021 16:32:54 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 650591832E7F;
	Tue, 23 Nov 2021 16:32:42 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1ANGW1wv019085 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 23 Nov 2021 11:32:01 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 18D1051E3; Tue, 23 Nov 2021 16:32:01 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 128F951E2
	for <blinux-list@redhat.com>; Tue, 23 Nov 2021 16:31:58 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id E8638106655D
	for <blinux-list@redhat.com>; Tue, 23 Nov 2021 16:31:57 +0000 (UTC)
Received: from mail-qv1-f45.google.com (mail-qv1-f45.google.com
	[209.85.219.45]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-439-2XOKcdknMmWcfp0KjqMB_Q-1; Tue, 23 Nov 2021 11:31:55 -0500
X-MC-Unique: 2XOKcdknMmWcfp0KjqMB_Q-1
Received: by mail-qv1-f45.google.com with SMTP id v2so15316613qve.11
	for <blinux-list@redhat.com>; Tue, 23 Nov 2021 08:31:55 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=a9M7nDtUWNdqJAazQk1omKalmPVJ5/Oe2vSJtPXIwOQ=;
	b=Ctuv5oPkS16Z+G35lmG/clSHtm1jtgqUGkjjwhWkXMO1zDdtzFzdmBkWmrFjq6Px60
	W5yUFqpHrx+uLMlWiq3mifp3tsS1Qe1Dq6p+IXC90sKYXHV0eeYYnMZy5Mh3xDfoWDq1
	OtZbsyCqVHp8MRq646x1K7NlRA8+5QmVzq8FTcENayxmyiz2Nv5SMp2CVqYTrxdlsfka
	CVREUcsN/jDjN/jHQy+EiCazjmIa2Xpyt6FLaID6wg/icWMfLIF12OnNd9OfpXB1lcLN
	8vRsYz00OXa4Tl8MMZcroIl5pEW50wBZFuOwYIPhusYWKLtH5OvQmVoW96YhVtTM9r4a
	hNIw==
X-Gm-Message-State: AOAM531auOwk56ISjkxTtOLklxrQ7cOyWnfj6gO61pcz7VQKB4VVF07a
	thkKJQirSvIcfdTxx6ASMBHUBQ2jbP4J99pt
X-Google-Smtp-Source: ABdhPJwKRP9wEKpMmD1EkBWDwVrTns9iza87i3/AQesi2Yq9oRqlv8SGKMVSMcXi8HKZZhHbV3C/bg==
X-Received: by 2002:a0c:ecc7:: with SMTP id o7mr7951854qvq.46.1637685115090;
	Tue, 23 Nov 2021 08:31:55 -0800 (PST)
Received: from darkstar.example.slint ([2601:152:4000:330::16])
	by smtp.gmail.com with ESMTPSA id
	r26sm6001507qtm.67.2021.11.23.08.31.54 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Tue, 23 Nov 2021 08:31:54 -0800 (PST)
Subject: Re: looking for two gui accessible applications ClipGrab
To: blinux-list@redhat.com
References: <2eddfb0e-a139-be53-97a8-2e2468ee9d4a@gmail.com>
	<ee33bad3-902b-2d23-0dd4-81feee9b7308@icloud.com>
	<8309b0ad-c705-e8bc-7141-bfe85a667189@icloud.com>
Message-ID: <de101cdb-81a9-ab6e-4a77-446442ef3d04@gmail.com>
Date: Tue, 23 Nov 2021 11:31:53 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
	Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <8309b0ad-c705-e8bc-7141-bfe85a667189@icloud.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

thanks a million for suggesting this application. From the description, 
this application sounds similar to Ponte's Media downloader.

Unfortunately, I could not run this executable image on my slint 
desktop. Everytime I try to open it, I get a message that says there is 
no application installed to open executable files, or such thing. It 
gives me the option to search for one with yes or no, but the default 
choice is no.

Since I am a beginner, I do not understand this message. I hit enter on 
yes, but nothing happened.

Hoopefully someone who has experience with opening such files would help 
me figure it out.

Cheers,

Ibrahim

On 11/22/21 1:45 PM, Linux for blind general discussion wrote:
> I use ClipGrab on my Mac and Windows.
>
> So I checked and it is on Linux as well.
>
> www.clipgrab.org
>
> Its a app image, no installation needed.
>
>
> Use the flat review to click the download tab.
>
> paste the youtube link in the edit field.
>
> tab to the combo box to choose origonal, or mp3 audio .
>
> pressing the down arrow in this combo box had no speech, so after 
> pressing down arrow, press tab, then shift tab to have the selection 
> spoken.
>
> Do the same for the quality combo box.
>
> then tab to the grab this clip button and press the space bar.
>
>
> I hope this helps.
>
> Thanks,
>
> Rob
>
> On 11/22/21 11:59 AM, Robert Cole wrote:
>> Hi,
>>
>> I dont know of any gui programs,
>>
>> but you can try
>>
>> www.mp3-now.com
>>
>>
>> Thanks,
>>
>> Rob
>>
>>
>> On 11/22/21 10:50 AM, Linux for blind general discussion wrote:
>>> Hello friends,
>>>
>>> I am wondering if there are good applications for downloading from 
>>> youtube that works well with linux! I am looking for something 
>>> similar to Ponte's media downloader which works well with windows 
>>> screen readers. Is there such an app?
>>>
>>> The second application I am hoping to find is a good weather app. I 
>>> tried to the weather on the terminal and did not like it at all. So, 
>>> I am hoping to find a better alternative that works on the gui.
>>>
>>> Cheers,
>>>
>>> Ibrahim
>>>
>>> _______________________________________________
>>> Blinux-list mailing list
>>> Blinux-list@redhat.com
>>> https://listman.redhat.com/mailman/listinfo/blinux-list
>>>
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

