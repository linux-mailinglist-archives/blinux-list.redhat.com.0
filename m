Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id CE1C645804E
	for <lists+blinux-list@lfdr.de>; Sat, 20 Nov 2021 21:28:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1637440124;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=zGCu9MBts12FgSy1ygmcM6aNEktalkaFCXY5L+wGjeo=;
	b=QKp/LJKUkuQsSxnf19WN4OYRLvpp8q54excjefmSYs6+VYZKdlLCsc2qy0IDQs4CHVVt8X
	yxzNWGlXjt5nW0AzxBwJFmTBBfza8dywKi6Y2mCaS2n1ihrD4HeOAKy3pNGPQjqyW+G4q0
	F6moUieYlCvrlQq0VWQRT6L8h52NCyM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-327-lyBFQ0GXPR26RXgqIJtOjw-1; Sat, 20 Nov 2021 15:28:41 -0500
X-MC-Unique: lyBFQ0GXPR26RXgqIJtOjw-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 2E8AA8042E5;
	Sat, 20 Nov 2021 20:28:37 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 7210A5F4E9;
	Sat, 20 Nov 2021 20:28:35 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id C489D4A703;
	Sat, 20 Nov 2021 20:28:30 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
	[10.11.54.2])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1AKKP8Ja021916 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 20 Nov 2021 15:25:08 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 49671404727A; Sat, 20 Nov 2021 20:25:08 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 451BB4047279
	for <blinux-list@redhat.com>; Sat, 20 Nov 2021 20:25:08 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 2B78F85A5A8
	for <blinux-list@redhat.com>; Sat, 20 Nov 2021 20:25:08 +0000 (UTC)
Received: from mail-qk1-f182.google.com (mail-qk1-f182.google.com
	[209.85.222.182]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-123-fkuNA570OPS94mZ09-_PDQ-1; Sat, 20 Nov 2021 15:25:06 -0500
X-MC-Unique: fkuNA570OPS94mZ09-_PDQ-1
Received: by mail-qk1-f182.google.com with SMTP id b67so419950qkg.6
	for <blinux-list@redhat.com>; Sat, 20 Nov 2021 12:25:06 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
	:content-language:to:references:from:in-reply-to
	:content-transfer-encoding;
	bh=Suj1ZNsPdswuBLn9iLvgB36oaxX7aO/5olkD9nCMGrA=;
	b=pNQQRj4iAS9SQdX5xOcKb7sF1HRyiaIHZdmprMWQgGwDRBN/Zt8QKVzlXzB6Czag8N
	dXUKsxf4O4offDILBskiKa9xZQS7N0ozkrebMHWSUdgsa11+p9a4XupUngUnxbWO2Cup
	Phfs8sfbEGDHm5B64F07JEFKsoQPUS73/jse8xSS0SUnyu7dz3tVHYmJ9rls3odM+Q2P
	8Lh5veqyFKsD2LHsR6oiMncYmyuFabEtMwzAvsv9mTz50GIvR93SblPfUbPhST9JASl1
	8OIYi7HanaTcHE9nzlN2hzxv/Lr7iZ719KYy2WCyqtN62+pwiSxLNzVRDlbsjzdvBpHV
	B8+Q==
X-Gm-Message-State: AOAM531ulBxT0itkq0HQBmcoZ2UMykiA500cAtQLRkEzDDZPM7GDgx26
	G/OICXIOe96Zugv4WzkpFUW5exLLcoxh3w==
X-Google-Smtp-Source: ABdhPJwifYaEudNI8QD3HErdiIdAPpzm5Va0/Uk3nmzJk9FVM4G/U6+Bo67WjiHih3T3z7Hz4kXksw==
X-Received: by 2002:a37:f60a:: with SMTP id y10mr32623866qkj.518.1637439905385;
	Sat, 20 Nov 2021 12:25:05 -0800 (PST)
Received: from [192.168.11.151] (d-65-175-184-10.nh.cpe.atlanticbb.net.
	[65.175.184.10])
	by smtp.gmail.com with ESMTPSA id d5sm1984070qte.27.2021.11.20.12.25.04
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Sat, 20 Nov 2021 12:25:04 -0800 (PST)
Message-ID: <b06fb48b-b02e-801d-bbb5-fb21baad6670@gmail.com>
Date: Sat, 20 Nov 2021 15:25:04 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:91.0) Gecko/20100101
	Thunderbird/91.2.1
Subject: Re: Mint Mate folder options?
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <0B4FABFE-C65D-4207-B145-A053DB7D16AB@icloud.com>
	<e96bb0e4-fac5-9a01-e6a7-2107feb49bb3@gmail.com>
	<ae60eca3-2e49-4efd-8a75-1fd5e113b6d7@icloud.com>
In-Reply-To: <ae60eca3-2e49-4efd-8a75-1fd5e113b6d7@icloud.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.2
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

A correction to the second part of my original response...
I mentioned MintTweak, but it is Mate-Tweak.
sudo apt-get install mate-tweak
You can then access it from the main menu (Alt+F1) 
System>Preferences>Look&Feel>Mate-Tweak.

John


On 11/19/2021 6:34 PM, Linux for blind general discussion wrote:
> Thank you,
> 
> I never thought to look on the edit menu for preferences.
> 
> Rob
> 
> ===
> 
> Hi,
> 
> To set your folder options:
> 
> 1. Open a folder, such as your Home folder.
> 2. Press Alt+e to open the edit menu.
> 3. Arrow down to preferences and press Enter.
> 4. This screen has a number of tabs including: Views, Behavior, Display, 
> List.
> 5. You can tab through the various options on each tab page. You may 
> have to use the Orca line up/down commands to learn about folder option 
> controls that do not speak. Using this method, you can set all of the 
> folder options.
> 
> Also, look for a program called MintTweak. I installed it using apt-get. 
> It give you control over various system options, including which system 
> icons to display on the desktop.
> 
> HTH,
> John
> 
> 
> On 11/19/2021 5:00 PM, Linux for blind general discussion wrote:
>> Dear List,
>> I have searched the control center, but cant find out how to change 
>> the default folder views, or how to get a are you sure dialog when 
>> deleting files.
>> I had a hard time selecting the icons to show on the desktop. I had to 
>> use flat review to select my options.
>> But as I said, I cant find anything about folder options.
>>
>> Thanks,
>> Rob
>>
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
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
> 

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

