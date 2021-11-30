Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id DE2B7463D44
	for <lists+blinux-list@lfdr.de>; Tue, 30 Nov 2021 18:52:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1638294768;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=Uqx1cHrpEI8hjL2GdZavlCsWBZErdXKrPG2o46UjuU4=;
	b=XrTsW3HrzuhbWVLwccE8MW7+iiZtRy6OwxUdHiS6ppRlQXUhz01CZ91bqySFUuiueCxHqc
	h28eXw70QuCWUSvQGYQ46jo01Wx2w0RNYbcjUX0bEavGePvVoSX0LDE8vdFLPEdfes/Wiy
	V0J7FXH3wDHAxJ3sQRKTN0N5KPGZGvY=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-258-kTLLUDxsNOibSVOnofPcTw-1; Tue, 30 Nov 2021 12:52:44 -0500
X-MC-Unique: kTLLUDxsNOibSVOnofPcTw-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 41F06101C7AD;
	Tue, 30 Nov 2021 17:52:40 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 84ADC50D3F;
	Tue, 30 Nov 2021 17:52:39 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 4F3411809C88;
	Tue, 30 Nov 2021 17:52:34 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1AUHqUVH011868 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 30 Nov 2021 12:52:30 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 38AC051E4; Tue, 30 Nov 2021 17:52:30 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 1E15351DC
	for <blinux-list@redhat.com>; Tue, 30 Nov 2021 17:52:27 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 776B41819449
	for <blinux-list@redhat.com>; Tue, 30 Nov 2021 17:52:27 +0000 (UTC)
Received: from mail-qt1-f170.google.com (mail-qt1-f170.google.com
	[209.85.160.170]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-584-2r6Lv8WEOp6-SLW2Dm9e3A-1; Tue, 30 Nov 2021 12:52:25 -0500
X-MC-Unique: 2r6Lv8WEOp6-SLW2Dm9e3A-1
Received: by mail-qt1-f170.google.com with SMTP id l8so21064244qtk.6
	for <blinux-list@redhat.com>; Tue, 30 Nov 2021 09:52:25 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding;
	bh=lvTUb6jwFHYiFg/GbA9vswsMdKrB8w6xNX0M0pzDzXY=;
	b=rLKKWh9q/FNmrY4nWFSy+qFaKGCMqk6RrASU95P5MOtQrImWbOwg25NqoYPE5BhiEF
	GujR78FfINJHSV3P0RoOQ7BYQ3LopNOEGBp/2cAyOl23atQCl2z8TTtfhsJua6Q8as9C
	n2gJ+HajkFP5RhGdSxsCj7IjCVBPAgNq/cuu7xcbfstYUMM+FNEaqtxkYw1yX4SEhCew
	RPFLlL2ROC+Jzx4WU8xPow472frX4LPd2JFjvGHop62tBY9L9qBmN12a27WxavHEj391
	x/e778gN0Fp4QnHBrZil/oZUUsnKnVSsY8nvlEuOr59JFFn6Xirhn6GbE5+vI2zSVfAV
	m2SQ==
X-Gm-Message-State: AOAM533kinVZJ/Eygb8zV1v3H3UdZh7saevbfoLzHFDxuv6uNYHEHAzT
	1F/i4MROV6wTAFHwJ3CWS5xa5zuTwDA=
X-Google-Smtp-Source: ABdhPJxpKFnWTcb5tmykqEK8CQBmh6PwCGw3XIzAnaBTK788uzUGSUEVHo79tJruMnpIBpLnALrY2Q==
X-Received: by 2002:a05:622a:1491:: with SMTP id
	t17mr1022800qtx.402.1638294745116; 
	Tue, 30 Nov 2021 09:52:25 -0800 (PST)
Received: from ?IPv6:2603:6080:6304:450a::960?
	(2603-6080-6304-450a-0000-0000-0000-0960.res6.spectrum.com.
	[2603:6080:6304:450a::960]) by smtp.gmail.com with ESMTPSA id
	f11sm10284722qko.84.2021.11.30.09.52.24 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Tue, 30 Nov 2021 09:52:24 -0800 (PST)
Subject: Re: What is the easiest and most accessible editor?
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <a3ea6f04-d8a4-2ef4-35cc-8e91d7582ab8@gmail.com>
	<dcf188c1-db80-bf0a-e54b-474f2fddbf55@gmail.com>
	<CAO2sX30oEaotc3CObf62R5Dg_0qLiu_qB3V3JF4EUQfACdkG+A@mail.gmail.com>
	<alpine.NEB.2.23.451.2111291731190.11659@panix1.panix.com>
	<878bd3e0-d05c-4132-52b4-d29893818041@gmail.com>
	<7d174815-a616-2abd-72e9-014ac8bf2b8b@slint.fr>
	<87bl22kqlz.fsf@brainpower.wer>
	<CAO2sX32s07jDN=1KiJCQ-31_gh5RAFFXBibGwKrLd4zuDpESKQ@mail.gmail.com>
	<PH0PR14MB4296B85503BE458036633010C8679@PH0PR14MB4296.namprd14.prod.outlook.com>
	<4d3de3ee-529a-0829-300e-3a1999cf2a76@gmail.com>
	<PH0PR14MB4296ABD498F0634DA72DCA10C8679@PH0PR14MB4296.namprd14.prod.outlook.com>
	<CAGJxbF7HxDJs-h_ZU227pdWQOOVmFkCOhb7YtE+YNxWn3+VB=g@mail.gmail.com>
Message-ID: <713f3c95-6207-65ed-0fd3-c276372729d9@gmail.com>
Date: Tue, 30 Nov 2021 12:52:24 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.0
MIME-Version: 1.0
In-Reply-To: <CAGJxbF7HxDJs-h_ZU227pdWQOOVmFkCOhb7YtE+YNxWn3+VB=g@mail.gmail.com>
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Also, saying Emacs does too much is like saying or desktop environment does
> too much.

Not quite. I didn't say that my desktop environment does too much. It is 
supposed to be a sort of shell as it were, with plenty of applications that I 
can run. Emacs doesn't just do too much, it does too much for one application, 
and tries to squeeze everything imaginable into editor style buffers. Imagine if 
pluma or gedit was your calculator. This is the way emacs works. How do you fit 
a calculator into a text editor? I'm not sure, maybe about the same as trying to 
fit a text editor into a calculator display. Yeah, not so good that. But this is 
just the way this beast works, which I guess explains why I was never able to 
tame it.
~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

