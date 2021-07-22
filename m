Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 307C33D2FCF
	for <lists+blinux-list@lfdr.de>; Fri, 23 Jul 2021 00:25:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1626992717;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=EEcOcEayMuwfinjfaxBOQsPBXPHQTiQ9KRPSoBEyrZw=;
	b=Ycc7F1YPsC0jovwlW6zYDjT4FU2exduMjpqx5eFWUoQoW+bMFoALzf1ZNaDuR3WuraSips
	VlfOttJMqZKVj9RYZuvpEFO8FXSwQnFNKTjUZYKDaDOMZIAhbnjb2nhv6Z4AWWg1z5jxuS
	dtuO2LKR9thJXOsKA4vcctHZfECym04=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-167-jvPrGW_1PYSrQx0azN5KYg-1; Thu, 22 Jul 2021 18:25:15 -0400
X-MC-Unique: jvPrGW_1PYSrQx0azN5KYg-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 45267363A8;
	Thu, 22 Jul 2021 22:25:11 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 76B7D5D6D3;
	Thu, 22 Jul 2021 22:25:09 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 043154BB7C;
	Thu, 22 Jul 2021 22:25:08 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 16MMP0fj025900 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 22 Jul 2021 18:25:00 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id E0D4B2051A65; Thu, 22 Jul 2021 22:24:59 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id DC7CE2051B0D
	for <blinux-list@redhat.com>; Thu, 22 Jul 2021 22:24:56 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 8ED808556F0
	for <blinux-list@redhat.com>; Thu, 22 Jul 2021 22:24:56 +0000 (UTC)
Received: from mail-qk1-f180.google.com (mail-qk1-f180.google.com
	[209.85.222.180]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-372-bJcWTYLdNjySZJiA8YyLjA-1; Thu, 22 Jul 2021 18:24:54 -0400
X-MC-Unique: bJcWTYLdNjySZJiA8YyLjA-1
Received: by mail-qk1-f180.google.com with SMTP id k4so6927161qkj.13
	for <blinux-list@redhat.com>; Thu, 22 Jul 2021 15:24:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=S3kMR0Fjk0qH8mpfNdwPT5Q9n7nQ5Hgb+NeCmsmoE9g=;
	b=uRFXCshHq330mgNr05CMnQGwYHuVPh8J8Ph/xChDOHDWIPnn1rwS+LF+LpOG05Yq4P
	M0GPjeW38XapgOSNsYISwwNeaHtPxmeKd0oZysRQb1pawQf5IUpktO1mhO+keppAUiUp
	ptHdtEyycs+Xv3AO0dXNGk5dEpLtkgBoAS071pE2b8ZDL5fOurm05zDjTKmDwifQ7lBc
	lSZmHGMKlRmnMFe/8/CzA38daVM0FkCekSaUKddAb65u5DpfbFPBdNrGiWCrxdaSqQv0
	XXQfyD/6OMlfdCLcW1RKu5ADzwYEhWIYnNWE9yE3fOintD2TX7BCUdn1U6YHIXxwPjv/
	r4rQ==
X-Gm-Message-State: AOAM530Wsorj50K8WDsmjJMkfke2vtanK6zsNJbpyR6NaVFSdb1O3Hhg
	4NPh4CiSUrg2ymNcQHN8KtC/VX87ZSs=
X-Google-Smtp-Source: ABdhPJy7rjI7/KG3DS98bxAehbH7eaBpFonbdxGWDqg7NiIGJaTdj7YdiAOwth7LDYYgfNLbnpRMAg==
X-Received: by 2002:ae9:e60b:: with SMTP id z11mr2083726qkf.8.1626992693972;
	Thu, 22 Jul 2021 15:24:53 -0700 (PDT)
Received: from ?IPv6:2603:6080:6304:450a::433?
	(2603-6080-6304-450a-0000-0000-0000-0433.res6.spectrum.com.
	[2603:6080:6304:450a::433]) by smtp.gmail.com with ESMTPSA id
	t64sm13446017qkd.71.2021.07.22.15.24.53 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Thu, 22 Jul 2021 15:24:53 -0700 (PDT)
Subject: Re: Adjusting lightdm screenreader volume (How do I...)
To: blinux-list@redhat.com
References: <b03aafa4-daf7-d333-f8dc-80aa029225c9@gmail.com>
	<210fc29d-9144-c009-3557-fd2304aa47cd@gmail.com>
	<6a20948b-bceb-bc96-c787-cf3f2c27c2af@gmail.com>
	<84a2815d-0461-28bc-8f52-6d0f24e34d60@gmail.com>
	<70e8f011-eec9-ba77-f7e4-33bf3d610e33@gmail.com>
	<9BB781F9-3AFD-4475-94BF-CB4DFE7329A6@gmail.com>
	<90a473e9-09f5-9384-3b5a-14f0386030e0@gmail.com>
	<429a012f-f319-97ba-ee11-a81121791b78@gmail.com>
Message-ID: <eda3b616-2c87-f872-7346-31fbc2b8aee8@gmail.com>
Date: Thu, 22 Jul 2021 18:24:51 -0400
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:78.0) Gecko/20100101
	Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <429a012f-f319-97ba-ee11-a81121791b78@gmail.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Oh I think I know what the problem is. Are you using an Ubuntu 
derivative by chance? I believe Ubuntu-based distributions use gsettings 
to store orca preferences. The only way I know to copy your user's 
gsettings configuration is to copy all of .config/dconf/user into 
lightdm's home folder in the same place. It would be 
/var/lib/lightdm/.config/dconf/user

Don't worry about overwriting that file if it exists, that is what you 
want to do. You would end up with a ton of settings that can't be used 
for anything, but it should copy your orca preferences so that whatever 
voice your user has set should also be set when using lightdm.


My only other suggestion would be to copy your 
~/.config/speech-dispatcher folder in the same way, but that assumes you 
have a user-based speech-dispatcher configuration instead of using the 
system configuration.

~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

