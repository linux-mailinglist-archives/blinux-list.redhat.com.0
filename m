Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A2CF4D1890
	for <lists+blinux-list@lfdr.de>; Tue,  8 Mar 2022 14:00:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1646744443;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=0TP1xhE0UTsORvS1r2S5OZNE/XB05vfL/GQ0gnt5A8o=;
	b=FOhxOQhQfgJ0E11pp66IwOAUWYUCLCyi54tyvwux1mYfTYFGQc2wQwROHO5oAkDBbA3idJ
	lDu6jjcKjmARf0fcIwLcY3RFqTaSs1gZeZCFl9yBUiSgKc4U/VULvF0UZlvFEHfGLY//h/
	VuRxL9wRn4PTPMCzXfNisgE7W+4f+wI=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-452-sWyT_CBUNH6yHALSFG1_ig-1; Tue, 08 Mar 2022 08:00:38 -0500
X-MC-Unique: sWyT_CBUNH6yHALSFG1_ig-1
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com [10.11.54.9])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 68B1D3C11A0B;
	Tue,  8 Mar 2022 13:00:36 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 80296697CAC;
	Tue,  8 Mar 2022 13:00:31 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 858AE196BB9A;
	Tue,  8 Mar 2022 13:00:28 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Tue, 8 Mar 2022 13:00:37 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.6.1
Subject: Re: Starting lightdm in text mode
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <mailman.343.1646741549.111209.blinux-list@redhat.com>
In-Reply-To: <mailman.343.1646741549.111209.blinux-list@redhat.com>
Message-ID: <mailman.328.1646744428.111206.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.9
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

No idea...

But related question, I do wonder if there's any text mode only display 
managers. yes I know you can startx aftr login, but I do like how 
display managers give you the F1-F6 TTY, something I can't, AFAIK and 
correct me if I'm wrong, get with startx?


I'm not sure if downgrading lightdm would solv ethe issue? If you're on 
Arch grab the downgrade package from the AUR. It may be available in 
other distros, I honestly dunno if it is or not, and I orget how oyu 
downgrade packages in Debian/Ubuntu or Fedora and no clue on Slackware stuff


On 3/8/22 11:31, Linux for blind general discussion wrote:
> Hello,
>
> I use Debian in command mode. Until about a year ago, when I booted  up, lightdm would start in text mode and ask for user and password. It would then start Mate with Orca. I could use the GUI by pressing Alt+F7. Then it suddenly started setting the screen to not-text mode.
> To be able to use the machine in my  primary uses I had to disable lightdm. This meant that I couldn't use Mate. I just switched to Windows for a GUI. How can I configure lightdm to not put the screen in grap;hics mode and to again ask for username and password in text mode where brltty can handle them. Then start the GUI in tty7.
>
> Thanks,
> John
>

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

