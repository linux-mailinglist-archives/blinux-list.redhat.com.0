Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id F2E0C49E611
	for <lists+blinux-list@lfdr.de>; Thu, 27 Jan 2022 16:28:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1643297337;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=5rU1LcWuySsOM/7d5icRyE65ZCQCC9Q13yPBlMkMHTk=;
	b=XrqoDw8mB1bZXSx7bvsnda5/swIbzEQsRDU12QSKDhVZiOMlBLEp930+NaZIyjtRljlKRO
	r+nx4MA+BhiZ4V6IZ6wWqekfZ3Ci5CXxrOY2qdmRPTeBnjr4auYluaCj/52VbAGFiy6r7r
	ZPwbnLCeUibvQ2sxyZoSXLurfvCS8vM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-662-bXDmpuowOBOsB1Mn73PTtg-1; Thu, 27 Jan 2022 10:28:53 -0500
X-MC-Unique: bXDmpuowOBOsB1Mn73PTtg-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id D51421083F62;
	Thu, 27 Jan 2022 15:28:49 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 8E25A109005E;
	Thu, 27 Jan 2022 15:28:49 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 04A2C1809C87;
	Thu, 27 Jan 2022 15:28:49 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 20RFShOc012516 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 27 Jan 2022 10:28:43 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 48EF3740A; Thu, 27 Jan 2022 15:28:43 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast07.extmail.prod.ext.rdu2.redhat.com [10.11.55.23])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 44C4776CF
	for <blinux-list@redhat.com>; Thu, 27 Jan 2022 15:28:40 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 4F8FD3C11C84
	for <blinux-list@redhat.com>; Thu, 27 Jan 2022 15:28:40 +0000 (UTC)
Received: from mail-qk1-f176.google.com (mail-qk1-f176.google.com
	[209.85.222.176]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-102-uKT-C606P_KW1EowGtMlKQ-1; Thu, 27 Jan 2022 10:28:38 -0500
X-MC-Unique: uKT-C606P_KW1EowGtMlKQ-1
Received: by mail-qk1-f176.google.com with SMTP id g145so2899827qke.3
	for <blinux-list@redhat.com>; Thu, 27 Jan 2022 07:28:38 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:date:from:to:subject:message-id:mime-version;
	bh=dzsgfCPxkUtS0Eei8BU/+O72YuWqKp8zFpEcDVQknDs=;
	b=b2bLMPrBhOg0s0qLJpwq1dkMarv+Zd/urUKP6bzYKp3huolVhBt+mnyp/ckVmhz8uL
	7d35yd6fDty0lCl2hk7V+OmetUmgvBVBE2daViSe3DUailjeC15T6w2jRygBnhbHRYck
	pftqehcQU4JFdaT0997VpY69CUJsXWH3m1/6h00dNFsGTHfib+4VvnimBxu3GdKU1lTo
	XaG1t6LHICy+R8A+JYyyCaUaLv35hkvSJleHtoZIhl2FP1cgLQcduYQigjh8geHM8f+Y
	88/xSwT6QqJhW8xLsYY+VoF3vKujmxBhUFZTXhzJvBK1RLx2f7NtTgP94+Okl3g7kf5q
	S8rw==
X-Gm-Message-State: AOAM53340nh5MLrZRxR6SDgw6PJl6FuW/vGimwTMVafwZhStnt/cj0FA
	KIFXMXuiIXv38EWNAS4/5yjVuDzR0x4=
X-Google-Smtp-Source: ABdhPJx/nz37SIFLOPys8xYY3Ru/oAcziZZCRHk7URnf/XncftvIYDU01svjKQaLlk+iEKMrrokDPA==
X-Received: by 2002:a05:620a:1722:: with SMTP id
	az34mr2973291qkb.581.1643297317454; 
	Thu, 27 Jan 2022 07:28:37 -0800 (PST)
Received: from dans-mac-mini-2.home
	(pool-74-98-213-46.pitbpa.fios.verizon.net. [74.98.213.46])
	by smtp.gmail.com with ESMTPSA id
	t123sm1539062qkh.31.2022.01.27.07.28.36 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
	Thu, 27 Jan 2022 07:28:36 -0800 (PST)
Date: Thu, 27 Jan 2022 10:28:35 -0500 (EST)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Why do you use Linux? expanded from  Converting text to mp3
Message-ID: <13d57fcf-44bf-b872-146b-e02674d479ee@gmail.com>
MIME-Version: 1.0
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
X-Mimecast-Spam-Score: 1
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit


Your mac in the terminal is a flavor of unix so all that is familiar to you in linux is the same.  Macports and homebrew are two of the
repositories with many of the same choices as in the linux ones. The many mac quality voices are available also.

On Wed, 26 Jan 2022, Linux for blind general discussion wrote:

> Hi Karen-and-thanks for an introspective topic. My road to Linux was a slow
> transition. I had my first PC with DOS6 from 1994-97. Got windows95 so I would
> have an easier time playing mp3s, which were fairly new at that time. The
> concept of just being able to mash enter on a highlighted file to play was
> appealing. But a majority of the time I was stilling going to a DOS prompt to
> get in to a shell account to read mail in what was then pine. In 2003 once the
> late Bill Acker helped set me up with DecPC drivers, we tried a duel boot
> system, including first Redhat9 and later Fedora. Because there were so many
> anoying issues with those DecTalk drivers, I found myself going back to windows
> where DecTalk sounded great. Maybe early 2005 got either a newer pc and
> certainly a USB DecTalk, which I still have. 1 night in 2006 a friend from
> HighSchool was here, I tried playing him a Weird Al video, but each time
> Windows Media Player would lockup. I finally just went back in Linux-and-played
> him an audio version. Next time we went from Fedora 6 to 9 we practicly had a
> ceremony when we got rid of windows forever. In 2010 with needing a new PC, I
> switched to Debian, as they have more of the latest packages.
> In 2006 I got involved with a local Linux LUG, where I occasionally received
> many hours of valuable asistance-and-even sometimes I was able to help.
> Even though I have many struggles with web-sites which I cannot access because
> of the javascript disease, I am still willing to stick with Linux, as once its
> setup, it is a comfortable envirenment.
> I have a Chromebook which I almost exclusively only attend Zoom meetings, as
> far as I know, no1 has  written any commandline scripts to run Zoom in a
> non-graphical setting. I also have a Mac but have not really looked in to
> classes at an Apple store, but at least all of these machines have Linux I can
> run.
> Just last evening I was trying to help my Wife in windows7 but its practicly a
> foreign language now from win98.
> And lastly Karen, Linux provides me so much customization. I have 24 text
> consoles. My Linux expert wrote me software to play-and-record streams with 4
> sound-cards. I think I recorded maybe 10 streams at a time-and-later edited
> them, as well as ajusting levels. So I have `much flexibility in Linux-and-am
> `really happy here at nearly 70 next month. Thanks so much for listening
> Chime
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
>
>

-- 
ent-
XR

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

