Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 589B042B027
	for <lists+blinux-list@lfdr.de>; Wed, 13 Oct 2021 01:32:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1634081523;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=wtcVGWO1mbmWDxLqUoNIa/ervHBYDKq5GwRgUBwtQn4=;
	b=DdxoGNKxlNIXESRUq5zewsv8pf5HyfqRHzljBj8LNBUlvB+D1LpPGetXpP/fiSNE5MR6xj
	UxO0g3l+Onzllj1MNjG7RAoaWQ5NCsQXKupw+QbGZPSsNUAG37H/QnFjFByksCzDSslum9
	QM3HYVTn37+XOFdPbr2opyXwiCztqio=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-574-4CUzlKfnNdmX5P_CclpvQg-1; Tue, 12 Oct 2021 19:31:59 -0400
X-MC-Unique: 4CUzlKfnNdmX5P_CclpvQg-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id E4541180830F;
	Tue, 12 Oct 2021 23:31:54 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 77F9319C79;
	Tue, 12 Oct 2021 23:31:54 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id DC4321803B30;
	Tue, 12 Oct 2021 23:31:49 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
	[10.11.54.2])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 19CNViOZ029777 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 12 Oct 2021 19:31:44 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 214F6404727A; Tue, 12 Oct 2021 23:31:44 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 1D39E4047272
	for <blinux-list@redhat.com>; Tue, 12 Oct 2021 23:31:44 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 069B8811E7A
	for <blinux-list@redhat.com>; Tue, 12 Oct 2021 23:31:44 +0000 (UTC)
Received: from mail-qt1-f175.google.com (mail-qt1-f175.google.com
	[209.85.160.175]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-270-Z-TAX43UOHWvSuomk9dSaw-1; Tue, 12 Oct 2021 19:31:42 -0400
X-MC-Unique: Z-TAX43UOHWvSuomk9dSaw-1
Received: by mail-qt1-f175.google.com with SMTP id c20so997758qtb.2
	for <blinux-list@redhat.com>; Tue, 12 Oct 2021 16:31:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
	:content-language:to:references:from:in-reply-to
	:content-transfer-encoding;
	bh=C3xk+Dg+NhkZUNbP4RLLhaqUITek4GelEdfRfD8z80Q=;
	b=5cVj5AmHjUA28cmpoXfO7QGUuQPCsDPPiorngafSDRrAKjZz1i2FX4TNV+QtQmHcpI
	REvdK8l+8bACzo0QGu4alY2jkDH+Amf8q4Yfxa6GrW9poHaerY3CYzpiaWQ8kSGzY/7L
	mWK2sjP/0F8ZoAXJfLg5GeHV52UUsaRCYBLetocuPqcwnXMZHlxWAzXtnXBY024NRdWM
	9VwmN2CvK9HH6qhpRHex/6vpqdpZzkKy5c9kINEqbqCOAGuA134JePaFGgfSIDENQ7gv
	xoyMnKBSAn0izlzGkuTWHHHa0LsjwURYTq4Wk2nOMOeoebm/kGIhH+Pu+bJoHiFPkqSv
	CJ2w==
X-Gm-Message-State: AOAM531fy4Aljv2vqcqn3wAkRmStHGF/mELh6iPfcIn8pBPiNrVd+DS+
	Xmo+5uJJhFS4hfObaPyb8Xa/5+GU1oM=
X-Google-Smtp-Source: ABdhPJw5GQhAGVfbPnDlcZAAQGOdc8q2a/ENfMBSdDzN+kbhF0IQbXE+dXI8Gjka1eCNiLnuWyLycg==
X-Received: by 2002:ac8:5f91:: with SMTP id j17mr14253825qta.138.1634081501926;
	Tue, 12 Oct 2021 16:31:41 -0700 (PDT)
Received: from ?IPV6:2603:6080:6304:450a::960?
	(2603-6080-6304-450a-0000-0000-0000-0960.res6.spectrum.com.
	[2603:6080:6304:450a::960])
	by smtp.gmail.com with ESMTPSA id x6sm7097748qts.79.2021.10.12.16.31.41
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Tue, 12 Oct 2021 16:31:41 -0700 (PDT)
Message-ID: <a30b83ac-2611-1439-ca0f-85355b8a48b2@gmail.com>
Date: Tue, 12 Oct 2021 19:31:40 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.1.0
Subject: Re: Any suggestions of what distro of Linux I should load onto a new
	computer?
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <BE642CCD-41FD-4C31-AAFB-C4EE0CB1A200.ref@yahoo.com>
	<BE642CCD-41FD-4C31-AAFB-C4EE0CB1A200@yahoo.com>
	<830943b7-8c77-54d2-ef41-ebf35b2317d4@gmail.com>
	<41D44D20-F41D-4D2D-B3CE-3F00567522EC@gmail.com>
In-Reply-To: <41D44D20-F41D-4D2D-B3CE-3F00567522EC@gmail.com>
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

I didn't have any audio problems with 34. Upgraded to Rawhide about 2 
weeks ago, which is now ahead of 35 beta and is numbered as 36 
currently. Only audio issue I have had involved having to run

systemctl --user restart wireplumber

after trying to do some music-related work involving fluidsynth, 
audacity, pactl and pw-link. The culprit at this point appears to be 
pavucontrol, which is silencing my headphones when I open the recording 
tab while audacity is recording. MATE sound seems not to have that 
problem, but I think I did something else wrong somewhere, as now my 
midi keyboard is silent where it was playing through Fluidsynth. I will 
figure it out and report the bug in Fedora's bug tracker, since I have 
an account there now. Just need to try to find a shorter list of steps 
to reproduce the bug, and hopefully rule out some specific applications. 
Looks like a pavucontrol bug, but I'll need to be sure.

~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

