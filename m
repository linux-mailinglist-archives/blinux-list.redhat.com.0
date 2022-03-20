Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 41A0D4E1ADC
	for <lists+blinux-list@lfdr.de>; Sun, 20 Mar 2022 10:28:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1647768536;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=k+tTOmw3lWOl4RTPO2JGOhw1Gr5mSdXo3h89RHyMQR8=;
	b=ILgEXW59G8oqEI7GK4JuGbeer3JSpNFQyhAKIwY4ddNVJ9JiPelL2ZB1Z4eLM5+7nKipOP
	6POviMNTvwctAOlZRQhdxcossFeD0yhZ5hviPHo5qx22krVhrOaCIc1uqTJnwptaRHy5w4
	oXBVl3IkBETHaLEHa8ipjIjl/0LRwVc=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-646-WdWWfJKqMXWKDPh48SA9YA-1; Sun, 20 Mar 2022 05:28:54 -0400
X-MC-Unique: WdWWfJKqMXWKDPh48SA9YA-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com [10.11.54.8])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 0AF30811E75;
	Sun, 20 Mar 2022 09:28:46 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id CD868C15D41;
	Sun, 20 Mar 2022 09:28:23 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 980191953560;
	Sun, 20 Mar 2022 09:28:22 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
To: blinux-list@redhat.com
Subject: new listmember. Trying to get Jenux installed
Date: Sun, 20 Mar 2022 05:28:08 -0400
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
Message-ID: <mailman.3068.1647768502.111201.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.8
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Hi.


I'm new here. I'm also new to Linux at least in terms of what I know 
about it. I've done very minor experiments on it off and on for a few 
years but just enough to be dangerous.


Right now I'm trying to experiment with Jenux. I downloaded a very 
recent iso


Jenux-2022.03.13-dual


How do I install it? I'm installing it on a very low powered Atom D2550 
based Mini ITX slim Intel Desktop Board. Powering it from an admittedly 
hilariously overpowered 400watt fanless seasonic power supply that cost 
more than this board by nearly twice, because I ripped this board out of 
an old nettop I upgraded for someone and I've been using it for Linux 
experiments. For storage I have a 160gb Toshiba MK something or other 
out of an old Asus EeePC904ha netbook from about 2007. I can force 
booting from my USB by unplugging the SATA cable from the Toshiba drive.


It's a dual core hyperthreaded 1.8ghz 64bit capable, piece of 3watt 
minisculity from 2012 with 1gb of single channel memory, mounted on a 
Mini ITX Bamboo test bench, sitting in the bottom of my first desktop I 
ever owned from 2003 so that the wires for the power button on that case 
can be used to jump the power pins on this board. It runs Debian Mate 
well enough. But I forgot my password and I'm currently reinstalling 
that but I may turn right around and install Jenux if I can figure out 
how to do it. I tried already but while it seemed to be making plenty of 
electronic noise for quite a long time, it never spoke anything. I had a 
USB Audio Class device connected and a pair of wired headphones plugged 
into the audio out jack.


Heeeelp?


-- 

Cheers:
Aaron Spears, AKA Valiant8086 General Partner at Valiant Galaxy Associates "we make (VERY GOOD AUDIOGAMES) for the blind comunity" http://valiantGalaxy.com

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

