Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 5EFBA37A7ED
	for <lists+blinux-list@lfdr.de>; Tue, 11 May 2021 15:42:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1620740540;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=HIKb5jRQB58LIdi5uETJJrPOjlPLCvbaR92E/MgXKPs=;
	b=SLUM+RekwEeCq5NGIDJe7fPG/h6dxT/85BrX++SmMa7FTNS50WCigjmIM8HjbyeOpmuY3F
	etxU8IsG9QskFixS+chf1PQxOik2k/YBeTxSfXfntSXdj8UQa5CDCEVsn80X+aw5r7CNVp
	eBO1B1I7XQg+nepWpDfJBkZTZX8Gtn8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-531-DNw0UPvxMQWJRyZgYFvE1w-1; Tue, 11 May 2021 09:42:17 -0400
X-MC-Unique: DNw0UPvxMQWJRyZgYFvE1w-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 353FD801817;
	Tue, 11 May 2021 13:42:13 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id F1D4260CDE;
	Tue, 11 May 2021 13:42:11 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 743E744A63;
	Tue, 11 May 2021 13:42:06 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 14BDfu6i029847 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 11 May 2021 09:41:56 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id A1C1BF8964; Tue, 11 May 2021 13:41:56 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 9C641EE399
	for <blinux-list@redhat.com>; Tue, 11 May 2021 13:41:54 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 2300180D0E0
	for <blinux-list@redhat.com>; Tue, 11 May 2021 13:41:54 +0000 (UTC)
Received: from mail-qt1-f177.google.com (mail-qt1-f177.google.com
	[209.85.160.177]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-129-mxXZKOfDPQSqr2a86U1xNw-1; Tue, 11 May 2021 09:41:51 -0400
X-MC-Unique: mxXZKOfDPQSqr2a86U1xNw-1
Received: by mail-qt1-f177.google.com with SMTP id 1so14586653qtb.0
	for <blinux-list@redhat.com>; Tue, 11 May 2021 06:41:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=hgfuVses8SwInV6dJd8yKWFbzqylkKQ977PscuGPMfc=;
	b=YlxtsHR/MoHPxf4src0fsWO3lkW9e6tKSG7oCq+G5W8mnAtqYRkrh1+P1vdxC7gLgu
	9/5FPHPqfk89VlI48b5G1jCvf3Fq3kuua+P07RK0fN9AFITWjuPQDTfbfBw9rKi6SxYl
	eBQn40QbVoiZCClNtcXSTi4o4k62/Cq4TsaSowqu9xB8aMwfnoNZadYq26lOlauxWIAA
	mpXUc9zLCHWRKYVzORao+cSq9bRw0Wj5Z3pW78i0rGMtjubVxi8eqP3pLLji+BrV/Sap
	SgQrdlJahND4sinGLiVe29bJENNNApwB7tjZaGTucVYB8nf5qPIIvl+AVVnvgeVpLyXR
	MZSw==
X-Gm-Message-State: AOAM533HNkb2I1NECdTQ5RHDRXKnnG78e7QKEFit+R2eMLqUoPb5CEoJ
	z1qrRHx/LF8wMT+ZW4l5sR3jGTq6QDo=
X-Google-Smtp-Source: ABdhPJy7u3Joj5MqpUVPsYxQINQb9vlFh4ChQAbEo6hrxdC3BR4e6Kgtoamojgvef6DJUChzodxdEg==
X-Received: by 2002:ac8:5b87:: with SMTP id a7mr19340553qta.29.1620740503958; 
	Tue, 11 May 2021 06:41:43 -0700 (PDT)
Received: from ?IPv6:2603:6080:6304:450a::f84?
	(2603-6080-6304-450a-0000-0000-0000-0f84.res6.spectrum.com.
	[2603:6080:6304:450a::f84]) by smtp.gmail.com with ESMTPSA id
	q192sm587422qke.89.2021.05.11.06.41.43 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Tue, 11 May 2021 06:41:43 -0700 (PDT)
Subject: Re: Speech help
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <20210511061337.js4myeivpfo6tqtj@sprite>
Message-ID: <78837294-c04d-496c-766c-342f982c07e8@gmail.com>
Date: Tue, 11 May 2021 09:41:42 -0400
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:78.0) Gecko/20100101
	Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <20210511061337.js4myeivpfo6tqtj@sprite>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

I would recommend speech-dispatcher and Orca. You can install the MATE 
desktop and the lightdm gtk greeter, drop in a config file that I can 
send and run a couple of gsettings commands, and his system will speak. 
There is a repository I believe for RHVoice, which ships with a 
speech-dispatcher module. RHVoice, especially the bdl voice, tends to be 
easier to understand than espeak. The MATE desktop I mention does ship 
with the menu that will help in selecting applications to run and also 
configuring and shutting down the system.


The best mail client is either Thunderbird or Seamonkey mail. I haven't 
been able to get sylpheed working with Orca, and evolution, which I 
rather like, does have some webkit-gtk problems that keep it from 
working 100%. I would stay away from Mutt personally. I gave up on 
configuring it to work with existing mailbox configurations that were 
not stored on the local machine. It really is a bear to set up if you 
have a regular IMAP mailbox. Orca just reads Thunderbird and Seamonkey 
much better as well, since you have access to navigation keys, SayAll 
mode that will read a message continuously from the top or from where 
your cursor is all the way to the bottom, and of course simple arrow 
navigation that will read your message line by line similar to reading 
it in a text editor or web browser. These clients also handle links 
without issues.


For browsing, Firefox works out of the box, and Chromium works as well, 
but does need some startup flags to be set in order to make Orca read 
it. That said, modifying Chromium's startup flags seems to work the best 
here. It seems much faster and less sluggish, and I have been able to 
get it working with more websites, especially conferencing and phone 
types of things. Online banking does seem to work slightly better using 
Firefox, but pages seem to load much more slowly. I do tend to keep both 
around just in case one works better than the other for a specific task. 
I hope some of this helps.

~Kyle

Sent from my quiet place

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

