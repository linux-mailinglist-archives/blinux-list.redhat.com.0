Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B6D2457959
	for <lists+blinux-list@lfdr.de>; Sat, 20 Nov 2021 00:11:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1637363479;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=iICq9DaIbr9+cWG6vpWGRFPFssHiatdZfQDC1gOP5vc=;
	b=KrtBpOP8t6fjIpmYeyuWtUFO/o2FUcjwMSh0oxM0ukkuFoyVEnHhnTSIjrBLKEDKmgGExb
	Akj7o7oaXuI95/MkSc4VpVUy0oiqR4K96Rc6dyxc+eNzO2Rar7jNTeOcViMqCQRNjs1Vdf
	R7N2gSM9VV9vhWfdZ4DRFfoxS3Yx3GY=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-300-Poy8V7C3PFOYD7ab90bF3A-1; Fri, 19 Nov 2021 18:11:15 -0500
X-MC-Unique: Poy8V7C3PFOYD7ab90bF3A-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id D3FEB8042E9;
	Fri, 19 Nov 2021 23:11:11 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 9CCD15F4EA;
	Fri, 19 Nov 2021 23:11:11 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id DF3E01832E81;
	Fri, 19 Nov 2021 23:11:10 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
	[10.11.54.2])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1AJN6L77026484 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 19 Nov 2021 18:06:21 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id EFBE7404727C; Fri, 19 Nov 2021 23:06:20 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id EBD0B4047279
	for <blinux-list@redhat.com>; Fri, 19 Nov 2021 23:06:20 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id D42878022F4
	for <blinux-list@redhat.com>; Fri, 19 Nov 2021 23:06:20 +0000 (UTC)
Received: from mail-qv1-f45.google.com (mail-qv1-f45.google.com
	[209.85.219.45]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-202-zOgnUWgFNIq2mRSAn4HwaQ-1; Fri, 19 Nov 2021 18:06:19 -0500
X-MC-Unique: zOgnUWgFNIq2mRSAn4HwaQ-1
Received: by mail-qv1-f45.google.com with SMTP id b11so8143489qvm.7
	for <blinux-list@redhat.com>; Fri, 19 Nov 2021 15:06:19 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
	:content-language:to:references:from:in-reply-to
	:content-transfer-encoding;
	bh=Z7CfjdJMOw4LsZjLJbqvCP/Z11Q7OBp30Ms4e3Cx43Y=;
	b=FPbfO1fnHwBNm+im+n22mRdhAXAbO5YVtbjHadfGEmpvhOtBSFM/avfETGqMXtJZNS
	+4PprcZ+wp1dJ8Ntdm/0YgeA9yndfDXVcKOoFzvRB/zMB4FawB6BtOOHZ8qzdQ+AXZ00
	yuMQTkoN+pecusd5xdkKHA2NK3HYGFblftTL13cE6qxO8KzBZp75pH7PTMZxvgqPCRz+
	GEecAIi2v8VeG0/e3DYPGZEUDwhUri6UMfTo/CSNwr3PxuGHPG6QXdHL3ZrrQWKoiUD3
	T+n3MBfpb56bomxiB3ejYwAJizt1Ku+0nAkpRMX2VurCp0zk9W/A/HSZcNDZDgqtEgvq
	bGwQ==
X-Gm-Message-State: AOAM5327SlWE5y/84pz21nmAusbudDqSDH7EbRCwTKlsgHjlw0/9Ph9t
	IiksdYUxpI8oPH7oW2sp+CiWXNytEBU9ZA==
X-Google-Smtp-Source: ABdhPJzzGqBUs57JNsBqMlErB9kQ1ZdwjnbQ/ybZNKw2SbHiM9RMBWSrJ8pdTHBWFvCIBfHRokFDxw==
X-Received: by 2002:a05:6214:9d4:: with SMTP id
	dp20mr75818053qvb.11.1637363178312; 
	Fri, 19 Nov 2021 15:06:18 -0800 (PST)
Received: from [192.168.11.151] (d-65-175-184-10.nh.cpe.atlanticbb.net.
	[65.175.184.10]) by smtp.gmail.com with ESMTPSA id
	u11sm564101qko.119.2021.11.19.15.06.17 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Fri, 19 Nov 2021 15:06:17 -0800 (PST)
Message-ID: <e96bb0e4-fac5-9a01-e6a7-2107feb49bb3@gmail.com>
Date: Fri, 19 Nov 2021 18:06:16 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:91.0) Gecko/20100101
	Thunderbird/91.2.1
Subject: Re: Mint Mate folder options?
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <0B4FABFE-C65D-4207-B145-A053DB7D16AB@icloud.com>
In-Reply-To: <0B4FABFE-C65D-4207-B145-A053DB7D16AB@icloud.com>
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

Hi,

To set your folder options:

1. Open a folder, such as your Home folder.
2. Press Alt+e to open the edit menu.
3. Arrow down to preferences and press Enter.
4. This screen has a number of tabs including: Views, Behavior, Display, 
List.
5. You can tab through the various options on each tab page. You may 
have to use the Orca line up/down commands to learn about folder option 
controls that do not speak. Using this method, you can set all of the 
folder options.

Also, look for a program called MintTweak. I installed it using apt-get. 
It give you control over various system options, including which system 
icons to display on the desktop.

HTH,
John


On 11/19/2021 5:00 PM, Linux for blind general discussion wrote:
> Dear List,
> I have searched the control center, but cant find out how to change the default folder views, or how to get a are you sure dialog when deleting files.
> I had a hard time selecting the icons to show on the desktop. I had to use flat review to select my options.
> But as I said, I cant find anything about folder options.
> 
> Thanks,
> Rob
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

