Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F117460A15
	for <lists+blinux-list@lfdr.de>; Sun, 28 Nov 2021 22:08:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1638133696;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=d+4JNRZJOPwLiKJJXZcAk2YrALtCclAWwbCRDowYVVE=;
	b=Ag1JvzBkvt7ZftcEoo6RkTSwChQIuqX+OFBkNLhvfLKGn6pBCdOaJ/uHKqQcSnfeH6ZRpE
	F8TT+ZPaPmgrjeN4D0UYKTzEI4im1yCImjeIOcNJyLzo/a9+vSbeeBsMLGVXxI3pszmvX/
	RIonkQcW20u/+iYrJA2W26emQgsWEc4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-36-kJLBssqYMhC5jAGNtGgiAA-1; Sun, 28 Nov 2021 16:08:12 -0500
X-MC-Unique: kJLBssqYMhC5jAGNtGgiAA-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id C69B1102C84E;
	Sun, 28 Nov 2021 21:08:08 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6372F60854;
	Sun, 28 Nov 2021 21:08:07 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 964731809C89;
	Sun, 28 Nov 2021 21:08:04 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com
	[10.11.54.8])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1ASL7xal022097 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 28 Nov 2021 16:08:00 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id BC277C15E6F; Sun, 28 Nov 2021 21:07:59 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B764DC08088
	for <blinux-list@redhat.com>; Sun, 28 Nov 2021 21:07:59 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 9DF23811E78
	for <blinux-list@redhat.com>; Sun, 28 Nov 2021 21:07:59 +0000 (UTC)
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com
	[209.85.221.54]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-572-LQlyB8arOOaLXz6jA9tyxw-1; Sun, 28 Nov 2021 16:07:57 -0500
X-MC-Unique: LQlyB8arOOaLXz6jA9tyxw-1
Received: by mail-wr1-f54.google.com with SMTP id t9so15271468wrx.7
	for <blinux-list@redhat.com>; Sun, 28 Nov 2021 13:07:57 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
	:content-language:to:references:from:in-reply-to
	:content-transfer-encoding;
	bh=sH2t/S4sN74ycCmrkJNbNN0rhYCBaao5bjtVMrEKMkQ=;
	b=NEwgQtVgUjwlSjr1/3/Pkx041Ino8/ZqOKwvGwc7bkP/cT3F7lDBFkMWdRmYZt4MyK
	YDDA9IdKQu88Xg9M81RruH5iMA3FYfrHSwI/VphEbWeJxRopIcS1I6UEvhAnDguzN6rx
	Qhzp8Q9Gll09MT588h+13GJeltlcgll0yu3QGNllcnM8QvRRk9/XN8VgdxNtvCPsT9cK
	3sNwJPs+IYyk5AeYsE78tkxS2wzbxGlkVksxqEzYx5RyE/K0i5FV+YOYsZI2VOroyTMN
	h/PvbjCNYisoJX55EijbFHDp4LSwg7eu5O3RhxpXYSi1jvX5h8rQ97XEfPln29eQE7Gh
	ZBTw==
X-Gm-Message-State: AOAM5338Ik09S9HCUHG3MVzCN7Q3hOMHPEPUm6fgflOeN2QL4Gh8ZUlX
	BsCm+aIu8DE9PNozR/K+T96uqqSJ/ZeFzg==
X-Google-Smtp-Source: ABdhPJy0ltrsNm8p6WMZVA568YbiLQ/YukCpSaEYVY70InzWf7ZDNlCaVydsXtDsVb+CXYOTOt7wmg==
X-Received: by 2002:adf:f0c5:: with SMTP id x5mr27776641wro.484.1638133676175; 
	Sun, 28 Nov 2021 13:07:56 -0800 (PST)
Received: from [192.168.1.130] ([90.251.213.111])
	by smtp.gmail.com with ESMTPSA id
	h15sm20635460wmq.32.2021.11.28.13.07.55 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Sun, 28 Nov 2021 13:07:55 -0800 (PST)
Message-ID: <1eef8204-b13a-13cb-f773-e46b12cc246c@gmail.com>
Date: Sun, 28 Nov 2021 21:08:05 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.3.0
Subject: Re: pipe-viewer downloading w/yt-dlp possible?
To: blinux-list@redhat.com
References: <5d1e874b-076d-ebce-c83c-c103d7d7f2f0@gmail.com>
	<cd25ef98-e869-3241-badf-17bbbca05b28@hubert-humphrey.com>
In-Reply-To: <cd25ef98-e869-3241-badf-17bbbca05b28@hubert-humphrey.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.8
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

Ahh, -d did it. Now I'm scouring the help to figure out if I can just 
snag the audio and go from there. if jack/pulse won't work on my CLI 
only setup, downloading and playing through mpv is my next best option then

On 11/28/21 20:50, Linux for blind general discussion wrote:
> I think with all of these related applications, after you select a 
> video from a numbered list, you would use a dash d. So lets say you 
> want a group of videos, it might be
> 17-18 25 -d
> Chime
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

