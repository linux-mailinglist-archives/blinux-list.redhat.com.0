Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 50F01425FC5
	for <lists+blinux-list@lfdr.de>; Fri,  8 Oct 2021 00:19:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1633645188;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=g2YR0qna7+HPwNs9Piv2sT6v9PVF4534ZlDbF28OUfw=;
	b=Np9eLe7EVg1PmppON8Q1cauVgiNslopuke/kx7H/qzaIXM7Z0CCWjjmM6xof+qZmG8cv2c
	f8PReIiaedEqsNOUMh7uHm+SDQcJblPAEo4iRYr/JSd8dUVwYsgugBev/CIwBlxXknHUQZ
	ed1sbMO0Wx6vpF3FjrfrU4Fho8u5OtU=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-103-tXqHeE8bP5ml4C39bFwtBw-1; Thu, 07 Oct 2021 18:19:46 -0400
X-MC-Unique: tXqHeE8bP5ml4C39bFwtBw-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A8BBE1A60678;
	Thu,  7 Oct 2021 22:11:38 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6AE395C1A3;
	Thu,  7 Oct 2021 22:11:38 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id C39674EA30;
	Thu,  7 Oct 2021 22:11:34 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 197MBVUr016731 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 7 Oct 2021 18:11:31 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 067242157F34; Thu,  7 Oct 2021 22:11:31 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id EEE632157F21
	for <blinux-list@redhat.com>; Thu,  7 Oct 2021 22:11:28 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id EF8E8899EC2
	for <blinux-list@redhat.com>; Thu,  7 Oct 2021 22:11:27 +0000 (UTC)
Received: from mail-qk1-f174.google.com (mail-qk1-f174.google.com
	[209.85.222.174]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-597-PCgBRNgUMn6bGdYkFRoNXQ-1; Thu, 07 Oct 2021 18:11:26 -0400
X-MC-Unique: PCgBRNgUMn6bGdYkFRoNXQ-1
Received: by mail-qk1-f174.google.com with SMTP id q125so7534482qkd.12
	for <blinux-list@redhat.com>; Thu, 07 Oct 2021 15:11:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-language
	:content-transfer-encoding;
	bh=BtyFShzTGz9dDjpzo7ccCcUZm814BHQDtopBQEqYXiQ=;
	b=Wgg4Ta6A0c1aaGkhPaZBNZcp5TYcCyjlZHYqdB+HsDz0M9wsTEm5QpFqpbAB6i5RMs
	tyqSEs5srmABxmGvh52rv0bu68avGaiA99m1kAbRvYkrpv/ZPHRfbWSEObtVCDWWGz8U
	b/3y1H3YqxM6Q7qSO2L4/uSFSgjDzZJpP1JRoVP+iDJMcdu4k+3w2jEX5qJbxf0uTH6t
	g80juiAIHUpeWXZr3T9GPCEfgmBii/pmZkJtyqyOKH7zxhohlZ4SkfIBO/r4e2dv7oxq
	C0VlUiELDuok4j3jJgUAltFkOPd93WPpeyHKKfqvfbxvX56ESZ5v71UwO/ty4HqrTR2A
	w7Jw==
X-Gm-Message-State: AOAM531K9a5ryzVxMlBDk7ThnVEyoBKUPkK0QsJgOSwJxa7lFsRTCmsw
	ejfsr6a+EYjPQykIwHIPAkXfoTtEvDo=
X-Google-Smtp-Source: ABdhPJyDykzK3pGnB0/a0jrfXQmamzPAAPX9QS9PwpCkEUTabUmdk0BvGtgXbDHWG3pXoLkmy+GZbA==
X-Received: by 2002:a37:9401:: with SMTP id w1mr5661553qkd.166.1633644685534; 
	Thu, 07 Oct 2021 15:11:25 -0700 (PDT)
Received: from [192.168.11.151] (d-65-175-184-10.nh.cpe.atlanticbb.net.
	[65.175.184.10]) by smtp.gmail.com with ESMTPSA id
	h125sm565829qkc.29.2021.10.07.15.11.24 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Thu, 07 Oct 2021 15:11:25 -0700 (PDT)
Subject: Re: Mate Desktop questions
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <4037ad15-b52e-f0a5-4af5-2b8b6f782205@gmail.com>
	<20210715.162227.936.10@[192.168.1.100]>
	<a648b4d5-d8a0-cb1b-1a65-b8e515dd2fcc@gmail.com>
	<765675B0-8A52-46FD-AEBD-E14DD89F221C@gmail.com>
Message-ID: <7858163b-dcd0-ae6f-de2a-513ae0fa2aa0@gmail.com>
Date: Thu, 7 Oct 2021 18:11:23 -0400
User-Agent: Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:78.0) Gecko/20100101
	Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <765675B0-8A52-46FD-AEBD-E14DD89F221C@gmail.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

The Mint Mate 20.2 install worked perfectly with Orca. I had originally 
tried the Ubuntu Mate 20 distro, but that install is not Orca 
accessible. It is a documented problem. The Ubuntu Mate version 18 
worked fine with Orca, so I assumed that version 20 would also be 
accessible--it was not.
I am enjoying getting my Linux feet wet again using Mint Mate.

John


On 10/7/2021 5:47 PM, Linux for blind general discussion wrote:
> I have not an answer for your question, but am curious as to installation.
> When trying to install ubuntu mate 20, orca would come up, but I could not get to the install screen.
> I was stuck at super user.
> How did you install?
> 
>> On Oct 7, 2021, at 2:56 PM, Linux for blind general discussion <blinux-list@redhat.com> wrote:
>>
>> Hi all,
>>
>> I am setting up two laptops for sighted people, but I will be maintaining/supporting them. I am using Linux Mint Mate 20.2. I have two questions...
>> 1. How do I access the task bar/system tray using Orca?
>> 2. The Logon screen has multiple users defined. Sometimes, Orca will not speak on this screen. This sometimes happens at boot, but always happens after logging off one user and wanting to login again as a different user. When this happens, the Alt+Super+S keys have no effect. Other times it works perfectly fine--frustrating. Any thoughts/suggestions on this one?
>>
>> Thanks,
>> John
>>
>> _______________________________________________
>> Blinux-list mailing list
>> Blinux-list@redhat.com
>> https://listman.redhat.com/mailman/listinfo/blinux-list
>>
> 
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

