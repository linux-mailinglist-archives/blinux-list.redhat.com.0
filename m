Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 4187B43FFB3
	for <lists+blinux-list@lfdr.de>; Fri, 29 Oct 2021 17:39:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1635521980;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=7Fa2laERjKbsCOvcJz2Fns33jRpPXaMiQ9saJ7we800=;
	b=iSl7oEOdnpVQi374Jmqn1ZitifYPGdHKODU8ckyrHIRmDCRqUr3UgXpIuvXtov5RiLA6H1
	yN2PJUDca+KgcdZ1CCtwkRr1s50CWYO83iWO9LjvIcGU1Ml4Brt6Zunld4n1uq2hpXm9+n
	vwatfhbz4+9tqlHuqsUpaa5DuFOpc2M=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-318-hzxabTklNhiYiugIqt0HnQ-1; Fri, 29 Oct 2021 11:39:36 -0400
X-MC-Unique: hzxabTklNhiYiugIqt0HnQ-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id AB32A19200C0;
	Fri, 29 Oct 2021 15:39:32 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6C9C360C13;
	Fri, 29 Oct 2021 15:39:31 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id B09D64E58E;
	Fri, 29 Oct 2021 15:39:27 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 19TFXsks022866 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 29 Oct 2021 11:33:54 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id AB96F2026D5D; Fri, 29 Oct 2021 15:33:54 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A6BB12026D48
	for <blinux-list@redhat.com>; Fri, 29 Oct 2021 15:33:48 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id B1209800159
	for <blinux-list@redhat.com>; Fri, 29 Oct 2021 15:33:48 +0000 (UTC)
Received: from mail-qk1-f177.google.com (mail-qk1-f177.google.com
	[209.85.222.177]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-332-lKktRTmVO96Pzg7FSsupQg-1; Fri, 29 Oct 2021 11:33:47 -0400
X-MC-Unique: lKktRTmVO96Pzg7FSsupQg-1
Received: by mail-qk1-f177.google.com with SMTP id r15so9675124qkp.8
	for <blinux-list@redhat.com>; Fri, 29 Oct 2021 08:33:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-language
	:content-transfer-encoding;
	bh=UOu57pCUzFYG2/oR9zSwLkCo1+nHiQ2EmHXwVF2Rrt8=;
	b=A25Q2r7bbZnJEfW6tgoZOMhhBqP44MBEuQat84PmzDiywIPVCvcpVyc97daGi2Ia8z
	PK91cNOZ6OA40FXSsfpJuvXUs+bzDgSmzurNDxpjon80Hg72NFzDvuldZORefEVj3lsN
	8UYSblszLMygYwSglwq+vPVu3HNVaC6ihHFsr0pHBKdAAONvqJKmQccNDSvmxIv7gsDF
	nS3kYafPNsj1SxHlsmQEjKvEJrla44GDkF0tbEB7rgO1lgylgClhqCqnWnRbBnwNZHjI
	I5fMydLUVfHpHDmkT8fQXXmtKcARQi9N3wkAnz0eH1oNKLPEEVgLqp8dkrDc2Bwbzwiu
	TZ5Q==
X-Gm-Message-State: AOAM531Qdd2iO/qNXF5OeZkU4hV58QvbawiJBb831c+KcaVE0EjlWKgc
	XANBgwdevNwNFQOiIuG0ScjRcghbtDE=
X-Google-Smtp-Source: ABdhPJx36kOeF+hbn30S38QPaGFiYBnJPtZbuQtIBlseykfknD2/gWOx/6xEdsT6XXWsWG4ZennU4w==
X-Received: by 2002:a05:620a:44cd:: with SMTP id
	y13mr9910579qkp.146.1635521625724; 
	Fri, 29 Oct 2021 08:33:45 -0700 (PDT)
Received: from [192.168.11.151] (d-65-175-184-10.nh.cpe.atlanticbb.net.
	[65.175.184.10]) by smtp.gmail.com with ESMTPSA id
	m2sm4380203qkp.124.2021.10.29.08.33.44 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Fri, 29 Oct 2021 08:33:45 -0700 (PDT)
Subject: Re: Can I run an accessible version of linux under windows?
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <66F2A8CB-2631-469B-9594-F3173CD00F69@gmail.com>
Message-ID: <5f84d925-a640-5f3f-3c0d-8b022d5b44ca@gmail.com>
Date: Fri, 29 Oct 2021 11:33:43 -0400
User-Agent: Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:78.0) Gecko/20100101
	Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <66F2A8CB-2631-469B-9594-F3173CD00F69@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Hi,
I am also relatively new to using Linux as a blind person. Over the past 
several months, I have downloaded and tried several of the recommended 
Linux distributions. About a month ago, I came across Linux Mint with 
the Mate desktop. I like it very much. I am currently working on a 
project where I have to setup Linux computers for several sighted people 
and I am using Mint as the distro that I am deploying. I am happy to say 
that I put the first of these computers into production this week.
So far, so good. There are a few minor things that I would like to learn 
to tweak on that system, but I am confident that knowledge will come to 
me over time.

The accessibility experience with Linux Mint Mate has been very 
positive. After downloading the live ISO from linuxmint.com, I used 
Rufus running on my Windows 7 computer to create a bootable	 USB flash 
drive. (https://rufus.ie/en/) I used a 10 year old Lenovo Thinkpad X220 
for all of the testing, first just running from the flash drive and 
later, installing on a fresh Samsung EVO SSD in the X220. Performance on 
this 10 year old computer was excellent. I actually did all of the 
configuration, tweaking and user testing on the X220. Once the setup was 
ready to turn over to the user, I made an image of the SSD and then just 
swapped the SSD into the computer for the user. Her computer is also a 
Lenovo. Mint booted on her computer and she was off and running. I am 
impressed that I was able to complete the setup of the computer with 
relatively few roadblocks. I am also impressed with the performance and 
stability of Linux Mint Mate. The next system that I will be configuring 
is somewhat more demanding, but I am confident that I will get through 
it. As with the first system, I will be doing all of the testing and 
configuration on my trusty old X220 with a fresh Samsung EVO SSD.
So, if you do not have a old PC gathering dust in a closet, you can 
create a bootable USB containing Linux Mint Mate and then boot from the 
USB stick on your existing Windows computer. When you are done playing 
with Linux, just remove the USB stick and reboot back into Windows. I 
believe that in the Mint install program, which is fully screen reader 
accessible, there might be an option where you can install Linux Mint 
alongside your existing Windows install. Then at boot time, you can 
choose which system to boot in to. I did not do this, so I can not 
comment on how well this works.

One more thing...When you boot into the USB stick, you will have to 
press control+Alt+Super (this is what linux calls the Windows key) in 
order to start the Orca screen reader. The "Orca" key is the insert key, 
just like Jaws or NVDA. Do a web search for "orca screen reader" and you 
will find plenty of information to help get you up to speed with this 
screen reader. I am having no problem jumping between it and Jaws/NVDA.

This experience has been enjoyable for me and I hope that it will be for 
you also. Do not hesitate to reach out as other questions arise. I can 
tell you that during the past month, I have spent many hours searching 
the web for answers to the many, many questions that came up for me. And 
there is just so much info in the web related to using Linux.

Best,
John


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

